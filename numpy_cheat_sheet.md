
# NumPy Cheat Sheet

## Importar NumPy
```python
import numpy as np
```

## Crear Arrays
```python
# Desde una lista
arr = np.array([1, 2, 3])

# Arrays con ceros, unos o valores constantes
np.zeros((3, 3))
np.ones((3, 3))
np.full((3, 3), 7)

# Arrays con valores aleatorios
np.random.random((3, 3))
np.random.randint(0, 10, (3, 3))
```

## Inspección de Arrays
```python
# Dimensiones del array
arr.shape

# Número de elementos
arr.size

# Tipo de datos
arr.dtype
```

## Acceso y Modificación de Elementos
```python
# Acceso a elementos
arr[0]  # Primer elemento
arr[-1]  # Último elemento

# Modificación de elementos
arr[0] = 10

# Acceso y modificación de subarrays
arr[0:2]  # Primeros dos elementos
arr[0:2] = [20, 30]

# Acceso y modificación de elementos multidimensionales
arr_2d = np.array([[1, 2, 3], [4, 5, 6]])
arr_2d[0, 1]  # Elemento en la primera fila, segunda columna
arr_2d[0, 1] = 20
```

## Operaciones Básicas
```python
# Operaciones aritméticas
arr = np.array([1, 2, 3])
arr + 1  # Suma
arr - 1  # Resta
arr * 2  # Multiplicación
arr / 2  # División

# Operaciones con dos arrays
arr1 = np.array([1, 2, 3])
arr2 = np.array([4, 5, 6])
arr1 + arr2
arr1 * arr2

# Funciones matemáticas
np.sin(arr)
np.cos(arr)
np.log(arr)
np.exp(arr)
```

## Estadísticas y Agregaciones
```python
# Suma, promedio, mediana, desvío estándar
arr.sum()
arr.mean()
np.median(arr)
arr.std()

# Operaciones a lo largo de un eje
arr_2d.sum(axis=0)  # Suma de cada columna
arr_2d.sum(axis=1)  # Suma de cada fila
```

## Manipulación de Arrays
```python
# Transpuesta de un array
arr_2d.T

# Cambiar la forma del array
arr.reshape((2, 3))

# Apilar arrays
np.vstack((arr1, arr2))  # Apilar verticalmente
np.hstack((arr1, arr2))  # Apilar horizontalmente
```

## Álgebra Lineal
```python
# Producto punto
np.dot(arr1, arr2)

# Matrices inversas y determinantes
matrix = np.array([[1, 2], [3, 4]])
np.linalg.inv(matrix)
np.linalg.det(matrix)

# Valores y vectores propios
np.linalg.eig(matrix)
```

## Guardar y Cargar Arrays
```python
# Guardar en archivo
np.save('array.npy', arr)
np.savez('arrays.npz', arr1=arr1, arr2=arr2)

# Cargar desde archivo
arr = np.load('array.npy')
data = np.load('arrays.npz')
arr1 = data['arr1']
arr2 = data['arr2']
```
