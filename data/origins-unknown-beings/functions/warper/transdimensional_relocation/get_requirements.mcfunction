#> origins-unknown-beings:warper/transdimensional_relocation/get_requirements
#
#   > Clear 1 item from the player's mainhand
#
#@within function origins-unknown-beings:warper/transdimensional_relocation/teleport_target


# Remove 1 item in the mainhand
function phi.modifyinv:setup/mainhand

execute store result score #count o-u-b.WP run data get block -30000000 0 1602 Items[0].Count

scoreboard players remove #count o-u-b.WP 1

execute store result block -30000000 0 1602 Items[0].Count byte 1 run scoreboard players get #count o-u-b.WP

function phi.modifyinv:apply/mainhand