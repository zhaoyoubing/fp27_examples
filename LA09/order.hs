module Main where

data PaymentMethod = 
    Cash
  | Card { number :: Integer }
  | PayPal { email :: String } 
  | Mobile { account :: String} deriving (Show, Eq)

data Status = Pending | Approved | Rejected deriving (Show, Eq)

data Order = Order
  { orderId :: Int,
    payment :: PaymentMethod,  -- Sum type nested here
    status  :: Status,         -- Sum type nested here
    amount :: Double
  } deriving (Show, Eq)

processPayment :: PaymentMethod -> String
processPayment (Card n) = 
  "Charging card " ++ (show n)
processPayment (PayPal email) = 
  "Redirecting to PayPal account: " ++ email
processPayment (Mobile acc) = 
  "Accessing Mobile Pay account " ++ acc  
processPayment Cash = 
  "Processing cash payment on delivery."

main :: IO()
main = do
    let order = Order { orderId = 1, payment = Mobile {account = "123456"}, status = Approved, amount = 20.0}
    print order
    print $ processPayment (payment order)