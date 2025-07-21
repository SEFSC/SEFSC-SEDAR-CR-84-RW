#C file created using an r4ss function
#C file write time: 2025-06-02  11:30:16
#
0 # 0 means do not read wtatage.ss; 1 means read and usewtatage.ss and also read and use growth parameters
1 #_N_Growth_Patterns
1 #_N_platoons_Within_GrowthPattern
3 # recr_dist_method for parameters
1 # not yet implemented; Future usage:Spawner-Recruitment; 1=global; 2=by area
4 # number of recruitment settlement assignments 
0 # unused option
# for each settlement assignment:
#_GPattern	month	area	age
1	 1	1	0	#_recr_dist_pattern1
1	 4	1	0	#_recr_dist_pattern2
1	 7	1	0	#_recr_dist_pattern3
1	10	1	0	#_recr_dist_pattern4
#
#_Cond 0 # N_movement_definitions goes here if N_areas > 1
#_Cond 1.0 # first age that moves (real age at begin of season, not integer) also cond on do_migration>0
#_Cond 1 1 1 2 4 10 # example move definition for seas=1, morph=1, source=1 dest=2, age1=4, age2=10
#
1 #_Nblock_Patterns
 4 #_blocks_per_pattern 
# begin and end years of blocks
 1982 1985 1986 2003 2004 2007 2008 2012
#
# controls for all timevary parameters 
1 #_env/block/dev_adjust_method for all time-vary parms (1=warn relative to base parm bounds; 3=no bound check)
#
# AUTOGEN
1 1 1 1 1 # autogen: 1st element for biology, 2nd for SR, 3rd for Q, 4th reserved, 5th for selex
# where: 0 = autogen all time-varying parms; 1 = read each time-varying parm line; 2 = read then autogen if parm min==-12345
#
# setup for M, growth, maturity, fecundity, recruitment distibution, movement
#
0 #_natM_type:_0=1Parm; 1=N_breakpoints;_2=Lorenzen;_3=agespecific;_4=agespec_withseasinterpolate;_5=Maunder_M;_6=Age-range_Lorenzen
#_no additional input for selected M option; read 1P per morph
1 # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=age_specific_K_incr; 4=age_specific_K_decr;5=age_specific_K_each; 6=NA; 7=NA; 8=growth cessation
0 #_Age(post-settlement)_for_L1;linear growth below this
999 #_Growth_Age_for_L2 (999 to use as Linf)
0 #_exponential decay for growth above maxage (value should approx initial Z; -999 replicates 3.24; -998 to not allow growth above maxage)
0 #_placeholder for future growth feature
#
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 logSD=F(A)
1 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturity matrix by growth_pattern; 4=read age-fecundity; 5=disabled; 6=read length-maturity
0 #_First_Mature_Age
2 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)eggs=a+b*L; (5)eggs=a+b*W
0 #_hermaphroditism option:  0=none; 1=female-to-male age-specific fxn; -1=male-to-female age-specific fxn
1 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-GP1, 3=like SS2 V1.x)
#
#_growth_parms
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env_var&link	dev_link	dev_minyr	dev_maxyr	dev_PH	Block	Block_Fxn
0.001	   2	    0.208	    -2.92	0.22	0	 -1	0	0	0	0	0	0	0	#_NatM_p_1_Fem_GP_1            
  -50	 100	    0.001	        0	  10	0	 -3	0	0	0	0	0	0	0	#_L_at_Amin_Fem_GP_1           
    1	 80	     42.4	     42.4	  10	0	  -2	0	0	0	0	0	0	0	#_L_at_Amax_Fem_GP_1           
0.001	   2	     0.23	     0.23	0.05	0	 -3	0	0	0	0	0	0	0	#_VonBert_K_Fem_GP_1           
0.001	   5	     0.15	     0.15	 0.5	0	 -4	0	0	0	0	0	0	0	#_CV_young_Fem_GP_1            
0.001	   5	     0.15	     0.15	 0.5	0	 -4	0	0	0	0	0	0	0	#_CV_old_Fem_GP_1              
    0	   3	 2.93e-05	    1e-05	  99	0	-99	0	0	0	0	0	0	0	#_Wtlen_1_Fem_GP_1             
    2	   4	   2.8642	        3	  99	0	-99	0	0	0	0	0	0	0	#_Wtlen_2_Fem_GP_1             
