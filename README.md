# Diablo 2 VersionChanger by ChaosMarc

With this tool you are able to switch easily between all patch versions of Diablo 2 from 1.00 Classic to 1.14d LoD, install PlugY and create shortcuts to start specific patches.

## Installation
- Unpack the VersionChanger.7z into your Diablo 2 install-folder (default: C:\Program Files (x86)\Diablo II)
- For unpacking I recommend [7zip](http://www.7-zip.org/)

**Caution**: If installed with the new v1.14 digital installers by Blizzard you cannot downgrade your Diablo 2 installation to older patches. When starting the game you will receive only an empty error window. To fix this either use the included MPQFix or install the game with your CDs or the old v1.12 digital installers which can be downloaded in all official languages [here](https://mega.nz/#F!VIth1DKQ!Q42bVsCGQZ4UhoGjqvHxGw)

## Usage
Run the VersionChanger.bat and select a number/character in square brackets at the beginning of a line.

## Contact
For questions or suggestions please create an issue at [Github](https://github.com/ChaosMarc/D2VersionChanger) or email me: chaosmarc@gmx.de

## Changelog
- v4.3.2
    - added absolute path to find executable to avoid conflicts with linux find executable already in path (thanks @leo-liar)
- v4.3.1
    - Fix: The PlugY subfolder was not copied correctly
- v4.3
    - Added MPQFix for 1.14 installer. Thanks to [fearedbliss](https://www.diabloii.net/forums/threads/tech-support-installing-from-bnet-1-14d-installer-doesnt-allow-switching-back-to-1-13d.960439/#post-8827207)
- v4.2
    - replaced PlugY v10.00 (official) and v11.00 (inofficial) with v11.02 (official)
-  v4.1
    - replaced PlugY v11.00 (inofficial) with v11.01 (inofficial)
- v4.0
    - Complete rewrite
    - Added classic patches
    - PlugY v5.06, v10.00 and v11.00 are included and can be installed automatically
    - You can create shortcuts with the current settings from inside the tool
- v3.2
    - Added support for Patch v1.14d
- v3.1
    - Added rare and beta patches
    - Slightly changed the copying mechanism
- v3.0
    - Added support for Patch v1.14c
- v2.9
    - Added D2VidTst.exe as it isn't included in the new Installers but is needed for old patches
    - Small text changes
- v2.8
    - Added support for Patch v1.14b
- v2.7.1
    - Fix: For 1.14a no patch_d2.mpq was copied
- v2.7
    - Added support for Patch v1.14a
- v2.6
    - Added support for Patch v1.13d
- v2.5
    - Archive format changed from *.rar to *.7z
    - Fixed some error in ReadMe.txt
- v2.4
    - Added support for Patch v1.07/v1.08/v1.09b
- v2.3
    - Added support for Patch v1.13c
- v2.2
    - The VersionChanger can launch every executable that launches Diablo itself.
    - The handling of PlugY or Mods, which are startet with their own executable, becomes much easier.
- v2.1
    - Added PlugY support
    - "start" now works without a version-parameter too
- v2.0
     Added the parameter method
    - Changed from *.bat to *.exe