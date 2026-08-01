set -ex

ROBOPLAN_LIBS="roboplan roboplan_example_models roboplan_oink roboplan_rrt roboplan_simple_ik roboplan_toppra roboplan_cartesian_planning"

for lib in ${ROBOPLAN_LIBS}; do
  test -f "${PREFIX}/lib/lib${lib}${SHLIB_EXT}"
done