1e-04	1000	     19.4	     19.4	  99	0	-99	0	0	0	0	0	0	0	#_Mat50%_Fem_GP_1              
   -2	   4	-0.499057	-0.499057	  99	0	-99	0	0	0	0	0	0	0	#_Mat_slope_Fem_GP_1           
    0	   3	    1e-05	    1e-05	 0.8	0	 -3	0	0	0	0	0	0	0	#_Eggs_alpha_Fem_GP_1          
    0	  10	        3	        3	 0.8	0	 -3	0	0	0	0	0	0	0	#_Eggs_beta_Fem_GP_1           
  0.1	  10	        1	        1	   1	0	 -1	0	0	0	0	0	0	0	#_RecrDist_GP_1_area_1_month_1 
  0.1	  10	        1	        1	   1	0	 -1	0	0	0	0	0	0	0	#_RecrDist_GP_1_area_1_month_4 
  0.1	  10	        1	        1	   1	0	 -1	0	0	0	0	0	0	0	#_RecrDist_GP_1_area_1_month_7 
  0.1	  10	        1	        1	   1	0	 -1	0	0	0	0	0	0	0	#_RecrDist_GP_1_area_1_month_10
  0.1	  10	        1	        1	   1	0	 -1	0	0	0	0	0	0	0	#_CohortGrowDev                
 0.01	0.99	      0.5	      0.5	 0.5	0	-99	0	0	0	0	0	0	0	#_FracFemale_GP_1              
#_no timevary MG parameters
#
#_seasonal_effects_on_biology_parms
0 0 0 0 0 0 0 0 0 0 #_femwtlen1,femwtlen2,mat1,mat2,fec1,fec2,Malewtlen1,malewtlen2,L1,K
#_ LO HI INIT PRIOR PR_SD PR_type PHASE
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no seasonal MG parameters
#
3 #_Spawner-Recruitment; 2=Ricker; 3=std_B-H; 4=SCAA;5=Hockey; 6=B-H_flattop; 7=survival_3Parm;8=Shepard_3Parm
0 # 0/1 to use steepness in initial equ recruitment calculation
0 # future feature: 0/1 to make realized sigmaR a function of SR curvature
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn # parm_name
1e-04	20	6.96029	   7	  99	0	  1	0	0	0	0	0	0	0	#_SR_LN(R0)  
  0.2	 1	   0.99	0.99	0.24	0	 -1	0	0	0	0	0	0	0	#_SR_BH_steep
    0	 2	    0.7	 0.7	  99	0	 -6	0	0	0	0	0	0	0	#_SR_sigmaR  
   -5	 5	      0	   0	  99	0	-99	0	0	0	0	0	0	0	#_SR_regime  
    0	 2	      0	   1	  99	0	-99	0	0	0	0	0	0	0	#_SR_autocorr
