set ROBOPLAN_LIBS=roboplan roboplan_example_models roboplan_oink roboplan_rrt roboplan_simple_ik roboplan_toppra roboplan_cartesian_planning
for %%l in (%ROBOPLAN_LIBS%) do (
  if not exist "%LIBRARY_BIN%\%%l.dll" exit 1
)
