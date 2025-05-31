# This function initalizes the datapack for use, with the added bonus of resetting the datapack
# "hello world"

# Kill all wardens on load
kill @e[type=minecraft:warden]

# Adds objectives necessary for movement detection
scoreboard objectives add noise_last dummy
scoreboard objectives add noise_delta dummy

scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add walk_last dummy
scoreboard objectives add sprint_last dummy
scoreboard objectives add jump_last dummy

# Adds objectives to necessary for noise decay
scoreboard objectives add noise_timer dummy
scoreboard objectives add cooldown_timer dummy
scoreboard objectives add cooldown_stage dummy

# Objective to mark a players use of a exempted tool
scoreboard objectives add ExemptToolUsed dummy

# Noise objective to keep track of noise levels
scoreboard objectives add noise dummy

# Reset all scores for a clean state
scoreboard players reset @a noise
scoreboard players reset @a noise_last
scoreboard players reset @a noise_delta

tellraw @a ["",{"text":"==========================================","color":"gray"},{"text":"\nWelcome to "},{"text":"quietville","bold":true,"color":"#DDA2FF"},{"text":", a chaoticbread challenge\nCheck your advancements for more information\n\nThanks from the chaoticbread (Website: chaoticbread.carrd.co)\n"},{"text":"(this message will only be shown once.)\n==========================================","color":"gray"},{"text":"\n "}]