FROM openjdk
WORKDIR /app
COPY ./app
RUN  javac CalculatorApp.java
CMD ["java", "CalculatorApp"]
