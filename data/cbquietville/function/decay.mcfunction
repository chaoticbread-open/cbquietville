# This function is responsible for the decay of a player's noise level over time.
# "Like how every sound goes quiet, noise goes quiet too"

# Increment cooldown timer for all players
execute as @a run scoreboard players add @s cooldown_timer 1

# --- Decay Logic ---
# 20–80 ticks → -1 noise / 4 ticks
execute as @a[scores={cooldown_timer=20..80}] if score @s cooldown_timer matches 4.. run scoreboard players remove @s noise 1
# 80–160 ticks → -1 noise / 2 ticks
execute as @a[scores={cooldown_timer=80..160}] if score @s cooldown_timer matches 2.. run scoreboard players remove @s noise 1
# 160–300 ticks → -1 noise / tick
execute as @a[scores={cooldown_timer=160..300}] run scoreboard players remove @s noise 1
# 300+ ticks → -2 noise / tick
execute as @a[scores={cooldown_timer=300..}] run scoreboard players remove @s noise 2
