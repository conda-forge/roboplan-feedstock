#! /bin/sh

cmake -S "${SRC_DIR}/roboplan_toppra" \
    -B build/roboplan_toppra \
    -G Ninja \
    ${CMAKE_ARGS} \
    -DCMAKE_CXX_FLAGS="${CMAKE_CXX_FLAGS} -D_LIBCPP_DISABLE_AVAILABILITY"

cmake --build build/roboplan_toppra
cmake --install build/roboplan_toppra
