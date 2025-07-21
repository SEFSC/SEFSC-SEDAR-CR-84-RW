#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Fri Jul 18 11:35:17 2025
#_expected_values
#C should work with SS version:
#C file created using an r4ss function
#C file write time: 2025-05-23  11:35:05
#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
1983 #_StartYr
2022 #_EndYr
1 #_Nseas
 12 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
1 #_spawn_month
1 #_Nsexes: 1, 2, -1  (use -1 for 1 sex setup with SSB multiplied by female_frac parameter)
26 #_Nages=accumulator age, first age is always age 0
1 #_Nareas
3 #_Nfleets (including surveys)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=predator(M2) 
#_sample_timing: -1 for fishing fleet to use season-long catch-at-age for observations, or 1 to use observation month;  (always 1 for surveys)
#_fleet_area:  area the fleet/survey operates in 
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read later)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type fishery_timing area catch_units need_catch_mult fleetname
 1 -1 1 1 0 Commercial  # 1
 3 1 1 1 0 NCRMP  # 2
 3 1 1 1 0 NCRMP_LAP  # 3
#Bycatch_fleet_input_goes_next
#a:  fleet index
#b:  1=include dead bycatch in total dead catch for F0.1 and MSY optimizations and forecast ABC; 2=omit from total catch for these purposes (but still include the mortality)
#c:  1=Fmult scales with other fleets; 2=bycatch F constant at input value; 3=bycatch F from range of years
#d:  F or first year of range
#e:  last year of range
#f:  not used
# a   b   c   d   e   f 
#_catch:_columns_are_year,season,fleet,catch,catch_se
#_Catch data: yr, seas, fleet, catch, catch_se
-999 1 1 189.239 2
1983 1 1 182.383 0.3
1984 1 1 155.083 0.3
1985 1 1 242.645 0.3
1986 1 1 161.676 0.3
1987 1 1 145.985 0.3
1988 1 1 140.66 0.3
1989 1 1 167.208 0.3
1990 1 1 180.398 0.3
1991 1 1 302.914 0.3
1992 1 1 194.635 0.3
1993 1 1 188.282 0.3
1994 1 1 179.084 0.3
1995 1 1 255.253 0.3
1996 1 1 232.703 0.3
1997 1 1 207.243 0.3
1998 1 1 217.203 0.3
1999 1 1 235.466 0.3
2000 1 1 361.405 0.3
2001 1 1 312.701 0.3
2002 1 1 269.831 0.3
2003 1 1 242.184 0.3
2004 1 1 200.064 0.3
2005 1 1 148.788 0.3
2006 1 1 169.135 0.3
2007 1 1 115.62 0.3
2008 1 1 181.017 0.3
2009 1 1 118.104 0.3
2010 1 1 131.225 0.3
2011 1 1 121.36 0.3
2012 1 1 160.168 0.3
2013 1 1 106.773 0.3
2014 1 1 186.032 0.3
2015 1 1 189.395 0.3
2016 1 1 187.061 0.3
2017 1 1 97.272 0.3
2018 1 1 123.944 0.3
2019 1 1 146.246 0.3
2020 1 1 107.133 0.3
2021 1 1 125.16 0.3
2022 1 1 137.898 0.3
-9999 0 0 0 0
#
#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; 1=lognormal with bias correction; >1=df for T-dist
#_SD_Report: 0=not; 1=include survey expected value with se
#_Fleet Units Errtype SD_Report
1 1 0 0 # Commercial
2 0 0 0 # NCRMP
3 0 0 0 # NCRMP_LAP
#_year month index obs err
2014 7 2 1.91128 0.157593 #_orig_obs: 2.402 NCRMP
2016 7 2 1.94037 0.173376 #_orig_obs: 1.3882 NCRMP
2019 7 2 2.51548 0.151877 #_orig_obs: 2.6552 NCRMP
2021 7 2 2.66989 0.0892146 #_orig_obs: 2.6613 NCRMP
2001 7 3 2.20096 0.328262 #_orig_obs: 1.552 NCRMP_LAP
2002 7 3 1.98696 0.233985 #_orig_obs: 1.0606 NCRMP_LAP
2003 7 3 1.70654 0.30577 #_orig_obs: 1.141 NCRMP_LAP
2004 7 3 1.40129 0.325479 #_orig_obs: 0.9387 NCRMP_LAP
2005 7 3 1.19905 0.284051 #_orig_obs: 0.6827 NCRMP_LAP
2006 7 3 1.22028 0.187573 #_orig_obs: 1.4083 NCRMP_LAP
2007 7 3 1.35234 0.175982 #_orig_obs: 2.0197 NCRMP_LAP
2008 7 3 1.37338 0.264651 #_orig_obs: 1.4416 NCRMP_LAP
2009 7 3 1.55313 0.183398 #_orig_obs: 2.2779 NCRMP_LAP
2010 7 3 1.81483 0.16296 #_orig_obs: 1.3173 NCRMP_LAP
2011 7 3 1.91516 0.237337 #_orig_obs: 2.7879 NCRMP_LAP
2012 7 3 1.98277 0.397495 #_orig_obs: 5.1759 NCRMP_LAP
-9999 1 1 1 1 # terminator for survey observations 
#
0 #_N_fleets_with_discard
#_discard_units (1=same_as_catchunits(bio/num); 2=fraction; 3=numbers)
#_discard_errtype:  >0 for DF of T-dist(read CV below); 0 for normal with CV; -1 for normal with se; -2 for lognormal; -3 for trunc normal with CV
# note: only enter units and errtype for fleets with discard 
# note: discard data is the total for an entire season, so input of month here must be to a month in that season
#_Fleet units errtype
# -9999 0 0 0.0 0.0 # terminator for discard data 
#
0 #_use meanbodysize_data (0/1)
#_COND_0 #_DF_for_meanbodysize_T-distribution_like
# note:  type=1 for mean length; type=2 for mean body weight 
#_yr month fleet part type obs stderr
#  -9999 0 0 0 0 0 0 # terminator for mean body size data 
#
# set up population length bin structure (note - irrelevant if not using size data and using empirical wtatage
2 # length bin method: 1=use databins; 2=generate from binwidth,min,max below; 3=read vector
1 # binwidth for population size comp 
0 # minimum size in the population (lower edge of first bin and size at age 0.00) 
56 # maximum size in the population (lower edge of last bin) 
1 # use length composition data (0/1/2) where 2 invokes new comp_comtrol format
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined sex below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet using Theta*n, 2=dirichlet using beta, 3=MV_Tweedie
#_ParmSelect:  consecutive index for dirichlet or MV_Tweedie
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_Using old format for composition controls
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
-1 0.001 0 0 0 0 0.001 #_fleet:1_Commercial
-1 0.001 0 0 0 0 0.001 #_fleet:2_NCRMP
-1 0.001 0 0 0 0 0.001 #_fleet:3_NCRMP_LAP
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sex*length distribution
# partition codes:  (0=combined; 1=discard; 2=retained
15 #_N_LengthBins
 6 9 12 15 18 21 24 27 30 33 36 39 42 45 48
