# These commands cause the warden that killed the player to dig back into the ground, as if they are naturally retreating
# "I can rest now."

particle minecraft:sculk_charge_pop ~ ~1 ~ 0.6 0.8 0.6 0.15 40 force

data modify entity @s Brain.memories."minecraft:dig_cooldown" set value {value: {}, ttl: 1L}
data modify entity @s Brain.memories."minecraft:is_emerging" set value {value: {}, ttl: 1L}