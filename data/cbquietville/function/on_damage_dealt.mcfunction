# the dealt_any_damage advancement checks for any damage a player may have dealt
# 
# This function increases noise level when called by the dealt_any_damage advancement (refer to top)
# "Be nice. Violence is never the right answer."

# adds to noise level and resets advancement for re-detection
scoreboard players add @s noise 15
advancement revoke @s only cbquietville:dealt_any_damage

# Reset timers when any noise action is made
scoreboard players set @s cooldown_timer 0
scoreboard players set @s cooldown_stage 0
scoreboard players set @s noise_timer 0