#> origins-unknown-beings:gatekeeper/gateway/teleport_target
#
#   > Teleport the player that has made contact with the gateway to the destination entity
#
#@within function origins-unknown-beings:gatekeeper/gateway/setup_destination


# Use `/spreadplayers` to assure the safety of the destination entity
execute unless entity @s[tag = o-u-b.gatekeeper.gateway_destination.the_nether] at @s run spreadplayers ~ ~ 1 16 false @e[tag = o-u-b.gatekeeper.gateway_destination, tag = !o-u-b.gatekeeper.gateway_destination.the_nether]

execute if entity @s[tag = o-u-b.gatekeeper.gateway_destination.the_nether] at @s run spreadplayers ~ ~ 1 16 under 127 false @e[tag = o-u-b.gatekeeper.gateway_destination, tag = o-u-b.gatekeeper.gateway_destination.the_nether]


# Check if the destination entity is on a safe place
execute at @s unless block ~ ~-1 ~ #origins-unknown-beings:all_but_air run title @a[tag = o-u-b.gatekeeper.gateway_target] actionbar {"text": "Cannot teleport! No available surface", "color": "red"}

execute at @s if block ~ ~-1 ~ #origins-unknown-beings:all_but_air run tp @a[tag = o-u-b.gatekeeper.gateway_target, limit = 1] ~ ~ ~