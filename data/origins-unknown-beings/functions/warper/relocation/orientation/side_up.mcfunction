#> origins-unknown-beings:warper/relocation/orientation/side_up
#
#
#
#@within function origins-unknown-beings:warper/relocation/hit/check_block


execute at @a[tag = o-u-b.warper.user] run particle dust 0.4 0 1 2 ~ ~0.5 ~ 0.3 0.5 0.3 0.1 16 normal @a

tp @a[tag = o-u-b.warper.user, limit = 1] ~ ~-1 ~

execute positioned ~ ~-1 ~ run particle dust 0.4 0 1 2 ~ ~0.5 ~ 0.3 0.5 0.3 0.1 16 normal @a