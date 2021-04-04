#> origins-unknown-beings:load
#
#   > The main load function for the `origins-unknown-beings` namespace
#
#@within tag/function minecraft:load


# Set gamerule(s)
gamerule commandBlockOutput false


# Add scoreboard objective(s)
scoreboard objectives add o-u-b.main dummy

scoreboard objectives add o-u-b.GK dummy

scoreboard objectives add o-u-b.SO dummy

scoreboard objectives add o-u-b.SO.s dummy

scoreboard objectives add o-u-b.SO.pi dummy

scoreboard objectives add o-u-b.SO.vd dummy

scoreboard objectives add o-u-b.WP dummy

scoreboard objectives add o-u-b.WP.d dummy


# Load message
tellraw @a[tag = o-u-b.debug] {"text": "[+ Loaded \"Unknown Beings (Origins)\"]", "color": "green", "italic": false, "hoverEvent": {"action": "show_text", "contents": {"text": "v1.0.0"}}}


# Set variables/constants
execute unless score #load o-u-b.main = #load o-u-b.main run function #origins-unknown-beings:default_cfg

function origins-unknown-beings:warper/particle_relocation/distance/calculate_max

scoreboard players set #load o-u-b.main 1


# (Re)initialize tick function
schedule function origins-unknown-beings:tick 1t replace