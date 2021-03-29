#> origins-unknown-beings:gatekeeper/gateway/setup_destination
#
#   > Setup the destination entity
#
#@within function origins-unknown-beings:gatekeeper/gateway/prepare


# Teleport the destination entity to the dimension
    ## (Default dimensions)
    execute if entity @s[tag = o-u-b.gatekeeper.gateway_destination.overworld] in minecraft:overworld run tp @s ~ ~ ~

    execute if entity @s[tag = o-u-b.gatekeeper.gateway_destination.the_nether] in minecraft:the_nether run tp @s ~ ~ ~

    execute if entity @s[tag = o-u-b.gatekeeper.gateway_destination.the_end] in minecraft:the_end run tp @s ~ ~ ~

    ## (Custom dimensions) [currently unused]
    


# Teleport the target entity to the destination entity
execute as @e[tag = o-u-b.gatekeeper.gateway_destination] at @s run function origins-unknown-beings:gatekeeper/gateway/teleport_target