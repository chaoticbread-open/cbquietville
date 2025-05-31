# This function tracks movement and equates it to noise
# "move and you die :)"

# Copy previous noise to noise_last
scoreboard players operation @a noise_last = @a noise

# Detect Walking
execute as @a store result score @s noise_delta run scoreboard players operation @s walk -= @s walk_last
<<<<<<< Updated upstream
execute as @a[scores={noise_delta=1..}] run scoreboard players set @s noise_delta 1
execute as @a[scores={noise_delta=1..}] run scoreboard players add @s noise 1
=======
execute as @a[scores={noise_delta=1..}] unless score @s ExemptToolUsed matches 1 run function cbquietville:movement_reset
execute as @a[scores={noise_delta=1..}] unless score @s ExemptToolUsed matches 1 run scoreboard players set @s noise_delta 1
execute as @a[scores={noise_delta=1..}] unless score @s ExemptToolUsed matches 1 run scoreboard players add @s noise 1
>>>>>>> Stashed changes
scoreboard players operation @a walk_last = @a walk

# Detect Sprinting
execute as @a store result score @s noise_delta run scoreboard players operation @s sprint -= @s sprint_last
<<<<<<< Updated upstream
execute as @a[scores={noise_delta=1..}] run scoreboard players set @s noise_delta 1
execute as @a[scores={noise_delta=1..}] run scoreboard players add @s noise 2
=======
execute as @a[scores={noise_delta=1..}] unless score @s ExemptToolUsed matches 1 run function cbquietville:movement_reset
execute as @a[scores={noise_delta=1..}] unless score @s ExemptToolUsed matches 1 run scoreboard players set @s noise_delta 1
execute as @a[scores={noise_delta=1..}] unless score @s ExemptToolUsed matches 1 run scoreboard players add @s noise 2
>>>>>>> Stashed changes
scoreboard players operation @a sprint_last = @a sprint

# Detect Jumping
execute as @a store result score @s noise_delta run scoreboard players operation @s jump -= @s jump_last
<<<<<<< Updated upstream
execute as @a[scores={noise_delta=1..}] run scoreboard players set @s noise_delta 1
execute as @a[scores={noise_delta=1..}] run scoreboard players add @s noise 4
=======
execute as @a[scores={noise_delta=1..}] unless score @s ExemptToolUsed matches 1 run function cbquietville:movement_reset
execute as @a[scores={noise_delta=1..}] unless score @s ExemptToolUsed matches 1 run scoreboard players set @s noise_delta 1
execute as @a[scores={noise_delta=1..}] unless score @s ExemptToolUsed matches 1 run scoreboard players add @s noise 4
>>>>>>> Stashed changes
scoreboard players operation @a jump_last = @a jump

# Step 3: Add delta to noise
# (This line may be redundant if noise was already incremented above, but if kept:)
execute as @a unless score @s ExemptToolUsed matches 1 run scoreboard players operation @s noise += @s noise_delta

# Step 4: Reset delta
scoreboard players set @a noise_delta 0
scoreboard players set @a ExemptToolUsed 0

