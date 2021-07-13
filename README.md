# _Squid Workshop's_ Asgard Datapack/Resourcepack


- [Abstract](#Abstract)
- [Installation](#Installation)
- [Usage](#Usage)
- [How It Works](#How-It-Works)
- [Project Tree](#Project-Tree)
- [Terms of Use](#Terms-of-Use)
- [More About Squid Workshop](#More-About-Squid-Workshop)

# Abstract


# Installation
- Step 1 Download this repository as a zip and unpack.
- Step 2 Go to minecraft saves directory, usually "C:/Users/youUserName/AppData/Roaming/.minecraft/saves".
- Step 3 Choose the world folder in which you want to install the packs.
- Step 4 Go to .../world/datapacks folder.
- Step 5 Move your "Asgard-Datapack-Squid-Workshop-1.16.5" folder(not the root folder) into .../world/datapacks folder.
- Step 6 Move your "Asgard-Resourcepack-Squid-Workshop-1.16.5" folder(not the root folder) into .../world/resourcepacks folder.
- Step 7 Open Minecraft and open the world.
- Step 8 Type "/reload" command then press enter.
- Step 9 Press "F3" + "T".
- Step 10 Enjoy

PS: If not working, check whether the datapack is enabled by:

	/datapack list
Enable it by:

	/datapack enable "datapackname"
  
# Usage
  【启动指令】
  
  变成雷神索尔，获得装备：
  /function app:help/asgard/thor_on
  
  退出索尔状态：
  /function app:help/asgard/thor_off
  
  变成火神洛基，获得装备：
  /function app:help/asgard/loki_on
  
  退出洛基状态：
  /function app:help/asgard/loki_off
  
  
  【角色效果】
  
  【雷神】
  
  手持头盔右键：穿戴头盔
  
  长距离tp：柱状粒子效果
  
  站在地面上 手持雷神锤右键：召唤闪电攻击周围实体，可毁坏洛基分身。
  
  离开地面时 手持雷神锤右键：召唤火球推进飞行。（创造模式悬空时无效）

  【洛基】
  
  手持头盔右键：穿戴头盔
  
  长距离tp：柱状粒子效果
  
  手持权杖攻击：将身边受伤的村民变为随机动物。
  
  手持权杖右键：发射随距离增加威力（2~20）的火球。
  
  潜行：制造分身，本体隐身并将手持装备寄存于分身上，2秒后分身定时消失并归还装备。
  
  扔出附魔之瓶：制造分身，复制除附魔之瓶外的手持装备，分身不会定时消失。



[Starting Commands]

Become a Thor, acquiring equipment:
/function app:help/asgard/thor_on

Quit being Thor:
/function app:help/asgard/thor_off

Become a Loki, acquiring equipment:
/function app:help/asgard/loki_on

Quit being Loki:
/function app:help/asgard/loki_off


[Role Effects]

[Thor]

Right-click on handheld helmet: Wear the helmet

Long-distance tp: The column particle effect

Being on ground, right-clicking with the Mjolnir: Summon lightning to attack surrounding entities, able to destroy the illusions.

Being off ground, right-clicking with the Mjolnir: Summon fireballs to fly.

[Loki]

Right-click on handheld helmet: Wear the helmet

Long-distance tp: The column particle effect

Hand-held Scepter attacking: Turn injured villagers around them into random animals.

Right-clicking with the Scepter: Shoot a fireball that increases its power (from 2 to 20) over distance.

Sneaking: Summon an illusion with Loki's skin, become invisible and store the handheld equipment on the illusion, which disappears after 2 seconds (or when attacked) and returns the equipment (this process makes any headgear overwritten by Loki's helmet).
	
Throwing the Bottle o' Enchanting: Summon an permanent illusion, which copies hand-held equipment other than the Bottle o' Enchanting, and does not disappear or return equipment.

# How it Works


# Project Tree

	Asgard-Datapack-Squid-Workshop-1.16.5
	    │  pack.mcmeta
	    │  
	    └─data
		│  .DS_Store
		│  
		├─app
		│  └─functions
		│      ├─get
		│      │  └─asgard
		│      │          daggers.mcfunction
		│      │          equip_hornedhelmet.mcfunction
		│      │          equip_thorhelmet.mcfunction
		│      │          loki_all.mcfunction
		│      │          mjolnir.mcfunction
		│      │          scepter.mcfunction
		│      │          thor_all.mcfunction
		│      │          
		│      └─help
		│          └─asgard
		│                  loki_off.mcfunction
		│                  loki_on.mcfunction
		│                  thor_off.mcfunction
		│                  thor_on.mcfunction
		│                  
		├─asgard
		│  │  .DS_Store
		│  │  
		│  └─functions
		│      │  .DS_Store
		│      │  
		│      └─classes
		│          ├─bifrost
		│          │      detect.mcfunction
		│          │      main.mcfunction
		│          │      summon.mcfunction
		│          │      
		│          ├─loki
		│          │      autoshoot.mcfunction
		│          │      autoshoot_launch.mcfunction
		│          │      autoshoot_setup.mcfunction
		│          │      changename.mcfunction
		│          │      illusion.mcfunction
		│          │      indepsummon.mcfunction
		│          │      kill.mcfunction
		│          │      randomvillager.mcfunction
		│          │      scepter_main.mcfunction
		│          │      selfkill.mcfunction
		│          │      set.mcfunction
		│          │      summon.mcfunction
		│          │      turn_animal.mcfunction
		│          │      turn_particle.mcfunction
		│          │      turn_vil.mcfunction
		│          │      
		│          ├─main
		│          │      clean.mcfunction
		│          │      load.mcfunction
		│          │      tick.mcfunction
		│          │      
		│          └─thor
		│                  hammer_flyingb.mcfunction
		│                  hammer_lightning.mcfunction
		│                  hammer_main.mcfunction
		│                  
		└─minecraft
		    └─tags
			└─functions
				load.json
				tick.json

# Terms of Use
Feel free to play around with this set. \
As developer, feel free to use this set as a module to develop free datapacks. \
But you **must** add the link to this github page! \
**NO COMMERCIAL USE**
## License
[Mozilla Public License 2.0](https://github.com/MingshiYangUIUC/Autoaim-Minecraft-Squid-Workshop-Project/blob/main/LICENSE)


# More About Squid Workshop
See more datapacks developed by us [here](https://github.com/Squid-Workshop/MinecraftDatapacksProject) \
Watch our videos on bilibili [here](https://space.bilibili.com/649645265?from=search&seid=778816111336987286) \
Join our QQ group: 74681732 \
Subscribe on wechat: 鱿鱼MC工作室 
