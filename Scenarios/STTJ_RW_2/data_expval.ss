#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Fri Jul 18 09:40:51 2025
#_expected_values
#C should work with SS version:
#C file created using an r4ss function
#C file write time: 2025-05-09  09:06:55
#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
2012 #_StartYr
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
 3 1 1 1 0 DCRMP  # 3
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
-999 1 1 28.3801 2
2012 1 1 21.5363 2
2013 1 1 28.5971 2
2014 1 1 0.92294 2
2015 1 1 2.4425 2
2016 1 1 24.255 2
2017 1 1 6.05127 2
2018 1 1 9.07863 2
2019 1 1 56.6302 2
2020 1 1 6.41966 2
2021 1 1 3.58475 2
2022 1 1 5.39033 2
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
3 0 0 0 # DCRMP
#_year month index obs err
2013 7 2 0.882974 0.5365 #_orig_obs: 2.1829 NCRMP
2015 7 2 1.14134 0.1645 #_orig_obs: 0.9797 NCRMP
2017 7 2 1.34124 0.2411 #_orig_obs: 1.2912 NCRMP
2019 7 2 1.48539 0.1743 #_orig_obs: 1.5945 NCRMP
2021 7 2 1.30166 0.201 #_orig_obs: 1.3455 NCRMP
2020 7 3 1.46545 0.2185 #_orig_obs: 1.8498 DCRMP
2021 7 3 1.50912 0.2062 #_orig_obs: 1.5038 DCRMP
2022 7 3 1.56474 0.2189 #_orig_obs: 1.2435 DCRMP
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
-1 0.001 0 0 0 0 0.001 #_fleet:3_DCRMP
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sex*length distribution
# partition codes:  (0=combined; 1=discard; 2=retained
18 #_N_LengthBins
 2 8 11 14 17 20 23 26 29 32 35 38 41 44 47 50 53 56
#_yr month fleet sex part Nsamp datavector(female-male)
 2012 -7 1 0 0 208  0.204364 0.204341 0.204342 0.204343 0.204344 0.204352 13.6106 51.0401 43.0932 34.4691 25.5938 17.3348 10.5893 5.8118 2.88593 1.33475 0.622245 0.388282
 2013 7 -1 0 0 11  0.0108077 0.0108065 0.0108066 0.0108066 0.0108067 0.0108071 0.719793 2.69923 2.27897 1.82289 1.35352 0.916744 0.560009 0.307355 0.152621 0.0705877 0.0329072 0.0205341
 2016 7 -1 0 0 25  0.024563 0.0245602 0.0245604 0.0245605 0.0245606 0.0245615 1.63589 6.13462 5.17947 4.14293 3.07618 2.08351 1.27275 0.698534 0.346866 0.160427 0.0747891 0.0466685
 2017 7 -1 0 0 32  0.0314406 0.0314371 0.0314373 0.0314374 0.0314376 0.0314388 2.09394 7.85232 6.62972 5.30294 3.93751 2.66689 1.62912 0.894123 0.443989 0.205346 0.09573 0.0597357
 2018 7 -1 0 0 34  0.0334057 0.0334019 0.0334021 0.0334022 0.0334024 0.0334037 2.22482 8.34309 7.04408 5.63438 4.1836 2.83357 1.73094 0.950006 0.471738 0.21818 0.101713 0.0634691
 2019 7 -1 0 0 36  0.0353707 0.0353668 0.0353669 0.0353671 0.0353673 0.0353686 2.35569 8.83386 7.45844 5.96581 4.4297 3.00025 1.83276 1.00589 0.499487 0.231014 0.107696 0.0672026
 2020 7 -1 0 0 3  0.00294756 0.00294723 0.00294724 0.00294726 0.00294727 0.00294738 0.196307 0.736155 0.621536 0.497151 0.369141 0.250021 0.15273 0.0838241 0.0416239 0.0192512 0.00897469 0.00560022
 2021 7 -1 0 0 14  0.0137553 0.0137537 0.0137538 0.0137539 0.0137539 0.0137545 0.916101 3.43539 2.9005 2.32004 1.72266 1.16676 0.712739 0.391179 0.194245 0.0898389 0.0418819 0.0261344
 2022 -7 -1 0 0 15  0.0147378 0.0147361 0.0147362 0.0147363 0.0147364 0.0147369 0.981536 3.68077 3.10768 2.48576 1.84571 1.2501 0.763649 0.41912 0.20812 0.096256 0.0448735 0.0280011
 2013 7 2 0 0 275  36.6436 19.9149 20.0302 31.55 51.3319 55.3438 38.9696 14.8325 2.97719 0.977707 0.476477 0.319866 0.279872 0.271678 0.270333 0.270157 0.270139 0.270138
 2015 7 2 0 0 255  32.5745 21.4619 21.2164 26.9808 37.5576 42.4489 36.6713 19.3026 6.52765 3.89113 2.65857 1.50834 0.750353 0.403122 0.287113 0.257573 0.251619 0.250659
 2017 7 2 0 0 237  30.0094 19.2245 19.0078 24.7898 35.4997 40.4706 34.4589 17.3142 5.4696 3.26848 2.52406 1.80063 1.1714 0.722862 0.452838 0.315809 0.258561 0.24086
 2019 7 2 0 0 322  22.2312 35.0916 38.0139 43.7177 52.1993 52.0899 40.3207 19.0624 6.0006 3.73503 2.99331 2.20618 1.49882 0.985258 0.658938 0.472261 0.37799 0.344907
 2021 7 2 0 0 165  13.9744 16.7622 17.4327 18.5763 20.3425 22.0214 22.9415 15.566 6.24371 3.89563 2.77764 1.76463 1.04208 0.61697 0.387019 0.265786 0.205103 0.184494
 2020 7 3 0 0 162  0.159683 0.224179 1.96014 13.351 26.9197 29.566 30.5908 27.6986 15.4168 6.58754 3.63528 2.2426 1.43589 0.900008 0.546121 0.338162 0.232053 0.195647
 2021 7 3 0 0 98  0.0966475 0.129335 1.01103 6.89668 14.1718 15.6522 16.438 16.4034 11.1483 6.19588 4.09913 2.54168 1.43907 0.790389 0.439502 0.25451 0.161913 0.130465
 2022 7 3 0 0 89  0.0879253 0.125825 1.12688 7.1836 12.6914 12.4611 12.977 13.4779 9.80511 6.12093 4.74066 3.46665 2.2083 1.24021 0.640708 0.327274 0.182331 0.136216
-9999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
#
0 #_N_age_bins
# 0 #_N_ageerror_definitions
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined sex below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet using Theta*n, 2=dirichlet using beta, 3=MV_Tweedie
#_ParmSelect:  parm number for dirichlet or MV_Tweedie
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
# 0 0 0 0 0 0 0 #_fleet:1_Commercial
# 0 0 0 0 0 0 0 #_fleet:2_NCRMP
# 0 0 0 0 0 0 0 #_fleet:3_DCRMP
# 0 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sex*length distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
# -9999  0 0 0 0 0 0 0 0
#
0 #_Use_MeanSize-at-Age_obs (0/1)
#
0 #_N_environ_variables
# -2 in yr will subtract mean for that env_var; -1 will subtract mean and divide by stddev (e.g. Z-score)
#Yr Variable Value
#
# Sizefreq data. Defined by method because a fleet can use multiple methods
0 # N sizefreq methods to read (or -1 for expanded options)
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

