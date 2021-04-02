#> origins-unknown-beings:warper/relocation/store_uuid_player
#
#   > Store the `UUID` values of all players sequentially
#
#@within function origins-unknown-beings:warper/raycast/store_owner_ray


execute store result score #player.uuid[0] o-u-b.WP run data get entity @s UUID[0]
execute store result score #player.uuid[1] o-u-b.WP run data get entity @s UUID[1]
execute store result score #player.uuid[2] o-u-b.WP run data get entity @s UUID[2]
execute store result score #player.uuid[3] o-u-b.WP run data get entity @s UUID[3]


# Check if it matches the `Owner` tag of the ray entity
execute if score #player.uuid[0] o-u-b.WP = #ray.owner[0] o-u-b.WP if score #player.uuid[1] o-u-b.WP = #ray.owner[1] o-u-b.WP if score #player.uuid[2] o-u-b.WP = #ray.owner[2] o-u-b.WP if score #player.uuid[3] o-u-b.WP = #ray.owner[3] o-u-b.WP run tag @s add o-u-b.warper.user