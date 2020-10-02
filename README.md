# rrt-matlab
Simple source codes of various rapidly-exploring random trees(RRTs) in Matlab

## Purpose
This source codes are basically written for students who want to study RRTs by themselves.
So I will try to avoid the complex implementation depending on the programming language itself.
However, There are still a number of errors because it is also my first time to implement them from the scratch.
For example, the first commit of RRT decide whether the new edge collides with trees based on the state of pixel on "Map" matrix.
It has problems in two way.
  1) Using incremental collision detection algorithm is one of the main benefits of RRT.
  2) Furthermore, pixel based collision detection method allows the crossing edges, which are obvious bugs.
It is not an unique error right now and I will fix the errors as soon as I can.

## Goal
  1) Implementing various kinds of the RRT
  - 2D/3D RRT
  - 2D/3D RRT*
  - 2D/3D Bidirectional RRT*
  - 2D/3D Heuristic Bidirectional RRT*
  - Parti-game directed RRTs (PDRRTs)
  - CL-RRT
  - RRG
  - RRT*-Smart
  - A*-RRT, A*-RRT*
  - RRT*FN
  - RRT*-AR
  - Informed RRT*
  - Rea-Time RRT* (RT-RRT*)
  - RRTX, RRT#
  - Theta*-RRT
  - RRT* FND
  - RRT-GPU
  - APF-RRT
  - CERRT
  - MVRRT*
  - RRT-Blossom
  - TB-RRT
    
  2) Applying a proper RRT approach to generate trajectory for the car-like robot on the 3D matrix
  
##### 2020-10-01
The initial commit of 2D RRT
