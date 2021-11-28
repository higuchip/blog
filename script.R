#Carregando pacote dplyr

library(dplyr)

#Importando os dados
dados <- read.table('https://raw.githubusercontent.com/higuchip/blog/main/dados.csv', header=T, dec=',', sep=';')

#Verificando os dados importados
head(dados)

#Determinação da Área Basal (m2)

dados %>% 
  mutate(as = dap^2/40000) %>% # determinação da Área seccional
  group_by(Especie) %>%  # Agrupamento por espécies
  summarise(ab=sum(as)) # Calculo da área basal (m2)


