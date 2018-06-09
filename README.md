# Multimedia Explorer

This is a simple Multimedia Explorer written in olden times, fixed a bit and put on GitHub.
Written for Delphi 7, needs a bit of renovation to be run on modern compilers. It should be
almost trivial to update it for Lazarus although directory and file lists will be quite 
uglified. It is not trivial to upgrade it to the RAD Studio 10 though because it lacks
`TShellTreeView` and `TShellListView` components.

![Screenshot](Docs/Screenshot.png)

## Backend

MediaExpl uses Winamp 2.9 plugins as a backend. You will need `out_wave.dll` and any 
`in_*.dll` plugins you want. You can find Winamp 2.9 at 
[oldversion.com](http://www.oldversion.com/windows/winamp/).

Put the plugins to the `Plugins` subdirectory at the directory with `MediaExpl.exe`.

## License

Licensed under the Apache License, Version 2.0.

## 3rd Party

### Images

Vector mouse art is taken from <https://vector.me/browse/161272/simple_cartoon_mouse_clip_art>

### ioplug.pas

Winamp i/o plugin header adaption for Delphi/Pascal by Snake
