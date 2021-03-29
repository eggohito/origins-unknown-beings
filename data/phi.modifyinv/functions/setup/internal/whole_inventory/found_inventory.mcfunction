# Remove 9 from the slot number so it will fit inside a shulker box:
execute store result storage phi.modifyinv:temp whole_inventory[-1].Slot byte 1 run scoreboard players remove $phi.modifyinv.slot phitemp 9

# Move item into the inventory section:
data modify storage phi.modifyinv:temp inventory append from storage phi.modifyinv:temp whole_inventory[-1]
data remove storage phi.modifyinv:temp whole_inventory[-1]

# Get the slot number for the next item and repeat:
execute store result score $phi.modifyinv.slot phitemp run data get storage phi.modifyinv:temp whole_inventory[-1].Slot
scoreboard players remove $phi.modifyinv.slot_count phitemp 1
function phi.modifyinv:setup/internal/whole_inventory/check_inventory