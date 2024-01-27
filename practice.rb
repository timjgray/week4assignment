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

x = 0
bens_balance = {"name" => "ben", "balance" => 0}
brians_balance = {"name" => "brian", "balance" => 0}
evans_balance = {"name" => "evan", "balance" => 0}
anthonys_balance = {"name" => "anthony", "balance" => 0}


recording initial transactions 
for hash in blockchain 
  if blockchain[x]["from_user"] == nil and blockchain[x]["to_user"] == "ben"
      bens_balance[1] = bens_balance["balance"] + blockchain[x]["amount"]
      puts "Ben: #{bens_balance[1]}"
      x = x + 1 
  if blockchain[x]["from_user"] == nil and blockchain[x]["to_user"] == "brian" 
      brians_balance = brians_balance + blockchain[x]["amount"]
      puts "Brian: #{brians_balance}"
      x = x + 1
   end 
  end 
end

# recording user transactions 
# for hash in blockchain 
#   if blockchain[x]["from_user"] == "ben" and blockchain[x]["to_user"] == "evan"
#       bens_balance = bens_balance - blockchain[x]["amount"]
#       evans_balance = evans_balance + blockchain[x]["amount"]
#       puts "Evans: #{evans_balance}"
#       puts "Ben: #{bens_balance}"
#       x = x + 1 
#   end 
# end 



# puts blockchain[0]["to_user"]