#! /bin/sh

cmake -S "${SRC_DIR}/roboplan_rrt" \
    -B build/roboplan_rrt \
    -G Ninja \
    ${CMAKE_ARGS} \
    -DCMAKE_CXX_FLAGS="${CMAKE_CXX_FLAGS} -D_LIBCPP_DISABLE_AVAILABILITY"

cmake --build build/roboplan_rrt
cmake --install build/roboplan_rrt
