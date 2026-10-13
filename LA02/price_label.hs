
priceLabel basePrice = -- (Show a, Fractional a) => a -> [Char]
  let rate = 0.10   -- Fractional a => a
      discount = basePrice * rate -- type from basePrice
      label = "Final Price: "    -- String ([Char])
  in label ++ show (basePrice - discount)