# Roboquest-AutoSplitter
LiveSplit AutoSplitter for Roboquest (0.6.x)

## Notes:
- Currently, this does not keep track of the route you have taken. You should title and organize your runs accordingly. This script will only work if you have the correct number of splits configured.
- Splits for each route can be found at [the Roboquest page on speedrun.com](https://www.speedrun.com/roboquest) in [the Resources section](https://www.speedrun.com/roboquest/resources).
- To show your horizontal speed in LiveSplit, I suggest using [kugelrund's plugin](https://github.com/kugelrund/LiveSplit.MemoryGraph). Roboquest will be available in the drop-down menu titled "Game:" after you've pressed the "Update XML file" button. This can be found on the MemoryGraph tab in Layout Settings after you've added MemoryGraph to your layout.
- There are two additional options:
  - `Automatically reset timer upon death`
    - (Default: Disabled) - When enabled, your LiveSplit timer will reset as soon as you die in-game
  - `Automatically reset timer when restarting the run in-game, when you leave the Game Over screen, or when you go to Basecamp`
    - (Default: Enabled) - When enabled, your LiveSplit timer will reset when you restart the run via the in-game menu, when you leave the Game Over screen after death, or when you go to Basecamp

## Suggestions:
- You should configure LiveSplit to use Game Time.
- I've included my layout file, `roboquest_layout.lsl`, which is already configured with everything you need to improve your runs. I would suggest starting with this and adjusting to your preferences. If you are going to use this, you need to have [kugelrund's plugin](https://github.com/kugelrund/LiveSplit.MemoryGraph) installed. This layout shows the splits, possible time save on current segment, in-game time (total and segment), real time (total and segment), and your horizontal speed as a number and a bar graph showing your speed over a period of time. Here is a screenshot of the layout:
![Roboquest Layout](/roboquest_livesplit.png)

## Credits:
- LongerWarrior: Provided me with a significant amount of information that was required for making this. Also reviewed this script at multiple stages to help improve the quality, size, performance, and maintainability
- Sotumney: Managing the speedrunning community for Roboquest
- dmgvol: Pointer path improvements
- Ero: Helped me learn the basics of memory analysis for games in Unreal Engine 4
- Tedder: Helped me understand more about pointers in general
- Speedrun Tool Development server on Discord: Helped with initial research, general questions, and brainstorming. Very active community that helped me hit the ground running.
- Roboquest community on Discord: This is a welcoming community that is easy to be a part of, and I would not have been interested in speedrunning this if that were not the case.