# Trigger warden if noise too high
execute as @a[scores={noise=2000..}] at @s run summon minecraft:warden ~ ~ ~ {Brain: {memories: {"minecraft:dig_cooldown":{value: {}, ttl: 1200L}, "minecraft:is_emerging": {value: {}, ttl: 85L}}}}

# Reset noise after summoning
scoreboard players set @a[scores={noise=2000..}] noise 0
