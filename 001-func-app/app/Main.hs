-- Function application with examples

square :: Double -> Double
square x = x * x

cosSq :: Double -> Double
cosSq x = square (cos x)

cosSq' :: Double -> Double
cosSq' x = square $ cos x

cosSq'' :: Double -> Double
cosSq'' x = (square . cos) x

cosSq''' :: Double -> Double
cosSq''' = square . cos

-- here how to do cosSq using a lambda function
cosSqLambda :: Double -> Double
cosSqLambda = \x -> square $ cos x

-- `pi` is a predefined constant in Haskell
-- Here we are redefining it to show that we can do that.
-- This is a bad practice and should be avoided.
pi :: Double
pi = atan 1 * 4

-- `main` function is the entry point of the program
main :: IO ()
main = do
  putStrLn $ show $ Main.pi
  putStrLn "Function application with $ operator"
  putStrLn $ show $ cosSq Main.pi
  putStrLn $ show $ cosSq' Main.pi
  putStrLn $ show $ cosSq'' Main.pi
  putStrLn $ show $ cosSq''' Main.pi
  putStrLn $ show $ cosSqLambda Main.pi

