# Use empty list to also clear the shulker box in the same NBT operation
data modify storage phi.modifyinv:temp offhand set value []

data modify storage phi.modifyinv:temp offhand append from entity @s Inventory[{Slot:-106b}]
data modify storage phi.modifyinv:temp offhand[0].Slot set value 0b
data modify block -30000000 0 1602 Items set from storage phi.modifyinv:temp offhand