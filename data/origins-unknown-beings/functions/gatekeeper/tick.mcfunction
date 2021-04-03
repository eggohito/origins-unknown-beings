#> origins-unknown-beings:gatekeeper/tick
#
#   > The tick function for the 'Gatekeeper' origin
#
#@within function origins-unknown-beings:tick


# Teleport the players that made contact with a gateway
execute as @a[tag = o-u-b.gatekeeper.gateway_exclude] at @s unless entity @e[tag = o-u-b.gatekeeper.gateway, dx = 0] run tag @s remove o-u-b.gatekeeper.gateway_exclude

execute as @a[tag = !o-u-b.gatekeeper.gateway_exclude] at @s if entity @e[tag = o-u-b.gatekeeper.gateway, dx = 0] run function origins-unknown-beings:gatekeeper/gateway/prepare