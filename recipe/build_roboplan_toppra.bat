@echo off

cmake -S "%SRC_DIR%\roboplan_toppra" ^
      -B build\roboplan_toppra ^
      -G Ninja ^
      %CMAKE_ARGS%

if errorlevel 1 exit /b 1

cmake --build build\roboplan_toppra
if errorlevel 1 exit /b 1

cmake --install build\roboplan_toppra
if errorlevel 1 exit /b 1
