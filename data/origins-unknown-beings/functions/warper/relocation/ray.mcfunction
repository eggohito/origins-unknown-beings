#> origins-unknown-beings:warper/relocation/ray
#
#   > Reposition the ray entity, and run events if it has made contact with a block
#
#@within function origins-unknown-beings:warper/tick


# Reposition the ray entity
function mrcd:ray_tick

scoreboard players add @s o-u-b.WP.d 1


# If the ray entity hasn't made contact with a block
execute unless entity @s[tag = mrcd_touch_edge] if score @s o-u-b.WP.d >= %max_ticks o-u-b.WP run function origins-unknown-beings:warper/relocation/store_owner_ray

execute at @s unless entity @s[tag = mrcd_touch_edge] if score @s o-u-b.WP.d >= %max_ticks o-u-b.WP if score #player.uuid[0] o-u-b.WP = #ray.owner[0] o-u-b.WP if score #player.uuid[1] o-u-b.WP = #ray.owner[1] o-u-b.WP if score #player.uuid[2] o-u-b.WP = #ray.owner[2] o-u-b.WP if score #player.uuid[3] o-u-b.WP = #ray.owner[3] o-u-b.WP run function origins-unknown-beings:warper/relocation/hit/no_block


# Check if the ray entity has made contact with a block
execute if entity @s[tag = mrcd_touch_edge] run function origins-unknown-beings:warper/relocation/store_owner_ray

execute at @s if entity @s[tag = mrcd_touch_edge] if score #player.uuid[0] o-u-b.WP = #ray.owner[0] o-u-b.WP if score #player.uuid[1] o-u-b.WP = #ray.owner[1] o-u-b.WP if score #player.uuid[2] o-u-b.WP = #ray.owner[2] o-u-b.WP if score #player.uuid[3] o-u-b.WP = #ray.owner[3] o-u-b.WP run function origins-unknown-beings:warper/relocation/hit/check_block


# Kill the ray entity that has made contact with a block
kill @s[tag = mrcd_touch_edge]