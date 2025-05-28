# the any_tool_use_b advancement checks for tools/weapons used via durability checks. (ex: swords, pickaxes, etc)
# This is useful for detecting the mining of blocks (with the only limitation being that it ONLY triggers for blocks broken with tools)
# 
# This function increases noise level when called by the any_tool_use_b advancement (refer to top)
# "Maybe stop being destructive"

# adds to noise level and resets advancement for re-detection
scoreboard players add @s noise 15
scoreboard players set @s cooldown_timer 0
advancement revoke @s only cbquietville:any_tool_use_b