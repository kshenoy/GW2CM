# Guild Wars 2, Combat Mode Mod

First credits where they are due. GW2CM was first conceived and developed by **pvpProject**.
You can find the [original post](http://www.reddit.com/r/Guildwars2/comments/10s4s6/combat_mode_11/) on reddit.  
  
So, why did I create this and what is different from the original version?  
Well, I was really impressed with the original author's work and I wanted to understand what he had done.  
Being bored, I felt the best way to do so was by going through the original code and writing some of it on my own.  
From there, implementing small changes and adding features was just one step away.  
Since, there hasn't been any update from the author in quite some time, I decided to share this.  
  
The base code is almost the same. I just picked up what had been developed and added the following  
  
* Support for two hotkeys. ANet allows 2 keys to be bound to the same function, ditto here.  
  For eg. if 'M' and say 'B' are bound to Maps, then in the original GW2CM, you could specify only a single-binding to  
  disable combat-mode. This version allows you to bind 2 keys using ':' as the delimiter for eg. B:M  
  
* Works out-of-box. No special changes need to be made with the key-bindings.
  If you're using the default GW2 keybinds, select the Defaults profile in Settings and you're good to go.
  However, if you're using custom keybinds, you can also specify them in the Settings window.  
  
* Tab-targeting is not recommended but can be used without any issues.  
  
* Added support for Middle Click along with Alt, Ctrl, Shift modifiers

* Support for multiple profiles. The package contains a 'Defaults' profile which works with the default GW2 keybindings
  and a Power profile to highlight the power and flexibility of this mod. You can also create and add your own profiles.

* More panels now exit Combat Mode such as Logout, Options, Pet etc.
  
That's off the top of my head. I'll post more later; documentation has always been painful for me :)  


## Installation

Installation is the same as earlier.  

First, you will need to make the following changes in Guild Wars 2:  

* In *General Options*, disable *Promote Skill Target* and enable *Fast-Cast Ground Targeting*

* In *Graphics Options*, set *Resolution* to *Windowed Fullscreen*

* In *Control Options*, add binding 'x' to *Lock Autotarget*

Next, unzip to where ever you like. Once unzipped, Double Click on 'GW2CM.exe' to start Combat Mode Mod.  
If it worked correctly you will see the icon in the notification tray; it may be hidden. Right-clicking on the tray icon
provides options to open the Settings screen and Exit the mod.  


## Using Combat Mode Mod

The original author, pvpProject, has created detailed [YouTube video](http://www.youtube.com/watch?v=3tjK5OI2oAQ)
of how CombatMod works which should paint a much clearer picture of what this mod is capable of than I'll be able to
explain here in words. Please watch it first.  

Out of the box, the following keybinds are enabled

* 'Target Lock' to select new targets present under the crosshair

* 'Left-Click' to auto-attack

* 'Right-Click' to dodge

* 'Ctrl+ScrollUp' and 'Ctrl+ScrollDown' to zoom in and out respectively


## Customizing

The Settings screen can be accessed in 2 ways  

* Opening Settings.exe ( Settings.ahk )

* Selecting 'Settings' from Tray Icon


As shown in the Power profile, you can add keybinds to different Mouse functions. Modifiers are depicted as follows  
````
! : Alt
^ : Ctrl
+ : Shift
````

Thus, as seen in the *Power* profile  
* Combat Mode is toggled by pressing 'Alt+c'
* LeftClick is equivalent to pressing 'e'
* Alt+LeftClick is equivalent to pressing 'Alt+e'
* Shift+LeftClick is equivalent to pressing 'Shift+e'
* RightClick and MiddleClick are both equivalent to pressing 'MiddleClick'
* MouseWheel Down triggers Skill 2
* MouseWheel Up triggers Skill 3
* Alt+MouseWheel Down triggers Skill 4
* Alt+MouseWheel Up triggers Skill 5
* Alt+MiddleClick triggers Skill 6 (Heal)
* Shift+MiddleClick triggers Skill 0 (Elite Skill)
* Pressing 'g' or 'Numpad9' disables Combat Mode and opens the Guild panel

The crosshair to be used can be specified by selecting the file in Crosshair Options > Image  

The vertical position of the Crosshair can be specified as a fraction in Crosshair Options > Position where 0 denotes
the top of the screen and 1 the bottom. I generally use 0.4 for melee chars and 0.35 or 0.3 for ranged ones. Fiddle with
it and see what you find comfortable.  

If you select a new crosshair, don't forget to enter the height of the image file ( in pixels ) under 
*Crosshair Options* > *Height* . This is required to position the crosshair properly.  


## Contributing

For those who are interested in looking at the source code, it is available on [Github](https://github.com/kshenoy/GW2CM). 
Feel free to fork it and make your own changes. I hope you don't face any issues while using this. However, if you do,
I'll prefer if you open an issue on Github itself as this will really simplify the job of tracking and resolving them.  

All suggestions regarding enhancements and ways to optimize the code are welcome. Hope you have as much fun using this
as I had coding it :)
