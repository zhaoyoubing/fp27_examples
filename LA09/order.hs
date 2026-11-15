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

processOrder :: Order -> Either String String
processOrder (Order oId method status amount) 
    | amount < 0 = Left "Error: payment amount less than 0"
    | otherwise = case method of
      Cash -> Right ("Paying by Cash")
      Card n -> -- You can do your credit card check here
        Right ("Charging card" ++ (show n))
      PayPal e 
        | null e    -> Left "Error: Paypal email is required"
        | otherwise -> Right ("Charing Paypal account " ++ e)
      Mobile account -> Right ("Charging Mobible account " ++ account)

main :: IO()
main = do
    let order1 = Order { orderId = 1, payment = Mobile {account = "123456"}, status = Approved, amount = 20.0}
    let order2 = Order { orderId = 2, payment = Card {number = 1234567890000000}, status = Pending, amount = 50.0}
    let order3 = Order { orderId = 3, payment = PayPal {email = "foo@gmail.com"}, status = Pending, amount = -5.0}

    print order1
    print $ processPayment (payment order1)
    print $ processOrder order1
    print $ processOrder order2
    print $ processOrder order3