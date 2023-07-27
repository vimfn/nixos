# NixOS

nixos/laptop/hardware.nix
- Make sure you have labelled it correctly.



# i3 (Primarily)

```sh
sudo nixos-rebuild switch --flake .#laptop-i3
```

# Gnome 

```sh
sudo nixos-rebuild switch --flake .#laptop-gnome
```

# Hyprland

```sh
sudo nixos-rebuild switch --flake .#laptop-i3
```

# 🗑️

```sh
sudo nix-collect-garbage --delete-old
```