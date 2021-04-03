#> origins-unknown-beings:warper/tick
#
#   > The tick function for the 'Warper' origin
#
#@within function origins-unknown-beings:tick


# Synchronize the variables/constants used for raycasting
execute unless score %blocks_per_tick o-u-b.WP = #blocks_per_tick.tmp o-u-b.WP run function origins-unknown-beings:warper/particle_relocation/distance/calculate_max

execute unless score %max_ticks o-u-b.WP = #max_ticks.tmp o-u-b.WP run function origins-unknown-beings:warper/particle_relocation/distance/calculate_max

execute unless score $max_distance o-u-b.WP = #max_distance.tmp o-u-b.WP run function origins-unknown-beings:warper/particle_relocation/distance/calculate_max


# Reposition the raycast entity every tick
execute as @e[tag = o-u-b.warper.raycast] at @s run function origins-unknown-beings:warper/particle_relocation/ray