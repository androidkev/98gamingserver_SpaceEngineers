# [98gaming](https://github.com/androidkev/98gamingserver_SpaceEngineers)
All of the space engineers dedicated server on wine containers I found wouldn't build, and I embarked on a journey to create my own.

## Prerequisites:
* docker
* docker-compose (recommended, not required to run container)
* unzip

## Tips:
* You can copy the entire contents of ./appdata/space-engineers/config to make a backup, including the SpaceEngineers-Dedicated.cfg file.
* The ```./start``` script will start the server using docker-compose in detached mode, and then attaches to the log output. You can press <kbd>ctrl</kbd>+<kbd>c</kbd> to detach from the logs and keep the server running.
* If you are running plugins, the first time your run this, check your SpaceEngineers-Dedicated.cfg file for the Plugins element. If it spans multiple lines, you must replace it with ```<Plugins />```, exactly like that. The server will query ./appdata/space-engineers/config/Plugins and update the config file as needed from then on.

## Usage:

### -RECOMENDED- Pull from dockerhub and run with docker-compose

* Clone this repo with ```git clone https://github.com/androidkev/98gamingserver_SpaceEngineers.git```.
* Change directory into the cloned repo with ```cd space-engineers-dedicated-docker-linux```.
* Run the start script with ```./start```. This will initialize the ./appdata folder, unzip an empty star system from star-system.zip and start the server.

### Pull and run from dockerhub without docker-compose:
From this directory run :

## Exit Codes:
| Exit Code | Reason |
| - | - |
| 129 | Container is missing /appdata/space-engineers/World folder, volume mounts are mounted incorrectly. |
| 130 | Container is missing /appdata/space-engineers/World/Sandbox.sbc, World is not placed in the right folder, or the volume mounts are mounted incorrectly. Ensure your world is in ```./appdata/space-engineers/config/World/```.|
| 131 | Container is missing the dedicated server config file SpaceEngineers-Dedicated.cfg. Ensure that you have placed SpaceEngineers-Dedicated.cfg at ```./appdata/space-engineers/config/SpaceEngineers-Dedicated.cfg```. |

## Directory Structure:
```
SpaceEngineersDedicated contains the dedicated server files
steamcmd contains steamcmd
config contains all the user configurable files for the game instance
World contains the world files

appdata
└── space-engineers
    ├── bins
    │   ├── SpaceEngineersDedicated 
    │   └── steamcmd 
    └── config 
        ├── SpaceEngineers-Dedicated.cfg
        └── World
            ├── Alien-291759539d120000.vx2
            ├── EarthLike-1779144428d120000.vx2
            ├── Europa-595048092d19000.vx2
            ├── Mars-2044023682d120000.vx2
            ├── Moon-1353915701d19000.vx2
            ├── SANDBOX_0_0_0_.sbs
            ├── Sandbox.sbc
            ├── Sandbox_config.sbc
            ├── Titan-2124704365d19000.vx2
            ├── Triton-12345d80253.vx2
            └── thumb.jpg

```