#_yr month fleet sex part Nsamp datavector(female-male)
 1984 7 1 0 0 23  0.0345996 0.0235321 0.0300149 0.112257 0.700183 2.70021 5.579 6.42127 4.33757 1.89426 0.647505 0.268133 0.151058 0.0643969 0.0360198
 1985 7 1 0 0 38  0.0641364 0.0386872 0.0497045 0.190064 1.17685 4.47074 9.13705 10.5013 7.15946 3.18296 1.11249 0.470589 0.269163 0.114225 0.0625664
 1986 7 1 0 0 43  0.0617613 0.043121 0.0489642 0.194744 1.97937 7.64245 11.6809 9.98138 5.94626 2.91737 1.34402 0.650073 0.315595 0.125319 0.0687144
 1987 7 1 0 0 15  0.0229434 0.0150924 0.0174765 0.0634326 0.585544 2.41252 3.94743 3.55103 2.22255 1.14221 0.545237 0.268702 0.130212 0.0498333 0.0257927
 1988 7 1 0 0 48  0.0956437 0.0479068 0.056512 0.229423 1.93307 7.01521 11.5006 11.2077 7.60477 4.19145 2.13479 1.1131 0.559316 0.2099 0.100586
 1989 7 1 0 0 35  0.0516785 0.0349731 0.0387483 0.15075 1.54254 5.56194 8.19708 7.4999 5.26796 3.1457 1.73418 0.969225 0.515646 0.197554 0.0921149
 1990 7 1 0 0 67  0.0921726 0.0676755 0.0763806 0.236728 2.28791 10.2706 16.9273 14.9192 9.64497 5.59948 3.21505 1.92493 1.0923 0.437063 0.208185
 1991 7 1 0 0 302  0.482836 0.302656 0.381067 1.65598 11.7852 41.3534 71.6291 71.9294 47.8816 25.8257 13.5761 7.83832 4.5243 1.8886 0.945624
 1992 7 1 0 0 314  0.471241 0.313789 0.362589 1.96962 20.0933 60.0225 74.0396 63.0009 43.4319 24.9762 12.8668 6.74697 3.52772 1.42894 0.747914
 1993 7 1 0 0 170  0.222916 0.170088 0.188703 0.631647 7.43194 33.6451 49.2212 35.9325 19.8138 10.65 5.87563 3.34628 1.79196 0.711781 0.366385
 1994 7 1 0 0 72  0.116682 0.0717093 0.0803641 0.247739 2.09234 9.53318 18.8426 18.7882 11.3635 5.40496 2.60989 1.46893 0.844843 0.354836 0.180205
 1995 7 1 0 0 104  0.135769 0.103331 0.113144 0.367215 3.28676 12.2235 21.3739 24.3716 19.3921 11.4684 5.742 2.92224 1.53853 0.632507 0.328988
 1996 7 1 0 0 26  0.0305707 0.0260784 0.0282497 0.0795139 0.779858 3.30144 5.42452 5.33658 4.22647 2.95516 1.84561 1.08392 0.570881 0.211449 0.0997007
 1997 7 1 0 0 40  0.048871 0.0398216 0.0462519 0.146732 1.05357 4.44931 8.31069 8.61547 6.34757 4.19179 2.81391 1.96662 1.23957 0.503374 0.226448
 1998 7 1 0 0 40  0.0456577 0.0396249 0.0429529 0.157796 1.46866 4.73323 7.41493 8.10836 6.53334 4.34681 2.78926 1.96564 1.36981 0.644869 0.339081
 1999 7 1 0 0 83  0.095776 0.0822673 0.0861851 0.207284 2.36216 11.1851 17.7462 15.9398 12.0784 8.5361 5.74903 4.01494 2.75199 1.34285 0.821802
 2000 7 1 0 0 64  0.0685215 0.0633421 0.0669371 0.141816 1.15913 6.25629 13.6628 14.7567 10.3397 6.4137 4.23016 3.06164 2.12572 1.01903 0.634496
 2001 7 1 0 0 44  0.047803 0.0436099 0.045745 0.104571 0.842454 3.53772 7.45633 9.77185 8.48825 5.54916 3.30635 2.1755 1.48006 0.714524 0.436073
 2002 7 1 0 0 73  0.0767294 0.0722118 0.0769757 0.177621 1.44526 6.39495 11.7514 13.7194 12.8542 10.079 6.88629 4.54701 2.85352 1.29003 0.775421
 2003 7 1 0 0 82  0.0974256 0.0811311 0.0845206 0.202557 1.80104 7.4035 13.7391 15.3758 12.9329 10.0007 7.64536 5.85757 4.00488 1.7867 0.986792
 2004 7 1 0 0 88  0.102064 0.0875717 0.10554 0.299916 1.29042 4.55647 10.6539 16.8503 17.3 12.942 9.66786 7.00316 4.09868 1.91253 1.12954
 2005 7 1 0 0 72  0.0803273 0.0726251 0.0834221 0.225519 0.908193 3.06284 8.35842 14.6454 14.9975 10.8936 7.76159 5.29842 3.05444 1.51451 1.04318
 2006 7 1 0 0 119  0.156845 0.120112 0.163639 0.45776 1.35726 4.51465 11.9584 22.3625 25.6669 19.6955 13.9419 9.24355 5.11231 2.45676 1.79178
 2007 7 1 0 0 107  0.14209 0.107428 0.143781 0.58117 1.96456 4.44054 9.95688 18.293 21.463 17.8396 13.6716 9.31072 5.07129 2.3532 1.66122
 2008 7 1 0 0 86  0.100532 0.0847297 0.0848495 0.0989445 0.322623 2.06219 8.40583 16.5485 17.5884 13.3734 11.7328 8.7219 3.9574 1.72393 1.19405
 2009 7 1 0 0 109  0.142013 0.10739 0.107736 0.132861 0.400112 2.85378 14.5309 28.8192 23.911 13.8612 10.5763 7.50564 3.42354 1.54406 1.08428
 2010 7 1 0 0 74  0.0901548 0.0729069 0.0731179 0.0974836 0.368206 1.95953 8.86984 20.1195 19.1097 10.5377 6.36903 3.6658 1.50851 0.672116 0.486424
 2011 7 1 0 0 41  0.0528968 0.0403944 0.0404966 0.0520324 0.220202 1.4852 5.90082 10.5731 9.63696 5.94172 3.87918 2.05471 0.689819 0.259711 0.172725
 2012 7 1 0 0 56  0.0738443 0.0551728 0.0553292 0.0698169 0.252086 1.81069 8.77966 16.7975 13.1559 6.76891 4.33468 2.4894 0.876426 0.309142 0.171424
 2013 7 1 0 0 42  0.0453743 0.0413807 0.0415203 0.0531368 0.239162 1.6559 7.20946 13.6992 9.99327 4.19979 2.39254 1.4682 0.603235 0.232354 0.125456
 2014 7 1 0 0 97  0.1201 0.0955701 0.095918 0.12001 0.518034 3.84247 15.9362 28.7183 22.1705 10.8869 7.19858 4.57518 1.75816 0.628288 0.335823
 2015 7 1 0 0 66  0.0934068 0.065026 0.0652953 0.0847814 0.367675 2.56364 10.9884 19.8862 14.4705 6.88246 4.86292 3.46267 1.44645 0.510957 0.249649
 2016 7 1 0 0 44  0.0473305 0.043351 0.0434494 0.0549121 0.270954 1.88003 7.42547 13.1282 9.72326 4.56135 3.08326 2.19334 0.976232 0.376725 0.192115
 2017 7 1 0 0 25  0.0336267 0.0246316 0.0247076 0.0289954 0.109602 0.953952 4.27667 7.51149 5.43357 2.59018 1.80453 1.28746 0.569971 0.225535 0.125082
 2018 7 1 0 0 37  0.0401929 0.0364539 0.0365963 0.045337 0.148607 0.970837 5.00546 10.7624 8.61886 4.24412 3.05584 2.29477 1.0635 0.429349 0.247697
 2019 7 1 0 0 36  0.0381687 0.035469 0.0355361 0.0436087 0.186415 1.11107 4.26211 8.80531 8.15264 4.65975 3.6132 2.8068 1.34708 0.563343 0.339492
 2020 7 1 0 0 3  0.00317684 0.00295571 0.00296416 0.00343939 0.0117691 0.0976649 0.414745 0.716533 0.579776 0.349797 0.312469 0.269608 0.137361 0.059612 0.0381293
 2021 7 1 0 0 9  0.00943799 0.00886706 0.00887947 0.0102976 0.033472 0.21444 1.0789 2.28647 1.83173 0.982002 0.866861 0.821793 0.469605 0.222343 0.154906
 2022 7 1 0 0 35  0.0364338 0.034483 0.0345108 0.037421 0.109109 0.82532 3.72115 7.87994 7.34154 4.28912 3.60305 3.2895 1.9632 1.02097 0.814254
 2014 7 2 0 0 223  7.32577 11.1822 45.7701 44.5197 36.5562 29.6345 20.8889 13.4462 8.2549 3.40381 0.798149 0.445705 0.297726 0.245125 0.231025
 2016 7 2 0 0 240  18.5071 9.32018 30.347 45.4661 47.7008 35.6994 23.6137 14.9021 8.77085 3.47195 0.832561 0.497386 0.342291 0.275036 0.253522
 2019 7 2 0 0 203  7.82322 10.0262 27.6403 41.0995 41.682 27.6295 17.4637 12.87 9.58633 4.47835 1.12456 0.647438 0.399437 0.282214 0.247231
 2021 7 2 0 0 234  5.23407 4.32455 28.1763 47.5645 43.6505 32.2483 27.4963 21.4042 13.7172 5.97049 1.64063 1.0702 0.681329 0.444573 0.376822
