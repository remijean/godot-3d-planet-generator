# Godot 3D Planet Generator

![Showcase](screenshots/showcase.png)

## About

Three shaders to generate 3D animated planets and stars in Godot 4:

- Planet body generation shader
- Cloud generation shader
- Astmosphere generation shader

The project contains seven example planets:

- No atmosphere planet
- Terrestrial planet
- Ice planet
- Lava planet
- Sand planet
- Gaseous planet
- Star

## FAQ

> How to add shaders in my project?

Import the folder `naejimer_3d_planet_generator` in the folder `addons` of your project.

> How to use shaders in my project?

Two methods:
- Import directly one of the seven examples in your scene.
- Create a `MeshInstance3D` of type `SphereMesh` and add the shaders from the `shaders` folder.

> Why the atmosphere does not glow?

For best results, enable the glow and bloom options in your `WorldEnvironment`.

## Screenshots

![No atmosphere planet](screenshots/planet_no_atmosphere.png)
![Terrestrial planet](screenshots/planet_terrestrial.png)
![Ice planet](screenshots/planet_ice.png)
![Lava planet](screenshots/planet_lava.png)
![Sand planet](screenshots/planet_sand.png)
![Gaseous planet](screenshots/planet_gaseous.png)
![Star](screenshots/star.png)
