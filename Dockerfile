FROM openjdk
WORKDIR /app
RUN  java CalculatorApp.java
# CMD ["java", "CalculatorApp"]
