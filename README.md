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
- **The DLL is now smaller**  
  Not like it matters or anything.

## Support

I regret to inform in advance that I can't answer your Arduino questions.  
I don't even own an Arduino!

This version was made by copy-pasting the published source code into one of my Visual Studio templates
and adding more functions that call the same underlying functions - except, you know,
slightly more conveniently.

Then, someone that sort of knows what they're doing confirmed that the DLL still works,
and here you have it.

## GameMaker ≤ 8.1

This version of the extension cannot be used in pre-Studio versions of GameMaker because it's now
using `undefined` and buffers, but also the demand for GM≤8.1 extensions is low enough that
I don't have a solid workflow like I do with GM:S/GMS2/GM2022+.

## Meta

**License:** [Default GM EULA](https://marketplace.yoyogames.com/eula)?