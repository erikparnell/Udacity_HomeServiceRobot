#!/bin/sh

xterm -e " source /home/workspace/catkin_ws/devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=/home/workspace/catkin_ws/src/turtlebot_simulator/turtlebot_gazebo/worlds/greenbluebuilding.world " &

sleep 10

xterm -e " source $(find / -name a782def1_setup.bash); roslaunch turtlebot_gazebo amcl_demo.launch map_file:=$(find / -name a782def1_map.yaml) " &

sleep 10

xterm -e " source $(find / -name a782def1_setup.bash); roslaunch turtlebot_rviz_launchers view_navigation.launch "



