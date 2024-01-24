local merchant = game:GetService("ReplicatedStorage").Merchants.AdvancedMerchant

-- Retrieve the items that are currently available for sale
local items = merchant:GetChildren()

-- Iterate through the items and display information, emphasizing "Diamond Fishing Rod" and "Diamond Shovel"
for _, item in ipairs(items) do
    local itemName = item.Name
    local itemPrice = item.Price.Diamonds.Value -- Assuming Diamonds is the currency for price
    local itemStock = item.Stock.Value
    local itemSold = item.Sold.Value
    local itemDescription = item.Description.Value
    local timeUntilRestock = item.RestockTime.Value -- Assuming RestockTime is a property indicating time until restock

    -- Emphasize "Diamond Fishing Rod" and "Diamond Shovel"
    local emphasis = (itemName == "Diamond Fishing Rod" or itemName == "Diamond Shovel") and "***" or "" -- Add emphasis if the item is "Diamond Fishing Rod" or "Diamond Shovel"

    -- Adjusted to include the "💎 Diamonds" string for Diamonds
    print(emphasis .. itemName .. " is currently available for sale at " .. itemPrice .. " Diamonds. " .. itemStock .. " units are in stock, and " .. itemSold .. " units have been sold. Description: " .. itemDescription .. emphasis)

    if timeUntilRestock > 0 then
        print("Time until restock: " .. timeUntilRestock .. " seconds.")
    else
        print("This item is currently in stock. No restocking needed.")
    end
end
