#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Fri Jul 18 09:40:33 2025
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
-999 1 1 35.3681 0.3
2012 1 1 15.6448 0.3
2013 1 1 10.4209 0.3
2014 1 1 13.0247 0.3
2015 1 1 10.5496 0.3
2016 1 1 12.6593 0.3
2017 1 1 10.0412 0.3
2018 1 1 9.46763 0.3
2019 1 1 10.6004 0.3
2020 1 1 11.1773 0.3
2021 1 1 7.17066 0.3
2022 1 1 8.06384 0.3
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
2013 7 2 1.89802 0.242 #_orig_obs: 2.1829 NCRMP
2015 7 2 1.64989 0.167 #_orig_obs: 0.9797 NCRMP
2017 7 2 1.47281 0.185 #_orig_obs: 1.2912 NCRMP
2019 7 2 1.37139 0.109 #_orig_obs: 1.5945 NCRMP
2021 7 2 1.14015 0.149 #_orig_obs: 1.3455 NCRMP
2020 7 3 1.67783 0.118 #_orig_obs: 1.8498 DCRMP
2021 7 3 1.57638 0.136 #_orig_obs: 1.5038 DCRMP
2022 7 3 1.42546 0.175 #_orig_obs: 1.2435 DCRMP
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
 2012 -7 1 0 0 208  0.204351 0.204335 0.204336 0.204337 0.204338 0.204345 14.061 46.5316 43.1115 36.8142 28.1078 18.7013 10.6524 5.16172 2.16179 0.84372 0.376406 0.250407
 2013 7 -1 0 0 11  0.010807 0.0108062 0.0108062 0.0108063 0.0108063 0.0108067 0.743611 2.46081 2.27994 1.9469 1.48647 0.989014 0.56335 0.272976 0.114325 0.0446198 0.0199061 0.0132427
 2016 7 -1 0 0 25  0.0245615 0.0245595 0.0245596 0.0245597 0.0245598 0.0245607 1.69002 5.59275 5.18167 4.42478 3.37834 2.24776 1.28034 0.620399 0.25983 0.101409 0.0452411 0.030097
 2017 7 -1 0 0 32  0.0314387 0.0314361 0.0314362 0.0314364 0.0314366 0.0314377 2.16323 7.15872 6.63254 5.66372 4.32427 2.87713 1.63884 0.794111 0.332582 0.129803 0.0579086 0.0385242
 2018 7 -1 0 0 34  0.0334036 0.0334009 0.033401 0.0334012 0.0334014 0.0334025 2.29843 7.60613 7.04708 6.01771 4.59454 3.05695 1.74126 0.843743 0.353369 0.137916 0.0615279 0.040932
 2019 7 -1 0 0 36  0.0353685 0.0353656 0.0353658 0.035366 0.0353662 0.0353674 2.43364 8.05355 7.46161 6.37169 4.8648 3.23677 1.84369 0.893375 0.374155 0.146028 0.0651472 0.0433397
 2020 7 -1 0 0 3  0.00294738 0.00294713 0.00294715 0.00294716 0.00294718 0.00294728 0.202803 0.67113 0.621801 0.530974 0.4054 0.269731 0.153641 0.0744479 0.0311796 0.012169 0.00542893 0.00361164
 2021 7 -1 0 0 14  0.0137544 0.0137533 0.0137534 0.0137534 0.0137535 0.013754 0.946414 3.13194 2.90174 2.47788 1.89187 1.25874 0.716991 0.347423 0.145505 0.0567888 0.025335 0.0168543
 2022 -7 -1 0 0 15  0.0147369 0.0147357 0.0147357 0.0147358 0.0147359 0.0147364 1.01401 3.35565 3.109 2.65487 2.027 1.34865 0.768205 0.372239 0.155898 0.0608452 0.0271447 0.0180582
 2013 7 2 0 0 275  25.981 19.535 30.2286 43.8205 46.6368 44.6671 38.2941 16.6294 4.04349 1.82419 1.00759 0.569076 0.37287 0.30021 0.277655 0.271742 0.270429 0.270189
 2015 7 2 0 0 255  30.5341 26.6503 31.0458 35.0491 32.5237 31.3568 34.0444 19.3503 5.95957 3.24186 2.03441 1.15127 0.627644 0.380815 0.287644 0.259249 0.252203 0.250812
 2017 7 2 0 0 237  29.5729 22.6807 26.7145 31.3641 31.6444 31.4033 31.0009 16.5585 5.41912 3.50259 2.67643 1.77734 1.03053 0.568025 0.347471 0.264736 0.240043 0.234371
 2019 7 2 0 0 322  32.9493 28.5108 38.3577 48.9436 46.2022 41.3555 39.9425 21.9537 7.39926 4.91216 3.95905 2.8787 1.84889 1.0774 0.625124 0.417776 0.343205 0.323201
 2021 7 2 0 0 165  19.3524 13.293 16.8242 20.9537 21.4239 22.2206 23.6258 13.1483 4.31537 2.83367 2.33055 1.7606 1.18241 0.712975 0.409493 0.253339 0.189475 0.170268
 2020 7 3 0 0 162  0.160497 0.275248 2.48596 13.135 24.8962 28.7783 28.074 25.6775 16.318 7.69842 5.36427 3.88995 2.47477 1.36676 0.678959 0.341592 0.210965 0.173558
 2021 7 3 0 0 98  0.0967965 0.143371 1.42796 8.93999 14.3577 14.948 16.4549 16.7565 10.6043 4.85875 3.39159 2.50781 1.63543 0.92729 0.469486 0.233927 0.137589 0.108616
 2022 7 3 0 0 89  0.0885646 0.179058 1.63196 6.76081 11.737 13.8546 14.8758 15.2104 10.2209 4.87748 3.41668 2.5319 1.67283 0.965466 0.494398 0.243177 0.13618 0.102859
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
# 0 0 -1202590843 0 0 0 0 #_fleet:1_Commercial
# 0 0 1076233502 0 0 0 0 #_fleet:2_NCRMP
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

