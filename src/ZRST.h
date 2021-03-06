//
// Created by ZhuangTianYi on 15/7/10.
//

#ifndef RECTILINEARSTEINERTREE_ZMST_H
#define RECTILINEARSTEINERTREE_ZMST_H

#include <cstdio>
#include <vector>
#include <map>
#include "Line.h"
#include "MST.h"


using std::vector;

class ZRST {
private:
    struct layout {
        Point mid_point;
        int sub_ans;
        int best_lay[8];

        layout() : sub_ans((~0u) >> 1) { }

        layout(const Point &mid_) : mid_point(mid_), sub_ans((~0u) >> 1) { }
    };

    MST mst;
    vector<Point> m_points;
    vector<Line_Z> m_lines;

    int root;

    int find_root();

    void find_layout(int label);

    vector<size_t> stack; // at most 6 child

    std::vector<bool> intree;
    std::vector<int> parent;
    std::vector<std::vector<int>> tree;

    void build_tree(size_t parent);

    std::vector<int> x_coord;
    std::vector<int> y_coord;

    void discretize_data();

    std::vector<Point> discr_points;

    std::map<Point, int> hori_lines;
    std::map<Point, int> verti_lines;


    vector<int> head;

    vector<vector<layout> > layouts;

    void get_ans(int root, const layout &lay);

    void dfs(int root, int father, size_t stat, layout &lay, vector<size_t>& stack);

public:
    ZRST() {}

    const vector<Point> &points() const {
        return mst.points();
    }

    const vector<Line_Z> &lines() const {
        return m_lines;
    }

    const Point &point(int i) const {
        return points()[i];
    }

    const Line &line(int i) const {
        return lines()[i];
    }

    void solve();

    void set_points(RST *rst);

    void get_result(RST *rst);

    int get_result();
};


#endif //RECTILINEARSTEINERTREE_ZMST_H
