#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Fri Jul 18 09:53:23 2025
#_expected_values
#C should work with SS version:
#C file created using an r4ss function
#C file write time: 2025-07-17  09:34:18
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
2 #_Nfleets (including surveys)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=predator(M2) 
#_sample_timing: -1 for fishing fleet to use season-long catch-at-age for observations, or 1 to use observation month;  (always 1 for surveys)
#_fleet_area:  area the fleet/survey operates in 
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read later)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type fishery_timing area catch_units need_catch_mult fleetname
 1 -1 1 1 0 Commercial  # 1
 3 1 1 1 0 NCRMP  # 2
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
-999 1 1 182.805 0.3
1983 1 1 178.031 0.3
1984 1 1 157.2 0.3
1985 1 1 236.41 0.3
1986 1 1 109.183 0.3
1987 1 1 100.842 0.3
1988 1 1 111.861 0.3
1989 1 1 142.093 0.3
1990 1 1 165.472 0.3
1991 1 1 254.16 0.3
1992 1 1 186.042 0.3
1993 1 1 210.121 0.3
1994 1 1 199.647 0.3
1995 1 1 283.249 0.3
1996 1 1 259.24 0.3
1997 1 1 236.252 0.3
1998 1 1 229.159 0.3
1999 1 1 244.298 0.3
2000 1 1 404.821 0.3
2001 1 1 317.81 0.3
2002 1 1 237.663 0.3
2003 1 1 205.566 0.3
2004 1 1 238.676 0.3
2005 1 1 188.137 0.3
2006 1 1 210.531 0.3
2007 1 1 162.952 0.3
2008 1 1 321.895 0.3
2009 1 1 175.899 0.3
2010 1 1 184.172 0.3
2011 1 1 128.658 0.3
2012 1 1 162.89 0.3
2013 1 1 101.342 0.3
2014 1 1 154.026 0.3
2015 1 1 156.526 0.3
2016 1 1 154.114 0.3
2017 1 1 88.9129 0.3
2018 1 1 110.537 0.3
2019 1 1 129.549 0.3
2020 1 1 97.4959 0.3
2021 1 1 115.011 0.3
2022 1 1 135.829 0.3
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
#_year month index obs err
2014 7 2 1.91317 0.158 #_orig_obs: 2.402 NCRMP
2016 7 2 1.89423 0.173 #_orig_obs: 1.3882 NCRMP
2019 7 2 2.56116 0.152 #_orig_obs: 2.6552 NCRMP
2021 7 2 2.66744 0.089 #_orig_obs: 2.6613 NCRMP
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
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sex*length distribution
# partition codes:  (0=combined; 1=discard; 2=retained
15 #_N_LengthBins
 6 9 12 15 18 21 24 27 30 33 36 39 42 45 48
