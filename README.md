# MechSandbox (Mechanical Physics Sandbox)

In development

3D physics sandbox and editor designed for simplicity of use


# Design workflow

I imagine the design and simulation workflow will look something like this:

3D Template creation - generally performed within 'Editor space', a coordinate system particular to the Template being created and independent of final positioning
- Draft 2D drawings that 3D solids are based on
- Expand 2D drawings to solid (e.g. extrusion)
- Apply CSG operations to intersecting solids, creating additional drawings as needed
- Assemble individual solids into assembly (in place)
- Edit physical properties of solid bodies
- Wherever possible, the heirarchy of operations performed will be stored in memory allowing for easy modification of elements drawn earlier in the process.

Physics world Object creation - performed in 'Physics world', the interactive physics simulation
- Position 'Spawn Location' of 3D Template into world
- Spawn physical instances of objects in the 3D Template at the location chosen, which copies all individual objects including constrants and physical properties designed at the Template level
- Simulation begins for these objects as soon as this is done - No global physics pausing.
- Set of objects created from one Template can be jointly cleaned up (removed) for easy resetting
- Set of objects created from one Template can be reset (cleaned up and reset to their positions determined by the Template Spawn Location

Multiuser
- Physics World is shared between all users
- Templates are private and clientside-only until shared or spawned into Physics World
- Physics cannot be globally paused to ensure no interruptions to other users (although an admin override option is not out of the question)
- Individual objects, sets of objects created by templates, or all objects belonging to a user can be frozen, disabling physics for that specific content


# License

This project will be released under an open-source license when an appropriate license to use is identified.  (MIT License is being considered)

In the mean time, you may:
- Download, compile, and run the software from source
- Modify and recompile your local copy of the source code
- Exercise any rights required for recipients of this software to be granted by the licenses of the software libraries that this project depends on (links to)

(c) Theron Tarigo
All rights reserved.
