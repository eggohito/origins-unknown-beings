#> origins-unknown-beings:warper/particle_relocation/hit/check_block
#
#   > Check if the ray entity has hit a block
#
#@within function origins-unknown-beings:warper/relocation/ray


# Reset variables
scoreboard players reset #height o-u-b.WP

scoreboard players reset #hasRelocated o-u-b.WP


# Store the height of the ray entity (a temporary work-around to something)
execute store result score #height o-u-b.WP run data get entity @s Pos[1]


# Check for the orientation of the hit block
execute store success score #hasRelocated o-u-b.WP unless score #height o-u-b.WP matches 256.. at @s[tag = mrcd_touch_x_plus] align xyz positioned ~0.5 ~ ~0.5 positioned ~1 ~ ~ run function origins-unknown-beings:warper/particle_relocation/hit/cast

execute store success score #hasRelocated o-u-b.WP unless score #height o-u-b.WP matches 256.. at @s[tag = mrcd_touch_x_minus] align xyz positioned ~0.5 ~ ~0.5 positioned ~-1 ~ ~ run function origins-unknown-beings:warper/particle_relocation/hit/cast

execute store success score #hasRelocated o-u-b.WP unless score #height o-u-b.WP matches 256.. at @s[tag = mrcd_touch_y_plus] align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~1 ~ run function origins-unknown-beings:warper/particle_relocation/hit/cast

execute store success score #hasRelocated o-u-b.WP unless score #height o-u-b.WP matches 256.. at @s[tag = mrcd_touch_y_minus] align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~-1 ~ run function origins-unknown-beings:warper/particle_relocation/hit/cast

execute store success score #hasRelocated o-u-b.WP unless score #height o-u-b.WP matches 256.. at @s[tag = mrcd_touch_z_plus] align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~ ~1 run function origins-unknown-beings:warper/particle_relocation/hit/cast

execute store success score #hasRelocated o-u-b.WP unless score #height o-u-b.WP matches 256.. at @s[tag = mrcd_touch_z_minus] align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~ ~-1 run function origins-unknown-beings:warper/particle_relocation/hit/cast


# If the Warper has unsuccessfully relocated
execute if score #unsafeDestination o-u-b.WP matches 1 if score #alreadyInPos o-u-b.WP matches 0 run title @a[tag = o-u-b.warper.user] actionbar {"text": "Cannot teleport! Unsafe location.", "color": "red"}

execute if score #hasRelocated o-u-b.WP matches 1.. if score #alreadyInPos o-u-b.WP matches 1 run title @a[tag = o-u-b.warper.user] actionbar {"text": "Cannot teleport! You're already at the destination.", "color": "red"}


# If the Warper has successfully relocated
execute if score #hasRelocated o-u-b.WP matches 1.. if score #alreadyInPos o-u-b.WP matches 0 if score #unsafeDestination o-u-b.WP matches 0 run tag @a[tag = o-u-b.warper.user] add o-u-b.warper.has_relocated


# Remove the tag from the Warper
tag @a[tag = o-u-b.warper.user] remove o-u-b.warper.user