#_no timevary SR parameters
1 #do_recdev:  0=none; 1=devvector (R=F(SSB)+dev); 2=deviations (R=F(SSB)+dev); 3=deviations (R=R0*dev; dev2=R-f(SSB)); 4=like 3 with sum(dev2) adding penalty
1983 # first year of main recr_devs; early devs can preceed this era
2022 # last year of main recr_devs; forecast devs start in following year
5 #_recdev phase
1 # (0/1) to read 13 advanced options
0 #_recdev_early_start (0=none; neg value makes relative to recdev_start)
-4 #_recdev_early_phase
-4 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxphase+1)
1 #_lambda for Fcast_recr_like occurring before endyr+1
1945.1   #_last_early_yr_nobias_adj_in_MPD 
2019.7   #_first_yr_fullbias_adj_in_MPD 
2019.8   #_last_yr_fullbias_adj_in_MPD 
2021.1   #_first_recent_yr_nobias_adj_in_MPD 
0.7987  #_max_bias_adj_in_MPD (1.0 to mimic pre-2009 models) 
0 #_period of cycles in recruitment (N parms read below)
-5 #min rec_dev
5 #max rec_dev
0 #_read_recdevs
#_end of advanced SR options
#
#_placeholder for full parameter lines for recruitment cycles
# read specified recr devs
#_Yr Input_value
#
#Fishing Mortality info
0.03 # F ballpark
-1999 # F ballpark year (neg value to disable)
2 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
4 # max F or harvest rate, depends on F_Method
0.05 # N iterations for tuning F in hybrid method (recommend 3 to 7)
1
0
#
#_initial_F_parms
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE
0	10	0.705922	1	999	0	1	#_InitF_seas_1_flt_1Commercial
#
#_Q_setup for fleets with cpue or survey data
#_fleet	link	link_info	extra_se	biasadj	float  #  fleetname
     3         1         0         0         0         1  #  NCRMP_PR
     4         1         0         0         0         1  #  NCRMP_PR_LAP 
     5         1         0         0         0         1  #  NCRMP_STTSTJ
     6         1         0         0         0         1  #  NCRMP_STT  
     7         1         0         0         0         1  #  DCRMP
-9999	0	0	0	0	0	#_terminator
#_Q_parms(if_any);Qunits_are_ln(q)
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
-15	15	-6.72466	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_NCRMP_PR(3)
-15	15	-6.72466	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_NCRMP_PR_LAP(4)
-15	15	-6.72466	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_NCRMP_STTSTJ(5)
-15	15	-6.72466	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_NCRMP_STT(6)
-15	15	-6.72466	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_DCRMP(7)
#_no timevary Q parameters
#
#_size_selex_patterns
#_Pattern	Discard	Male	Special
27	0	0	9	#_1 Commercial_PR
27	0	0	9	#_2 Commercial_STTSTJ
24	0	0	0	#_3 NCRMP_PR 
24	0	0	0	#_4 NCRMP_PR_LAP  
24	0	0	0	#_5 NCRMP_STTSTJ 
24	0	0	0	#_6 NCRMP_STT 
24	0	0	0	#_7 DCRMP_STTSTJ       
#
#_age_selex_patterns
#_Pattern	Discard	Male	Special
0	0	0	0	#_1 Commercial_PR
0	0	0	0	#_2 Commercial_STTSTJ
0	0	0	0	#_3 NCRMP_PR 
0	0	0	0	#_4 NCRMP_PR_LAP  
0	0	0	0	#_5 NCRMP_STTSTJ 
0	0	0	0	#_6 NCRMP_STT 
0	0	0	0	#_7 DCRMP_STTSTJ  
#
#_SizeSelex
#_          LO            HI          INIT         PRIOR         PR_SD       PR_type      PHASE    env-var    use_dev   dev_mnyr   dev_mxyr     dev_PH      Block    Blk_Fxn  #  parm_name
# 1   Commercial_PR LenSelex
             0            55             0            25            99             0         3          0          0          0          0          0          0          0  #  SizeSpline_Code_Commercial_PR(1)
        -0.001             1             0         0.001            99             0         -1          0          0          0          0          0          0          0  #  SizeSpline_GradLo_Commercial_PR(1)
            -1         0.001             0        -0.001            99             0         3          0          0          0          0          0          0          0  #  SizeSpline_GradHi_Commercial_PR(1)
             0            70             1             1            99             0         -1          0          0          0          0          0          0          0  #  SizeSpline_Knot_1_Commercial_PR(1)
             0            70            15            25            99             0         -1          0          0          0          0          0          0          0  #  SizeSpline_Knot_2_Commercial_PR(1)
             0            70            20            25            99             0         -1          0          0          0          0          0          0          0  #  SizeSpline_Knot_3_Commercial_PR(1)
             0            70            25            25            99             0         -1          0          0          0          0          0          0          0  #  SizeSpline_Knot_4_Commercial_PR(1)
             0            70            30            35            99             0         -3          0          0          0          0          0          0          0  #  SizeSpline_Knot_5_Commercial_PR(1)
             0            70            35            40            99             0         -1          0          0          0          0          0          0          0  #  SizeSpline_Knot_6_Commercial_PR(1)
             0            70            40            50            99             0         3          0          0          0          0          0          0          0  #  SizeSpline_Knot_7_Commercial_PR(1)
             0            70            45            50            99             0         3          0          0          0          0          0          0          0  #  SizeSpline_Knot_8_Commercial_PR(1)
             0            70            55            58            99             0         3          0          0          0          0          0          0          0  #  SizeSpline_Knot_9_Commercial_PR(1)
           -20             0           -10             1            99             0         -1          0          0          0          0          0          0          0  #  SizeSpline_Val_1_Commercial_PR(1)
           -10            -6       -8.2277             1            99             0         -1          0          0          0          0          0          1          2  #  SizeSpline_Val_2_Commercial_PR(1)
            -6            -2      -5.21044             1            99             0         -1          0          0          0          0          0          1          2  #  SizeSpline_Val_3_Commercial_PR(1)
            -2         -0.75      -1.66528             1            99             0         -1          0          0          0          0          0          1          2  #  SizeSpline_Val_4_Commercial_PR(1)
         -0.75         -0.55     -0.550205             1            99             0         -1          0          0          0          0          0          1          2  #  SizeSpline_Val_5_Commercial_PR(1)
         -0.55          -0.5     -0.549868             1            99             0         -1          0          0          0          0          0          1          2  #  SizeSpline_Val_6_Commercial_PR(1)
          -0.5          -0.2     -0.201639             1            99             0         -1          0          0          0          0          0          1          2  #  SizeSpline_Val_7_Commercial_PR(1)
          -0.2             0    -0.0114856             1            99             0         -1          0          0          0          0          0          1          2  #  SizeSpline_Val_8_Commercial_PR(1)
             0             0             0             1            99             0         -1          0          0          0          0          0          0          0  #  SizeSpline_Val_9_Commercial_PR(1)
