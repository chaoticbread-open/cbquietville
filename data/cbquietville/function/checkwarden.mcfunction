# Trigger warden if noise too high
execute as @a[scores={noise=2000..}] at @s run summon minecraft:warden ~ ~ ~ {Tags:["summoned_by_noise"]}

# Reset noise after summoning
scoreboard players set @a[scores={noise=2000..}] noise 0
