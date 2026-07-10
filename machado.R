library(dplyr)

listar_obras()
listar_obras() %>% filter(titulo == "Junqueira Freire")

library(usethis)

# Isso deve funcionar agora
usethis::use_git()