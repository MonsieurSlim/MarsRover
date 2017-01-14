# Mars Rover Challenge Built in Ruby

**Instructions:**
Rovers have been sent to Mars to survey the terrain and you have been charged with creating their navigation system. These are the specifications you have been given:

* Mars’s surface has been divided into zones and each zone can be modelled as a two­dimensional cartesian grid. The zones have been very carefully surveyed ahead of time and are deemed safe for exploration within the zone’s bounds, as represented by a single cartesian co­ordinate. E.g: (5, 5)
* The rover understands the cardinal points and can face either East (E), West (W), North (N) or South (S)
* The rover understands three commands:
* M ­ Move one space forward in the direction it is facing
* R ­ rotate 90 degrees to the right
* L ­ rotate 90 degrees to the left

Due to the transmission delay in communicating with the rover on Mars, you are only able to send the rover a list of commands. These commands will be executed by the rover and its resulting location sent back to HQ. This is an example of the list of commands sent to the rover:
```
8 8
1 2 E
M M L M R M M R R M M L
```
This is how the rover will interpret the commands:

* The first line describes how big the current zone is. This zone’s boundary is at the Cartesian
co­ordinate of 8,8 and the zone comprises 64 blocks.
* The second line describes the rover’s staring location and orientation. This rover would start
at position 1 on the horizontal axis, position 2 on the vertical axis and would be facing East
(E)
* The third line is the list of commands (movements and rotations) to be executed by the rover.
As a result of following these commands, a rover staring at 1 2 E in this zone would land up at 4 3 S.
You are to design a program which takes a text file in the format as described above and then displays its resulting rover location to the console.


**To run the application:**

- Copy the commands test case you'd like to use into the app/public/commands.txt file
- cd into the MarsRover directory
- run bundle install
- $ ```ruby app/mars_rover.rb```

**Sample Input:**

```
8 8
 1 2 E 
M M L M R M M R R M M L
```

**Sample Output:**

```
**********
3 3 S
**********
```



**To run specs:**

```
$ rspec
```


**Improvements**
- Add a support directory for rspec so spec commands are read from txt file
- Add specs for ControlTower and Rover

