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

quantities <- c(3, 2, 1.5, 0.5, 3, 0.5, 1, 1, 2, 0.5)
labels = c("cups all-purpose flour", "tablespoons sugar", "tablespoons baking powder",
           "teaspoons salt", "eggs", "cups buter", "cups buttermilk", "teaspoons vanilla extract", 
           "cups frozen blueberries", "teaspoons cinnamon")

print(paste("to multiply recipy by", multiplier, ":"))

for (index in 1:length(quantities)){
  
  new_quantity <- quantities[index] * multiplier
  label <- labels[index]
  
  print(paste(new_quantity, label))
  
}

