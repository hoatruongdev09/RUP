SELECT SUM(soluong) FROM nguoihienmau JOIN lichsuhienmau ON nguoihienmau.manguoi = lichsuhienmau.manguoi
JOIN dothienmau ON lichsuhienmau.madot = dothienmau.madot
WHERE mamau = 1 AND dothienmau.madot =1

SELECT SUM(soluong) FROM nguoihienmau JOIN lichsuhienmau ON nguoihienmau.manguoi = lichsuhienmau.manguoi
JOIN dothienmau ON lichsuhienmau.madot = dothienmau.madot
WHERE mamau = 2 AND dothienmau.madot =1
SELECT SUM(soluong) FROM nguoihienmau JOIN lichsuhienmau ON nguoihienmau.manguoi = lichsuhienmau.manguoi
JOIN dothienmau ON lichsuhienmau.madot = dothienmau.madot
WHERE mamau = 3 AND dothienmau.madot =1
SELECT SUM(soluong) FROM nguoihienmau JOIN lichsuhienmau ON nguoihienmau.manguoi = lichsuhienmau.manguoi
JOIN dothienmau ON lichsuhienmau.madot = dothienmau.madot
WHERE mamau = 4 AND dothienmau.madot =1

