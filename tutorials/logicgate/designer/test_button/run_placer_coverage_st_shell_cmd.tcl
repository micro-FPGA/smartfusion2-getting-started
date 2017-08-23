read_sdc -scenario "place_and_route" -netlist "user" -pin_separator "/" -ignore_errors {D:/sandbox/logicgate/designer/test_button/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {D:\sandbox\logicgate\designer\test_button\test_button_place_and_route_constraint_coverage.xml}]
set reportfile {D:\sandbox\logicgate\designer\test_button\coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp
