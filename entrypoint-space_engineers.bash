#!/bin/bash
source ~/.profile
cd /appdata/space-engineers/config/DedicatedServer64/
env WINEARCH=win64 WINEDEBUG=-all WINEPREFIX=/wineprefix wine /appdata/space-engineers/config/DedicatedServer64/SpaceEngineersDedicated.exe -noconsole -path Z:\\appdata\\space-engineers\\SpaceEngineersDedicated -ignorelastsession