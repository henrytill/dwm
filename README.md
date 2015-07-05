# dwm

My personal fork of [dwm](http://dwm.suckless.org/) for use with [Nix](http://nixos.org/nix/)/[NixOS](http://nixos.org/)

### Requirements
* The [Nix](http://nixos.org/nix/) package manager

### Installation
```
nix-env -i dwm-HEAD -f /path/to/dwm/default.nix
```

### Running dwm
Add the following line to your `.xsession` to start dwm:
```
exec dwm
```

### Configuration
The configuration of dwm is done by editing `config.h` and (re)installing.