#_yr month fleet sex part Nsamp datavector(female-male)
 1984 7 1 0 0 23  0.0231437 0.0229561 0.0272878 0.127754 0.987589 3.79376 6.30545 5.03604 3.18743 1.81494 0.930945 0.432228 0.185674 0.0794018 0.0453934
 1985 7 1 0 0 38  0.0389284 0.0385609 0.043621 0.140939 1.28916 5.95499 10.5172 8.51656 5.43706 3.12277 1.61245 0.751233 0.322429 0.13682 0.0773036
 1986 7 1 0 0 43  0.0441911 0.0437139 0.0555326 0.272849 1.68994 5.75433 10.7258 9.96372 6.8093 3.96798 2.04917 0.95326 0.4069 0.169746 0.0935465
 1987 7 1 0 0 15  0.0155449 0.015282 0.0187086 0.0867389 0.685044 2.5377 3.84832 2.99265 2.09095 1.34958 0.748456 0.358592 0.154094 0.0637747 0.0345705
 1988 7 1 0 0 48  0.0494762 0.0492866 0.0614335 0.276264 1.99006 7.53129 12.8207 10.3803 6.61581 3.97203 2.25263 1.14898 0.517388 0.217323 0.117014
 1989 7 1 0 0 35  0.0355317 0.035094 0.0438395 0.233433 1.63966 5.62351 9.01579 7.39604 4.93956 2.97283 1.62222 0.813979 0.375601 0.163295 0.0896167
 1990 7 1 0 0 67  0.0698902 0.0682545 0.0780261 0.263291 2.44607 10.9999 18.4351 14.2695 9.13784 5.50844 3.03873 1.51622 0.693254 0.304068 0.17145
 1991 7 1 0 0 302  0.317005 0.315859 0.415527 1.92706 11.5465 39.418 74.5569 69.6354 47.539 28.0591 15.1009 7.4765 3.39962 1.47158 0.820914
 1992 7 1 0 0 314  0.316863 0.315802 0.428904 2.87927 19.4354 57.4965 78.0552 59.0852 41.2628 26.7397 15.0002 7.39544 3.32959 1.44438 0.81476
 1993 7 1 0 0 170  0.171704 0.17051 0.189086 0.677391 7.11587 32.4398 50.9538 34.7817 19.6841 11.3722 6.45341 3.34522 1.55646 0.690151 0.398618
 1994 7 1 0 0 72  0.0725094 0.0722102 0.0816777 0.262013 1.82232 8.5955 19.0613 18.1205 11.6892 6.29954 3.16194 1.54233 0.716816 0.319655 0.182522
 1995 7 1 0 0 104  0.104255 0.104077 0.118326 0.414422 2.92346 11.5935 22.3597 23.0913 18.8408 12.4553 6.68501 3.10209 1.33503 0.562635 0.310007
 1996 7 1 0 0 26  0.0261547 0.0258824 0.0287738 0.095576 0.726238 3.04368 5.62217 5.30256 4.2784 3.14948 1.96888 1.01692 0.445503 0.17811 0.0916733
 1997 7 1 0 0 40  0.0406467 0.0405426 0.0451477 0.118952 0.908353 4.27917 8.58112 8.30874 6.55477 4.78692 3.15191 1.79154 0.858977 0.355775 0.177427
 1998 7 1 0 0 40  0.0397938 0.0398419 0.047893 0.215849 1.2675 4.04161 7.64047 8.01661 6.71728 5.00615 3.33648 1.96387 1.00003 0.439502 0.2271
 1999 7 1 0 0 83  0.0824782 0.0823363 0.0875575 0.253 2.50441 11.3821 18.5777 15.1947 11.9004 9.20486 6.38047 3.8649 2.03548 0.935605 0.513975
 2000 7 1 0 0 64  0.0637068 0.0634811 0.0670388 0.146999 1.06251 5.94853 14.1351 14.213 10.4421 7.1897 4.83449 2.99401 1.62678 0.770414 0.4421
 2001 7 1 0 0 44  0.0441247 0.0439153 0.0471912 0.107887 0.687813 3.23415 7.65832 9.17128 8.26246 6.1513 3.98528 2.35942 1.27315 0.611781 0.361932
 2002 7 1 0 0 73  0.0731987 0.0731436 0.0824632 0.25635 1.55286 5.7581 11.5609 13.2064 12.805 10.8426 7.72959 4.68887 2.48873 1.17797 0.703765
 2003 7 1 0 0 82  0.0816765 0.0814657 0.0915266 0.325502 2.31016 8.66369 14.7475 13.8491 12.3042 10.6784 8.22703 5.38512 2.9818 1.4233 0.849427
 2004 7 1 0 0 88  0.0885716 0.0886988 0.0966464 0.180658 0.903435 4.0515 10.484 16.4598 17.1346 13.7266 10.3729 7.05285 4.10715 2.02669 1.2259
 2005 7 1 0 0 72  0.0722534 0.0723681 0.0814642 0.163744 0.614726 2.52618 7.92162 14.7409 15.7663 11.5544 7.87395 5.11233 3.00205 1.53151 0.9661
 2006 7 1 0 0 119  0.119515 0.119842 0.133518 0.266063 1.12857 4.44674 12.021 22.276 26.4466 20.8511 13.9548 8.49979 4.76579 2.41051 1.56008
 2007 7 1 0 0 107  0.107025 0.107372 0.120338 0.247592 1.01626 4.04328 11.2527 20.0978 22.9186 18.4458 12.9097 7.94145 4.32562 2.11481 1.35168
 2008 7 1 0 0 86  0.0863353 0.0861082 0.0953682 0.19335 0.853314 3.50157 9.46594 16.4927 18.4108 14.4423 10.0251 6.2383 3.4222 1.65496 1.03159
 2009 7 1 0 0 109  0.11135 0.111223 0.124978 0.238868 1.04104 4.5111 12.788 22.2399 23.8413 17.8282 11.9098 7.24103 3.93903 1.90171 1.17243
 2010 7 1 0 0 74  0.0759377 0.0763928 0.0942284 0.238952 0.917565 3.10112 8.33472 15.0298 16.584 12.3493 8.02021 4.72657 2.51516 1.20123 0.734778
 2011 7 1 0 0 41  0.041861 0.041334 0.0415242 0.0436135 0.133519 1.35466 6.16437 10.2632 8.43434 6.0939 3.9731 2.30847 1.20094 0.564098 0.341101
 2012 7 1 0 0 56  0.0577075 0.0565816 0.0565064 0.0586804 0.17607 2.04846 10.0499 15.9454 11.2535 7.09668 4.38241 2.5252 1.31086 0.613743 0.368301
 2013 7 1 0 0 42  0.0434869 0.0427883 0.0425831 0.0439921 0.118957 1.3167 7.15598 12.6382 9.24802 5.44185 2.97741 1.56495 0.781457 0.364538 0.219107
 2014 7 1 0 0 97  0.0995035 0.09819 0.0985833 0.103542 0.307695 3.1035 15.5164 27.6693 21.869 13.8356 7.60408 3.75079 1.72824 0.765897 0.449693
 2015 7 1 0 0 66  0.067659 0.0667449 0.0667721 0.069788 0.221734 2.51253 11.8833 18.9628 13.9322 8.80996 5.01737 2.51839 1.12961 0.475748 0.265408
 2016 7 1 0 0 44  0.0452925 0.0443716 0.044411 0.0461594 0.131605 1.49848 7.88716 13.3896 9.55603 5.61676 3.06137 1.53357 0.695223 0.292043 0.157934
 2017 7 1 0 0 25  0.0260147 0.0255015 0.0253213 0.0260564 0.0691611 0.761643 4.08139 7.35672 5.69106 3.49497 1.87778 0.906509 0.401412 0.167292 0.0891763
 2018 7 1 0 0 37  0.0378398 0.0375653 0.0376248 0.0393145 0.109215 1.06717 5.54425 10.2845 8.41592 5.55699 3.17797 1.57587 0.691162 0.280043 0.144562
 2019 7 1 0 0 36  0.036464 0.0359115 0.0362031 0.0379809 0.114393 1.22563 5.81348 9.71666 7.70135 5.24384 3.16741 1.65758 0.752546 0.306095 0.154457
 2020 7 1 0 0 3  0.00305939 0.00303549 0.00300811 0.00305686 0.00736001 0.0889406 0.487873 0.851032 0.645061 0.416538 0.250424 0.135497 0.0642763 0.0270264 0.0138116
 2021 7 1 0 0 9  0.00898469 0.00894203 0.00902635 0.00937069 0.0208131 0.188793 1.16552 2.45084 2.10138 1.4056 0.832426 0.444978 0.213544 0.0918407 0.0479534
 2022 7 1 0 0 35  0.0352338 0.0349309 0.034821 0.0354536 0.0816564 0.896731 4.54683 8.43616 7.71372 5.82385 3.71814 2.03142 0.973208 0.417598 0.220238
 2014 7 2 0 0 223  4.89349 20.7512 38.4851 45.2181 38.8892 31.2371 20.777 8.18852 5.97722 3.84565 2.19813 1.18166 0.649001 0.395861 0.312728
 2016 7 2 0 0 240  5.23601 21.4368 36.001 41.8653 41.3651 39.3007 28.0861 10.5447 6.94601 4.15847 2.35658 1.28217 0.693587 0.410779 0.316744
 2019 7 2 0 0 203  2.19229 10.3835 27.2821 40.0794 40.4239 35.6195 22.8802 8.3363 6.09749 4.20358 2.60624 1.44585 0.750628 0.407778 0.291344
 2021 7 2 0 0 234  1.95403 10.839 35.8504 50.1844 39.265 31.8429 26.1347 12.6258 10.0005 6.74949 4.07322 2.26501 1.18525 0.617543 0.412837
-9999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
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
# 0 0 67 67 0 0 0 #_fleet:2_NCRMP
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

