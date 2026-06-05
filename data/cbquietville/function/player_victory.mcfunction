# This function is executed when the chilldown function detects that no other warden has been spawned for a full minute.
# "Pack it up, nobody's here"

# Kill the nearest tagged warden within 20 blocks of where the player was killed and reset
execute at @a as @e[type=warden,tag=quiet_warden] at @s run function cbquietville:warden_revenge
execute at @a as @e[type=item,nbt={Item:{id:"minecraft:sculk_catalyst"}}] at @s run function cbquietville:warden_revenge

# Notify the player of their revenge
tellraw @a {"text":"Well done! the Wardens have calmed down and dug back down!","color":"#ff4444","italic":true}