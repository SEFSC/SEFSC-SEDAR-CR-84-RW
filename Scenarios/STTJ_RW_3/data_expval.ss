#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Tue Jul 22 12:33:14 2025
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
-999 1 1 34.6849 0.3
2012 1 1 15.7796 0.3
2013 1 1 10.4808 0.3
2014 1 1 13.0817 0.3
2015 1 1 10.5797 0.3
2016 1 1 12.6993 0.3
2017 1 1 10.0525 0.3
2018 1 1 9.467 0.3
2019 1 1 10.5857 0.3
2020 1 1 11.1561 0.3
2021 1 1 7.16349 0.3
2022 1 1 8.06047 0.3
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
2013 7 2 1.89535 0.242 #_orig_obs: 2.1829 NCRMP
2015 7 2 1.65017 0.167 #_orig_obs: 0.9797 NCRMP
2017 7 2 1.47437 0.185 #_orig_obs: 1.2912 NCRMP
2019 7 2 1.37178 0.109 #_orig_obs: 1.5945 NCRMP
2021 7 2 1.13922 0.149 #_orig_obs: 1.3455 NCRMP
2020 7 3 1.67851 0.118 #_orig_obs: 1.8498 DCRMP
2021 7 3 1.57616 0.136 #_orig_obs: 1.5038 DCRMP
2022 7 3 1.42452 0.175 #_orig_obs: 1.2435 DCRMP
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
 2012 -7 1 0 0 208  0.204351 0.204335 0.204336 0.204337 0.204338 0.204345 14.0268 46.4329 42.9656 36.6347 27.9507 18.6426 10.729 5.33377 2.34519 0.976128 0.446622 0.289993
 2013 7 -1 0 0 11  0.010807 0.0108062 0.0108062 0.0108063 0.0108063 0.0108067 0.741803 2.45559 2.27222 1.93741 1.47816 0.985907 0.567397 0.282075 0.124024 0.0516222 0.0236195 0.0153362
 2016 7 -1 0 0 25  0.0245615 0.0245595 0.0245596 0.0245597 0.0245598 0.0245607 1.68592 5.58088 5.16413 4.40321 3.35946 2.2407 1.28954 0.641078 0.281873 0.117323 0.0536806 0.034855
 2017 7 -1 0 0 32  0.0314387 0.0314361 0.0314362 0.0314364 0.0314366 0.0314377 2.15797 7.14352 6.61009 5.6361 4.3001 2.86809 1.65061 0.82058 0.360798 0.150174 0.0687111 0.0446143
 2018 7 -1 0 0 34  0.0334036 0.0334009 0.033401 0.0334012 0.0334014 0.0334025 2.29285 7.59 7.02322 5.98836 4.56886 3.04735 1.75377 0.871867 0.383348 0.159559 0.0730056 0.0474027
 2019 7 -1 0 0 36  0.0353685 0.0353656 0.0353658 0.035366 0.0353662 0.0353674 2.42772 8.03647 7.43635 6.34062 4.83762 3.22661 1.85694 0.923153 0.405897 0.168945 0.0773 0.0501911
 2020 7 -1 0 0 3  0.00294738 0.00294713 0.00294715 0.00294716 0.00294718 0.00294728 0.20231 0.669705 0.619696 0.528385 0.403135 0.268884 0.154745 0.0769294 0.0338248 0.0140788 0.00644167 0.00418259
 2021 7 -1 0 0 14  0.0137544 0.0137533 0.0137534 0.0137534 0.0137535 0.013754 0.944113 3.12529 2.89191 2.4658 1.8813 1.25479 0.722142 0.359004 0.157849 0.0657009 0.0300611 0.0195188
 2022 -7 -1 0 0 15  0.0147369 0.0147357 0.0147357 0.0147358 0.0147359 0.0147364 1.01155 3.34853 3.09848 2.64192 2.01567 1.34442 0.773724 0.384647 0.169124 0.0703939 0.0322083 0.020913
 2013 7 2 0 0 275  26.0286 19.5643 30.1782 43.6701 46.4817 44.5784 38.3479 16.7512 4.10486 1.87311 1.0469 0.593236 0.384564 0.304807 0.279165 0.272172 0.270539 0.270223
 2015 7 2 0 0 255  30.5558 26.673 31.0842 35.0991 32.5424 31.3089 33.9441 19.2988 5.94524 3.24493 2.05012 1.16929 0.64097 0.388177 0.290898 0.260461 0.252599 0.250962
 2017 7 2 0 0 237  29.5443 22.691 26.7446 31.4129 31.6766 31.4061 30.9786 16.5292 5.39201 3.47995 2.66327 1.77496 1.0351 0.574483 0.352637 0.267777 0.241442 0.235072
 2019 7 2 0 0 322  32.9083 28.5069 38.3605 48.9581 46.2297 41.3958 39.978 21.9488 7.36544 4.87015 3.91927 2.85502 1.84847 1.09451 0.646769 0.434136 0.351991 0.328149
 2021 7 2 0 0 165  19.3348 13.2913 16.8261 20.9613 21.4368 22.2382 23.6375 13.1347 4.28492 2.79291 2.28701 1.73357 1.18599 0.742482 0.446396 0.281743 0.205043 0.179249
 2020 7 3 0 0 162  0.160498 0.275301 2.48617 13.133 24.8874 28.7714 28.061 25.6653 16.3964 7.64454 5.2709 3.82904 2.47007 1.40805 0.734375 0.384767 0.234626 0.187129
 2021 7 3 0 0 98  0.0967971 0.143396 1.42819 8.93823 14.3519 14.9443 16.4444 16.7394 10.64 4.80921 3.31684 2.45948 1.63591 0.969007 0.523785 0.276199 0.160866 0.12208
 2022 7 3 0 0 89  0.0885667 0.17919 1.63307 6.76064 11.7331 13.8506 14.8628 15.1834 10.2398 4.81545 3.32948 2.47639 1.67691 1.02053 0.564922 0.29809 0.166534 0.120535
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

