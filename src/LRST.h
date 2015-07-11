//
// Created by ZhuangTianYi on 15/7/11.
//

#ifndef RECTILINEARSTEINERTREE_LRST_H
#define RECTILINEARSTEINERTREE_LRST_H

#include "Line.h"
#include "MST.h"
#include "PointsGenerator.h"
#include <vector>
#include <map>
#include <cstdlib>


class LRST {
public:
    LRST();

    void solve();

    int get_result();

    std::vector<Point> &points() {
        return m_points;
    }

    std::vector<Line> &lines() {
        return m_lines;
    }

    std::vector<Line_L> &result() {
        return m_result;
    }

private:
    int dist(Point x, Point y) {
        return std::abs(x.x - y.x) + std::abs(x.y - y.y);
    }

    MST mst;

    std::vector<Point> m_points;
    std::vector<Line> m_lines;

    void findPsi();

    std::vector<int> psi_l;
    std::vector<int> psi_u;
    int psi_result;

    std::vector<int> choice_l;
    std::vector<int> choice_u;

    int findPsiL(int label);

    int findPsiU(int label);

    int root;

    int find_root();

    std::vector<bool> has_set;
    std::vector<int> parent;
    std::vector<std::vector<int> > tree;

    void build_tree(int parent);

    std::vector<int> x_coord;
    std::vector<int> y_coord;

    void desperse_data();

    std::vector<Point> disp_points;

    std::map<Point, int> hori_line;
    std::map<Point, int> verti_line;

    void dfs(int parent, std::vector<int> & kids, size_t num,
             int & value, int & result, int choice, int & decision);

    void paint(Point start, Point middle, bool direction,
               int color, int &value);

    void paintHori(int u, int v, int y, int color, int &value);

    void paintVerti(int u, int v, int x, int color, int &value);

    std::vector<Line_L> m_result;

    void to_vector();

    void outputResultToVectorOfLabel(int label, bool choice);

public:
    void set_points(RST *rst);

    void get_result(RST *rst);
};


#endif //RECTILINEARSTEINERTREE_LRST_H
