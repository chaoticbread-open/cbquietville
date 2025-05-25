# Every tick, increment a timer for all players
scoreboard players add @a noise_timer 1

# If timer reaches 4 ticks, reduce noise by 1 and reset timer
execute as @a[scores={noise_timer=4.., noise=1..}] run scoreboard players remove @s noise 1
execute as @a[scores={noise_timer=4..}] run scoreboard players set @s noise_timer 0

# Optional: clamp to prevent negative noise values
execute as @a[scores={noise=-999999..0}] run scoreboard players set @s noise 0
