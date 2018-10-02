;--------------------------------------------------------------------------------------;
;                                                                                      ;
;                               "PlugY, The Survival Kit"                              ;
;                                                                                      ;
;                                  by Yohann Nicolas                                   ;
;                                                                                      ;
;                                    version 5.06                                      ;
;                                                                                      ;
;--------------------------------------------------------------------------------------;

******** WARNING ********
- This plug-in works with mods based on 1.09 and 1.10 versions of LOD.
- This plug-in is don't work on realms.
- All files can change since previous version so don't use previous files.
- PlugY.ini have change since previous version, use the one in this package.
- Don't forgot to read the part named "COMMENTS OF THE CONFIGURATION FILE".
- Don't forgot to read the PlugY forum at :
    http://phrozenkeep.it-point.com/forum/viewforum.php?f=133


******** ALL FEATURES ********
- Infinity storage space in the stash (up to 4,294,967,296 personals pages!)
- Shared storage space in the stash (up to 4,294,967,296 shared pages too!)
- Local World Event for singleplayer and multiplayer off-realm !
- Unassign assigned skills and stats points.
- Change the selected language.
- Always regenerate maps in SinglePlayer like in MultiPlayer.
- Automatically execute /players X when you launch a new game.
- Add some pages for display more characters stats like %MF.
- Display item level in its popup.
- Launch any number of Diablo II game on the same computers.
- Grow up the stash to 10x10 squares.
- Change the save path directory.
- Change the version text print in the main menu.
- Always display Mana and Life values above the globes.
- D2 can load all files even those openned with Microsoft Excel.
- Localized in English, French, German.


v5.06 changes :
- Add buttons for shared gold.
- Enabled shared gold in multiplayer.
- Command "/DisplayLifeMana" are replaced by "/dlm".
- Fixed some bugs.


v5.05 changes :
- Fixed bad default color in interface stats.
- Add Shared gold via commands.
- Command "/DisplayLifeAndMana" are now "/DisplayLifeMana".
- Possibility to display in green set item name in popup when there in the shared stash.
- Fixed multiplayer bugs by redone multiplayer procedure.


v5.04 changes :
- Fixed : Stat/Skill points per levelup bug.
- Fixed : Multiplayer bugs.
- PlugY/PlugYDefault.ini completed.


v5.03 changes :
- Fixed : Bug which swap sometimes Hardcore and Softcore shared stash.
- Add color on extra stats page.
- Change default values on extra stats page.
- Set EnabledTXTFilesWhenMSExcelOpenIt=1 in PlugY.ini file.


v5.02 changes :
- Fixed : Previous bug fixing which cause items disappearring.


v5.01 changes :
- Fixed : Major bugs in stash management.
- Fixed : Set back PlugY.ini with ActiveLogFile=0 by default.
- Fixed : bug when shared stash disabled.


v5.00 changes :
- PlugY works for 1.09, 1.09b, 1.09d versions of LoD, including mods based on !
- PlugY can load D2Mod.dll.
- D2 can load all files even those openned with Microsoft Excel.
- World Event monster can be change.
- Some stuff for modders.
- Fixed major bugs in Multiplayer : fingerprints reseted, unidentified bugged items, etc.
- Fixed : Typo error of PlugY.ini (Commands).
- Fixed : No more case sensitive for commands in game.
- Fixed : Select Main Stat page bug on openning
- Fixed : Replace the display "Critical Strike/Deadly Strike" by the Deadly Strike only.
- Fixed : The spawn of DiabloClone at starting of a new game
- Fixed : Some other little bugs.


v4.04 changes :
- Fixed : Display bug when statPerLevelUp enabled.
- Fixed : Bug in saving procedure when the disk is full.
- New configuration system for modders.
- Always display Mana and Life values above the globes.


v4.03 changes :
- Fixed : carry1 unique item (unique charm) when we drop the cube.
- Can go directly on first or last page of stash (shift + click on next/previous).
- Second index added (shift + click on index buttons)
- Add data in the extra stats pages (2 pages now).
- Add previous page button in main stats page (only in 800x600).
- Move buttons in extra stats pages to same place than main stats page (only in 800x600).
- Can choose if the previous selected page are displayed on openning the stats page or the main (first) page.


