//
// Created by ZhuangTianYi on 15/7/11.
//

#include "LRST.h"

#include <list>
#include <algorithm>
#include <cassert>
#include <fstream>
#include <set>

#include "RST.h"
#include "common.h"


void LRST::solve() {
    std::vector<int> ivec;
    mst.mst();
    m_points = mst.points();
    m_lines = mst.lines();
    assert(m_points.size() > 1);
    intree.resize(m_points.size(), false);
    tree.resize(m_points.size(), ivec);
    parent.resize(m_points.size(), -1);
    layout_l.resize(m_points.size(), -1);
    layout_u.resize(m_points.size(), -1);
    choice_l.resize(m_points.size(), -1);
    choice_u.resize(m_points.size(), -1);
    root = find_root();
    build_tree(root);
    assert(tree[root].size() == 1);
    discretize_data();
    find_layout();
    get_result();
    to_vector();
}

LRST::LRST() : mst(), layout_result(INF) { }


int LRST::get_result() {
    if (layout_result != INF) return layout_result;
    int result = 0;
    for (unsigned i = 0; i < m_lines.size(); i++) {
        result += m_points[m_lines[i].start()].distance(m_points[m_lines[i].end()]);
    }
    int diff = std::max(layout_l[tree[root][0]], layout_u[tree[root][0]]);
    layout_result = result - diff;
    return layout_result;
}

void LRST::find_layout() {
    find_layout_L(tree[root][0]);
    find_layout_U(tree[root][0]);
}

int LRST::find_root() {
    std::vector<int> degree(m_points.size(), 0);
    for (const auto& line : m_lines) {
        degree[line.start()]++;
        degree[line.end()]++;
    }
    for (auto it = degree.begin(); it != degree.end(); ++it) {
        if ((*it) == 1) {
            return (it - degree.begin());
        }
    }
    assert(false);
    return -1;
}

void LRST::build_tree(size_t father) {
    size_t child;
    intree[father] = true;
    for (const auto& line : m_lines) {
        if (line.start() != father && line.end() != father) {
            continue;
        }
        if (line.start() == father) {
            child = line.end();
        } else {
            child = line.start();
        }
        if (intree[child]) {
            continue;
        }
        tree[father].push_back(child);
        parent[child] = father;
        build_tree(child);
    }
}

void LRST::discretize_data() {
    x_coord.resize(0);
    y_coord.resize(0);
    std::map<int, int> x_coord_map, y_coord_map;
    for (const auto& point : m_points) {
        int x = point.x, y = point.y;
        x_coord_map[x] = 0;
        y_coord_map[y] = 0;
    }
    for (const auto& x : x_coord_map) {
        x_coord_map[x.first] = x_coord.size();
        x_coord.push_back(x.first);
    }
    for (const auto& y : y_coord_map) {
        y_coord_map[y.first] = y_coord.size();
        y_coord.push_back(y.first);
    }
    for (const auto& point : m_points) {
        int x = point.x, y = point.y;
        int disp_x = x_coord_map[x];
        int disp_y = y_coord_map[y];
        discr_points.push_back(Point(disp_x, disp_y));
    }
    for (size_t i = 0; i < x_coord_map.size(); i++) {
        for (size_t j = 0; j < y_coord_map.size(); j++) {
            hori_lines.insert(std::pair<Point, int>(Point(i, j), 0));
            verti_lines.insert(std::pair<Point, int>(Point(i, j), 0));
        }
    }
}

void LRST::paint_hori(int u, int v, int y, int color, int &value) {
    assert(u <= v && (color * color == 1));
    for (int i = u; i < v; i++) {
        int hori = x_coord[i + 1] - x_coord[i];
        assert(hori_lines.find(Point(i, y))->second + color >= 0);
        if (color > 0 && hori_lines.find(Point(i, y))->second > 0) {
            value += hori;
        }
        hori_lines[Point(i, y)] += color;
        if (color < 0 && hori_lines.find(Point(i, y))->second > 0) {
            value -= hori;
        }
    }
}

void LRST::paint_verti(int u, int v, int x, int color, int &value) {
    assert(u <= v && (color * color == 1));
    for (int i = u; i < v; i++) {
        int verti = y_coord[i + 1] - y_coord[i];
        assert(verti_lines.find(Point(x, i))->second + color >= 0);
        if (color > 0 && verti_lines.find(Point(x, i))->second > 0) {
            value += verti;
        }
        verti_lines[Point(x, i)] += color;
        if (color < 0 && verti_lines.find(Point(x, i))->second > 0) {
            value -= verti;
        }
    }
}

