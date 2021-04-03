#> origins-unknown-beings:warper/particle_relocation/hit/teleport
#
#   > Teleport the Warper
#
#@within function origins-unknown-beings:warper/relocation/hit/check_block


# If the Warper is already in the destination
execute store success score #alreadyInPos o-u-b.WP if entity @a[tag = o-u-b.warper.user, dx = 0]


# Display particles in the destination point
execute if score #alreadyInPos o-u-b.WP matches 0 at @a[tag = o-u-b.warper.user] run particle dust 0.4 0 1 2 ~ ~0.5 ~ 0.3 0.5 0.3 0.1 16 normal @a


# Teleport the Warper
execute if score #alreadyInPos o-u-b.WP matches 0 run tp @a[tag = o-u-b.warper.user, limit = 1] ~ ~ ~


# Display particles in the previous point
execute if score #alreadyInPos o-u-b.WP matches 0 run particle dust 0.4 0 1 2 ~ ~0.5 ~ 0.3 0.5 0.3 0.1 16 normal @a