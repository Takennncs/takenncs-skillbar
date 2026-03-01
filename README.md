# takenncs Skillbar

A customizable skillbar/hacking mini-game for FiveM servers. This resource provides a visually appealing skill check system where players must press 'E' when the moving square aligns with the target slot.

## Features

- 🎮 Interactive skill-based mini-game
- ⚡ Customizable speed/difficulty
- 🎨 Modern orange-themed UI with gradient effects
- 📱 Responsive design
- 🔧 Easy integration with other scripts
- 🎯 Precise hit detection

## Preview

The skillbar features:
- A moving square that travels across a timeline
- A target slot positioned randomly
- Visual feedback for success (green) and failure (red)
- Smooth animations and transitions

## Installation

1. Download the resource
2. Place it in your FiveM server's `resources` folder
3. Add `ensure takenncs` to your `server.cfg`
4. Restart your server

## Usage

### Export Function

The resource provides an export that can be called from any other resource:

```lua
local success = exports['takenncs']:skillbar(time)
