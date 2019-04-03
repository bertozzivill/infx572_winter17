##---------------------------------------------------------
## Blueberry muffin recipe (makes 12):
## 3 cups all-purpose flour
## 2 tablespoons sugar
## 1.5 tablespoons baking powder
## 0.5 teaspoon salt
## 3 eggs
## 0.5 cup butter
## 1 cup buttermilk
## 1 teaspoon vanilla extract
## 2 cups frozen blueberries
##---------------------------------------------------------

# I want to make 9 muffins instead. What is my new recipe?

multiplier <- 9/12

quantities <- c(3, 2, 1.5, 0.5, 3, 0.5, 1, 1, 2)

for (index in 1:9){
  
  print(quantities[index] * multiplier)
  
}