-9999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
#
26 #_N_age_bins
 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
1 #_N_ageerror_definitions
 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined sex below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet using Theta*n, 2=dirichlet using beta, 3=MV_Tweedie
#_ParmSelect:  parm number for dirichlet or MV_Tweedie
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
-1 0.001 0 0 0 0 0.001 #_fleet:1_Commercial
-1 0.001 0 0 0 0 0.001 #_fleet:2_NCRMP
-1 0.001 0 0 0 0 0.001 #_fleet:3_NCRMP_LAP
3 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sex*length distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
0 #_Use_MeanSize-at-Age_obs (0/1)
#
0 #_N_environ_variables
# -2 in yr will subtract mean for that env_var; -1 will subtract mean and divide by stddev (e.g. Z-score)
#Yr Variable Value
#
# Sizefreq data. Defined by method because a fleet can use multiple methods
1 # N sizefreq methods to read (or -1 for expanded options)
# each row below has entry for each sizefreq method 
#_ 1  # Method
 10 #_Sizefreq N bins
 2 #_Sizefreq units(1=bio/2=num)
 3 #_Sizefreq scale(1=kg/2=lbs/3=cm/4=inches)
 1e-09 #_Sizefreq:  small constant to add to comps
 12 #_Sizefreq number of obs per method
