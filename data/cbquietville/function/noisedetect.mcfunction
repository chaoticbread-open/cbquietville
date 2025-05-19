# Step 1: Copy previous noise to noise_last
scoreboard players operation @a noise_last = @a noise

# Step 2: Detect activity and calculate noise delta

# Detect movement noise
execute as @a store result score @s noise_delta run scoreboard players operation @s walk -= @s walk_last
execute as @a[scores={noise_delta=1..}] run scoreboard players add @s noise 20
scoreboard players operation @a walk_last = @a walk

# Detect jumping noise
execute as @a store result score @s noise_delta run scoreboard players operation @s jump -= @s jump_last
execute as @a[scores={noise_delta=1..}] run scoreboard players add @s noise 20
scoreboard players operation @a jump_last = @a jump

# Detect mining noise
execute as @a store result score @s noise_delta run scoreboard players operation @s mine -= @s mine_last
execute as @a[scores={noise_delta=1..}] run scoreboard players add @s noise 100
scoreboard players operation @a mine_last = @a mine

# Detect use noise
execute as @a store result score @s noise_delta run scoreboard players operation @s use -= @s use_last
execute as @a[scores={noise_delta=1..}] run scoreboard players add @s noise 50
scoreboard players operation @a use_last = @a use

# Detect interaction noise
execute as @a store result score @s noise_delta run scoreboard players operation @s interact -= @s interact_last
execute as @a[scores={noise_delta=1..}] run scoreboard players add @s noise 50
scoreboard players operation @a interact_last = @a interact

# Step 3: Add delta to noise
scoreboard players operation @a noise += @a noise_delta

# Step 4: Reset delta
scoreboard players set @a noise_delta 0
