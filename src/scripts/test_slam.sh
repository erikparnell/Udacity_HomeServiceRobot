#!/bin/sh

xterm -e " source $(find / -name a782def1_setup.bash); roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$(find / -name greenbluebuilding.world) " &

sleep 4

xterm -e " source $(find / -name a782def1_setup.bash); roslaunch turtlebot_gazebo gmapping_demo.launch " &

sleep 3

xterm -e " source $(find / -name a782def1_setup.bash); roslaunch turtlebot_rviz_launchers view_navigation.launch " &

sleep 3

xterm -e " source $(find / -name a782def1_setup.bash); roslaunch turtlebot_teleop keyboard_teleop.launch "


