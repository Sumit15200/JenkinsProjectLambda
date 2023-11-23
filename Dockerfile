FROM openjdk
WORKDIR /app
RUN  javac CalculatorApp.java
CMD ["java", "CalculatorApp"]
