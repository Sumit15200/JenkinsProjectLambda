FROM jenkins/inbound-agent
WORKDIR /app
COPY ./app
RUN  javac CalculatorApp.java
CMD ["java", "CalculatorApp"]
