# Kill all wardens on load (optional, for clean start)
kill @e[type=minecraft:warden]

# Create required scoreboards
scoreboard objectives add noise dummy
scoreboard objectives add noise_last dummy
scoreboard objectives add noise_delta dummy

scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add mine minecraft.mined:minecraft.stone
scoreboard objectives add use minecraft.used:minecraft.crafting_table
scoreboard objectives add interact minecraft.custom:minecraft.interact_with_crafting_table

scoreboard objectives add walk_last dummy
scoreboard objectives add jump_last dummy
scoreboard objectives add mine_last dummy
scoreboard objectives add use_last dummy
scoreboard objectives add interact_last dummy

# Reset all scores for a clean state
scoreboard players reset @a noise
scoreboard players reset @a noise_last
scoreboard players reset @a noise_delta