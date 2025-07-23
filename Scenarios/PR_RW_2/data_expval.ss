#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Mon Jul 21 17:55:16 2025
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
-999 1 1 185.764 2
1983 1 1 115.184 2
1984 1 1 72.8082 2
1985 1 1 247.875 2
1986 1 1 320.986 2
1987 1 1 39.7067 2
1988 1 1 215.579 2
1989 1 1 162.388 2
1990 1 1 157.738 2
1991 1 1 438.542 2
1992 1 1 98.6592 2
1993 1 1 187.453 2
1994 1 1 135.465 2
1995 1 1 221.48 2
1996 1 1 92.3699 2
1997 1 1 57.3235 2
1998 1 1 484.223 2
1999 1 1 58.5505 2
2000 1 1 152.797 2
2001 1 1 293.041 2
2002 1 1 107.06 2
2003 1 1 728.246 2
2004 1 1 64.7536 2
2005 1 1 75.1897 2
2006 1 1 332.908 2
2007 1 1 136.548 2
2008 1 1 633.214 2
2009 1 1 84.445 2
2010 1 1 374.255 2
2011 1 1 251.323 2
2012 1 1 124.394 2
2013 1 1 196.499 2
2014 1 1 66.7609 2
2015 1 1 351.468 2
2016 1 1 352.197 2
2017 1 1 31.1521 2
2018 1 1 73.054 2
2019 1 1 434.531 2
2020 1 1 350.123 2
2021 1 1 43.5984 2
2022 1 1 97.8132 2
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
2014 7 2 2.3219 0.158 #_orig_obs: 2.402 NCRMP
2016 7 2 1.51872 0.173 #_orig_obs: 1.3882 NCRMP
2019 7 2 2.65862 0.152 #_orig_obs: 2.6552 NCRMP
2021 7 2 2.62571 0.089 #_orig_obs: 2.6613 NCRMP
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
 1984 7 1 0 0 23  0.0233427 0.0232764 0.0294373 0.139755 0.972174 3.63516 6.62046 5.79645 3.25146 1.53221 0.616263 0.219508 0.078167 0.0361523 0.0261928
 1985 7 1 0 0 38  0.0386945 0.0382776 0.0449747 0.143833 0.912996 3.94895 8.77469 9.41552 6.64678 4.08929 2.20569 1.04064 0.43628 0.173396 0.0899941
 1986 7 1 0 0 43  0.0467034 0.0463283 0.071999 0.332922 1.73676 5.52157 9.44727 8.99993 6.49875 4.46041 2.80534 1.59231 0.817189 0.384947 0.237566
 1987 7 1 0 0 15  0.0160552 0.0158065 0.0245612 0.15786 1.03766 3.25565 4.62248 3.15697 1.46908 0.645792 0.291296 0.144575 0.0787816 0.0458045 0.0376204
 1988 7 1 0 0 48  0.0506557 0.0498454 0.0685466 0.308666 1.91514 7.11965 13.3525 12.0765 6.97037 3.42336 1.5049 0.631511 0.276106 0.139264 0.11296
 1989 7 1 0 0 35  0.0365526 0.0368613 0.0538203 0.261987 1.57342 5.35074 9.12119 8.0337 5.00448 2.85334 1.47089 0.684737 0.297823 0.132291 0.0881759
 1990 7 1 0 0 67  0.0679173 0.0673416 0.0840492 0.423377 2.93252 10.2008 17.4572 15.317 9.41525 5.35424 2.88231 1.4831 0.729868 0.350334 0.234668
 1991 7 1 0 0 302  0.316263 0.311942 0.405057 1.39493 8.09684 34.8784 75.8353 75.5705 48.0423 27.4005 14.7914 7.6851 3.8812 1.94428 1.44607
 1992 7 1 0 0 314  0.335862 0.338243 0.547494 3.14693 18.7599 57.3478 83.7293 65.2988 39.1725 22.5658 11.8642 5.75383 2.7306 1.35938 1.04927
 1993 7 1 0 0 170  0.17486 0.172913 0.231922 1.32104 8.96764 29.9569 48.474 39.0649 21.2079 10.4741 5.05443 2.49752 1.2577 0.649773 0.494437
 1994 7 1 0 0 72  0.074032 0.0736215 0.0919989 0.314302 1.99941 8.937 19.3751 18.837 11.3352 5.8794 2.78552 1.25333 0.564019 0.27354 0.206565
 1995 7 1 0 0 104  0.107643 0.106711 0.140528 0.617232 3.71147 12.3732 21.898 22.3773 17.2908 11.9027 7.01126 3.5789 1.65452 0.738258 0.491396
 1996 7 1 0 0 26  0.026629 0.026643 0.0344051 0.139997 0.883576 3.34734 6.32932 5.89172 3.76121 2.31394 1.43986 0.875913 0.493058 0.253245 0.183145
 1997 7 1 0 0 40  0.0406483 0.0401061 0.0468571 0.165514 1.07359 4.15708 8.4027 8.89303 6.60066 4.42168 2.71715 1.58245 0.901609 0.504868 0.452053
 1998 7 1 0 0 40  0.0413342 0.04141 0.0535881 0.166774 0.854901 3.45893 7.58117 8.42524 6.56691 4.79424 3.29177 2.1008 1.24641 0.699302 0.677208
 1999 7 1 0 0 83  0.0850451 0.0842993 0.11058 0.584747 3.86474 12.1931 18.487 15.7923 11.0039 7.6794 5.16299 3.33791 2.0779 1.23981 1.29625
 2000 7 1 0 0 64  0.0645831 0.0646695 0.0761457 0.224887 1.41196 6.51037 14.8018 15.3212 10.0658 6.04738 3.68572 2.32683 1.46865 0.903311 1.02668
 2001 7 1 0 0 44  0.0441944 0.0439575 0.0502935 0.16603 1.0204 3.73651 7.57501 8.85648 7.64145 5.80404 3.8272 2.28017 1.31045 0.7603 0.883528
 2002 7 1 0 0 73  0.0734989 0.0733811 0.0833502 0.205028 1.16701 5.41764 12.8445 14.6192 11.5444 8.87206 6.68642 4.71106 3.01132 1.76457 1.92658
 2003 7 1 0 0 82  0.0833512 0.0832356 0.103846 0.407625 2.32708 7.3866 12.904 13.9443 12.1709 10.0362 7.65926 5.53222 3.82332 2.49361 3.04441
 2004 7 1 0 0 88  0.0953026 0.0915664 0.110307 0.285705 1.32716 5.13738 12.8054 19.1793 17.8229 11.5854 6.95002 4.60391 3.12871 2.07426 2.80266
 2005 7 1 0 0 72  0.0756966 0.0762083 0.0900645 0.167375 0.572208 2.34357 7.14177 14.1322 17.508 13.4881 7.59956 3.93592 2.083 1.20164 1.58477
 2006 7 1 0 0 119  0.122341 0.121071 0.140928 0.360636 1.55169 4.91277 10.7265 18.4309 24.4905 22.4862 15.6299 9.54591 5.21468 2.65306 2.61272
 2007 7 1 0 0 107  0.109618 0.10957 0.121916 0.212061 0.81332 3.83023 12.0795 21.9299 23.8502 17.3917 10.8552 6.87882 4.19994 2.37879 2.2391
 2008 7 1 0 0 86  0.087974 0.0879723 0.101151 0.225947 0.895304 2.98998 7.39209 14.1288 19.2841 16.9195 10.7575 6.0917 3.32673 1.83469 1.87647
 2009 7 1 0 0 109  0.111838 0.110881 0.12483 0.261898 1.13997 4.80683 13.6664 23.5855 25.0779 17.7264 10.3244 5.8861 3.18381 1.61853 1.37459
 2010 7 1 0 0 74  0.0764943 0.0760754 0.0859245 0.158896 0.576417 2.3061 6.85414 13.5962 17.4995 14.406 8.76423 4.78119 2.47341 1.25994 1.0855
 2011 7 1 0 0 41  0.043002 0.0421129 0.0421153 0.0442103 0.133611 1.30508 6.07926 10.8057 8.70909 5.85861 3.67225 2.12206 1.13064 0.564613 0.447698
 2012 7 1 0 0 56  0.0596783 0.0571631 0.0572349 0.060135 0.188447 2.0776 10.4396 17.7728 12.0641 6.4159 3.29941 1.71905 0.908098 0.47917 0.401654
 2013 7 1 0 0 42  0.0453579 0.0440762 0.0436971 0.0449363 0.121874 1.28969 6.83052 12.6501 9.59939 5.65265 2.98556 1.44464 0.671364 0.319445 0.256693
 2014 7 1 0 0 97  0.101506 0.0993774 0.0996756 0.105964 0.358808 3.57947 16.0449 27.4964 21.1791 13.2084 7.48754 3.88231 1.87303 0.867902 0.615678
 2015 7 1 0 0 66  0.0676938 0.0670296 0.0670447 0.0696656 0.191305 2.0855 11.0615 19.8155 14.2911 8.30142 4.71802 2.62873 1.39859 0.705313 0.531541
 2016 7 1 0 0 44  0.046158 0.0446433 0.044869 0.0476874 0.158929 1.67556 7.97207 13.4988 9.62719 5.45804 2.82715 1.36934 0.65218 0.32089 0.256458
 2017 7 1 0 0 25  0.0270894 0.0257202 0.0255761 0.0261762 0.0655714 0.774589 4.52994 8.39021 5.82425 2.96593 1.3448 0.572793 0.242233 0.108731 0.0763977
 2018 7 1 0 0 37  0.0386857 0.0384331 0.0381673 0.0391173 0.0934714 0.83458 4.28764 9.10109 8.69696 6.36125 3.89784 2.0221 0.921362 0.390401 0.238897
 2019 7 1 0 0 36  0.0372305 0.0360102 0.0364261 0.0393436 0.140519 1.36198 5.66681 9.01403 6.84384 4.75762 3.35583 2.22913 1.31568 0.680881 0.48466
 2020 7 1 0 0 3  0.00312715 0.00310802 0.00307664 0.00309981 0.00671591 0.0858074 0.546526 1.01329 0.671963 0.32977 0.156983 0.0804337 0.0451621 0.0263274 0.0246134
 2021 7 1 0 0 9  0.00909757 0.008964 0.00904755 0.00961983 0.0291385 0.259141 1.13111 2.2344 2.14063 1.53608 0.882403 0.420511 0.181961 0.0808847 0.067007
 2022 7 1 0 0 35  0.0353461 0.0350028 0.0349172 0.0351661 0.0588375 0.640907 4.407 9.1508 7.36361 5.00252 3.48675 2.29907 1.32267 0.65726 0.470133
 2014 7 2 0 0 223  6.61637 24.0952 37.0448 41.9268 38.7939 29.6445 20.2045 9.28295 6.25747 3.96862 2.3305 1.30009 0.726533 0.439842 0.367896
 2016 7 2 0 0 240  6.0066 22.0237 36.79 46.2617 44.638 35.3217 24.6462 10.5999 6.22347 3.4325 1.80835 0.959977 0.560173 0.381451 0.346325
 2019 7 2 0 0 203  2.60054 10.1433 25.135 43.5991 44.5924 32.5785 20.2268 8.34594 5.37964 3.69678 2.61665 1.78256 1.11949 0.66234 0.520941
 2021 7 2 0 0 234  2.61004 10.3151 26.8465 47.9342 49.1166 35.3812 23.2035 12.2398 10.283 7.43057 4.34817 2.17065 1.04623 0.569874 0.504453
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

