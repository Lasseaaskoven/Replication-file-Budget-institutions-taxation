
xtset countryn year


*Table 1Descriptive statistics* 
xtsum taxrevenuepctofgdpoecd outlays indexs2 rules1 legelec checks gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 if indexs2!=. & rules1!=.
xtsum taxrevenuepctofgdpoecd outlays indexs2 rules1 legelec checks gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 if indexs2!=. & rules1!=. & gdpgrowtheo98!=.



*Bivariate regression* 
xtreg taxrevenuepctofgdpoecd indexs2 i.year, fe cluster(countryn)
xtreg taxrevenuepctofgdpoecd rules1 i.year, fe cluster(countryn)



* Table 2:Pure effects or delegation and contracts on taxation* 
xtreg taxrevenuepctofgdpoecd indexs2 legelec checks gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)
xtreg taxrevenuepctofgdpoecd  rules1 legelec checks gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)


* Table 2: Pure effects or delegation and contracts with outlays* 
xtreg taxrevenuepctofgdpoecd outlays indexs2 legelec checks gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)
xtreg taxrevenuepctofgdpoecd outlays  rules1 legelec checks gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)



*Table 3/figure 1: Interactions internal government* 
xtreg taxrevenuepctofgdpoecd outlays  c.indexs2##c.checks legelec gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)
margins, dydx(indexs2) over(checks)
marginsplot, ylabel ( 15 10 5 0  -5 -10)level(90) ytitle(Effect of budget centralization on taxation) xtitle(Government fractionalization)  yline(0, lstyle(grid) lcolor(gs8) lpattern(dash)) graphregion(color(white))legend (off)    scheme(s1mono)  recastci(rline) recast(line) 


xtreg taxrevenuepctofgdpoecd outlays  c.rules1##c.checks legelec gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)
margins, dydx(rules1) over(checks)
marginsplot, ylabel ( 15 10 5 0  -5 -10)level(90) ytitle(Effect of budget centralization on taxation) xtitle(Government fractionalization)   yline(0, lstyle(grid) lcolor(gs8) lpattern(dash)) graphregion(color(white))legend (off)    scheme(s1mono)  recastci(rline) recast(line) 


*Robustness checks*

* Table 4: EMU-membership*
xtreg taxrevenuepctofgdpoecd outlays indexs2 emunum legelec checks gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)
xtreg taxrevenuepctofgdpoecd outlays  rules1 emunum legelec checks gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)
xtreg taxrevenuepctofgdpoecd outlays  c.indexs2##c.checks legelec gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 emunum i.year, fe cluster(countryn)
xtreg taxrevenuepctofgdpoecd outlays  c.rules1##c.checks legelec gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 emunum i.year, fe cluster(countryn)



*Table 5: Debt levels* 
xtreg taxrevenuepctofgdpoecd outlays indexs2 debt legelec checks gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)
xtreg taxrevenuepctofgdpoecd outlays  rules1 debt legelec checks gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)
xtreg taxrevenuepctofgdpoecd outlays  c.indexs2##c.checks legelec gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 debt i.year, fe cluster(countryn)
xtreg taxrevenuepctofgdpoecd outlays  c.rules1##c.checks legelec gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 debt i.year, fe cluster(countryn)



* Footnote: Excluding 2005-2008. 
xtreg taxrevenuepctofgdpoecd indexs2 legelec checks gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn), if year<2005
xtreg taxrevenuepctofgdpoecd  rules1 legelec checks gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn), if year<2005
xtreg taxrevenuepctofgdpoecd outlays indexs2 legelec checks gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn), if year<2005
xtreg taxrevenuepctofgdpoecd outlays  rules1 legelec checks gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn), if year<2005
xtreg taxrevenuepctofgdpoecd outlays  c.indexs2##c.checks legelec gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn), if year<2005
xtreg taxrevenuepctofgdpoecd outlays  c.rules1##c.checks legelec gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn), if year<2005



