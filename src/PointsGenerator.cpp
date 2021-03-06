//
// Created by ZhuangTianYi on 15/7/11.
//

#include "PointsGenerator.h"

#include <ctime>
#include <cstdlib>
#include <fstream>
#include <string>
#include <set>
#include <random>

#include "RST.h"
#include "common.h"

void PointsGenerator::print_points_to_file(const std::string &filename, size_t num = NUM, int max_range = MAX_RANGE) {
    std::set<Point> points;
    std::ofstream fout(filename);
    std::mt19937 rand_generator(time(0));
    std::uniform_int_distribution<int> uniform(0, max_range);

    while (points.size() < num) {
        int x = uniform(rand_generator);
        int y = uniform(rand_generator);
        points.insert(Point(x, y));
    }
    for (std::set<Point>::iterator i = points.begin(); i != points.end(); ++i) {
        i->print(fout);
    }
    fout.close();
}

std::vector<Point> PointsGenerator::generate_points_from_file(const std::string &filename) {
    std::ifstream fin(filename);
    std::vector<Point> points;
    while (fin) {
        int x, y;
        fin >> x;
        if (fin >> y) {
            points.push_back(Point(x, y));
        }
    }
    fin.close();

    return points;
}

std::vector<Point> PointsGenerator::generate_points_from_RST(RST *rst) {
    std::vector<Point> points;
    for (size_t i = 0; i < rst->v_op.size(); i++) {
        int x = rst->v_op[i].x;
        int y = rst->v_op[i].y;

        points.push_back(Point(x, y));
    }

    return points;
}



