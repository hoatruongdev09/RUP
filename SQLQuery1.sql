SELECT SUM(soluong) FROM nguoihienmau JOIN lichsuhienmau ON nguoihienmau.manguoi = lichsuhienmau.manguoi JOIN dothienmau ON lichsuhienmau.madot = dothienmau.madot WHERE mamau = 2 AND dothienmau.madot = 1