# 2   Commercial_STTSTJ LenSelex
             0            55             0            25            99             0         3          0          0          0          0          0          0          0  #  SizeSpline_Code_Commercial_STTSTJ(2)
        -0.001             1             0         0.001            99             0         -1          0          0          0          0          0          0          0  #  SizeSpline_GradLo_Commercial_STTSTJ(2)
            -1         0.001             0        -0.001            99             0         3          0          0          0          0          0          0          0  #  SizeSpline_GradHi_Commercial_STTSTJ(2)
             0            70             1             1            99             0         -1          0          0          0          0          0          0          0  #  SizeSpline_Knot_1_Commercial_STTSTJ(2)
             0            70            15            25            99             0         -1          0          0          0          0          0          0          0  #  SizeSpline_Knot_2_Commercial_STTSTJ(2)
             0            70            20            25            99             0         -1          0          0          0          0          0          0          0  #  SizeSpline_Knot_3_Commercial_STTSTJ(2)
             0            70            25            25            99             0         -1          0          0          0          0          0          0          0  #  SizeSpline_Knot_4_Commercial_STTSTJ(2)
             0            70            30            35            99             0         3          0          0          0          0          0          0          0  #  SizeSpline_Knot_5_Commercial_STTSTJ(2)
             0            70            35            40            99             0         -1          0          0          0          0          0          0          0  #  SizeSpline_Knot_6_Commercial_STTSTJ(2)
             0            70            40            50            99             0         3          0          0          0          0          0          0          0  #  SizeSpline_Knot_7_Commercial_STTSTJ(2)
             0            70            45            50            99             0         3          0          0          0          0          0          0          0  #  SizeSpline_Knot_8_Commercial_STTSTJ(2)
             0            70            55            58            99             0         3          0          0          0          0          0          0          0  #  SizeSpline_Knot_9_Commercial_STTSTJ(2)
           -20             0           -10             1            99             0         -1          0          0          0          0          0          0          0  #  SizeSpline_Val_1_Commercial_STTSTJ(2)
           -10          -6.5       -7.4989             1            99             0         -1          0          0          0          0          0          1          2  #  SizeSpline_Val_2_Commercial_STTSTJ(2)
          -6.5            -4      -6.49606             1            99             0         -1          0          0          0          0          0          1          2  #  SizeSpline_Val_3_Commercial_STTSTJ(2)
            -4         -0.75      -2.21463             1            99             0         -1          0          0          0          0          0          1          2  #  SizeSpline_Val_4_Commercial_STTSTJ(2)
         -0.75          -0.6     -0.747734             1            99             0         -1          0          0          0          0          0          1          2  #  SizeSpline_Val_5_Commercial_STTSTJ(2)
          -0.6          -0.4     -0.599003             1            99             0         -1          0          0          0          0          0          1          2  #  SizeSpline_Val_6_Commercial_STTSTJ(2)
          -0.4          -0.3     -0.399236             1            99             0         -1          0          0          0          0          0          1          2  #  SizeSpline_Val_7_Commercial_STTSTJ(2)
          -0.3             0  -0.000627872             1            99             0         -1          0          0          0          0          0          1          2  #  SizeSpline_Val_8_Commercial_STTSTJ(2)
             0             0             0             1            99             0         -1          0          0          0          0          0          0          0  #  SizeSpline_Val_9_Commercial_STTSTJ(2)
