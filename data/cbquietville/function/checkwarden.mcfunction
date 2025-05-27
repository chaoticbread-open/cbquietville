# This function spawns a warden upon reaching a certain threshold
# "The sounds of the skulk variety draw closer"

# Trigger warden if noise threshold reached, then reset their noise level
execute as @a[scores={noise=350..}] at @s run summon minecraft:warden ~ ~ ~ {Brain: {memories: {"minecraft:dig_cooldown":{value: {}, ttl: 1200L}, "minecraft:is_emerging": {value: {}, ttl: 85L}}}}
scoreboard players set @a[scores={noise=350..}] noise 0
