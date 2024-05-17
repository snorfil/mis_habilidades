# Cargar las bibliotecas necesarias
library(ggplot2)
library(dplyr)

# Usar el conjunto de datos mtcars
data(mtcars)

# 1. Gráfico de dispersión de wt vs mpg, coloreado por cyl
# Variables clave:
# - wt: Peso del coche.
# - mpg: Millas por galón.
# - cyl: Número de cilindros.º
plot1 <- ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point() +
  labs(title = "Gráfico de dispersión de wt vs mpg", x = "Peso", y = "Millas por Galón", color = "Cilindros") +
  theme_minimal()
print(plot1)

# 2. Gráfico de dispersión de wt vs mpg con una línea suavizada
# Variables clave:
# - wt: Peso del coche.
# - mpg: Millas por galón.
plot2 <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = "loess", se = TRUE, color = "blue") +
  labs(title = "Gráfico de dispersión de wt vs mpg con línea suavizada", x = "Peso", y = "Millas por Galón") +
  theme_minimal()
print(plot2)

# Usar el conjunto de datos midwest
data(midwest, package = "ggplot2")

# 3. Recuentos de una variable discreta (state)
# Variable clave:
# - state: Estado.
plot3 <- ggplot(midwest, aes(x = state)) +
  geom_bar() +
  labs(title = "Recuentos de una variable discreta", x = "Estado", y = "Cuenta") +
  theme_minimal()
print(plot3)

# 4. Un histograma de una variable continua (area)
# Variable clave:
# - area: Área.
plot4 <- ggplot(midwest, aes(x = area)) +
  geom_histogram(binwidth = 0.01) +
  labs(title = "Histograma de una variable continua", x = "Área", y = "Cuenta") +
  theme_minimal()
print(plot4)

# 5. Un diagrama de dispersión de dos variables continuas con una línea de media condicional suavizada
# Variables clave:
# - area: Área.
# - poptotal: Población total.
plot5 <- ggplot(midwest, aes(x = area, y = poptotal)) +
  geom_point() +
  geom_smooth(method = "loess", se = TRUE, color = "blue") +
  labs(title = "Diagrama de dispersión de area vs poptotal", x = "Área", y = "Población Total") +
  theme_minimal()
print(plot5)

# 6. Tres variables (gráfico de dispersión con color representando otra variable)
# Variables clave:
# - area: Área.
# - poptotal: Población total.
# - state: Estado.
plot6 <- ggplot(midwest, aes(x = area, y = poptotal, color = state)) +
  geom_point() +
  labs(title = "Diagrama de dispersión con tres variables", x = "Área", y = "Población Total", color = "Estado") +
  theme_minimal()
print(plot6)

# Cambiar el título y las etiquetas de los ejes de uno de los gráficos anteriores
# Variables clave:
# - area: Área.
# - poptotal: Población total.
# - state: Estado.
plot7 <- ggplot(midwest, aes(x = area, y = poptotal, color = state)) +
  geom_point() +
  labs(title = "Gráfico de dispersión personalizado", x = "Área de Tierra", y = "Población Total", color = "Estado") +
  theme_light()
print(plot7)

# Cambiar el tema de uno de los gráficos
# Variables clave:
# - area: Área.
# - poptotal: Población total.
# - state: Estado.
plot8 <- ggplot(midwest, aes(x = area, y = poptotal, color = state)) +
  geom_point() +
  labs(title = "Gráfico de dispersión con tema personalizado", x = "Área de Tierra", y = "Población Total", color = "Estado") +
  theme_bw()
print(plot8)

# Guardar uno de los gráficos como archivo de imagen
# Variables clave:
# - area: Área.
# - poptotal: Población total.
# - state: Estado.
plot9 <- ggplot(midwest, aes(x = area, y = poptotal, color = state)) +
  geom_point() +
  labs(title = "Gráfico de dispersión guardado", x = "Área de Tierra", y = "Población Total", color = "Estado") +
  theme_minimal()
ggsave("scatter_plot.png", plot = plot9)
print(plot9)
