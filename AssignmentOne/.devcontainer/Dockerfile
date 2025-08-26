# Start from the official ROS Humble desktop image
FROM osrf/ros:humble-desktop
# Set the user to a non-root user (optional but good practice)
ARG USERNAME=rosuser
ARG USER_UID=1000
ARG USER_GID=$USER_UID
RUN groupadd --gid $USER_GID $USERNAME \ 
	&& useradd -u $USER_UID --gid $USER_GID -m $USERNAME \ 
	&& apt-get update \ 
	&& apt-get install -y sudo vim \
	&& echo "$USERNAME ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USERNAME \ 
	&& chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME
WORKDIR /home/$USERNAME/ros2_ws
RUN echo "source /opt/ros/humble/setup.bash" >> /home/$USERNAME/.bashrc
