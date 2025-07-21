#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Fri Jul 18 08:43:59 2025
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
-999 1 1 186.518 2
1983 1 1 181.607 0.3
1984 1 1 152.668 0.3
1985 1 1 225.558 0.3
1986 1 1 125.948 0.3
1987 1 1 105.225 0.3
1988 1 1 110.946 0.3
1989 1 1 140.498 0.3
1990 1 1 166.026 0.3
1991 1 1 247.653 0.3
1992 1 1 191.96 0.3
1993 1 1 201.815 0.3
1994 1 1 191.815 0.3
1995 1 1 269.7 0.3
1996 1 1 243.988 0.3
1997 1 1 219.142 0.3
1998 1 1 224.882 0.3
1999 1 1 241.785 0.3
2000 1 1 390.173 0.3
2001 1 1 321.622 0.3
2002 1 1 269.607 0.3
2003 1 1 226.301 0.3
2004 1 1 185.224 0.3
2005 1 1 140.6 0.3
2006 1 1 152.201 0.3
2007 1 1 115.16 0.3
2008 1 1 218.262 0.3
2009 1 1 146.71 0.3
2010 1 1 151.139 0.3
2011 1 1 146.8 0.3
2012 1 1 191.324 0.3
2013 1 1 123.439 0.3
2014 1 1 215.747 0.3
2015 1 1 212.739 0.3
2016 1 1 195.895 0.3
2017 1 1 93.0539 0.3
2018 1 1 115.101 0.3
2019 1 1 149.241 0.3
2020 1 1 113.859 0.3
2021 1 1 125.404 0.3
2022 1 1 138.18 0.3
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
2014 7 2 2.11583 0.157593 #_orig_obs: 2.402 NCRMP
2016 7 2 1.70425 0.173376 #_orig_obs: 1.3882 NCRMP
2019 7 2 2.69079 0.151877 #_orig_obs: 2.6552 NCRMP
2021 7 2 2.61316 0.0892146 #_orig_obs: 2.6613 NCRMP
2001 7 3 2.13506 0.328262 #_orig_obs: 1.552 NCRMP_LAP
2002 7 3 1.7685 0.233985 #_orig_obs: 1.0606 NCRMP_LAP
2003 7 3 1.76961 0.30577 #_orig_obs: 1.141 NCRMP_LAP
2004 7 3 1.37373 0.325479 #_orig_obs: 0.9387 NCRMP_LAP
2005 7 3 1.11008 0.284051 #_orig_obs: 0.6827 NCRMP_LAP
2006 7 3 1.21186 0.187573 #_orig_obs: 1.4083 NCRMP_LAP
2007 7 3 1.49001 0.175982 #_orig_obs: 2.0197 NCRMP_LAP
2008 7 3 1.28122 0.264651 #_orig_obs: 1.4416 NCRMP_LAP
2009 7 3 1.5263 0.183398 #_orig_obs: 2.2779 NCRMP_LAP
2010 7 3 1.89854 0.16296 #_orig_obs: 1.3173 NCRMP_LAP
2011 7 3 1.97329 0.237337 #_orig_obs: 2.7879 NCRMP_LAP
2012 7 3 1.83564 0.397495 #_orig_obs: 5.1759 NCRMP_LAP
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
 1984 7 1 0 0 23  0.0276665 0.023419 0.0336362 0.150619 0.802505 2.73256 5.46387 6.38755 4.33669 1.89644 0.680298 0.26848 0.121427 0.0470348 0.0277981
 1985 7 1 0 0 38  0.045868 0.0400653 0.0507808 0.150817 0.990316 4.16795 8.96219 10.7136 7.43521 3.34501 1.23627 0.499942 0.228438 0.0856852 0.0478488
 1986 7 1 0 0 43  0.0568621 0.0435609 0.0526702 0.213877 1.70301 5.99146 10.5391 10.7911 7.11515 3.56896 1.58944 0.765554 0.378751 0.129406 0.0611256
 1987 7 1 0 0 15  0.0218831 0.0152188 0.0179581 0.0710272 0.720062 2.69416 3.73181 3.10459 2.11537 1.25276 0.650652 0.344372 0.177301 0.0583772 0.0244529
 1988 7 1 0 0 48  0.0565401 0.0490481 0.058311 0.215979 2.01669 7.83377 12.3639 10.9313 6.78217 3.62705 1.92486 1.1466 0.668207 0.23315 0.09246
 1989 7 1 0 0 35  0.0460003 0.0350572 0.0418568 0.183367 1.64365 5.71666 8.52377 7.74282 5.16756 2.85872 1.45866 0.830826 0.492483 0.182952 0.0756233
 1990 7 1 0 0 67  0.0993509 0.0677104 0.0750677 0.217525 2.50644 11.2841 17.4738 14.7982 9.4103 5.258 2.78223 1.60816 0.934962 0.34067 0.143514
 1991 7 1 0 0 302  0.367015 0.312409 0.38324 1.42421 11.2837 40.5956 71.075 72.7059 49.298 26.6066 13.4718 7.69202 4.49614 1.62498 0.663326
 1992 7 1 0 0 314  0.400695 0.316391 0.407876 2.28518 19.9758 60.2484 75.5338 61.6781 41.7097 24.6958 13.1261 7.36122 4.14809 1.48599 0.626771
 1993 7 1 0 0 170  0.205793 0.170715 0.188617 0.609099 7.67775 34.2722 49.3782 36.4903 19.8065 9.99505 5.21754 3.11887 1.86381 0.696761 0.308803
 1994 7 1 0 0 72  0.0833826 0.072219 0.0806332 0.235436 2.05617 9.19854 18.0354 18.677 12.0817 5.95432 2.72699 1.46773 0.859236 0.327203 0.143967
 1995 7 1 0 0 104  0.113388 0.104118 0.116353 0.359146 3.22448 12.7111 21.574 23.2288 18.6245 11.7084 6.19869 3.35335 1.81409 0.621732 0.247874
 1996 7 1 0 0 26  0.0341002 0.0258723 0.0283679 0.0838668 0.795166 3.30601 5.51517 5.46363 4.16133 2.78724 1.72614 1.10668 0.663063 0.224649 0.0787216
 1997 7 1 0 0 40  0.0437004 0.0405323 0.0443952 0.101296 0.962321 4.56721 8.3556 8.66328 6.55036 4.26265 2.66624 1.85013 1.25168 0.471723 0.168892
 1998 7 1 0 0 40  0.0438625 0.0398412 0.0465664 0.181556 1.34445 4.21696 7.22233 8.2897 6.83166 4.62608 2.91194 2.03141 1.42202 0.570569 0.221053
 1999 7 1 0 0 83  0.0880809 0.0825028 0.0870741 0.215455 2.61353 12.0116 17.9917 15.6015 11.7617 8.36874 5.60107 4.04364 2.87682 1.17708 0.479423
 2000 7 1 0 0 64  0.0662288 0.0635195 0.0673322 0.145827 1.19956 6.14969 13.3858 14.94 10.7828 6.57431 4.10491 3.00698 2.20829 0.922756 0.381968
 2001 7 1 0 0 44  0.0480166 0.0436027 0.0459774 0.100452 0.853963 3.85455 7.56544 9.29935 8.25035 5.69381 3.44084 2.28805 1.58681 0.65548 0.273314
 2002 7 1 0 0 73  0.0752926 0.0727742 0.0767915 0.151789 1.28939 6.21633 12.2202 14.3111 12.7073 9.63644 6.60167 4.69668 3.20218 1.24836 0.493676
 2003 7 1 0 0 82  0.0856392 0.0812587 0.0882804 0.237338 1.77665 6.77581 12.8897 15.5748 13.8999 10.5542 7.52804 5.81076 4.29249 1.73739 0.667769
 2004 7 1 0 0 88  0.0936173 0.087863 0.101436 0.276318 1.31686 4.67582 10.6083 16.1501 17.0669 13.4616 9.77377 7.13669 4.59742 1.88146 0.771882
 2005 7 1 0 0 72  0.0824628 0.0721679 0.086127 0.211327 0.731525 2.78104 8.48484 15.127 15.2397 10.8003 7.4059 5.35983 3.49981 1.47574 0.642197
 2006 7 1 0 0 119  0.12447 0.121602 0.159012 0.43277 1.39364 4.22287 11.4103 22.2035 26.2858 20.329 13.6293 9.28812 5.85142 2.45469 1.09345
 2007 7 1 0 0 107  0.125399 0.107095 0.154762 0.658644 2.07643 5.06281 11.0503 18.4686 21.0745 17.4315 12.8033 9.0949 5.63346 2.27353 0.984799
 2008 7 1 0 0 86  0.102418 0.0847395 0.0850883 0.0980061 0.30112 2.15854 9.50594 17.5807 16.5208 12.0569 11.1084 9.28244 4.67234 1.72318 0.719421
 2009 7 1 0 0 109  0.133272 0.107408 0.108511 0.143172 0.399635 2.31241 12.9555 29.6503 26.887 15.1498 10.1251 6.65024 2.91143 1.02776 0.438398
 2010 7 1 0 0 74  0.0857368 0.0729208 0.073828 0.107173 0.410195 2.39316 9.51702 18.0304 17.5497 11.4586 7.78595 4.38656 1.51079 0.439061 0.1789
 2011 7 1 0 0 41  0.0524154 0.0403993 0.0408118 0.0577912 0.228917 1.52241 6.64116 11.7737 9.24337 5.01326 3.33932 2.03008 0.733485 0.204994 0.0778658
 2012 7 1 0 0 56  0.062091 0.0551819 0.0556103 0.0706759 0.246638 1.77756 8.54146 16.6124 13.8779 7.28375 4.18827 2.17809 0.73664 0.219275 0.0944729
 2013 7 1 0 0 42  0.0506644 0.0413802 0.0415544 0.0547033 0.222602 1.48495 6.86791 13.4779 10.179 4.49978 2.57157 1.59738 0.654639 0.18397 0.0719775
 2014 7 1 0 0 97  0.101526 0.0955698 0.095865 0.116871 0.500933 3.81772 15.879 28.2303 21.8636 10.868 7.17423 5.0794 2.30308 0.654701 0.219179
 2015 7 1 0 0 66  0.0726871 0.0650257 0.0652958 0.086519 0.351075 2.30951 10.6173 20.371 15.0493 6.86714 4.46211 3.34548 1.65474 0.509005 0.173815
 2016 7 1 0 0 44  0.0612417 0.0433506 0.0434432 0.0518526 0.233605 1.88898 7.73916 13.1648 9.71956 4.6029 2.92977 2.08331 1.00477 0.317463 0.115762
 2017 7 1 0 0 25  0.0273914 0.0246319 0.024727 0.0291369 0.0913961 0.699601 3.7863 7.83805 5.9349 2.6942 1.71588 1.25917 0.615101 0.191201 0.0683218
 2018 7 1 0 0 37  0.0415851 0.0364541 0.0366714 0.0527042 0.217568 1.09633 4.43395 9.58076 8.80961 4.8396 3.39864 2.58954 1.30839 0.415849 0.142346
 2019 7 1 0 0 36  0.0404343 0.0354687 0.0355512 0.0434205 0.208868 1.63067 6.06895 9.29648 6.88823 3.84005 3.09543 2.68679 1.47449 0.487098 0.168062
 2020 7 1 0 0 3  0.00306535 0.00295572 0.0029617 0.00337944 0.0101802 0.0814097 0.443534 0.901126 0.665933 0.304963 0.215916 0.191326 0.115355 0.0421983 0.0156963
 2021 7 1 0 0 9  0.00953547 0.00886706 0.00888195 0.0101275 0.0284237 0.185868 0.960261 2.27603 2.15361 1.19368 0.856741 0.698223 0.400576 0.149529 0.0596514
 2022 7 1 0 0 35  0.0366858 0.0344831 0.0345156 0.037077 0.0929611 0.67339 3.36405 7.54237 7.42945 4.76643 4.0808 3.69568 2.14646 0.768318 0.297332
 2014 7 2 0 0 223  10.7087 13.1733 40.1467 43.7033 50.0184 21.9209 16.8843 11.4299 7.23936 4.07646 1.95928 0.848046 0.40095 0.261578 0.228853
 2016 7 2 0 0 240  15.7731 9.33848 31.4434 43.1498 59.8868 28.2062 21.5062 13.8956 8.36112 4.48367 2.07814 0.899446 0.438841 0.288953 0.250137
 2019 7 2 0 0 203  7.54993 7.21702 27.0819 40.1988 54.8552 24.676 17.2027 9.99842 6.06716 3.82879 2.19427 1.09206 0.518778 0.292058 0.226915
 2021 7 2 0 0 234  5.31348 5.06339 33.5268 51.6058 49.2281 20.3312 19.5601 18.1193 14.2346 8.86983 4.48267 2.00859 0.895255 0.450957 0.310022
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
 1 2001 7 3 0 0 36  0.00824508 0.023096 0.178955 0.410416 0.251443 0.069264 0.0411534 0.0138169 0.00307888 0.000531467
 1 2002 7 3 0 0 71  0.00458445 0.0526521 0.205952 0.362714 0.246767 0.0655715 0.040791 0.0165077 0.00385009 0.000610363
 1 2003 7 3 0 0 82  0.00395634 0.0164538 0.226411 0.447527 0.20147 0.0526067 0.0330068 0.0141569 0.0037757 0.000636075
 1 2004 7 3 0 0 83  0.00628634 0.0262525 0.137497 0.412372 0.303068 0.0600711 0.0344625 0.0149684 0.00422469 0.000797251
 1 2005 7 3 0 0 95  0.0144744 0.0392891 0.196008 0.354861 0.253849 0.0785246 0.0412992 0.0161798 0.00459149 0.000923425
 1 2006 7 3 0 0 100  0.00549142 0.0700408 0.265364 0.358235 0.189745 0.0557138 0.0366462 0.0142756 0.00373732 0.000751314
 1 2007 7 3 0 0 173  0.0094969 0.015134 0.240084 0.474342 0.184692 0.0376243 0.024326 0.0108485 0.00290231 0.000550307
 1 2008 7 3 0 0 86  0.0139848 0.0616183 0.188837 0.383129 0.280564 0.0439275 0.0185962 0.00709639 0.00190201 0.000344144
 1 2009 7 3 0 0 116  0.0116395 0.0581349 0.29831 0.404593 0.167786 0.0400634 0.0151348 0.00355207 0.000679997 0.000106636
 1 2010 7 3 0 0 74  0.00675778 0.0455221 0.261049 0.452344 0.193041 0.0266612 0.0113373 0.00285594 0.000391515 3.98344e-05
 1 2011 7 3 0 0 51  0.00997158 0.0297294 0.2221 0.45954 0.231756 0.0338298 0.0103104 0.00236638 0.000363632 3.2222e-05
 1 2012 7 3 0 0 35  0.00702621 0.0564043 0.228778 0.402428 0.244943 0.0432541 0.0141417 0.00266719 0.000327759 2.94892e-05
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

