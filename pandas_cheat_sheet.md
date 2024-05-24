
# Pandas Cheat Sheet

## Importar Pandas
```python
import pandas as pd
```

## Crear DataFrames
```python
# Desde un diccionario
data = {'col1': [1, 2], 'col2': [3, 4]}
df = pd.DataFrame(data)

# Desde un archivo CSV
df = pd.read_csv('file.csv')

# Desde un archivo Excel
df = pd.read_excel('file.xlsx')
```

## Vista rápida del DataFrame
```python
# Primeras 5 filas
df.head()

# Últimas 5 filas
df.tail()

# Información general
df.info()

# Descripción estadística
df.describe()
```

## Selección de datos
```python
# Selección por columna
df['col1']

# Selección por fila
df.iloc[0]  # Primera fila
df.loc[0]   # Primera fila por etiqueta

# Selección por filas y columnas
df.iloc[0, 1]  # Primera fila, segunda columna
df.loc[0, 'col1']  # Primera fila por etiqueta, columna 'col1'
```

## Filtrado de datos
```python
# Filtrado por condición
df[df['col1'] > 1]

# Filtrado con múltiples condiciones
df[(df['col1'] > 1) & (df['col2'] < 4)]
```

## Operaciones básicas
```python
# Añadir nueva columna
df['col3'] = df['col1'] + df['col2']

# Eliminar columna
df.drop('col3', axis=1, inplace=True)

# Renombrar columnas
df.rename(columns={'col1': 'new_col1'}, inplace=True)
```

## Manejo de datos faltantes
```python
# Verificar datos faltantes
df.isnull().sum()

# Eliminar filas con datos faltantes
df.dropna(inplace=True)

# Rellenar datos faltantes
df.fillna(value=0, inplace=True)
```

## Agrupamiento y agregación
```python
# Agrupamiento por columna y agregación
df.groupby('col1').sum()
df.groupby('col1').mean()
df.groupby('col1').agg({'col2': 'mean', 'col3': 'sum'})
```

## Unión de DataFrames
```python
# Concatenar DataFrames
pd.concat([df1, df2])

# Merge DataFrames
pd.merge(df1, df2, on='key')
```

## Guardar DataFrame
```python
# Guardar en CSV
df.to_csv('output.csv', index=False)

# Guardar en Excel
df.to_excel('output.xlsx', index=False)
```

