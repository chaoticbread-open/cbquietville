# Kill all wardens on load
kill @e[type=minecraft:warden]

# Create required scoreboards
scoreboard objectives add noise dummy
scoreboard objectives add noise_last dummy
scoreboard objectives add noise_delta dummy

scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add walk_last dummy
scoreboard objectives add sprint_last dummy
scoreboard objectives add jump_last dummy

scoreboard objectives add chest minecraft.custom:minecraft.open_chest
scoreboard objectives add use minecraft.used:minecraft.crafting_table
scoreboard objectives add interact minecraft.custom:minecraft.interact_with_crafting_table
scoreboard objectives add chest_last dummy
scoreboard objectives add use_last dummy
scoreboard objectives add interact_last dummy

# Decay Timer
scoreboard objectives add noise_timer dummy
scoreboard objectives add noise dummy

# Reset all scores for a clean state
scoreboard players reset @a noise
scoreboard players reset @a noise_last
scoreboard players reset @a noise_delta