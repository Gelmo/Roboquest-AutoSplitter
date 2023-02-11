state ("RoboQuest-Win64-Shipping") {
    int GameLevel : 0x04EBF460, 0x120, 0x420;
    float GameTime : 0x04EBF460, 0x120, 0xAC8;
    float TotalRunTime : 0x04EBF460, 0x120, 0xAD0;
    bool bIsDead : 0x04E2A738, 0x0, 0x240, 0x8A2;
}

startup {
    settings.Add("reset-death", false, "Automatically reset timer upon death.");
    settings.Add("reset-game", true, "Automatically reset timer when restarting the run in-game, when you leave the Game Over screen, or when you go to Basecamp.");
}

start {
    // If the in-game timer has started and the in-game timer previously had a value of 0, start the timer
    if (current.GameTime > 0 && old.GameTime == 0) {
        return true;
    }
}

reset {
    // If player has died and reset-death is enabled, reset the timer
    if (settings["reset-death"] && current.bIsDead) {
        return true;
    }
    // If the in-game timer is set to 0 and reset-game is enabled, reset the timer. This occurs when restarting the run in-game, when you leave the Game Over screen, or when you go to Basecamp
    if (settings["reset-game"] && current.GameTime == 0 && old.GameTime == 0) {
        return true;
    }
}

split {
    // If the game has updated TotalRunTime and the player has not died, split. This should only occur on the final split
    if (current.TotalRunTime > 0 && old.TotalRunTime == 0 && !current.bIsDead) {
        return true;
    }
    else {
        // If the current level differs from the level in the previous loop, split
        return (current.GameLevel != old.GameLevel);
    }
}

isLoading {
    // Always return true since we're using gameTime
    return true;
}

gameTime {
    // Use in-game timer
	return TimeSpan.FromSeconds(current.GameTime);
}