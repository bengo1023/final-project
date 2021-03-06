week = true
traffic = 0
prices = {}
time = 0
distance = 0
## DEFINE YOUR METHODS HERE
#write your method for uberX here
#   Base Fare: $2.55
# Per Minute: $0.35
# Per Mile: $1.75
# min 8

def uberX_fare_calculator(min, miles,week, traffic)
  fare = 2.55 + min * 0.35 + miles * 1.75
  if fare < 8
    return 8
  else
    return fare
  end
end
#write your method for uberBlack here
# Base Fare: $7
# Per Minute: $0.65
# Per Mile: $3.75
def uberBlack_fare_calculator(min, miles,week, traffic)
  fare = 7 + min * 0.65 + miles * 3.75
  if fare < 15
    return 15
  else
    return fare
  end
end
#write your method for uberXL here
# Base Fare: $3.85
# Per Minute: $0.50
# Per Mile: $2.85
def uberXL_fare_calculator(min, miles,week, traffic)
  fare = 3.85 + min * 0.5 + miles * 2.85
  if fare < 10.5
    return 10.5
  else
    return fare
  end
end
#write your method for uberSUV here
# Base Fare: $14
# Per Minute: $0.80
# Per Mile: $4.50
def uberSUV_fare_calculator(min, miles,week, traffic)
  fare = 14 + min * 0.8 + miles * 4.5
  if fare < 25
    return 25
  else
    return fare
  end
end
# Initial cost: $2.50
# Service fee: $0
# Price per minute: $0.35
# Price per mile: $1.79
# Minimum ride cost: $8
# Ride cancel fee: $10
def lyft_standard_fare_calculator(min, miles,week, traffic)
  fare = 2.5 + min * 0.35 + miles * 1.79
  if fare < 8
    return 8
  else
    return fare
  end
end
# Initial cost: $3.50
# Service fee: $0
# Price per minute: $0.50
# Price per mile: $2.97
# Minimum ride cost: $12
# Ride cancel fee: $10
def lyft_plus_fare_calculator(min, miles,week, traffic)
  fare = 3.5 + min * 0.5 + miles * 2.97
  if fare < 12
    return 12
  else
    return fare
  end
end
# Initial cost: $7
# Service fee: $0
# Price per minute: $0.64
# Price per mile: $3.77
# Minimum ride cost: $15
# Ride cancel fee: $10
def lyft_premier_fare_calculator(min, miles,week, traffic)
  fare = 7 + min * 0.64 + miles * 3.77
  if fare < 15
    return 15
  else
    return fare
  end
end
# Initial cost: $2.50
# Service fee: $0
# Price per minute: $0.35
# Price per mile: $1.79
# Minimum ride cost: $6
# Ride cancel fee: $5
def lyft_line_fare_calculator(min, miles,week, traffic)
  fare = 2.5 + min * 0.35 + miles * 1.79
  if fare < 6
    return 6
  else
    return fare
  end
end

def via_fare_calculator(min, miles,week, traffic)
  if week == "weekday"
    return 5.44
  else
    return 6.47
  end
end

def nyc_taxi_calculator(min, miles,week, traffic)
  if traffic == "regular"
    return 3.3 + min * 0.2 *  0.5 + miles * 2.50
  else
        return 3.3 + min * 0.5 *  0.5 + miles * 2.50
  end
end



# ##  CALL/USE YOUR METHODS HERE
# if uberX_fare_calculator(time,distance,wk,tr) < 8
#   puts "UberX price: $8"
#   prices[:uberX] = 8
# else
#   puts "UberX price: $#{uberX_fare_calculator(time,distance).round(2)}"
#   prices[:uberX] = uberX_fare_calculator(time,distance).round(2)
# end

# if uberBlack_fare_calculator(time,distance,wk,tr) < 15
#   puts "UberBlack price: $15"
#   prices[:uberBlack] = 8
# else
#   puts "UberBlack price: $#{uberBlack_fare_calculator(time,distance).round(2)}"
#   prices[:uberBlack] = uberBlack_fare_calculator(time,distance).round(2)
# end

# if uberXL_fare_calculator(time,distance,wk,tr) < 10.50
#   puts "UberXL price: $10.50"
#   prices[:uberXL] = 10.50
# else
#   puts "UberXL price: $#{uberXL_fare_calculator(time,distance).round(2)}"
#   prices[:uberXL] = uberXL_fare_calculator(time,distance).round(2)
# end

# if uberSUV_fare_calculator(time,distance,wk,tr) < 25
#   puts "UberSUV price: $25"
#   prices[:uberSUV] = 25
# else
#   puts "UberSUV price: $#{uberSUV_fare_calculator(time,distance).round(2)}"
#   prices[:uberSUV] = uberSUV_fare_calculator(time,distance).round(2)
# end

# if lyft_standard_fare_calculator(time,distance,wk,tr) < 12
#   puts "Lyft Standard price: $12"
#   prices[:lyft_standard] = 25
# else
#   puts "Lyft Standard price: $#{lyft_standard_fare_calculator(time,distance).round(2)}"
#   prices[:lyft_standard] = lyft_standard_fare_calculator(time,distance).round(2)
# end

# if lyft_plus_fare_calculator(time,distance,wk,tr) < 12
#   puts "Lyft Plus price: $12"
#   prices[:lyft_plus] = 12
# else
#   puts "Lyft Plus price: $#{lyft_plus_fare_calculator(time,distance).round(2)}"
#   prices[:lyft_plus] = lyft_plus_fare_calculator(time,distance).round(2)
# end

# if lyft_premier_fare_calculator(time,distance,wk,tr) < 15
#   puts "Lyft Premier price: $15"
#   prices[:lyft_premier] = 15
# else
#   puts "Lyft Premier price: $#{lyft_premier_fare_calculator(time,distance).round(2)}"
#   prices[:lyft_premier] = lyft_premier_fare_calculator(time,distance).round(2)
# end

# if lyft_line_fare_calculator(time,distance,wk,tr) < 6
#   puts "Lyft Line price: $15"
#   prices[:lyft_standard] = 6
# else
#   puts "Lyft Line price: $#{lyft_line_fare_calculator(time,distance).round(2)}"
#   prices[:lyft_standard] = lyft_line_fare_calculator(time,distance).round(2)
# end

# puts "Via price: $#{via_fare_calculator(time,distance,week).round(2)}"
# prices[:via] = via_fare_calculator(time,distance,week).round(2)

# puts "NYC Taxi price: $#{nyc_taxi_calculator(time,distance,traffic).round(2)}"
# prices[:nyc] = nyc_taxi_calculator(time,distance,traffic).round(2)

# p prices