# 3   NCRMP_PR LenSelex
             6            48       14.1195             7            99             0          3          0          0          0          0          0          0          0  #  Size_DblN_peak_NCRMP_PR(3)
           -15            15      -1.06686            15            99             0          1          0          0          0          0          0          0          0  #  Size_DblN_top_logit_NCRMP_PR(3)
            -4            12       1.72551        4.5254            99             0          3          0          0          0          0          0          0          0  #  Size_DblN_ascend_se_NCRMP_PR(3)
           -15             6      -5.59981           -15            99             0          1          0          0          0          0          0          0          0  #  Size_DblN_descend_se_NCRMP_PR(3)
          -999            15      -1.45237           -10            99             0          2          0          0          0          0          0          0          0  #  Size_DblN_start_logit_NCRMP_PR(3)
           -15            20     -0.576522            15            99             0          1          0          0          0          0          0          0          0  #  Size_DblN_end_logit_NCRMP_PR(3)
# 4   NCRMP_PR_LAP LenSelex
             6            48        17.006             7            99             0          3          0          0          0          0          0          0          0  #  Size_DblN_peak_NCRMP_PR_LAP(4)
           -15            15      -1.77527            15            99             0          1          0          0          0          0          0          0          0  #  Size_DblN_top_logit_NCRMP_PR_LAP(4)
            -4            12       2.78909        4.5254            99             0          3          0          0          0          0          0          0          0  #  Size_DblN_ascend_se_NCRMP_PR_LAP(4)
           -15             6      -14.9103           -15            99             0          1          0          0          0          0          0          0          0  #  Size_DblN_descend_se_NCRMP_PR_LAP(4)
          -999            15      -2.97988           -10            99             0          2          0          0          0          0          0          0          0  #  Size_DblN_start_logit_NCRMP_PR_LAP(4)
           -15            20      -1.47586            15            99             0          1          0          0          0          0          0          0          0  #  Size_DblN_end_logit_NCRMP_PR_LAP(4)
# 5   NCRMP_STTSTJ LenSelex
             6            48       23.0095             7            99             0          3          0          0          0          0          0          0          0  #  Size_DblN_peak_NCRMP_STTSTJ(5)
           -15            15      -11.1337            15            99             0          1          0          0          0          0          0          0          0  #  Size_DblN_top_logit_NCRMP_STTSTJ(5)
            -4            12       3.79692        4.5254            99             0          3          0          0          0          0          0          0          0  #  Size_DblN_ascend_se_NCRMP_STTSTJ(5)
           -15             6       4.97085           -15            99             0          1          0          0          0          0          0          0          0  #  Size_DblN_descend_se_NCRMP_STTSTJ(5)
          -999            15     -0.747651           -10            99             0          2          0          0          0          0          0          0          0  #  Size_DblN_start_logit_NCRMP_STTSTJ(5)
           -15            20      -1.70428            15            99             0          1          0          0          0          0          0          0          0  #  Size_DblN_end_logit_NCRMP_STTSTJ(5)
