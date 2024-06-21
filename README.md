# Arduino / Serial Communication DLL

**Quick links:** [documentation](https://yal.cc/docs/gm/arduino/) · 
[forum topic](https://forum.gamemaker.io/index.php?threads/arduino-dll.888/)  
**Platforms:** Windows, Windows (YYC)​  
**Versions:** GM:S 1.4, GMS2.2, GMS2.3/GM2022+

This is a slight update to Buff's Arduino DLL.

## What's new

- **Windows x64 support**  
  (in other words, works on the current runtime)
- **More read/write functions**  
  Now with bytes, ints, floats, and buffer I/O
- **Fixed a few memory leaks**  
  Previously extension was leaking a bit of memory whenever it returned a string.  
  I don't think anyone noticed.

## Support

I regret to inform in advance that I can't answer your Arduino questions.  
I don't even own an Arduino!

This version was made by copy-pasting the published source code into one of my Visual Studio templates
and adding more functions that call the same underlying functions - except, you know,
slightly more conveniently.

Then, someone that sort of knows what they're doing confirmed that the DLL still works,
and here you have it.

## Structure

- `Arduino`: Visual Studio C++ project
- `Arduino.gmx`: GameMaker: Studio test project
- `Arduino_yy`: GameMaker Studio 2.2.x test project
- `Arduino_23`: GameMaker Studio 2.3.x / GM2022+ test project
- `export`: documentation source and various unused bits

## Building

See [BUILDING](BUILDING.md)

## GameMaker ≤ 8.1

This version of the extension cannot be used in pre-Studio versions of GameMaker because it's now using `undefined` and buffers.

I could make a slightly limited 8.1-compatible version if someone paid me,
but why would you do such a thing (to me and to yourself).

## Meta

**License:** [Default GM EULA](https://marketplace.yoyogames.com/eula)?