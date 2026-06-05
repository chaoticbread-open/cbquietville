# This function is executed when a player is killed by a warden, and directs the nearest warden to dig naturally.
# "The player shall be the only victim!"

# Kill the nearest tagged warden within 20 blocks of where the player was killed and reset
execute at @s as @e[type=warden,tag=quiet_warden,distance=..20,sort=nearest,limit=1] at @s run function cbquietville:warden_revenge
execute at @s as @e[type=item,nbt={Item:{id:"minecraft:sculk_catalyst"}},distance=..20,sort=nearest,limit=1] at @s run function cbquietville:warden_revenge
advancement revoke @s only cbquietville:warden_kill

# Notify the player of their revenge
tellraw @s {"text":"You died! The warden now sleeps...","color":"#ff4444","italic":true}