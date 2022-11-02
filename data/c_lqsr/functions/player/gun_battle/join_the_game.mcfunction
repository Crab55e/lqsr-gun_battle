execute in mets:superflat positioned -145 68 786 run tp @s @e[type=marker,tag=lq.gun_battle.start_point,limit=1,sort=random]
#/give @s minecraft:stray_spawn_egg{EntityTag:{id:"minecraft:marker",Tags:["lq.gun_battle.start_point"]}}


tellraw @s ["",{"text":"===","color":"#44ffff"},"参加者: ",{"selector":"@a[predicate=c_lqsr:gun_battle/is_in_arena]"},{"text": "===","color": "#44ffff"}]

title @s title {"text": "- START -","color": "red"}

title @a[predicate=c_lqsr:gun_battle/is_in_arena] actionbar ["",{"selector":"@s"},"が会場に入りました"]

playsound block.wooden_door.open master @s ~ ~ ~ 1 1 1



attribute @s generic.max_health base set 40.0

gamemode adventure

effect give @s regeneration 1 255 true
effect give @s saturation 1 255 true
effect give @s resistance 3 4 true

clear @s

item replace entity @s weapon.offhand with shield{lq.gun_battle:1,Unbreakable:1b}
give @s stone_axe{lq.gun_battle:1,Unbreakable:1b,display:{Name:'{"text": "普通の石の斧","italic":false}'},CanDestroy:["minecraft:oak_log","minecraft:chest"]}
give @s stone_pickaxe{lq.gun_battle:1,Unbreakable:1b,display:{Name:'{"text":"普通の石のツルハシ","italic":false}'},CanDestroy:["minecraft:cobblestone","minecraft:coal_ore","minecraft:iron_ore","minecraft:lapis_ore","minecraft:diamond_ore","minecraft:furnace"]}
give @s crossbow{lq.gun_battle:1,display:{Name:'{"text":"連射クロスボウ","italic": false}'},lq.gun_battle.cross_bow:1,Unbreakable:1b,Charged:1,ChargedProjectiles:[{Count:1b,id:"minecraft:arrow"}]}
give @s bow{lq.gun_battle:1,display:{Name:'{"text":"チャージ弓","italic":false}'},lq.gun_battle.bow:1,Unbreakable:1b}
give @s cooked_beef{lq.gun_battle:1,display:{Name:'{"text":"一般的なステーキ","italic":false}'}} 3

tag @s add lq.gun_battle.player