//
// Created by ZhuangTianYi on 15/7/10.
//

#ifndef RECTILINEARSTEINERTREE_ZMST_H
#define RECTILINEARSTEINERTREE_ZMST_H

#include <cstdio>
#include <vector>
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
    vector<Line_Z> m_lines;

    void get_ans(int root, const layout &lay,
                 const vector<vector<layout> > subProb,
                 const vector<int> &head);

    void dfs(int root, int father, int stat, ZRST::layout &lay,
             const vector<Line_Z> &lines, vector<vector<layout> > &subProb,
             const vector<int>& head, vector<size_t>& stack);

public:
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

public:
    void setPointsFromRST(RST *rst);

    void getResult(RST *rst);
};


#endif //RECTILINEARSTEINERTREE_ZMST_H
