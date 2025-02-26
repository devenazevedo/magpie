*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

** Save self sufficiency values as a interface parameter needed in forestry module
pm_selfsuff_ext(t_ext,h,kforestry) = f21_self_suff("y2150",h,kforestry);
pm_selfsuff_ext(t_all,h,kforestry) = f21_self_suff(t_all,h,kforestry);