v4.02b changes :
- Fixed : Features stay enabled in open Battle.net


v4.02 changes :
- Fixed : No more conflict with Battle.net (BigStash disabled on realms)
- Fixed : The forgot of "d" in "SeparateHardcoreStash=1" from PlugY.ini
- Fixed : By dedault in PlugY.ini, the language isn't change.
- Fixed : Item level display enabled correctly for all configurations of PlugY.
- Add data in the extra stats page.


v4.01 changes :
- Fixed : NbPlayers always set to 8 when active. 
- Add data in the extra stats page.


v4.00b changes :
- Fixed : MSVCR70.dll not found bug.


v4.00 changes :
- Better optimization of the code.
- Add some pages for display more characters stats like %MF.
- Change the selected language (and for mod, default and availabled language).
- Always regenerate maps in SinglePlayer like in MultiPlayer.
- Automatically execute /players X when you launch a new game.
- Display item level in its popup.
- Separate hardcore and softcore for the shared stash.
- Change installation method (can be installed directly on linux now)
- The item which trigger the World Event can be change.
- Any number of carry1 item (like annihilus) can be put in the stash.
- Fixed : Cannot put more than one item carry1 in others page than stash.
- Fixed : display bug of socketed items in the stash.
- Fixed : removed space bug in PlugY.ini.
- Fixed : Diablo Clone can't be spawn in normal and nightmare difficulty.
- Fixed : Destroy of extra minions after unassignment if you have +x bonus in the skill.


v3.02 changes :
- Fixed : Change the number stats points winning when player level up.
- Fixed : When the shared stash is disabled, you can load a game with your character.
- Fixed : You can change parameters of World Event without activate skill per level up.


v3.01 changes :
- Change the number of Stats points winning when player level up.
- Fixed bugs which give extra points when skills points are unassigned.
- Add parameters for the WorldEvent in configuration file.
- By default, World Event only SHOW "X SOJ Sold" in hell difficulty.


v3.00 changes :
- Local World Event for singleplayer and multiplayer off-realm !
- Unassign assigned skills points.
- New background for the stash.
- Can change the filename of the shared savefile.
- Shared stash page number display are in red now.


v2.05 changes :
- major fix : bug which cause D2 don't start are finally removed.


v2.04 changes :
- Unassign stats points, skills on level up are disabled when you connect to realm (like stash).
- Open a error message box instead of crash when PlugY.dll isn't find by D2.
- Fix some bugs in installation method.
- Fix bug display of buttons.
- Fix win95/98/Me saving.


v2.03b changes :
- Show PlugY version only in main screen.


v2.03 changes :
- Major fix : Correct and secure the saving procedure.
- No more crash of the host game when a character is unable to enter the game.
- Unassign stats points button greyed when base stat is above 255 fixed. 
- Change version printing on main screen (change color & PlugY version in right corner)
- Character without PlugY can join game host with PlugY enabled.


v2.02 changes :
- PlugY don't use anymore D2win.dll to launch PlugY.
- PlugY include a patcher/unpatcher for edit D2gfx.dll to launch PlugY.
- PlugY can be launch by D2Mod system of SVR.
- The infinity storage sytem is automatically disable on a realm game.
- Fix index button bugs.


v2.01 changes :
- Fix skill per level up bug
- Fix bug display of text in the main menu


v2.00 changes :
- Localized in German.
- Change the number of Skills points winning when player level up.
- Launch any number of Diablo II game on the same computers.
- You can unassign Stats points.
- Add 2 buttons for jump to index page.
- Print the current stash instead of Gold max. (Gold max value is a current Gold field popup)
- Complety re-done the configuration file.
- Configuration file can be put in mpq (like others PlugY images files)
- Little increasing compatibility with mods.
- Remove the TCP/IP crash.
- Remove page number bug when you switch betwenn character.
- Remove set item's bug display.
- Remove the bug of carry1
- Add others little improvement... :)


