#> origins-unknown-beings:warper/transdimensional_relocation/setup_destination
#
#
#
#@within function origins-unknown-beings:warper/transdimensional_relocation/prepare


# Teleport the destination entity to the dimension
    ## (Default dimensions)
    execute if entity @s[tag = o-u-b.warper.td_reloc.destination.overworld] in minecraft:overworld run tp @s ~ ~ ~

    execute if entity @s[tag = o-u-b.warper.td_reloc.destination.the_nether] in minecraft:the_nether run tp @s ~ ~ ~

    execute if entity @s[tag = o-u-b.warper.td_reloc.destination.the_end] in minecraft:the_end run tp @s ~ ~ ~

    # (Custom dimensions) [currently unused]



# Teleport the target entity to the destination entity
execute as @e[tag = o-u-b.warper.td_reloc.destination] at @s run function origins-unknown-beings:warper/transdimensional_relocation/teleport_target