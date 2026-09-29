module Main where
    
bmiTell :: Double -> Double -> String
bmiTell weight height
    | bmi < 18.5 = "Underweight"
    | bmi < 25.0 = "Normal weight"
    | otherwise = "Overweight"
    where bmi = weight / (height ^ 2)

main :: IO()
main = print $ bmiTell 50 1.75