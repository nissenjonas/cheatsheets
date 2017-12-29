# PlantUml Cheatsheet

Draw uml diagrams using a text based dsl.

See [official documentation](http://plantuml.com/) for details.

## Example

TBD

## Class diagrams

    @startuml
    package example_package{
    class Car{
        -integer id
        +string brandName
        +void drive()
    }

    Driver - Car : drives >
    Car *- Wheel : have 4 >
    Car -- Person : < owns
    }

    @enduml

![PlantUml](http://www.plantuml.com/plantuml/png/NOzD2y8m38RlW_s7z-W7lNaIaO6UnPj7YMlOYbqtqZe5yR_Rqe73dF8-JqW805G-a8H7PyiY9WnKtwbXy8kwmV9rokziQqlUuq0ovLJAkC0D2up-mRKFObo3cv3J9-fufiRUQ6Wn8o-M6N_A8ZV7H0KgdS0s3tdiiqnifN1fcMsKBOsCpLmgXJEBxrsqE_HFv__ML-nq_FGB "PlantUml")

## Tooling

### Chocolatey package

    choco install plantuml

### Visual Studio Code Extension

[See marketplace for details](https://marketplace.visualstudio.com/items?itemName=jebbs.plantuml).

> Alt+D for preview of .wsd files.

## Options

* allow_mixing - Allows mixing diagram types