v1.03 changes :
- Add French readme and ini files.
- Remove bugs in D2Classic game (there no multipage, it's not a bug)
- Remove the bug when you loading character from previous version.
 (like ShadowMaster character or 1.09 or D2Classic character)
- Remove the bug line in the text when you click on delete character.
* must read : You can start any mods without moving SAVES files
     (you need to move dll files with classic script).


v1.02 changes :
- Re-change name files due to an IE bug with colon in zip file.
- Be able to change the version text print in the main menu (see ini file).


v1.01 changes : 
- Localized for french version (wait for an french readme.txt) 
- Change filename from "PlugY, The Survival Kit.ini" to "PlugY,The_Survival_Kit". 
- Add example for installation in the readme. 
- Dectection of bad installation at starting plugY. 
- Remove from the ini default file the [GENERAL]PlugYDirectory=PlugY\ 
(you can add it if you want but need to know what are you doing...) 
- Released in .zip file instead of .rar 


v1.00 features (can all be easily enabled or disabled) :
- You can change the save path directory.
- You can start any mods without moving saves files.
- You can grow the stash to 10x10 squares.
- Up to 4,294,967,296 pages in the stash (e.g. infinity storage space) !
  note : for LOD1.10 character only.
- Any these pages can be shared by all of your characters!



******** CONTENTS ********
16 files, 1 folder :
- PlugY_The_Survival_Kit_-_Readme.txt
- PlugY_The_Survival_Kit_-_LisezMoi.txt
- PlugY_The_Survival_Kit_-_Liesmich.txt
- PlugY_Install.exe
- PlugY_Uninstall.bat
- PlugY.ini
- PlugY.dll
- PlugY\PlugYFixed.ini
- PlugY\PlugYDefault.ini
- PlugY\StashBtns.dc6
- PlugY\TradeStash.dc6
- PlugY\UnassignStatsBtns.dc6
- PlugY\UnassignSkillsBtns.dc6
- PlugY\EmptyPage.dc6
- PlugY\StatsBackground.dc6
- PlugY\statsinterface.txt



******** INSTALLATION ********
- Download the archive from different site :
http://phrozenkeep.it-point.com/forum/dload.php?action=file&file_id=1267
http://djaftal.chez.tiscali.fr/
http://diablo2.judgehype.com/index.php?page=telechargements


Speed Installation :
- Unzip all files in Diablo II folder.
- Run PlugY_Install.exe (which patch D2gfx.dll for launch PlugY)

Classic Installation :
- Unzip this kit to a temporary folder.
- Copy PlugY.dll and PlugY_Install.exe in your D2 installation directory.
- Copy the "PlugY\" directory in your D2 installation directory or add it to your .mpq file (warning you must have PlugY\*.dc6 not data\...)
- Run PlugY_Install.exe (which patch D2gfx.dll for launch PlugY)
- Copy and configure PlugY.ini in the target mod directory. (change savepath per example)
- Create a shortcut : Enter target mod directory in "start in" field of properties->shortcut.
- You can remove PlugY_Install.exe if you want.
- If you don't use BigStash, you can remove the "PlugY\TradeStash.dc6" file.
- If you don't use Multipage Stash, you can remove "PlugY\StashBtns.dc6" file.
- If you don't use StatsUnassignment, you can remove "PlugY\UnassignStatsBtns.dc6" file.
- If you don't use SkillsUnassignment, you can remove "PlugY\UnassignSkillsBtns.dc6" file.
- If you don't use NewStatsInterface, you can remove "PlugY\EmptyPage.dc6" and "PlugY\StatsBackground.dc6" "PlugY\statsinterface.txt" files.
- If PlugY\ directory is now empty, you can remove it.
- Launch with the shorcut

Example :
You have installed Lord of Destruction here :  C:\Games\Diablo II\
And the mod to add this plug-in here : D:\D2Mod\MyMod\
So the classic configuration is :
   C:\Games\Diablo II\D2gfx.dll (modified with PlugY_Install.exe)
   C:\Games\Diablo II\PlugY.dll
   C:\Games\Diablo II\PlugY\StashBtns.dc6
   C:\Games\Diablo II\PlugY\TradeStash.dc6
   C:\Games\Diablo II\PlugY\UnassignStatsBtns.dc6
   C:\Games\Diablo II\PlugY\UnassignSkillsBtns.dc6
   C:\Games\Diablo II\PlugY\EmptyPage.dc6
   C:\Games\Diablo II\PlugY\StatsBackground.dc6
   C:\Games\Diablo II\PlugY\statsinterface.txt
   D:\D2Mod\MyMod\PlugY.ini


Uninstallation :
- Unzip PlugY_Uninstall.bat in D2 directory.
- Run PlugY_Uninstall.bat
- Remove all PlugY files.

NOTE : You can also install PlugY.dll in the mod folder and PlugY directory in a mpq.
 
******** CONFIGURATION ********

Configuration of this kit for a specified mod :
- Copy the PlugY.ini in the target mod directory (the directory where you start it, see it in the properties of the shortcut).
- In most cases, you will change the save directory in the ini file.
- Add all extra dll of the mod in PlugY.ini if any.
- Finally, activate any specific features you want such as MultiPageStash, SharedStash, etc.
- Now, you can start the target mod in the classic method (with or without "-direct -txt").

D2Mod configuration :
Just add the dll name in PlugY.ini, for example : "DllToLoad=D2Mod.dll"

Note:
- Items in the Cube is always save on the player, if you want shared these items you must remove it from the Cube.

Warning :
- Be carule if you want to edit the configurations files after having played with the mod.
- In multiplayer game, verify that the server have the same configuration.
- Remember : PlugY don't support realms.


*** Configuration for modders ***
There are 3 files with same structure to configure PlugY :
- "PlugY/PlugYFixed.ini" in mpq or via the switch -direct
All fields set parameters which can't be change by users via PlugY.ini.
Use it for enabled(disabled) wanted(unwanted) features.
Only few thing should be found here.
Warning 1: ActivePlugin=0 don't work here (but ActivePlugin=1 works)
Warning 2: SavePath management don't work here too.
Warning 3: Don't abuse of it, a lot of field should be set by users. (see note below)

- "PlugY/PlugYDefault.ini" in mpq or via the switch -direct
Use it for change default value of PlugY.
Works like PlugY.ini in an mpq in version 4.03 and before.
All fields which aren't in PlugYFixed.ini (and are always readed) should be here.
Most fields should be put here.

- "PlugY.ini" in current directory only.
For users configuration (like previous version).
Fields which is in PlugYFixed.ini shouldn't be found here.
In most case this file is the same than PlugYDefault.ini but it can be edited by user.

Notes:
Think to each features if you really must disabled it.
- The savepath management don't work in Fixed.ini (it's users to choose where they want to put their save files)
- The unassignment skills can really be useful to learn all your custom skills. I have stop to play some mod just because I don't know what skill will be useful at very high level. It's more fun to try all skills and do the choose after that. So don't put it in Fixed.ini
- The World Event should be configurate or disabled in Fixed.ini in each mod.
- The extra pages in stats interfaces shouldn't be put in Fixed.ini

