#> origins-unknown-beings:gatekeeper/gateway/spawn_cloud
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
replaceitem entity @s[predicate = origins-unknown-beings:held_items_properties] weapon air