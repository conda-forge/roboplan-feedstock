@echo off

cmake -S "%SRC_DIR%\roboplan_rrt" ^
      -B build\roboplan_rrt ^
      -G Ninja ^
      %CMAKE_ARGS%

if errorlevel 1 exit /b 1

cmake --build build\roboplan_rrt
if errorlevel 1 exit /b 1

cmake --install build\roboplan_rrt
if errorlevel 1 exit /b 1
