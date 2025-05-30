# the any_block_use advancement checks for any interation with a block (ex: Crafting Table, Chest, Door, etc)
#
# This function increases noise level when called by the any_block_use advancement (refer to top)
# "skulk sensors trigger with chests, so we also trigger with chests."

# adds to noise level and resets advancement for re-detection
scoreboard players add @s noise 15
advancement revoke @s only cbquietville:any_block_use

# Reset timers when any noise action is made
scoreboard players set @s cooldown_timer 0
scoreboard players set @s cooldown_stage 0
scoreboard players set @s noise_timer 0
