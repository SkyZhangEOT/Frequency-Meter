
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name measure_f -dir "E:/measure_f/planAhead_run_1" -part xc3s250etq144-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/measure_f/ce_top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/measure_f} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "ce_top.ucf" [current_fileset -constrset]
add_files [list {ce_top.ucf}] -fileset [get_property constrset [current_run]]
open_netlist_design
