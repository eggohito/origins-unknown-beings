#> origins-unknown-beings:warper/transdimensional_relocation/teleport_target
#
#   > Teleport the Warper transdimensionally
#
#@within function origins-unknown-beings:warper/transdimensional_relocation/setup_destination


# Use `/spreadplayers` to assure the safety of the destination entity
execute unless entity @s[tag = o-u-b.warper.td_reloc.destination.the_nether] at @s run spreadplayers ~ ~ 1 16 false @e[tag = o-u-b.warper.td_reloc.destination, tag = !o-u-b.warper.td_reloc.destination.the_nether]

execute if entity @s[tag = o-u-b.warper.td_reloc.destination.the_nether] at @s run spreadplayers ~ ~ 1 16 under 127 false @e[tag = o-u-b.warper.td_reloc.destination,  tag = o-u-b.warper.td_reloc.destination.the_nether]


# Check if the destination entity is on a safe place
execute at @s unless block ~ ~-1 ~ #origins-unknown-beings:all_but_air run title @a[tag = o-u-b.warper.td_reloc_target] actionbar {"text": "Cannot teleport! No available surface.", "color": "red"}

execute at @s if block ~ ~-1 ~ #origins-unknown-beings:all_but_air run tp @a[tag = o-u-b.warper.td_reloc_target, limit = 1] ~ ~ ~

execute at @s if block ~ ~-1 ~ #origins-unknown-beings:all_but_air run tag @a[tag = o-u-b.warper.td_reloc_target, limit = 1] add o-u-b.warper.td_reloc_target.tradeoff


# Remove 1 item in the mainhand
execute at @s if block ~ ~-1 ~ #origins-unknown-beings:all_but_air as @a[tag = o-u-b.warper.td_reloc_target] run function origins-unknown-beings:warper/transdimensional_relocation/get_requirements