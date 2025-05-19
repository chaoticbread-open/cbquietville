# Noise decay: subtract 1 noise per tick, but don’t go below 0
execute as @a[scores={noise=1..}] run scoreboard players remove @s noise 1
