#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Thu Jul 17 10:52:11 2025
#_expected_values
#C should work with SS version:
#C file created using an r4ss function
#C file write time: 2025-05-08  13:51:57
#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
2012 #_StartYr
2022 #_EndYr
1 #_Nseas
 12 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
1 #_spawn_month
2 #_Nsexes: 1, 2, -1  (use -1 for 1 sex setup with SSB multiplied by female_frac parameter)
12 #_Nages=accumulator age, first age is always age 0
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
-999 1 1 34.3719 0.3
2012 1 1 15.7926 0.3
2013 1 1 10.4696 0.3
2014 1 1 12.9819 0.3
2015 1 1 10.5486 0.3
2016 1 1 12.7807 0.3
2017 1 1 10.1295 0.3
2018 1 1 9.58953 0.3
2019 1 1 10.726 0.3
2020 1 1 11.1111 0.3
2021 1 1 7.08795 0.3
2022 1 1 8.02051 0.3
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
2013 7 2 1.71969 0.5365 #_orig_obs: 2.1829 NCRMP
2015 7 2 1.51127 0.1645 #_orig_obs: 0.9797 NCRMP
2017 7 2 1.33701 0.2411 #_orig_obs: 1.2912 NCRMP
2019 7 2 1.21897 0.1743 #_orig_obs: 1.5945 NCRMP
2021 7 2 1.01612 0.201 #_orig_obs: 1.3455 NCRMP
2020 7 3 1.62829 0.2185 #_orig_obs: 1.8498 DCRMP
2021 7 3 1.53072 0.2062 #_orig_obs: 1.5038 DCRMP
2022 7 3 1.38535 0.2189 #_orig_obs: 1.2435 DCRMP
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
 2012 -7 1 0 0 208  0.204351 0.204334 0.204335 0.204336 0.204338 0.204345 14.0178 46.3753 42.9388 36.6327 27.963 18.6632 10.7517 5.35241 2.357 0.982073 0.449038 0.29106 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2013 7 -1 0 0 11  0.010807 0.0108061 0.0108062 0.0108063 0.0108063 0.0108067 0.741327 2.45254 2.2708 1.93731 1.47881 0.986995 0.568599 0.28306 0.124649 0.0519365 0.0237472 0.0153926 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2016 7 -1 0 0 25  0.0245614 0.0245594 0.0245595 0.0245597 0.0245598 0.0245607 1.68483 5.57395 5.16091 4.40297 3.36093 2.24317 1.29227 0.643319 0.283293 0.118038 0.0539709 0.0349832 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2017 7 -1 0 0 32  0.0314386 0.0314361 0.0314362 0.0314364 0.0314366 0.0314377 2.15659 7.13465 6.60597 5.6358 4.30199 2.87126 1.65411 0.823448 0.362615 0.151088 0.0690827 0.0447785 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2018 7 -1 0 0 34  0.0334035 0.0334008 0.033401 0.0334012 0.0334013 0.0334025 2.29137 7.58057 7.01884 5.98803 4.57087 3.05071 1.75749 0.874914 0.385278 0.160531 0.0734004 0.0475771 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2019 7 -1 0 0 36  0.0353684 0.0353656 0.0353657 0.0353659 0.0353661 0.0353674 2.42616 8.02649 7.43171 6.34027 4.83974 3.23017 1.86087 0.926379 0.407942 0.169974 0.0777181 0.0503758 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2020 7 -1 0 0 3  0.00294737 0.00294713 0.00294714 0.00294716 0.00294718 0.00294728 0.20218 0.668874 0.61931 0.528356 0.403312 0.269181 0.155072 0.0771983 0.0339951 0.0141645 0.0064765 0.00419798 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2021 7 -1 0 0 14  0.0137544 0.0137533 0.0137533 0.0137534 0.0137535 0.013754 0.943507 3.12141 2.89011 2.46566 1.88212 1.25618 0.723672 0.360259 0.158644 0.066101 0.0302237 0.0195906 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2022 -7 -1 0 0 15  0.0147368 0.0147357 0.0147357 0.0147358 0.0147359 0.0147364 1.0109 3.34437 3.09655 2.64178 2.01656 1.3459 0.775362 0.385991 0.169976 0.0708225 0.0323825 0.0209899 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2013 7 2 0 0 275  26.3172 19.4146 30.0711 43.6208 46.4542 44.5791 38.3829 16.744 4.09635 1.87677 1.05526 0.600097 0.388394 0.306444 0.279729 0.272334 0.270579 0.270233 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2015 7 2 0 0 255  30.5642 26.9095 31.4072 35.4477 32.6393 31.0912 33.5869 19.0442 5.84506 3.19374 2.02551 1.16101 0.639816 0.388822 0.291474 0.260723 0.252686 0.250992 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2017 7 2 0 0 237  29.2099 22.7519 26.5979 31.1016 31.645 31.7504 31.3999 16.6314 5.36436 3.44609 2.6379 1.76154 1.03036 0.573782 0.353023 0.268141 0.241615 0.23515 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2019 7 2 0 0 322  33.1559 28.2816 37.7983 48.1538 45.9389 41.7728 40.6323 22.2969 7.46194 4.92988 3.96195 2.88089 1.86332 1.1029 0.651182 0.436163 0.352777 0.328486 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2021 7 2 0 0 165  19.4372 13.3251 16.9671 21.1849 21.5003 22.0642 23.3754 13.004 4.25685 2.79213 2.29601 1.74307 1.1925 0.746018 0.448076 0.282477 0.205332 0.17938 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2020 7 3 0 0 162  0.160494 0.275442 2.4796 13.0005 24.6129 28.5299 28.1018 25.9815 16.5729 7.68804 5.30213 3.85098 2.48226 1.41442 0.737793 0.386507 0.235381 0.18749 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2021 7 3 0 0 98  0.0967877 0.14294 1.43191 9.02492 14.4474 14.8863 16.3363 16.7101 10.6269 4.80253 3.32391 2.46902 1.64261 0.972573 0.525455 0.276943 0.161172 0.122225 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2022 7 3 0 0 89  0.0885438 0.177833 1.6209 6.76903 11.8368 13.9568 14.8834 15.128 10.1393 4.76042 3.3114 2.47454 1.67923 1.02241 0.565781 0.298386 0.166623 0.120569 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
-9999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
#
12 #_N_age_bins
 0 1 2 3 4 5 6 7 8 9 10 11
1 #_N_ageerror_definitions
 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001
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
-1 0.001 0 0 0 0 0.001 #_fleet:3_DCRMP
3 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sex*length distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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

