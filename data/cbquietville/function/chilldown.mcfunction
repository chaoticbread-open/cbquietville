
# Every tick, increment both timers
scoreboard players add PlaceholderName globalchilldown 1

execute if score PlaceholderName globalchilldown matches 1200.. if entity @e[type=warden,tag=quiet_warden,limit=1] run function cbquietville:player_victory
execute if score PlaceholderName globalchilldown matches 1200.. run scoreboard players set PlaceholderName globalchilldown 0