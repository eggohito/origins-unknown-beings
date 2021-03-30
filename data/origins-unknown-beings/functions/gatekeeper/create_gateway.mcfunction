#> origins-unknown-beings:gatekeeper/create_gateway
#
#   > Spawns the gateway marker entity
#
#@internal


# Add a tag to the caster to exclude them
tag @s add o-u-b.gatekeeper.gateway_exclude


# Summon the cloud depending on the caster's predicate
    ## (Default dimensions)
    execute if predicate origins-unknown-beings:held_items_properties/overworld run summon area_effect_cloud ~ ~0.5 ~ {Tags: ["o-u-b.gatekeeper.gateway", "o-u-b.gatekeeper.gateway_to.overworld"], Particle: "dust 0.45 0 0.3 2", Radius: 4.0f, Duration: 400}

    execute if predicate origins-unknown-beings:held_items_properties/the_nether run summon area_effect_cloud ~ ~0.5 ~ {Tags: ["o-u-b.gatekeeper.gateway", "o-u-b.gatekeeper.gateway_to.the_nether"], Particle: "dust 0.45 0 0.3 2", Radius: 4.0f, Duration: 400}

    execute if predicate origins-unknown-beings:held_items_properties/the_end run summon area_effect_cloud ~ ~0.5 ~ {Tags: ["o-u-b.gatekeeper.gateway", "o-u-b.gatekeeper.gateway_to.the_end"], Particle: "dust 0.45 0 0.3 2", Radius: 4.0f, Duration: 400}

    ## (Custom dimensions) [currently unused]
    


# Remove the items from the hands
    ## Clear the ender pearl in the mainhand
    replaceitem entity @s weapon.mainhand air


    # Remove one item from the offhand
    function phi.modifyinv:setup/offhand

    execute store result score #count o-u-b.main run data get storage phi.modifyinv:temp offhand[0].Count

    scoreboard players remove #count o-u-b.main 1

    execute store result storage phi.modifyinv:temp offhand[0].Count byte 1 run scoreboard players get #count o-u-b.main

    function phi.modifyinv:load/offhand

    function phi.modifyinv:apply/offhand 