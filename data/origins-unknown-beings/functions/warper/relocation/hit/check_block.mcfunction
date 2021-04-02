#> origins-unknown-beings:warper/relocation/hit/check_block
#
#   > Check if the destination point is safe
#
#@within function origins-unknown-beings:warper/relocation/ray


scoreboard players reset #height o-u-b.WP

scoreboard players reset #hasRelocated o-u-b.WP


execute store result score #height o-u-b.WP run data get entity @s Pos[1]


execute store success score #hasRelocated o-u-b.WP unless score #height o-u-b.WP matches 256.. at @s[tag = mrcd_touch_x_plus] align xyz positioned ~0.5 ~ ~0.5 positioned ~1 ~ ~ if predicate origins-unknown-beings:warper/relocation_check/side_up run function origins-unknown-beings:warper/relocation/orientation/side_up

execute store success score #hasRelocated o-u-b.WP unless score #height o-u-b.WP matches 256.. at @s[tag = mrcd_touch_x_minus] align xyz positioned ~0.5 ~ ~0.5 positioned ~-1 ~ ~ if predicate origins-unknown-beings:warper/relocation_check/side_up run function origins-unknown-beings:warper/relocation/orientation/side_up

execute store success score #hasRelocated o-u-b.WP unless score #height o-u-b.WP matches 256.. at @s[tag = mrcd_touch_x_plus] align xyz positioned ~0.5 ~ ~0.5 positioned ~1 ~ ~ if predicate origins-unknown-beings:warper/relocation_check/side_down run function origins-unknown-beings:warper/relocation/orientation/side_down

execute store success score #hasRelocated o-u-b.WP unless score #height o-u-b.WP matches 256.. at @s[tag = mrcd_touch_x_minus] align xyz positioned ~0.5 ~ ~0.5 positioned ~-1 ~ ~ if predicate origins-unknown-beings:warper/relocation_check/side_down run function origins-unknown-beings:warper/relocation/orientation/side_down

execute store success score #hasRelocated o-u-b.WP unless score #height o-u-b.WP matches 256.. at @s[tag = mrcd_touch_y_plus] align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~1 ~ if predicate origins-unknown-beings:warper/relocation_check/y_plus run function origins-unknown-beings:warper/relocation/orientation/side_down

execute store success score #hasRelocated o-u-b.WP unless score #height o-u-b.WP matches 256.. at @s[tag = mrcd_touch_y_minus] align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~-1 ~ if predicate origins-unknown-beings:warper/relocation_check/y_minus run function origins-unknown-beings:warper/relocation/orientation/side_up

execute store success score #hasRelocated o-u-b.WP unless score #height o-u-b.WP matches 256.. at @s[tag = mrcd_touch_z_plus] align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~ ~1 if predicate origins-unknown-beings:warper/relocation_check/side_up run function origins-unknown-beings:warper/relocation/orientation/side_up

execute store success score #hasRelocated o-u-b.WP unless score #height o-u-b.WP matches 256.. at @s[tag = mrcd_touch_z_minus] align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~ ~-1 if predicate origins-unknown-beings:warper/relocation_check/side_up run function origins-unknown-beings:warper/relocation/orientation/side_up

execute store success score #hasRelocated o-u-b.WP unless score #height o-u-b.WP matches 256.. at @s[tag = mrcd_touch_z_plus] align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~ ~1 if predicate origins-unknown-beings:warper/relocation_check/side_down run function origins-unknown-beings:warper/relocation/orientation/side_down

execute store success score #hasRelocated o-u-b.WP unless score #height o-u-b.WP matches 256.. at @s[tag = mrcd_touch_z_minus] align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~ ~-1 if predicate origins-unknown-beings:warper/relocation_check/side_down run function origins-unknown-beings:warper/relocation/orientation/side_down


execute unless score #hasRelocated o-u-b.WP matches 1.. run title @a[tag = o-u-b.warper.user] actionbar {"text": "Cannot teleport! Unsafe location.", "color": "red"}

execute if score #hasRelocated o-u-b.WP matches 1.. run tag @a[tag = o-u-b.warper.user] add o-u-b.warper.has_relocated


tag @a[tag = o-u-b.warper.user] remove o-u-b.warper.user