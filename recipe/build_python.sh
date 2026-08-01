set -ex

cmake -S "${SRC_DIR}/${ROBOPLAN_PACKAGE}" \
  -B "build/${ROBOPLAN_PACKAGE}_python" \
  -G Ninja \
  ${CMAKE_ARGS} \
  -DPython_EXECUTABLE=${PYTHON} \
  -DPython3_EXECUTABLE=${PYTHON} \
  -DBUILD_PYTHON_BINDINGS=ON \
  -DGENERATE_PYTHON_STUBS=ON \
  -DCMAKE_CXX_FLAGS="${CMAKE_CXX_FLAGS} -D_LIBCPP_DISABLE_AVAILABILITY"
cmake --build "build/${ROBOPLAN_PACKAGE}_python"
cmake --install "build/${ROBOPLAN_PACKAGE}_python"
