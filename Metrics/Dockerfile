# FROM playright with Ubunto Jammy 22
FROM mcr.microsoft.com/playwright:jammy

# Access as root user
USER root

# Set the results folder
ENV ROBOT_REPORTS_DIR /opt/robotframework/results

# Set the tests folder
ENV ROBOT_TESTS_DIR /opt/robotframework/

# Setup the timezone
ENV TZ=America/Sao_Paulo

# Update and Install Python
RUN apt-get update
RUN apt-get install -y python3-pip

# Install RobotFramework and Browser Library, nodejs and libtoc
RUN pip3 install robotframework
RUN pip3 install robotframework-browser
RUN pip3 install robotframework-faker
RUN pip3 install robotframework-libtoc
RUN pip3 install robotframework-requests
RUN rfbrowser init
RUN apt-get update
ENV NODE_PATH=/usr/lib/node_modules

# Workdir Directory
WORKDIR   /opt/robotframework/

# Basic command to run the image and the container
# docker image build -t robot .
# docker container run -it --rm -v "$(pwd)/tests:/opt/robotframework/Tests" -v "$(pwd)/results:/opt/robotframework/results"  robot  bash -c "robot --outputdir /opt/robotframework/results  /opt/robotframework/tests"

# cd C:\Users\Gabriel\Desktop\ORANGE\Dockerfile

# docker container run -it --rm -v "$(pwd)/Tests:/opt/robotframework/Tests" -v "$(pwd)/Resources:/opt/robotframework/Resources" -v "$(pwd)/Utils:/opt/robotframework/Utils" -v "$(pwd)/Results:/opt/robotframework/Results"  robot  bash -c "/opt/robotframework/Utils/create_folder.sh  &&   /opt/robotframework/Utils/execute_robot.sh   &&    /opt/robotframework/Utils/rename_video.sh    &&   libtoc --output_dir /opt/robotframework/Docs --toc_file Library.html /opt/robotframework/Resources"
# libtoc --output_dir C:\\Users\\Gabriel\\Desktop\\ORANGE\\Docs --toc_file output.html C:\\Users\\Gabriel\\Desktop\\ORANGE\\tests\\resources