#_Sizefreq bins. one row for each method
#Note: negative value for first bin makes it accumulate all smaller fish vs. truncate small fish
1 6 11 16 21 26 31 36 41 46
#_method year month fleet sex partition SampleSize <data> 
 1 2001 7 3 0 0 36  0.00265762 0.0347247 0.191862 0.426098 0.22304 0.0711936 0.0356713 0.0110168 0.00293202 0.000803404
 1 2002 7 3 0 0 71  0.00411593 0.0196442 0.217299 0.418358 0.230106 0.0585542 0.0344371 0.0133196 0.00333118 0.000834037
 1 2003 7 3 0 0 82  0.00298911 0.0240932 0.158148 0.462398 0.242942 0.0595379 0.0308617 0.0138153 0.00420207 0.00101246
 1 2004 7 3 0 0 83  0.0102183 0.0234807 0.169444 0.402246 0.276474 0.0669034 0.0321888 0.013161 0.00454906 0.00133444
 1 2005 7 3 0 0 95  0.00693414 0.0574988 0.169924 0.383614 0.248559 0.0765742 0.0367612 0.0140015 0.00456893 0.001563
 1 2006 7 3 0 0 100  0.00684748 0.0394207 0.292286 0.352558 0.193946 0.0616883 0.0345887 0.0132359 0.00405699 0.00137197
 1 2007 7 3 0 0 173  0.0142825 0.0362578 0.222009 0.466992 0.172381 0.0448072 0.0268361 0.0116564 0.00361851 0.00115998
 1 2008 7 3 0 0 86  0.00942802 0.0687263 0.209543 0.421319 0.223781 0.0371482 0.0183028 0.0081341 0.00274003 0.000877629
 1 2009 7 3 0 0 116  0.00846817 0.0474489 0.317474 0.381099 0.18625 0.039696 0.0131331 0.00448833 0.0014595 0.00048317
 1 2010 7 3 0 0 74  0.00987484 0.0400444 0.247027 0.482209 0.169436 0.0340316 0.0130764 0.00325377 0.000796853 0.000250759
 1 2011 7 3 0 0 51  0.00739165 0.0479198 0.222229 0.450047 0.222863 0.0329526 0.0122998 0.00348016 0.000666421 0.00015054
 1 2012 7 3 0 0 35  0.00965377 0.0404485 0.256886 0.422027 0.213725 0.0413527 0.0120352 0.00309777 0.000656397 0.000117423
#
0 # do tags (0/1)
#
0 #    morphcomp data(0/1) 
#  Nobs, Nmorphs, mincomp
#  yr, seas, type, partition, Nsamp, datavector_by_Nmorphs
#
0  #  Do dataread for selectivity priors(0/1)
# Yr, Seas, Fleet,  Age/Size,  Bin,  selex_prior,  prior_sd
# feature not yet implemented
#
999

