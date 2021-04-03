#> origins-unknown-beings:warper/transdimensional_relocation/prepare
#
#   > Prepare the destination entity
#
#@internal


# Add a tag
tag @s add o-u-b.warper.td_reloc_target


# Check if the player has met certain conditions
    ## (Default dimensions)
    execute if predicate origins-unknown-beings:entity_properties/equipment/mainhand/block_dimension/overworld run summon area_effect_cloud ~ ~ ~ {Tags: ["o-u-b.warper.td_reloc.destination", "o-u-b.warper.td_reloc.destination.overworld"]}

    execute if predicate origins-unknown-beings:entity_properties/equipment/mainhand/block_dimension/the_nether run summon area_effect_cloud ~ ~ ~ {Tags: ["o-u-b.warper.td_reloc.destination", "o-u-b.warper.td_reloc.destination.the_nether"]}

    execute if predicate origins-unknown-beings:entity_properties/equipment/mainhand/block_dimension/the_end run summon area_effect_cloud ~ ~ ~ {Tags: ["o-u-b.warper.td_reloc.destination", "o-u-b.warper.td_reloc.destination.the_end"]}


    ## (Custom dimensions) [currently unused]



# Teleport the destination entity
execute as @e[tag = o-u-b.warper.td_reloc.destination, limit = 1] run function origins-unknown-beings:warper/transdimensional_relocation/setup_destination


# Remove a tag
tag @s remove o-u-b.warper.td_reloc_target