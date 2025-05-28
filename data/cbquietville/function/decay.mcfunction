# This function is responsible for the decay of a player's noise level over time.
# "Like how every sound goes quiet, noise goes quiet too"

# Every tick, increment both timers
scoreboard players add @a cooldown_timer 1
scoreboard players add @a noise_timer 1

# Update cooldown_stage based on how long it's been
execute as @a[scores={cooldown_timer=0..59}] run scoreboard players set @s cooldown_stage 1
execute as @a[scores={cooldown_timer=60..139}] run scoreboard players set @s cooldown_stage 2
execute as @a[scores={cooldown_timer=140..239}] run scoreboard players set @s cooldown_stage 3
execute as @a[scores={cooldown_timer=240..}] run scoreboard players set @s cooldown_stage 4
# --- Decay based on cooldown_stage ---

# Stage 1: -1 noise every 4 ticks
execute as @a[scores={cooldown_stage=1, noise_timer=4.., noise=1..}] run scoreboard players remove @s noise 1
execute as @a[scores={cooldown_stage=1, noise_timer=4..}] run scoreboard players set @s noise_timer 0

# Stage 2: -1 noise every 2 ticks
execute as @a[scores={cooldown_stage=2, noise_timer=2.., noise=1..}] run scoreboard players remove @s noise 1
execute as @a[scores={cooldown_stage=2, noise_timer=2..}] run scoreboard players set @s noise_timer 0

# Stage 3: -1 noise every tick
execute as @a[scores={cooldown_stage=3, noise=1..}] run scoreboard players remove @s noise 1
execute as @a[scores={cooldown_stage=3}] run scoreboard players set @s noise_timer 0

# Stage 4: -2 noise every tick
execute as @a[scores={cooldown_stage=4, noise=1..}] run scoreboard players remove @s noise 2
execute as @a[scores={cooldown_stage=4}] run scoreboard players set @s noise_timer 0
