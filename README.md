Descripción
Este proyecto utiliza Karate DSL, un framework de automatización de pruebas API basado en el lenguaje de dominio específico (DSL) de Gherkin. Karate DSL permite escribir pruebas API de manera sencilla y expresiva.

Requisitos Previos

- JAVA 8 o superior (11)
- Maven o Gradle.
- Git
- Yarn
- Postman
- Intellij o Visual Studio Code + Plugins

git clone https://github.com/ElchinoVega/KarateDslCapa.git
cd proyecto-karate-dsl

Ejecutar las Pruebas:
mvn test

Ejemplo.feature: Archivo de especificación de la prueba escrito en Gherkin.
CommonUtils.java: Clase con métodos de utilidad compartidos para las pruebas.
TestConfig.java: Configuración del entorno y variables globales para las pruebas.
KarateTestRunner.java: Clase principal para ejecutar las pruebas.


