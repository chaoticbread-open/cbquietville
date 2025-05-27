#Copy previous noise to noise_last
scoreboard players operation @a noise_last = @a noise

# DETECTION - MOVEMENT

# Detect Walking
execute as @a store result score @s noise_delta run scoreboard players operation @s walk -= @s walk_last
execute as @a[scores={noise_delta=1..}] run scoreboard players set @s noise_delta 1
execute as @a[scores={noise_delta=1..}] run scoreboard players add @s noise 1
scoreboard players operation @a walk_last = @a walk

# Detect Sprinting
execute as @a store result score @s noise_delta run scoreboard players operation @s sprint -= @s sprint_last
execute as @a[scores={noise_delta=1..}] run scoreboard players set @s noise_delta 1
execute as @a[scores={noise_delta=1..}] run scoreboard players add @s noise 2
scoreboard players operation @a sprint_last = @a sprint

# Detect Jumping
execute as @a store result score @s noise_delta run scoreboard players operation @s jump -= @s jump_last
execute as @a[scores={noise_delta=1..}] run scoreboard players set @s noise_delta 1
execute as @a[scores={noise_delta=1..}] run scoreboard players add @s noise 2
scoreboard players operation @a jump_last = @a jump

# Detect Crafting use noise
execute as @a store result score @s noise_delta run scoreboard players operation @s use -= @s use_last
execute as @a[scores={noise_delta=1..}] run scoreboard players set @s noise_delta 1
execute as @a[scores={noise_delta=1..}] run scoreboard players add @s noise 5
scoreboard players operation @a use_last = @a use

# Detect Crafting interaction noise
execute as @a store result score @s noise_delta run scoreboard players operation @s interact -= @s interact_last
execute as @a[scores={noise_delta=1..}] run scoreboard players set @s noise_delta 1
execute as @a[scores={noise_delta=1..}] run scoreboard players add @s noise 5
scoreboard players operation @a interact_last = @a interact

# Detect Chest Usage
execute as @a store result score @s noise_delta run scoreboard players operation @s chest -= @s chest_last
execute as @a[scores={noise_delta=1..}] run scoreboard players set @s noise_delta 1
execute as @a[scores={noise_delta=1..}] run scoreboard players add @s noise 10
scoreboard players operation @a chest_last = @a chest

# Step 3: Add delta to noise
scoreboard players operation @a noise += @a noise_delta

# Step 4: Reset delta
scoreboard players set @a noise_delta 0
