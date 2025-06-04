# This function tracks movement and equates it to noise
# "move and you die :)"

# Copy previous noise to noise_last
execute as @a run scoreboard players operation @s noise_last = @s noise

# Detect Walking
execute as @a run scoreboard players operation @s walk_delta = @s walk
execute as @a run scoreboard players operation @s walk_delta -= @s walk_last
execute as @a[scores={walk_delta=1..}] unless score @s ExemptToolUsed matches 1 run function cbquietville:movement_reset
execute as @a[scores={walk_delta=1..}] unless score @s ExemptToolUsed matches 1 run scoreboard players add @s noise 1
execute as @a run scoreboard players operation @s walk_last = @s walk

# Detect Sprinting
execute as @a run scoreboard players operation @s sprint_delta = @s sprint
execute as @a run scoreboard players operation @s sprint_delta -= @s sprint_last
execute as @a[scores={sprint_delta=1..}] unless score @s ExemptToolUsed matches 1 run function cbquietville:movement_reset
execute as @a[scores={sprint_delta=1..}] unless score @s ExemptToolUsed matches 1 run scoreboard players add @s noise 2
execute as @a run scoreboard players operation @s sprint_last = @s sprint

# Detect Jumping
execute as @a run scoreboard players operation @s jump_delta = @s jump
execute as @a run scoreboard players operation @s jump_delta -= @s jump_last
execute as @a[scores={jump_delta=1..}] unless score @s ExemptToolUsed matches 1 run function cbquietville:movement_reset
execute as @a[scores={jump_delta=1..}] unless score @s ExemptToolUsed matches 1 run scoreboard players add @s noise 4
execute as @a run scoreboard players operation @s jump_last = @s jump

# Step 4: Reset delta
execute as @a run scoreboard players set @s ExemptToolUsed 0

