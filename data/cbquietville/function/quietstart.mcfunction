# This function initalizes the datapack for use, with the added bonus of resetting the datapack
# "hello world"

# Kill all wardens on load
kill @e[type=minecraft:warden]

# Adds objectives necessary for movement detection
scoreboard objectives add noise dummy
scoreboard objectives add noise_last dummy
scoreboard objectives add noise_delta dummy

scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add walk_last dummy
scoreboard objectives add sprint_last dummy
scoreboard objectives add jump_last dummy

# Adds objectives to keep track of noise level, as well as to simulate decay
scoreboard objectives add noise_timer dummy
scoreboard objectives add noise dummy

# Reset all scores for a clean state
scoreboard players reset @a noise
scoreboard players reset @a noise_last
scoreboard players reset @a noise_delta