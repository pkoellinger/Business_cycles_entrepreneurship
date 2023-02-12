sort id year
by id: hprescott  serate, stub(HP) smooth(6.25)
/*Trends*/
replace  srtrend= HP_serate_sm_1 if id==1
replace  srtrend= HP_serate_sm_2 if id==2
replace  srtrend= HP_serate_sm_3 if id==3
replace  srtrend= HP_serate_sm_4 if id==4
replace  srtrend= HP_serate_sm_5 if id==5
replace  srtrend= HP_serate_sm_6 if id==6
replace  srtrend= HP_serate_sm_7 if id==7
replace  srtrend= HP_serate_sm_8 if id==8
replace  srtrend= HP_serate_sm_9 if id==9
replace  srtrend= HP_serate_sm_10 if id==10
replace  srtrend= HP_serate_sm_11 if id==11
replace  srtrend= HP_serate_sm_12 if id==12
replace  srtrend= HP_serate_sm_13 if id==13
replace  srtrend= HP_serate_sm_14 if id==14
replace  srtrend= HP_serate_sm_15 if id==15
replace  srtrend= HP_serate_sm_16 if id==16
replace  srtrend= HP_serate_sm_17 if id==17
replace  srtrend= HP_serate_sm_18 if id==18
replace  srtrend= HP_serate_sm_19 if id==19
replace  srtrend= HP_serate_sm_20 if id==20
replace  srtrend= HP_serate_sm_21 if id==21
replace  srtrend= HP_serate_sm_22 if id==22

/*Cycle*/
replace srcycle= HP_serate_1 if id==1
replace srcycle= HP_serate_2 if id==2
replace srcycle= HP_serate_3 if id==3
replace srcycle= HP_serate_4 if id==4
replace srcycle= HP_serate_5 if id==5
replace srcycle= HP_serate_6 if id==6
replace srcycle= HP_serate_7 if id==7
replace srcycle= HP_serate_8 if id==8
replace srcycle= HP_serate_9 if id==9
replace srcycle= HP_serate_10 if id==10
replace srcycle= HP_serate_11 if id==11
replace srcycle= HP_serate_12 if id==12
replace srcycle= HP_serate_13 if id==13
replace srcycle= HP_serate_14 if id==14
replace srcycle= HP_serate_15 if id==15
replace srcycle= HP_serate_16 if id==16
replace srcycle= HP_serate_17 if id==17
replace srcycle= HP_serate_18 if id==18
replace srcycle= HP_serate_19 if id==19
replace srcycle= HP_serate_20 if id==20
replace srcycle= HP_serate_21 if id==21
replace srcycle= HP_serate_22 if id==22
gen check= serate- srtrend- srcycle
sum check
/*Deviations from trend*/
replace  srtdev= srcycle/ srtrend
by id: replace srtdevp1=srtdev[_n+1]
by id: replace srtdevp2=srtdev[_n+2]
by id: replace srtdevp3=srtdev[_n+3]
by id: replace srtdev1=srtdev[_n-1]
by id: replace srtdev2=srtdev[_n-2]
by id: replace srtdev3=srtdev[_n-3]