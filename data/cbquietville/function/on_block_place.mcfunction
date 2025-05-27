# the any_block_place advancement checks for placement of a block by a table
#
# This function increases noise level when called by the any_block_place advancement (refer to top)
# "there is a noise when placing blocks."

# adds to noise level and resets advancement for re-detection
scoreboard players add @s noise 10
advancement revoke @s only cbquietville:any_block_placed