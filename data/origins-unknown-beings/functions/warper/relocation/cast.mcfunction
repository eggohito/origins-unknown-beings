#> origins-unknown-beings:warper/relocation/cast
#
#   > Prepare the raycast marker entity
#
#   - Uses the Minecraft Ray Collision Detector raycasting module, by K-Bai
#
#@internal


# Create marker
scoreboard players operation #blocks o-u-b.WP = %blocks_per_tick o-u-b.WP

execute at @s positioned ^ ^ ^1.0 run function origins-unknown-beings:warper/relocation/distance/set_max


# Save speed and direction
execute store result score #var0 mrcd_system run data get entity @s Pos[0] 1000
execute store result score #var1 mrcd_system run data get entity @s Pos[1] 1000
execute store result score #var2 mrcd_system run data get entity @s Pos[2] 1000

execute as @e[tag = o-u-b.raycast.init] store result score @s mrcd_x0 run data get entity @s Pos[0] 1000
execute as @e[tag = o-u-b.raycast.init] store result score @s mrcd_y0 run data get entity @s Pos[1] 1000
execute as @e[tag = o-u-b.raycast.init] store result score @s mrcd_z0 run data get entity @s Pos[2] 1000

scoreboard players operation @e[tag = o-u-b.raycast.init, limit = 1] mrcd_x0 -= #var0 mrcd_system
scoreboard players operation @e[tag = o-u-b.raycast.init, limit = 1] mrcd_y0 -= #var1 mrcd_system
scoreboard players operation @e[tag = o-u-b.raycast.init, limit = 1] mrcd_z0 -= #var2 mrcd_system


# Rotate to the moving direction and anchor it to the player's eyes
execute at @s anchored eyes positioned ^ ^ ^ run tp @e[tag = o-u-b.raycast.init, limit = 1] ~ ~ ~ ~ ~


# Remove the tag
tag @e[tag = o-u-b.raycast.init] remove o-u-b.raycast.init