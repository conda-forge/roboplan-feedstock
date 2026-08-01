cmake -S "%SRC_DIR%\%ROBOPLAN_PACKAGE%" ^
  -B build\%ROBOPLAN_PACKAGE% ^
  -G Ninja ^
  %CMAKE_ARGS% ^
  -DBUILD_PYTHON_BINDINGS=OFF
if errorlevel 1 exit 1
cmake --build build\%ROBOPLAN_PACKAGE%
if errorlevel 1 exit 1
cmake --install build\%ROBOPLAN_PACKAGE%
if errorlevel 1 exit 1