Modders can contact me, if they want help or more details about this system.

WARNING : Don't forgot, if it's badly used, players will use old version of PlugY, and I will have no other choose than disabled it. 


******************** FAQ ******************

=> I don't find the PlugY.ini file, where is it ? 
From kingpin :
Microsoft has in those OS hide known extensions. This to make sure for newbie
users to not delete those files by accident. You can ofcourse turn this off by
open up your Windows Explorer, select Tools->Folder Options. Then choose view and
mark Show Hidden files and folders. Unmark Hide extensions for know file types.
Then you will for sure see the ini file. 


=> How Play sometimes in Battle.net when PlugY is installed ?
PlugY automatically disabled features on realm (except extra stats pages).
But it's always recommended to disabled any third software when you go on realm.
There are 2 procedures to do that :
1) Run PlugY_Uninstall.bat before start D2. And run PlugY_Install.exe after.
2) Use the Classic Installation. (Don't forget to remove PlugY.ini in the D2 directory)

Note : When bigStash is enabled, you must restart D2 for play in single/multi/open after playing in closed Bnet (and vice versa).
Tips : Make a shorcut and add -skiptobnet at the of the "target" field for directly go to Battle.net.


=> What doing if I have error like "Bad Generic File" on loading a new Character ? 
This can appear when you have bad item in the shared stash file. 
A possible cause is to use same save folder for different mod, in this case just change the save folder in PlugY.ini. 
You can also, move the _LOD_SharedStashSave.sss and _LOD_HC_SharedStashSave.sss to another directory.


=> I see "sUnitItemInsertItemInvGridBase failed at 1046 in C:\projects\D2\head\Diablo2\Source\D2Client\UNIT\Item.cpp" in D2YYMMDD.txt, what I should do ? 
It's just a warning, don't worry about it, it cause no problem in game. 


=> I have another bug, what I should doing ? 
1) Read my thread and post a question eventually in PhrozenKeep member annoucement forum.
2) If, you haven't resolve it, send me an email at ynicolas@worldonline.fr with "PlugY" in subject and join these files :
- PlugY.ini
- PlugY.log (with active_logfile=1 in plugY.ini if possible)
- D2XXYYZZ.txt log file of diablo2
- reply to these question : when,where,how,why,... it happens ?
Thx