# 6   NCRMP_STT LenSelex
             6            48       16.5253             7            99             0          3          0          0          0          0          0          0          0  #  Size_DblN_peak_NCRMP_STT(6)
           -15            15      -1.16495            15            99             0          1          0          0          0          0          0          0          0  #  Size_DblN_top_logit_NCRMP_STT(6)
            -4            12       1.46895        4.5254            99             0          3          0          0          0          0          0          0          0  #  Size_DblN_ascend_se_NCRMP_STT(6)
           -15             6      -1.49342           -15            99             0          1          0          0          0          0          0          0          0  #  Size_DblN_descend_se_NCRMP_STT(6)
          -999            15     -0.501907           -10            99             0          2          0          0          0          0          0          0          0  #  Size_DblN_start_logit_NCRMP_STT(6)
           -15            20     -0.898251            15            99             0          1          0          0          0          0          0          0          0  #  Size_DblN_end_logit_NCRMP_STT(6)
# 7   DCRMP_STTSTJ LenSelex
             6            48       29.4735             7            99             0          3          0          0          0          0          0          0          0  #  Size_DblN_peak_DCRMP_STTSTJ(7)
           -15            15      -1.40253            15            99             0          1          0          0          0          0          0          0          0  #  Size_DblN_top_logit_DCRMP_STTSTJ(7)
            -4            12        4.3423        4.5254            99             0          3          0          0          0          0          0          0          0  #  Size_DblN_ascend_se_DCRMP_STTSTJ(7)
           -15             6       -4.4999           -15            99             0          1          0          0          0          0          0          0          0  #  Size_DblN_descend_se_DCRMP_STTSTJ(7)
          -999            15      -3.82682           -10            99             0          2          0          0          0          0          0          0          0  #  Size_DblN_start_logit_DCRMP_STTSTJ(7)
           -15            20       1.17136            15            99             0          1          0          0          0          0          0          0          0  #  Size_DblN_end_logit_DCRMP_STTSTJ(7)  
