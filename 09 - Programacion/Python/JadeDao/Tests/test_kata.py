
# test_kata2.py

from Src.Kata2 import calculate_area # Importamos la función que vamos a testear

def test_calculate_area_simple():
    """Test con valores enteros simples"""
    assert calculate_area(2, 3) == 6

def test_calculate_area_with_zero():
    """Test con un valor cero"""
    assert calculate_area(0, 5) == 0

def test_calculate_area_floats():
    """Test con valores decimales"""
    assert calculate_area(2.5, 4.0) == 10.0

def test_calculate_area_large_numbers():
    """Test con valores grandes"""
    assert calculate_area(1000, 2000) == 2000000

