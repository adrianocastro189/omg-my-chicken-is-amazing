# OMG! My Chicken is amazing!

A very simple World of Warcraft addon to always remind players to summon their 
Westfall chicken. It was created to serve as a proof of concept for the new
inventory tracking structure introduced in [Stormwind Library v1.4.0](https://github.com/adrianocastro189/stormwind-library/releases/tag/1.4.0).

Although created as an experiment, the addon will probably be polished to serve
as a real mod for the game. Only time will tell.

## ⚠️ Plugin deactivation

Due to limitations in the `SendChatMessage` API, this project was deactivated 
in July 26, 2024. The plugin was designed to make the player character interact
with the chicken in some ways, but the limitations in the API made it 
impossible to achieve the desired results.

The plugin may be reactivated in the future if a solution is found to the
current limitations.

## ❤️ Support Stormwind Library

If you like this addon and want to support the library project behind it, you 
can [buy the author a coffee](https://github.com/sponsors/adrianocastro189).

Every contribution or subscription is deeply appreciated and supports
the project development.

## How to use this addon

This addon was designed with a bit of RP in mind, so it will make the player
interact with the chicken in some ways and also with the world around it. 
Expect some fun interactions in the future, but for now, once enabled, be 
advised that your character will say a few things during your gameplay.

But no worries, the addon will not spam your chat with messages nor will say
anything that could be against the game's terms of service. It's just a fun
way to remind you to summon your chicken.

* Install and enable the addon
* After that, no setup is required, and the addon will automatically detect 
  whether the player has the Westfall Chicken in the pet journal
* When the player doesn't have the Westfall Chicken in the pet journal,  
  there's a **small chance** that the character will lament the fact the they 
  don't have the chicken
* When the chicken is not summoned, there's a **small chance** that the 
  character will lament the absence of the chicken
* When the chicken is summoned, there's a **very small chance** that the 
  character will **yell** how amazing the chicken is

## What's on the roadmap for the next versions

* **More fun interactions:** Add some fun interactions with the chicken, to be 
clarified in the future

## Limitations

* **Classic support:** Unfortunately, I couldn't find any solutions to 
detect whether the player has a summoned chicken in the Classic clients due to 
the limitations of the Pet Journal API. The addon will only work on Retail 
only for now. Hope to find a solution in the future.

## Changelog

### 2024.07.26 - version 1.0.0

* Fix a typo when lamenting the chicken absence
* Makes the player yell how amazing the chicken is when it's summoned
* Plugin deactivation due to limitations in the SendChatMessage API
* Update Stormwind Library to version 1.10.0

### 2024.07.24 - version 0.0.4-alpha

* Update TOC interface number for Retail

### 2024.07.10 - version 0.0.3-alpha

* Add support for Retail
* Add the first player interactions with the chicken
* Identify whether the Westfall Chicken is summoned or not
* Remove Classic support due to limitations in the pet journal API
* Update Stormwind Library to version 1.8.0

### 2024.06.28 - version 0.0.2-alpha

* Update Stormwind Library to version 1.6.0
* Update important structures to use improved library features, most precisely
  in the class inheritance system

### 2024.06.11 - version 0.0.1-alpha

* First addon version with:
   * Initialization method and core table instance
   * Chicken finder repository structure
   * Temporary welcome message