******** COMMENTS OF THE CONFIGURATION FILE ********

All Default value mean, if you remove the line, PlugY use this value.
The values in PlugY.ini (include in the zip) is an example of configuration, not default value.

[GENERAL]
Enabled or disabled all selected features.
Dlls from field "DllToLoad" aren't loaded anymore when ActivePlugin=0.
In following default values and between {} some examples values with descriptions :
- ActivePlugin=1	{0:Don't load any features; 1:Plugin enabled}

Create a log file "PlugY.log" in the current directory.
This feature can slow down your game.
In following default values and between {} some examples values with descriptions :
- ActiveLogFile=0 	{0:No information is written while playing; 1:Always enabled}

Load dll of a specific mod for used PlugY in same time.
Separate each dll file name by the character pipe (|)
In following default values and between {} some examples values with descriptions :
- DllToLoad=		{(empty): load nothing; D2extra.dll|myDll.dll: Load both D2extra.dll and myDll.dll}
- DllToLoad2=		{(empty): Same as DlltoLoad}

Active some new command in PlugY. In parenthesis the condition for be able to used the command.
"/dlm" toggle the state of AlwaysDisplayLifeAndManaValues (AlwaysDisplayLifeAndManaValues>0)
"/page x" Go to the page x in the extra stats page.
- ActiveCommands=0 	{0:Disabled; 1:Enabled)

Quit D2, if PlugY failed to installed all features.
Disabled it only if you know what you do.
- ActiveCheckMemory=1


[LANGUAGE]
Change the selected language.
You must have files of the selected language.
All D2/LoD versions contains the english language (execpt voices).
All possibles languages: ENG|ESP|DEU|FRA|POR|ITA|JPN|KOR|SIN|CHI|POL|RUS
- ActiveChangeLanguage=1		{0:Disabled; 1:Enabled}
- SelectedLanguage=ENG			{FRA: Select French as language}

For modder who want restrict the availabled languages and the default language :
- ActiveLanguageManagement=1	{0:Disabled; 1:Enabled}
- DefaultLanguage=ENG			{empty:D2 default language; FRA:French is the default language}
- AvailableLanguages=ENG|FRA	{ENG|ESP|DEU|FRA|POR|ITA|JPN|KOR|SIN|CHI|POL|RUS}


[SAVEPATH]
This is where all of your characters and the shared stash is saved.
You can use absolute or relative paths.
In following default values and between {} some examples values with descriptions :
- ActiveSavePathChange=0	{0:Disabled; 1:Enabled, you must set "SavePath"}
- SavePath=Save\			{Save\MyMod\  or D:\Save Games\diablo II\Current Mod\}


[MAIN SCREEN]
Change the version text in the main menu (first menu)(instead of "v 1.10")
Color is an integer which refer to defined D2 colors.
In following default values and between {} some examples values with descriptions :
- ActiveVersionTextChange=0 {0:Disabled; 1:Enabled}
- VersionText=v 1.10        {Mod Name:Text where maximum length is around 23 characters}
- ColorOfVersionText=0      {0:white; 1:red; 4:gold; etc.}
- ActivePrintPlugYVersion=1 {0:Disabled; 1:Enabled)
- ColorOfPlugYVersion=4     {0:white; 1:red; 4:gold; etc.}


[STASH]
Resize the stash to 10x10 squares.
Use PlugY\TradeStash.dc6 to change the background image.
When bigStash is enabled, you must restart D2 for play in single/multi/open when you have start a game in closed Bnet previously (and vice versa).
In following default values and between {} some examples values with descriptions :
- ActiveBigStash=0			{0:Default stash size is use; 1: Enabled, Stash use 10x10 squared}

Use this for shared and keep all of your items. :)
There are 2 multipage stashes :
- one Personal only seen by the Player;
- one Shared between your Players in this mod.
Use the Toggle Button to switch between stash.
Use arrow buttons on bottom the stash (and shift key) for switch between pages.
Definition : The last page is the last page with an item in it.
The multipage stashes are inactive for Diablo II Classic Character and on realm.
You can change the name of the shared filename.
In following default values and between {} some examples values with descriptions :
- ActiveMultiPageStash=0	{0:Disabled; 1:Enabled}
- NbPagesPerIndex=10		{10: Index page is 1,10,20,30,...,max}
- NbPagesPerIndex2=100		{100: Index page (+shift) is 1,50,100,150,...,max}
- MaxPersonnalPages=0 		{0:Infinite number of personnal pages; 1000: Maximum of 1000 shared pages}
- ActiveSharedStash=0		{0:Disabled; 1:Enabled if ActiveMultiPageStash=1}
- SeparateHardcoreStash=1	{0:Same shared stash for HC and SC; 1:Use 2 differents stashes}
- SharedStashFilename=SharedStashSave	{xxx: The filename will be "_LOD_xxx.sss"}
- MaxSharedPages=0 			{0:Infinite number of shared pages; 5000: Maximum of 5000 shared pages}
- ActiveSharedGold=1		{0:Disabled; 1:Use command to put and take gold (see command section)}
- PosXPreviousBtn=-1		{-1: Default position, 50: Put the button at the position 50 in absiss}
Same for PosYPreviousBtn, PosXNextBtn, PosYNextBtn, PosXSharedBtn, PosYSharedBtn, PosXPreviousIndexBtn, PosYPreviousIndexBtn, PosXNextIndexBtn, PosYNextIndexBtn, PosXPutGoldBtn, PosYPutGoldBtn, PosXTakeGoldBtn, PosYTakeGoldBtn.


