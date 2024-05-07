# rofi-grimshot-swappy

Simple Rofi script to call `grimshot` with different options and display result of screenshot into `swappy`.

## Usage

Place the `.rasi` files in your `~/.config/rofi` directory.

Place the shell file wherever you like.

If you're using `Sway`, you could bind a key to this script with the following command in your config file:

```shell
bindsym $mod+Shift+e exec '~/scripts/rofi-grimshot-swappy.sh'
```
If you're using `Hyprland`, you could also bind a key to this script with the following command in your config file:
```shell
bind = , PRINT, exec, ~/scripts/rofi-grimshot-swappy.sh
```
