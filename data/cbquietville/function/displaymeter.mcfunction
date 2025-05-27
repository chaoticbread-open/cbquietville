# 10-bar Noise HUD in actionbar (40 points per segment)

execute as @a[scores={noise=0..39}] run title @s actionbar {"text":"Noise: ░░░░░░░░░░ [","color":"gray","extra":[{"score":{"name":"@s","objective":"noise"}},{"text":"/400]"}]}

execute as @a[scores={noise=40..79}] run title @s actionbar {"text":"Noise: ▓░░░░░░░░░ [","color":"green","extra":[{"score":{"name":"@s","objective":"noise"}},{"text":"/400]"}]}
execute as @a[scores={noise=80..119}] run title @s actionbar {"text":"Noise: ▓▓░░░░░░░░ [","color":"green","extra":[{"score":{"name":"@s","objective":"noise"}},{"text":"/400]"}]}
execute as @a[scores={noise=120..159}] run title @s actionbar {"text":"Noise: ▓▓▓░░░░░░░ [","color":"yellow","extra":[{"score":{"name":"@s","objective":"noise"}},{"text":"/400]"}]}
execute as @a[scores={noise=160..199}] run title @s actionbar {"text":"Noise: ▓▓▓▓░░░░░░ [","color":"yellow","extra":[{"score":{"name":"@s","objective":"noise"}},{"text":"/400]"}]}
execute as @a[scores={noise=200..239}] run title @s actionbar {"text":"Noise: ▓▓▓▓▓░░░░░ [","color":"gold","extra":[{"score":{"name":"@s","objective":"noise"}},{"text":"/400]"}]}
execute as @a[scores={noise=240..279}] run title @s actionbar {"text":"Noise: ▓▓▓▓▓▓░░░░ [","color":"gold","extra":[{"score":{"name":"@s","objective":"noise"}},{"text":"/400]"}]}
execute as @a[scores={noise=280..319}] run title @s actionbar {"text":"Noise: ▓▓▓▓▓▓▓░░░ [","color":"red","extra":[{"score":{"name":"@s","objective":"noise"}},{"text":"/400]"}]}
execute as @a[scores={noise=320..359}] run title @s actionbar {"text":"Noise: ▓▓▓▓▓▓▓▓░░ [","color":"red","extra":[{"score":{"name":"@s","objective":"noise"}},{"text":"/400]"}]}
execute as @a[scores={noise=360..399}] run title @s actionbar {"text":"Noise: ▓▓▓▓▓▓▓▓▓░ [","color":"dark_red","extra":[{"score":{"name":"@s","objective":"noise"}},{"text":"/400]"}]}
execute as @a[scores={noise=400..}] run title @s actionbar {"text":"Noise: ▓▓▓▓▓▓▓▓▓▓ [","color":"dark_red","extra":[{"score":{"name":"@s","objective":"noise"}},{"text":"/400]"}]}
