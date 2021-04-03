#> origins-unknown-beings:warper/particle_relocation/hit/ray
#
#   > Check for dangerous blocks and stuff
#
#@within function origins-unknown-beings:warper/particle_relocation/hit/cast


# Add distance
scoreboard players add #distance o-u-b.WP 1


# Check if the block is dangerous
execute unless block ~ ~ ~ #origins-unknown-beings:player_can_pass run scoreboard players set #hit o-u-b.WP 1

execute if block ~ ~ ~ #origins-unknown-beings:dangerous_blocks run scoreboard players set #unsafeDestination o-u-b.WP 1

execute if score #hit o-u-b.WP matches 1 if score #unsafeDestination o-u-b.WP matches 0 unless block ~ ~2 ~ #origins-unknown-beings:player_can_pass run scoreboard players set #unsafeDestination o-u-b.WP 1

execute if score #hit o-u-b.WP matches 1 if score #unsafeDestination o-u-b.WP matches 0 positioned ~ ~1 ~ run function origins-unknown-beings:warper/particle_relocation/hit/teleport


# Recurse this function
execute if score #hit o-u-b.WP matches 0 if score #distance o-u-b.WP = %safe_height o-u-b.WP positioned ~ ~-1 ~ run scoreboard players set #unsafeDestination o-u-b.WP 1


execute if score #hit o-u-b.WP matches 0 unless score #distance o-u-b.WP = %safe_height o-u-b.WP positioned ~ ~-1 ~ run function origins-unknown-beings:warper/particle_relocation/hit/ray