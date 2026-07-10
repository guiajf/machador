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


# 1. Commitar as mudanças
usethis::use_git()
# Escolha "1: I agree"

# 2. Fazer push (não use use_github, use git_push)
usethis::git_push()
