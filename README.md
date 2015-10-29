# dwm

My personal fork of [dwm](http://dwm.suckless.org/) for use with [Nix](http://nixos.org/nix/)/[NixOS](http://nixos.org/)

### Requirements
* [Nix](http://nixos.org/nix/) or [NixOS](http://nixos.org)

### Installation
Add the following:
```
dwm-HEAD = pkgs.callPackage ./path/to/dwm {};
```
to either:
* `packageOverrides` in `~/.nixpkgs/config.nix` (Nix/NixOS)
* `nixpkgs.config.packageOverrides` in `/etc/nixos/configuration.nix` (NixOS)

The package can then be installed using standard techniques.

### Running dwm
Add the following line to your `.xsession` to start dwm:
```
exec dwm
```

### Configuration
The configuration of dwm is done by editing `config.h` and (re)installing.
