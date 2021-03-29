#> origins-unknown-beings:gatekeeper/gateway/prepare
#
#   > Prepare the destination entity, depending on the tags of the gateway
#
#@within function origins-unknown-beings:tick


# Add a tag
tag @s add o-u-b.gatekeeper.gateway_exclude

tag @s add o-u-b.gatekeeper.gateway_target


# Summon destination entity
    ## (Default dimensions)
    execute if entity @e[tag = o-u-b.gatekeeper.gateway_to.overworld, dx = 0] run summon area_effect_cloud ~ ~ ~ {Tags: ["o-u-b.gatekeeper.gateway_destination", "o-u-b.gatekeeper.gateway_destination.overworld"]}

    execute if entity @e[tag = o-u-b.gatekeeper.gateway_to.the_nether, dx = 0] run summon area_effect_cloud ~ ~ ~ {Tags: ["o-u-b.gatekeeper.gateway_destination", "o-u-b.gatekeeper.gateway_destination.the_nether"]}

    execute if entity @e[tag = o-u-b.gatekeeper.gateway_to.the_end, dx = 0] run summon area_effect_cloud ~ ~ ~ {Tags: ["o-u-b.gatekeeper.gateway_destination", "o-u-b.gatekeeper.gateway_destination.the_end"]}

    ## (Custom dimensions) [currently unused]
    


# Teleport the destination entity
execute as @e[tag = o-u-b.gatekeeper.gateway_destination, limit = 1] run function origins-unknown-beings:gatekeeper/gateway/setup_destination


# Remove a tag
tag @s remove o-u-b.gatekeeper.gateway_target