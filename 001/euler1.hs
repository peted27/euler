div3or5 n 
    | rem n 3 == 0 = True 
    | rem n 5 == 0 = True 
    | otherwise = False

solve n = sum (filter div3or5 [1 .. n])

euler1 = solve 999
