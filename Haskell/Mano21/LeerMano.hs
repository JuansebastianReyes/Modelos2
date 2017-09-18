separarMano [String]->int
sumaDigitosR [] = 0
sumaDigitosR (x:xs)
    | isDigit x  = digitToInt x + sumaDigitosR xs
    | otherwise  = sumaDigitosR xs