*Footnote: replacement with full contracts index*
xtreg taxrevenuepctofgdpoecd  contracts4 legelec checks gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)
xtreg taxrevenuepctofgdpoecd outlays  contracts4 legelec checks gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)
xtreg taxrevenuepctofgdpoecd outlays  c.contracts4##c.checks legelec gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)
margins, dydx(contracts4) over(checks)
marginsplot, ylabel ( 15 10 5 0  -5 -10)level(90) ytitle(Effect of budget centralization on taxation) xtitle(Government fractionalization)   yline(0, lstyle(grid) lcolor(gs8) lpattern(dash)) graphregion(color(white))legend (off)    scheme(s1mono)  recastci(rline) recast(line) 
xtreg taxrevenuepctofgdpoecd outlays  contracts4 emunum legelec checks gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)
xtreg taxrevenuepctofgdpoecd outlays  c.contracts4##c.checks legelec gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 emunum i.year, fe cluster(countryn)




*Footnote: govfrac as fractionalization variable*
xtreg taxrevenuepctofgdpoecd outlays  c.indexs2##c.govfrac legelec gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)
xtreg taxrevenuepctofgdpoecd outlays  c.rules1##c.govfrac legelec gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)


*Appendix B : output gap instead of growth*
xtreg taxrevenuepctofgdpoecd  outlays indexs2 legelec checks gdppercapita2010pricesoecd  outputgapoecdeo2017 gov_left1 i.year, fe cluster(countryn)
xtreg taxrevenuepctofgdpoecd  outlays  rules1 legelec checks gdppercapita2010pricesoecd  outputgapoecdeo2017 gov_left1 i.year, fe cluster(countryn)

xtreg taxrevenuepctofgdpoecd outlays  c.indexs2##c.checks legelec gdppercapita2010pricesoecd outputgapoecdeo2017 gov_left1 i.year, fe cluster(countryn)
margins, dydx(indexs2) over(checks)
marginsplot, ylabel ( 15 10 5 0  -5 -10)level(90) ytitle(Effect of budget centralization on taxation) xtitle(Government fractionalization)  yline(0, lstyle(grid) lcolor(gs8) lpattern(dash)) graphregion(color(white))legend (off)    scheme(s1mono)  recastci(rline) recast(line) 


xtreg taxrevenuepctofgdpoecd  outlays  c.rules1##c.checks legelec gdppercapita2010pricesoecd outputgapoecdeo2017 gov_left1 i.year, fe cluster(countryn)
margins, dydx(rules1) over(checks)
marginsplot, ylabel ( 15 10 5 0  -5 -10)level(90) ytitle(Effect of budget centralization on taxation) xtitle(Government fractionalization)   yline(0, lstyle(grid) lcolor(gs8) lpattern(dash)) graphregion(color(white))legend (off)    scheme(s1mono)  recastci(rline) recast(line) 


*Appendix C: Alternative measure of government fractionalization:
xtreg taxrevenuepctofgdpoecd outlays  c.indexs2##c.herfgov legelec gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)
xtreg taxrevenuepctofgdpoecd outlays  c.rules1##c.herfgov legelec gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)

*Appendix D: Lagged dependent variable*
generate laggedtax= l.taxrevenuepctofgdpoecd

xtreg taxrevenuepctofgdpoecd l.taxrevenuepctofgdpoecd outlays indexs2 legelec checks gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)
xtreg taxrevenuepctofgdpoecd l.taxrevenuepctofgdpoecd outlays  rules1 legelec checks gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)

xtreg taxrevenuepctofgdpoecd laggedtax outlays  c.indexs2##c.checks legelec gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)
margins, dydx(indexs2) over(checks)
marginsplot, ylabel (  5 4 3 2 1 0 -1 -2 -3 -4 -5 )level(90) ytitle(Effect of budget centralization on taxation) xtitle(Government fractionalization)  yline(0, lstyle(grid) lcolor(gs8) lpattern(dash)) graphregion(color(white))legend (off)    scheme(s1mono)  recastci(rline) recast(line) 


xtreg taxrevenuepctofgdpoecd laggedtax outlays  c.rules1##c.checks legelec gdppercapita2010pricesoecd gdpgrowtheo98 gov_left1 i.year, fe cluster(countryn)
margins, dydx(rules1) over(checks)
marginsplot, ylabel (  5 4 3 2 1 0 -1 -2 -3 -4 -5 ) level(90) ytitle(Effect of budget centralization on taxation) xtitle(Government fractionalization)   yline(0, lstyle(grid) lcolor(gs8) lpattern(dash)) graphregion(color(white))legend (off)    scheme(s1mono)  recastci(rline) recast(line) 

