#> origins-unknown-beings:warper/relocation/hit/no_block


setblock ~ ~ ~ ancient_debris

title @a[tag = o-u-b.warper.user] actionbar {"text": "Cannot teleport! Max distance reached.", "color": "red"}

tag @a[tag = o-u-b.warper.user] remove o-u-b.warper.user

kill @s