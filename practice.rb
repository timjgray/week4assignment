# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

# blockchain is an array of hashes 
# each hash represents one transaction 
# each transaction has two impacts i need to record, transfer out and transfer in 
# nil is the first two transactions happened at the ico, is the start of the transaction 

# i need ... 
# variables for users balances 
# somehow iterate through the blockchain array and then iterate through each hash 
## nested loop? maybe 

users = [ 
bens_balance = {"name" => "ben", "balance" => 0},
brians_balance = {"name" => "brian", "balance" => 0},
evans_balance = {"name" => "evan", "balance" => 0},
anthonys_balance = {"name" => "anthony", "balance" => 0}
]


y = 0 
x = 0

#post all in flows
for item in blockchain 
    if blockchain[y]["to_user"] == "ben" 
      bens_balance["balance"] += blockchain[y]["amount"]
      #puts "Ben: #{bens_balance["balance"]}"
      y = y + 1 
    elsif blockchain[y]["to_user"] == "brian"
      brians_balance["balance"] += blockchain[y]["amount"]
      #puts "Brian: #{brians_balance["balance"]}"
      y = y + 1 
    elsif blockchain[y]["to_user"] == "evan"
      evans_balance["balance"] += blockchain[y]["amount"]
      #puts "Evan: #{evans_balance["balance"]}"
      y = y + 1 
    elsif blockchain[y]["to_user"] == "anthony"
      anthonys_balance["balance"] += blockchain[y]["amount"]
      #puts "Anthony: #{anthonys_balance["balance"]}"
      y = y + 1 
  for tx in 1..y
      if blockchain[x]["from_user"] == nil
        x += 1
      elsif blockchain[x]["from_user"] == "ben" 
        bens_balance["balance"] -= blockchain[x]["amount"]
        puts "Ben: #{bens_balance["balance"]}"
        x += 1 
      elsif blockchain[y]["from_user"] == "brian"
        brians_balance["balance"] -= blockchain[x]["amount"]
        puts "Brian: #{brians_balance["balance"]}"
        x += 1 
      elsif blockchain[y]["from_user"] == "evan"
        evans_balance["balance"] -= blockchain[x]["amount"]
        puts "Evan: #{evans_balance["balance"]}"
        x += 1 
      elsif blockchain[y]["from_user"] == "anthony"
        anthonys_balance["balance"] -= blockchain[x]["amount"]
        puts "Anthony: #{anthonys_balance["balance"]}"
        x += 1 
      end 
    end 
  end 
end 

puts "Start of final outputs "
puts "Anthony: #{anthonys_balance["balance"]}"
puts "Evan: #{evans_balance["balance"]}"
puts "Brian: #{brians_balance["balance"]}"
puts "Ben: #{bens_balance["balance"]}"


# for item in blockchain 
#   if blockchain[y]["to_user"] == "ben" || blockchain[y]["from_user"] == "ben" 
#     if blockchain[y]["from_user"] == "ben"
#       bens_balance["balance"] -= blockchain[y]["amount"]
#       puts "Ben: #{bens_balance["balance"]}"
#       y += 1
#     elsif blockchain[y]["to_user"] == "ben"
#       bens_balance["balance"] += blockchain[y]["amount"]
#       puts "Ben: #{bens_balance["balance"]}"
#       y += 1
#     end 
#   end 
# end 







#bens_balance["balance"] = bens_balance["balance"] + blockchain[0]["amount"]

#puts bens_balance["balance"]
#puts blockchain[0]["amount"].class
#puts bens_balance["balance"]

a = 0 

# for people in users 
#   if users[a]["name"] == blockchain[a]["to_user"]
#     users[a]["balance"] = users[a]["balance"] + blockchain[a]["amount"]
#     puts users[a]["balance"]
#     a = a + 1
#   if users[b]["name"] == blockchain[b]["from_user"]
#     users[b]["balance"] = users[b]["balance"] - blockchain[b]["amount"]
#     puts users[b]["balance"]
#     b = b + 1
#   end 
# end 

b = 0 
# for guys in users 
#   if users[b]["name"] == blockchain[b]["from_user"]
#     users[b]["balance"] = users[b]["balance"] - blockchain[b]["amount"]
#     puts users[b]["balance"]
#     b = b + 1
#   end 
# end 

