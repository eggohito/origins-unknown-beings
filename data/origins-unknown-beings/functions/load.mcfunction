#> origins-unknown-beings:load
#
#   > The main load function for the `origins-unknown-beings` namespace
#
#@within tag/function minecraft:load


# Set gamerule(s)
gamerule commandBlockOutput false


# Add scoreboard objective(s)
scoreboard objectives add o-u-b.main dummy

scoreboard objectives add o-u-b.deaths deathCount


# Load message
tellraw @a[tag = o-u-b.debug] {"text": "[+ Loaded \"Unknown Beings (Origins)\"]", "color": "green", "italic": false, "hoverEvent": {"action": "show_text", "contents": {"text": "v1.0.0"}}}


# (Re)initialize tick function
schedule function origins-unknown-beings:tick 1t replace