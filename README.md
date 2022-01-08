# gamepad_force_focus

**Links:** [itch page](https://yellowafterlife.itch.io/gamepad-force-focus)

Sometime in 2018 (>1.4.1804 / >2.1.4), GameMaker runtime was updated to no longer poll gamepads when the window is not in focus. On one hand that is good, because you can switch between gamepad-controlled applications without accidentally throwing your character off a cliff, but sometimes you *do* want to poll gamepads while in background.

This little extension fixes that by convincing the game that the window always has focus (as far as gamepad logic is concerned).

## How to use

Call `gamepad_force_focus()` once. That's it.  
If you for some reason need to disable the extension later, call `gamepad_force_focus(false)`

## Limitations

Based on [this tweet](https://twitter.com/RussellKay/status/1288197027994705921) by Russell Kay, this likely only works with XInput devices.

## Meta

**Author:** [YellowAfterlife](https://github.com/YellowAfterlife)  
**License:** MIT