#> origins-unknown-beings:warper/particle_relocation/distance/set_max
#
#   > Set the max distance of the ray entity
#
#@within function origins-unknown-beings:warper/raycast/cast


# Decrement the value
scoreboard players remove #blocks o-u-b.WP 1


# Summon the ray entity
execute unless score #blocks o-u-b.WP matches 1.. run summon area_effect_cloud ~ ~ ~ {Tags: ["mrcd_bullet", "o-u-b.raycast", "o-u-b.raycast.init", "o-u-b.warper.raycast"], Duration: 999999}

execute unless score #blocks o-u-b.WP matches 1.. run data modify entity @e[tag = o-u-b.raycast.init, limit = 1] Owner set from entity @s UUID


# Recurse this function
execute if score #blocks o-u-b.WP matches 1.. positioned ^ ^ ^1.0 run function origins-unknown-beings:warper/particle_relocation/distance/set_max