void LRST::paint(Point start, Point finish, bool direction, int color, int &value) {
    int x1 = start.x, y1 = start.y;
    int x2 = finish.x, y2 = finish.y;
    int x3, y3;
    if (!direction) {
        x3 = x1, y3 = y2;
        int u = std::min(y1, y3), v = std::max(y1, y3);
        // dfs from (x1, u) to (x1, v)
        paint_verti(u, v, x1, color, value);
        u = std::min(x2, x3), v = std::max(x2, x3);
        paint_hori(u, v, y2, color, value);
    }
    else {
        x3 = x2, y3 = y1;
        int u = std::min(x1, x3), v = std::max(x1, x3);
        paint_hori(u, v, y1, color, value);
        u = std::min(y2, y3), v = std::max(y2, y3);
        paint_verti(u, v, x2, color, value);
    }
    return;
}

void LRST::dfs(int parent, std::vector<int> &kids,
               size_t num,
               int &value, int &result, int choice, int &decision) {
    if (num == kids.size()) {
        if (result < value) {
            result = value;
            decision = choice;
        }
        return;
    }
    // if the shape is L
    paint(discr_points[parent], discr_points[kids[num]], false, 1, value);
    value += layout_l[kids[num]];
    dfs(parent, kids, num + 1, value, result, choice, decision);
    value -= layout_l[kids[num]];
    paint(discr_points[parent], discr_points[kids[num]], false, -1, value);

    // if the shape is U
    paint(discr_points[parent], discr_points[kids[num]], true, 1, value);
    value += layout_u[kids[num]];
    dfs(parent, kids, num + 1, value, result, choice + (1 << num), decision);
    value -= layout_u[kids[num]];
    paint(discr_points[parent], discr_points[kids[num]], true, -1, value);
}

int LRST::find_layout_L(int label) {
    if (layout_l[label] != -1) {
        return layout_l[label];
    }
    if (tree[label].empty()) {
        layout_l[label] = 0;
        return 0;
    }
    std::vector<int> &kids = tree[label];
    for (const auto& kid : kids) {
        find_layout_L(kid);
        find_layout_U(kid);
    }
    int value = 0, choice = 0;
    paint(discr_points[parent[label]], discr_points[label], false, 1, value);
    dfs(label, kids, 0, value, layout_l[label], choice, choice_l[label]);
    paint(discr_points[parent[label]], discr_points[label], false, -1, value);
    return layout_l[label];
}

int LRST::find_layout_U(int label) {
    if (layout_u[label] != -1)
        return layout_u[label];
    if (tree[label].empty()) {
        layout_u[label] = 0;
        return 0;
    }
    std::vector<int> &kids = tree[label];
    for (const auto& kid : kids) {
        find_layout_L(kid);
        find_layout_U(kid);
    }
    int value = 0, choice = 0;
    paint(discr_points[parent[label]], discr_points[label], true, 1, value);
    dfs(label, kids, 0, value, layout_u[label], choice, choice_u[label]);
    paint(discr_points[parent[label]], discr_points[label], true, -1, value);
    return layout_u[label];
}

void LRST::to_vector() {
    if (m_result.size() != 0) return;
    int child_ = tree[root][0];
    bool choice = layout_l[child_] < layout_u[child_];
    outputResultToVectorOfLabel(child_, choice);
}

void LRST::outputResultToVectorOfLabel(int label, bool choice) {
    m_result.push_back(Line_L(parent[label], label, choice));
    std::vector<int> &kids = tree[label];
    int choice_record_ = choice ? choice_u[label] : choice_l[label];
    for (unsigned i = 0; i < kids.size(); i++) {
        bool i_th = ((choice_record_ >> i) & 1) == 1;
        outputResultToVectorOfLabel(kids[i], i_th);
    }
}

void LRST::set_points(RST *rst) {
    mst.set_rst(rst);
}

void LRST::get_result(RST *rst) {
    rst->v_seg.clear();
    for (size_t i = 0; i < m_result.size(); i++) {
        Point A(m_points[m_result[i].start()].x, m_points[m_result[i].start()].y);
        Point B(m_points[m_result[i].end()].x, m_points[m_result[i].end()].y);
        Point C;
        if (m_result[i].direction()) // horizontal
            C = Point(B.x, A.y);
        else
            C = Point(A.x, B.y);
        rst->v_seg.push_back(Segment(A, C));
        rst->v_seg.push_back(Segment(C, B));
    }
}