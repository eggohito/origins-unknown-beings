#> origins-unknown-beings:warper/particle_relocation/distance/calculate_max
#
#   > Calculate the max distance
#
#   a * b
#
#   a = `%blocks_per_tick`
#   b = `%max_ticks` 
#
#@within
#   function origins-unknown-beings:load
#   function origins-unknown-beings:warper/tick


# Calculate the max distance
scoreboard players operation $max_distance o-u-b.WP = %blocks_per_tick o-u-b.WP

scoreboard players operation $max_distance o-u-b.WP *= %max_ticks o-u-b.WP


# Synchronize the variables/constants
scoreboard players operation #blocks_per_tick.tmp o-u-b.WP = %blocks_per_tick o-u-b.WP

scoreboard players operation #max_distance.tmp o-u-b.WP = $max_distance o-u-b.WP

scoreboard players operation #max_ticks.tmp o-u-b.WP = %max_ticks o-u-b.WP