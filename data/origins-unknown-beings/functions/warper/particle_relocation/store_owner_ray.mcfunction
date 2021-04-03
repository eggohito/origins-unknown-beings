#> origins-unknown-beings:warper/particle_relocation/store_owner_ray
#
#   > Store the `Owner` values of the ray entity to scoreboard
#
#@within function origins-unknown-beings:warper/raycast/ray


function origins-unknown-beings:warper/particle_relocation/reset


execute store result score #ray.owner[0] o-u-b.WP run data get entity @s Owner[0]
execute store result score #ray.owner[1] o-u-b.WP run data get entity @s Owner[1]
execute store result score #ray.owner[2] o-u-b.WP run data get entity @s Owner[2]
execute store result score #ray.owner[3] o-u-b.WP run data get entity @s Owner[3]

execute as @a run function origins-unknown-beings:warper/particle_relocation/store_uuid_player