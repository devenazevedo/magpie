*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

equations
 q38_cost_prod_crop(i,kcr)         Regional factor input costs for plant production (mio USD05MER)
 q38_cost_prod_inv(i)              Regional investment costs in capital (mio USD05MER)
 q38_investment_immobile(j,kcr)    Cellular immobile investments into farm capital   (mio USD05MER)
 q38_investment_mobile(j)          Cellular mobile investments into farm capital   (mio USD05MER)
 q38_ces_prodfun(j,kcr)			   CES production function for one unit of output (1)
;

positive variables
 vm_cost_prod(i,kall)                  Factor costs  (mio USD05MER  per yr)
 vm_cost_inv(i)                        Investment capital costs (mio USD05MER  per yr)
 v38_investment_immobile(j,kcr)        Investment costs in immobile farm capital (mio USD05MER per yr)
 v38_investment_mobile(j)              Investment costs in mobile farm capital (mio USD05MER per yr)
 v38_labor_need(j,kcr)				   Labor required per unit of output (hours per ton DM)
 v38_capital_need(j,kcr,mobil38)	   Captial required per unit of output (USD05MER per ton DM)
;

parameters
 p38_variable_costs(t,i,kcr)           Variable input costs per unit of output (USD05MER per ton DM)
 p38_capital_need(t,i,kcr,mobil38)     Capital requirements per unit of output (USD05MER per ton DM)
 p38_capital_immobile(t,j,kcr)         Preexisting immobile capital stocks before investment (mio USD05MER)
 p38_capital_mobile(t,j)               Preexisting mobile capital stocks before investment (mio USD05MER)

 p38_capital_cost_share(t,i)           Capital share for dynamic calculation (1)
 p38_share_calibration(i)              Summation factor used to calibrate calculated capital shares with historical values (1)

 p38_croparea_start(j,w,kcr)           Agricultural land initialization area (mio. ha)

 i38_ces_shr(j,kcr)						Share parameter for CES function (1)
 i38_ces_scale(j,kcr)					Scaling factor for total factor productivity (1)
;

scalars
 s38_ces_elast_par								Elasticity parameter for CES function (1)
;

*#################### R SECTION START (OUTPUT DECLARATIONS) ####################
parameters
 ov_cost_prod(t,i,kall,type)             Factor costs  (mio USD05MER  per yr)
 ov_cost_inv(t,i,type)                   Investment capital costs (mio USD05MER  per yr)
 ov38_investment_immobile(t,j,kcr,type)  Investment costs in immobile farm capital (mio USD05MER per yr)
 ov38_investment_mobile(t,j,type)        Investment costs in mobile farm capital (mio USD05MER per yr)
 ov38_labor_need(t,j,kcr,type)           Labor required per unit of output (hours per ton DM)
 ov38_capital_need(t,j,kcr,mobil38,type) Captial required per unit of output (USD05MER per ton DM)
 oq38_cost_prod_crop(t,i,kcr,type)       Regional factor input costs for plant production (mio USD05MER)
 oq38_cost_prod_inv(t,i,type)            Regional investment costs in capital (mio USD05MER)
 oq38_investment_immobile(t,j,kcr,type)  Cellular immobile investments into farm capital   (mio USD05MER)
 oq38_investment_mobile(t,j,type)        Cellular mobile investments into farm capital   (mio USD05MER)
 oq38_ces_prodfun(t,j,kcr,type)          CES production function for one unit of output (1)
;
*##################### R SECTION END (OUTPUT DECLARATIONS) #####################