[STATS POINTS]
Use for repair a bad stat point assignment.
Per exemple 30 points in energy for a barbarian!
On the character stat page, press selected key and click on minus button.
Select a key by setting KeyUsed (should choose 17 or 18).
In following default values and between {} some examples values with descriptions :
- ActiveStatsUnassignment=0		{0:Disabled 1:Enabled, press selected key when clicking}
- KeyUsed=18					{17:Control key selected; 18:Alt key selected}


Use the shift buton for assign/unassign all possibles points in one click.
You can define a limit value for points assign/unassign with shift.
warning : the ActiveShiftCkickLimit name have change now it's ActiveShiftClickLimit.
In following default values and between {} some examples values with descriptions :
- ActiveShiftClickLimit=0		{0:Disabled; 1:Enabled}
- LimitValueToShiftClick=5		(10:Assign or unassign stats points, 10 by 10}


[STAT ON LEVEL UP]
Change the number of Stats Points you receive when your character level up.
In following default values and between {} some examples values with descriptions :
- ActiveStatPerLevelUp=0		{0:Disabled; 1:Enabled}
- StatPerLevelUp=5				{0:no points win;  11:eleven points win}


[SKILLS POINTS]
Use for repair a bad skill point assignment.
Click on the button of skill page for unassign all assigned skills points.
note : It verify the real cost of each skill (can be greater than 1 in mod)
In following default values and between {} some examples values with descriptions :
- ActiveSkillsUnassignment=0	{0:Disabled; 1:Enabled}


[SKILL ON LEVEL UP]
Change the number of Skills Points you receive when your character level up.
In following default values and between {} some examples values with descriptions :
- ActiveSkillPerLevelUp=0		{0:Disabled; 1:Enabled}
- SkillPerLevelUp=1				{0:no point win;  3:tree points win)


