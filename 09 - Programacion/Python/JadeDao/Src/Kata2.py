#!/usr/bin/env python3

""" Calcular El area de un rectángulo """

def calculate_area(width: float, height: float) -> float:

    """Calculates and returns the area of a rectangle."""

    return width * height

def get_positive_float(prompt: str) ->float:
    
    """ Pide un numero positivo al usuario, Repite hasta que sea valido"""
    
    while True:
        try:
            value = float(input(prompt))
            if value < 0:
                    print("❌ Error: El valor no puede ser negativo. Inténtalo de nuevo.")
            else:
                return value
        except ValueError:
            print("❌ Error: Debes ingresar un número. Inténtalo de nuevo.")

def main():

    print("📐Calcular el area de un rectangulo")

    width = get_positive_float("📏 ingresa el ancho del rectangulo:  ")
    height = get_positive_float("📏 ingresa el alto del rectangulo:  ")

    area = calculate_area(width, height )
    print(f"El area del rectángulo es: {area}")

if __name__=="__main__":
    main()
    
