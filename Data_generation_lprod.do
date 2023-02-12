sort id year
by id: hprescott  lprod, stub(HP) smooth(6.25)
/*Trends*/
replace  lprodt= HP_lprod_sm_1 if id==1
replace  lprodt= HP_lprod_sm_2 if id==2
replace  lprodt= HP_lprod_sm_3 if id==3
replace  lprodt= HP_lprod_sm_4 if id==4
replace  lprodt= HP_lprod_sm_5 if id==5
replace  lprodt= HP_lprod_sm_6 if id==6
replace  lprodt= HP_lprod_sm_7 if id==7
replace  lprodt= HP_lprod_sm_8 if id==8
replace  lprodt= HP_lprod_sm_9 if id==9
replace  lprodt= HP_lprod_sm_10 if id==10
replace  lprodt= HP_lprod_sm_11 if id==11
replace  lprodt= HP_lprod_sm_12 if id==12
replace  lprodt= HP_lprod_sm_13 if id==13
replace  lprodt= HP_lprod_sm_14 if id==14
replace  lprodt= HP_lprod_sm_15 if id==15
replace  lprodt= HP_lprod_sm_16 if id==16
replace  lprodt= HP_lprod_sm_17 if id==17
replace  lprodt= HP_lprod_sm_18 if id==18
replace  lprodt= HP_lprod_sm_19 if id==19
replace  lprodt= HP_lprod_sm_20 if id==20
replace  lprodt= HP_lprod_sm_21 if id==21
replace  lprodt= HP_lprod_sm_22 if id==22

/*Cycle*/
replace lprodc= HP_lprod_1 if id==1
replace lprodc= HP_lprod_2 if id==2
replace lprodc= HP_lprod_3 if id==3
replace lprodc= HP_lprod_4 if id==4
replace lprodc= HP_lprod_5 if id==5
replace lprodc= HP_lprod_6 if id==6
replace lprodc= HP_lprod_7 if id==7
replace lprodc= HP_lprod_8 if id==8
replace lprodc= HP_lprod_9 if id==9
replace lprodc= HP_lprod_10 if id==10
replace lprodc= HP_lprod_11 if id==11
replace lprodc= HP_lprod_12 if id==12
replace lprodc= HP_lprod_13 if id==13
replace lprodc= HP_lprod_14 if id==14
replace lprodc= HP_lprod_15 if id==15
replace lprodc= HP_lprod_16 if id==16
replace lprodc= HP_lprod_17 if id==17
replace lprodc= HP_lprod_18 if id==18
replace lprodc= HP_lprod_19 if id==19
replace lprodc= HP_lprod_20 if id==20
replace lprodc= HP_lprod_21 if id==21
replace lprodc= HP_lprod_22 if id==22
gen check= lprod- lprodt- lprodc
sum check
/*Deviations from trend*/
replace  lprodd= lprodc/lprodt
by id: replace lproddp1=lprodd[_n+1]
by id: replace lproddp2=lprodd[_n+2]
by id: replace lproddp3=lprodd[_n+3]
by id: replace lprodd1=lprodd[_n-1]
by id: replace lprodd2=lprodd[_n-2]
by id: replace lprodd3=lprodd[_n-3]
