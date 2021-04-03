#> origins-unknown-beings:warper/particle_relocation/hit/cast
#
#   > Check if the destination point is safe
#
#@within function origins-unknown-beings:warper/particle_relocation/hit/check_block


# Setup variables
scoreboard players set #hit o-u-b.WP 0

scoreboard players set #distance o-u-b.WP 0

scoreboard players set #unsafeDestination o-u-b.WP 0


# Raycast downwards
function origins-unknown-beings:warper/particle_relocation/hit/ray