[WORLD EVENT]
Active the World Event in local.
World Event only trigger in hell difficulty and only one time by game.
If the WE trigger when you aren't in game, you loose it.
From when you launch D2, the next WE will trigger between few seconds to 41:40 hours after.
Keep in mind before edit it, World Event should be triggered rarely.
The item to sell can be change, the value waiting are same as the cube input field.
In following default values and between {} some examples values with descriptions :
- ActiveWorldEvent=0			{0:Disabled; 1:Enabled}
- ShowCounterInAllDifficulty=0	{0:Show it "SOJ Sold" message only in Hell; 1:Show it all difficulties}
- ItemsToSell=The Stone of Jordan	{r01: rune EL;      cap,rar,upg: Any cap/war hat/shako rare}
- MonsterID=333					{333: DiabloClone spawned}
- OwnSOJSoldChargeFor=100		{100:When you sold a SOJ the SOJ counter are incremented by 100}
- InititalSOJSoldMin=200		{200:The SOJ counter is set at least at 20 when you launch D2}
- InititalSOJSoldMax=3000		{3000:The SOJ counter is set at most at 300 when you launch D2}
- TriggerAtEachSOJSoldMin=75	{75:Need to have at least at 75 SOJ sold between 2 World Event}
- TriggerAtEachSOJSoldMax=125	{125:Need to have at most at 125 SOJ sold between 2 World Event}
- ActiveAutoSell=1				{0:Disabled; 1:SOJ counter are automatically incremented by 1}
- TimeBeforeAutoSellMin=0		{50:Need at least at 50 seconds between 2 auto-increments}
- TimeBeforeAutoSellMin=1200	{1200:Need at most at 20 minutes (1200 seconds) between 2 auto-increments}


[INTERFACE]
Add extra page for display some stats.
Can choose if the previous selected page are displayed on openning the stats page or the main (first) page.
You can change the the stats displayed via the PlugY\statsinterface.txt file (open it with MS Excel).
There are no max page limit.
Can don't display the background of buttons (Use it when a mod already change it).
- ActiveNewStatsInterface=0		{0:Disabled; 1:Enabled}
- SelectMainPageOnOpenning=1	{0:Last selected page displayed; 1:Main page displayed}
- PrintButtonsBackgroundOnMainStatsPage=1	{0:Don't display the background; 1:display it}


[EXTRA]
You can run any number of Diablo II game on one computer.
Per example, modder can test multiplayer game for their mod.
For start the second game, you must start it with "game.exe" and not "Diablo II.exe".
Warning : Don't start games with the same savepath when you use the Shared Stash.
		  Don't use the same character in same time.
In following default values and between {} some examples values with descriptions :
- ActiveLaunchAnyNumberOfLOD=0	{0:Disabled; 1:Enabled}

Regenerate the map each time you re-start a game (like in multiplayer).
- AlwaysRegenMapInSP=0			{0:Disabled; 1:Enabled}

Set the number of players (like /players x) each time you start a game.
- NBPlayersByDefault=0			{0:Disabled; 1:Set the game to 1 player (normal); 8:Set the game to emulate 8 players}

Print the level of each items in their popup.
- ActiveDisplayItemLevel=0		{0:Disabled; 1:Enabled}

Always display Mana and Life values above the globes.
- AlwaysDisplayLifeAndManaValues=0		{0:Disabled; 1:Enabled; 2:Disabled but can be enabled by command}

Fixed the bug which block the opening of txt files when they are opened by Miscrosoft Excel.
- EnabledTXTFilesWhenMSExcelOpenIt=0	{0:Disabled; 1:Enabled}

More features later... :)


If you have any suggestions, bugs, or see any conflicts with any mods, you can send me an email to ynicolas@worldonline.fr with "PlugY" in the subject.

PS : Sorry for english faults ;)

******** THANKS TO ********
- Blizzard for making Diablo2 and Lord of Destruction.
- Kingpin, Afj666, Joel, SVR, Myrdinn for their great help.
- ChaosEnergy for testing and his translation in German.
- Shaitane, K&V, themastercaster and raspa for testing.
- Golvmopp for his stats background image.
- Dark Spot in the Corner for his stash background image.
- All members of ProzenKeep chat and forums for their information and feedback.
- PhrozenKeep team for all stuff they shared for us (including mine ;)

                                         ~~~~~~~~~~~~