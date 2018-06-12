# Ctrl Enter - чтобы строчку
# Ctrl Alt R - чтобы все
# Alt -
formula2 <- 2+2+1+2+3+4+3+1+12+12+12
3+3
d <- formula2 + formula2
# +, -, /, *, ^, %%
2^2
class(d) # Чтобы посмотреть тип 
# Качественные 
# они оформляются в ковычках
"Arlan"
class("Arlan")
# logical (boolean)
class(TRUE)
# Задача, как сохранить несколько имен
# с() - collection, сумка
names <- c("Dima", "Dima2", "Dima3")
class(names)
c(30, 30, 40)
c(30, "Dima", "Vasya")
# вверх положительный
# вниз отрицательный
#как делать корреляция
# cor.test(x, y)
# x and y must have the same 
ves <- c(30,40,50,60)
rost <- c(100,120,150,160)
cor.test(ves,rost)
# МЦТ (меры центральной тенденции)
# МИ (меры изменчивости)
# среднее, медиана, мода