#_AgeSelex     
#_AgeSelex
#_No age_selex_parm
# timevary selex parameters 
# timevary selex parameters 
#_          LO            HI          INIT         PRIOR         PR_SD       PR_type    PHASE  #  parm_name
           -10            -6      -6.03948             1            99             0      5  # SizeSpline_Val_2_Commercial_PR(1)_BLK1repl_1982
           -10            -6      -7.15877             1            99             0      5  # SizeSpline_Val_2_Commercial_PR(1)_BLK1repl_1986
           -10            -6      -6.45983             1            99             0      5  # SizeSpline_Val_2_Commercial_PR(1)_BLK1repl_2004
           -10            -6      -8.98767             1            99             0      5  # SizeSpline_Val_2_Commercial_PR(1)_BLK1repl_2008
            -6            -2      -3.01957             1            99             0      5  # SizeSpline_Val_3_Commercial_PR(1)_BLK1repl_1982
            -6            -2       -2.8627             1            99             0      5  # SizeSpline_Val_3_Commercial_PR(1)_BLK1repl_1986
            -6            -2      -4.06792             1            99             0      5  # SizeSpline_Val_3_Commercial_PR(1)_BLK1repl_2004
            -6            -2      -5.69629             1            99             0      5  # SizeSpline_Val_3_Commercial_PR(1)_BLK1repl_2008
            -2         -0.65     -0.950414             1            99             0      5  # SizeSpline_Val_4_Commercial_PR(1)_BLK1repl_1982
            -2         -0.65     -0.931497             1            99             0      5  # SizeSpline_Val_4_Commercial_PR(1)_BLK1repl_1986
            -2         -0.85      -1.99968             1            99             0      5  # SizeSpline_Val_4_Commercial_PR(1)_BLK1repl_2004
            -2         -0.85      -1.99727             1            99             0      5  # SizeSpline_Val_4_Commercial_PR(1)_BLK1repl_2008
         -0.65         -0.55     -0.550521             1            99             0      5  # SizeSpline_Val_5_Commercial_PR(1)_BLK1repl_1982
         -0.65         -0.55     -0.584474             1            99             0      5  # SizeSpline_Val_5_Commercial_PR(1)_BLK1repl_1986
         -0.85         -0.55     -0.843637             1            99             0      5  # SizeSpline_Val_5_Commercial_PR(1)_BLK1repl_2004
         -0.85         -0.55     -0.562555             1            99             0      5  # SizeSpline_Val_5_Commercial_PR(1)_BLK1repl_2008
         -0.55          -0.4     -0.548196             1            99             0      5  # SizeSpline_Val_6_Commercial_PR(1)_BLK1repl_1982
         -0.55          -0.4     -0.549814             1            99             0      5  # SizeSpline_Val_6_Commercial_PR(1)_BLK1repl_1986
         -0.55          -0.4       -0.5327             1            99             0      5  # SizeSpline_Val_6_Commercial_PR(1)_BLK1repl_2004
         -0.55          -0.4     -0.546904             1            99             0      5  # SizeSpline_Val_6_Commercial_PR(1)_BLK1repl_2008
          -0.4          -0.2     -0.399037             1            99             0      5  # SizeSpline_Val_7_Commercial_PR(1)_BLK1repl_1982
          -0.4          -0.2     -0.375809             1            99             0      5  # SizeSpline_Val_7_Commercial_PR(1)_BLK1repl_1986
          -0.4          -0.2     -0.203057             1            99             0      5  # SizeSpline_Val_7_Commercial_PR(1)_BLK1repl_2004
          -0.4          -0.2     -0.200726             1            99             0      5  # SizeSpline_Val_7_Commercial_PR(1)_BLK1repl_2008
          -0.2             0     -0.194143             1            99             0      5  # SizeSpline_Val_8_Commercial_PR(1)_BLK1repl_1982
          -0.2             0  -0.000502905             1            99             0      5  # SizeSpline_Val_8_Commercial_PR(1)_BLK1repl_1986
          -0.2             0  -0.000722821             1            99             0      5  # SizeSpline_Val_8_Commercial_PR(1)_BLK1repl_2004
          -0.2             0     -0.198947             1            99             0      5  # SizeSpline_Val_8_Commercial_PR(1)_BLK1repl_2008
           -10            -7      -9.46657             1            99             0      5  # SizeSpline_Val_2_Commercial_STTSTJ(2)_BLK1repl_1982
           -10            -7      -9.49595             1            99             0      5  # SizeSpline_Val_2_Commercial_STTSTJ(2)_BLK1repl_1986
           -10            -7      -9.15622             1            99             0      5  # SizeSpline_Val_2_Commercial_STTSTJ(2)_BLK1repl_2004
           -10            -7      -8.04782             1            99             0      5  # SizeSpline_Val_2_Commercial_STTSTJ(2)_BLK1repl_2008
            -7            -4      -6.86553             1            99             0      5  # SizeSpline_Val_3_Commercial_STTSTJ(2)_BLK1repl_1982
            -7            -4      -6.96875             1            99             0      5  # SizeSpline_Val_3_Commercial_STTSTJ(2)_BLK1repl_1986
            -7            -4      -6.58413             1            99             0      5  # SizeSpline_Val_3_Commercial_STTSTJ(2)_BLK1repl_2004
            -7            -4      -6.99879             1            99             0      5  # SizeSpline_Val_3_Commercial_STTSTJ(2)_BLK1repl_2008
            -4         -1.85      -3.99272             1            99             0      5  # SizeSpline_Val_4_Commercial_STTSTJ(2)_BLK1repl_1982
            -4         -1.85      -3.99804             1            99             0      5  # SizeSpline_Val_4_Commercial_STTSTJ(2)_BLK1repl_1986
            -4         -1.85      -3.06705             1            99             0      5  # SizeSpline_Val_4_Commercial_STTSTJ(2)_BLK1repl_2004
            -4         -1.85      -3.05336             1            99             0      5  # SizeSpline_Val_4_Commercial_STTSTJ(2)_BLK1repl_2008
         -1.85         -0.55      -1.84915             1            99             0      5  # SizeSpline_Val_5_Commercial_STTSTJ(2)_BLK1repl_1982
         -1.85         -0.55      -1.75651             1            99             0      5  # SizeSpline_Val_5_Commercial_STTSTJ(2)_BLK1repl_1986
         -1.85         -0.55        -1.309             1            99             0      5  # SizeSpline_Val_5_Commercial_STTSTJ(2)_BLK1repl_2004
         -1.85         -0.55      -1.40338             1            99             0      5  # SizeSpline_Val_5_Commercial_STTSTJ(2)_BLK1repl_2008
         -0.55          -0.3     -0.548676             1            99             0      5  # SizeSpline_Val_6_Commercial_STTSTJ(2)_BLK1repl_1982
         -0.55          -0.3     -0.414193             1            99             0      5  # SizeSpline_Val_6_Commercial_STTSTJ(2)_BLK1repl_1986
         -0.55          -0.4     -0.548363             1            99             0      5  # SizeSpline_Val_6_Commercial_STTSTJ(2)_BLK1repl_2004
         -0.55          -0.4     -0.549918             1            99             0      5  # SizeSpline_Val_6_Commercial_STTSTJ(2)_BLK1repl_2008
          -0.3         -0.05    -0.0507727             1            99             0      5  # SizeSpline_Val_7_Commercial_STTSTJ(2)_BLK1repl_1982
          -0.3         -0.05    -0.0530074             1            99             0      5  # SizeSpline_Val_7_Commercial_STTSTJ(2)_BLK1repl_1986
          -0.4          -0.1     -0.280047             1            99             0      5  # SizeSpline_Val_7_Commercial_STTSTJ(2)_BLK1repl_2004
          -0.4          -0.1     -0.399125             1            99             0      5  # SizeSpline_Val_7_Commercial_STTSTJ(2)_BLK1repl_2008
         -0.05             0   -0.00154282             1            99             0      5  # SizeSpline_Val_8_Commercial_STTSTJ(2)_BLK1repl_1982
         -0.05             0   -0.00592018             1            99             0      5  # SizeSpline_Val_8_Commercial_STTSTJ(2)_BLK1repl_1986
          -0.1             0    -0.0022034             1            99             0      5  # SizeSpline_Val_8_Commercial_STTSTJ(2)_BLK1repl_2004
          -0.1             0  -0.000134383             1            99             0      5  # SizeSpline_Val_8_Commercial_STTSTJ(2)_BLK1repl_2008
