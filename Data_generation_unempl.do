sort id year
by id: hprescott  unempl, stub(HP) smooth(6.25)
/*Trends*/
replace  unempt= HP_unempl_sm_1 if id==1
replace  unempt= HP_unempl_sm_2 if id==2
replace  unempt= HP_unempl_sm_3 if id==3
replace  unempt= HP_unempl_sm_4 if id==4
replace  unempt= HP_unempl_sm_5 if id==5
replace  unempt= HP_unempl_sm_6 if id==6
replace  unempt= HP_unempl_sm_7 if id==7
replace  unempt= HP_unempl_sm_8 if id==8
replace  unempt= HP_unempl_sm_9 if id==9
replace  unempt= HP_unempl_sm_10 if id==10
replace  unempt= HP_unempl_sm_11 if id==11
replace  unempt= HP_unempl_sm_12 if id==12
replace  unempt= HP_unempl_sm_13 if id==13
replace  unempt= HP_unempl_sm_14 if id==14
replace  unempt= HP_unempl_sm_15 if id==15
replace  unempt= HP_unempl_sm_16 if id==16
replace  unempt= HP_unempl_sm_17 if id==17
replace  unempt= HP_unempl_sm_18 if id==18
replace  unempt= HP_unempl_sm_19 if id==19
replace  unempt= HP_unempl_sm_20 if id==20
replace  unempt= HP_unempl_sm_21 if id==21
replace  unempt= HP_unempl_sm_22 if id==22

/*Cycle*/
replace unempc= HP_unempl_1 if id==1
replace unempc= HP_unempl_2 if id==2
replace unempc= HP_unempl_3 if id==3
replace unempc= HP_unempl_4 if id==4
replace unempc= HP_unempl_5 if id==5
replace unempc= HP_unempl_6 if id==6
replace unempc= HP_unempl_7 if id==7
replace unempc= HP_unempl_8 if id==8
replace unempc= HP_unempl_9 if id==9
replace unempc= HP_unempl_10 if id==10
replace unempc= HP_unempl_11 if id==11
replace unempc= HP_unempl_12 if id==12
replace unempc= HP_unempl_13 if id==13
replace unempc= HP_unempl_14 if id==14
replace unempc= HP_unempl_15 if id==15
replace unempc= HP_unempl_16 if id==16
replace unempc= HP_unempl_17 if id==17
replace unempc= HP_unempl_18 if id==18
replace unempc= HP_unempl_19 if id==19
replace unempc= HP_unempl_20 if id==20
replace unempc= HP_unempl_21 if id==21
replace unempc= HP_unempl_22 if id==22
gen check= unempl- unempt- unempc
sum check
/*Deviations from trend*/
replace  unempd= unempc/ unempt
by id: replace unempdp1=unempd[_n+1]
by id: replace unempdp2=unempd[_n+2]
by id: replace unempdp3=unempd[_n+3]
by id: replace unempd1=unempd[_n-1]
by id: replace unempd2=unempd[_n-2]
by id: replace unempd3=unempd[_n-3]