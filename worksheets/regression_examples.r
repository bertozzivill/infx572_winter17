
## loading libraries
library(data.table)
library(ggplot2)
library(car)

data(Salaries)
Salaries <- data.table(Salaries)


## bivariate 
biv_reg <- lm(salary ~ yrs.since.phd, data=Salaries)

Salaries[, predict_biv:= predict(biv_reg)]

ggplot(Salaries, aes(x=yrs.since.phd)) +
  geom_point(aes(y=salary), alpha=0.7) +
  geom_line(aes(y=predict_biv), size=1)

biv_service_reg <- lm(salary ~ yrs.service, data=Salaries)

## multivariate continuous
cont_reg <- lm(salary ~ yrs.since.phd + yrs.service, data=Salaries)

Salaries[, pred_cont:= predict(cont_reg)]

ggplot(Salaries, aes(x=yrs.since.phd)) +
  geom_point(aes(y=salary), alpha=0.7) +
  geom_line(aes(y=pred_cont), size=1)

## multivariate categorical, sex
cat_reg_1 <- lm(salary ~ yrs.since.phd + sex, data=Salaries)
Salaries[, pred_cat_1:= predict(cat_reg_1)]

ggplot(Salaries, aes(x=yrs.since.phd, color=sex)) +
  geom_point(aes(y=salary), alpha=0.7) +
  geom_line(aes(y=pred_cat_1), size=1)


cat_reg_2 <- lm(salary ~ yrs.since.phd + rank, data=Salaries)
Salaries[, pred_cat_2:= predict(cat_reg_2)]

ggplot(Salaries, aes(x=yrs.since.phd, color=rank)) +
  geom_point(aes(y=salary), alpha=0.7) +
  geom_line(aes(y=pred_cat_2), size=1)
