library(dplyr)

listar_obras()
listar_obras() %>% filter(titulo == "Junqueira Freire")

# Instalar gitcreds se não tiver
#install.packages("gitcreds")

# Guardar o token
gitcreds::gitcreds_set()
# Cole o token quando pedir

# Agora tente novamente
usethis::use_github()

usethis::use_pkgdown()

usethis::use_github_action("check-standard")

# Gerar o site localmente
pkgdown::build_site()

# Fazer deploy no GitHub Pages
usethis::use_pkgdown_github_pages()


# Adicionar os novos arquivos ao Git
usethis::use_git()

# Escolha a opção 1 (I agree) para commitar todos os arquivos

# Enviar para o GitHub
usethis::use_github()