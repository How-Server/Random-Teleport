scoreboard players enable @a RTP_detect
title @a[scores={RTP_detect=1..}] title {"text":""}
execute as @a[scores={RTP_detect=1..}] at @s if entity @s[tag=!RTP_cd] run title @s subtitle {"color":"aqua","text":"隨機傳送即將開始..."}
execute as @a[scores={RTP_detect=1..}] at @s if entity @s[tag=RTP_cd] run title @s subtitle {"text":"隨機傳送CD中。","color":"red"}
execute as @a[scores={RTP_detect=1..}] at @s run function random_tp:effect
scoreboard players reset @a[scores={RTP_detect=1..}] RTP_detect
function random_tp:timer