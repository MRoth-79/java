FROM openjdk:11

# Set the working directory in the container
WORKDIR /app

# Copy the Java source code into the container
COPY HelloWorld.java .

# Compile the Java source code
RUN javac HelloWorld.java

# Define the command to run the compiled Java program
CMD ["java", "HelloWorld"]
