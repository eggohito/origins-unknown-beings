#> origins-unknown-beings:warper/particle_relocation/hit/no_block
#
#   > Check if the ray entity has reached its set max distance
#
#@within function origins-unknown-beings:warper/particle_relocation/ray


# Display message to the Warper
title @a[tag = o-u-b.warper.user] actionbar {"text": "Cannot teleport! Max distance reached.", "color": "red"}


# Remove the tag from the Warper
tag @a[tag = o-u-b.warper.user] remove o-u-b.warper.user


# Kill the ray entity
kill @s