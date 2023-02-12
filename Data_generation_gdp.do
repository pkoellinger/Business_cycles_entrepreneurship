sort id year
by id: hprescott  cgdp, stub(HP) smooth(6.25)
/*Trends*/
replace  gdptrend= HP_cgdp_sm_1 if id==1
replace  gdptrend= HP_cgdp_sm_2 if id==2
replace  gdptrend= HP_cgdp_sm_3 if id==3
replace  gdptrend= HP_cgdp_sm_4 if id==4
replace  gdptrend= HP_cgdp_sm_5 if id==5
replace  gdptrend= HP_cgdp_sm_6 if id==6
replace  gdptrend= HP_cgdp_sm_7 if id==7
replace  gdptrend= HP_cgdp_sm_8 if id==8
replace  gdptrend= HP_cgdp_sm_9 if id==9
replace  gdptrend= HP_cgdp_sm_10 if id==10
replace  gdptrend= HP_cgdp_sm_11 if id==11
replace  gdptrend= HP_cgdp_sm_12 if id==12
replace  gdptrend= HP_cgdp_sm_13 if id==13
replace  gdptrend= HP_cgdp_sm_14 if id==14
replace  gdptrend= HP_cgdp_sm_15 if id==15
replace  gdptrend= HP_cgdp_sm_16 if id==16
replace  gdptrend= HP_cgdp_sm_17 if id==17
replace  gdptrend= HP_cgdp_sm_18 if id==18
replace  gdptrend= HP_cgdp_sm_19 if id==19
replace  gdptrend= HP_cgdp_sm_20 if id==20
replace  gdptrend= HP_cgdp_sm_21 if id==21
replace  gdptrend= HP_cgdp_sm_22 if id==22

/*Cycle*/
replace gdpcycle= HP_cgdp_1 if id==1
replace gdpcycle= HP_cgdp_2 if id==2
replace gdpcycle= HP_cgdp_3 if id==3
replace gdpcycle= HP_cgdp_4 if id==4
replace gdpcycle= HP_cgdp_5 if id==5
replace gdpcycle= HP_cgdp_6 if id==6
replace gdpcycle= HP_cgdp_7 if id==7
replace gdpcycle= HP_cgdp_8 if id==8
replace gdpcycle= HP_cgdp_9 if id==9
replace gdpcycle= HP_cgdp_10 if id==10
replace gdpcycle= HP_cgdp_11 if id==11
replace gdpcycle= HP_cgdp_12 if id==12
replace gdpcycle= HP_cgdp_13 if id==13
replace gdpcycle= HP_cgdp_14 if id==14
replace gdpcycle= HP_cgdp_15 if id==15
replace gdpcycle= HP_cgdp_16 if id==16
replace gdpcycle= HP_cgdp_17 if id==17
replace gdpcycle= HP_cgdp_18 if id==18
replace gdpcycle= HP_cgdp_19 if id==19
replace gdpcycle= HP_cgdp_20 if id==20
replace gdpcycle= HP_cgdp_21 if id==21
replace gdpcycle= HP_cgdp_22 if id==22
gen check= cgdp- gdptrend- gdpcycle
sum check
/*Deviations from trend*/
replace  gdptdev= gdpcycle/gdptrend