# info on dev vectors created for selex parms are reported with other devs after tag parameter section
#
0 #  use 2D_AR1 selectivity(0/1):  experimental feature
#_no 2D_AR1 selex offset used
# Tag loss and Tag reporting parameters go next
0 # TG_custom:  0=no read; 1=read if tags exist
#_Cond -6 6 1 1 2 0.01 -4 0 0 0 0 0 0 0  #_placeholder if no parameters
#
# Input variance adjustments factors: 
#_Data_type Fleet Value
-9999 1 0 # terminator
#
15 #_maxlambdaphase
1 #_sd_offset; must be 1 if any growthCV, sigmaR, or survey extraSD is an estimated parameter
# read 4 changes to default Lambdas (default value is 1.0)
#_like_comp	fleet	phase	value	sizefreq_method
     4	1	1	.5	1	#_init_equ_catch_NCRMP_Phz1  
     4	2	1	.5	1	#_init_equ_catch_NCRMP_Phz1  
#    8	1	1	1	1	#_catch_Commercial_Phz1         
#    8	2	1	1	1	#_catch_NCRMP_Phz1              
#    9	1	1	1	1	#_init_equ_catch_Commercial_Phz1
#    9	2	1	1	1	#_init_equ_catch_NCRMP_Phz1  
-9999	0	0	0	0	#_terminator                    
#
0 # 0/1 read specs for more stddev reporting
#
999
