# the any_tool_use_a advancement checks for items used continuously (ex: food, potions, crossbow/bow, etc)
#
# This function increases noise level when called by the any_tool_use_a advancement (refer to top)
# "maybe stop chewing with your mouth open"

# adds to noise level and resets advancement for re-detection
execute unless score @s ExemptToolUsed matches 1 run scoreboard players add @s noise 5
advancement revoke @s only cbquietville:any_tool_use_a
<<<<<<< Updated upstream
=======

# Reset timers when any noise action is made
execute unless score @s ExemptToolUsed matches 1 run scoreboard players set @s cooldown_timer 0
execute unless score @s ExemptToolUsed matches 1 run scoreboard players set @s cooldown_stage 0
execute unless score @s ExemptToolUsed matches 1 run scoreboard players set @s noise_timer 0

advancement revoke @s only cbquietville:tool_a_exception
>>>>>>> Stashed changes
