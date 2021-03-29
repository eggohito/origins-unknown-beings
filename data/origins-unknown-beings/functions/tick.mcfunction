#> origins-unknown-beings:tick
#
#   > The main tick function for the `origins-unknown-beings` namespace
#
#@within
#   function origins-unknown-beings:load
#   function origins-unknown-beings:tick


# Teleport the players that made contact with a gateway
execute as @a[tag = o-u-b.gatekeeper.gateway_exclude] at @s unless entity @e[tag = o-u-b.gatekeeper.gateway, dx = 0] run tag @s remove o-u-b.gatekeeper.gateway_exclude

execute as @a[tag = !o-u-b.gatekeeper.gateway_exclude] at @s if entity @e[tag = o-u-b.gatekeeper.gateway, dx = 0] run function origins-unknown-beings:gatekeeper/gateway/prepare


# Loop this function
schedule function origins-unknown-beings:tick 1t