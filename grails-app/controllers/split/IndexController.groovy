package split

class IndexController {

    UtilisateurService utilisateurService

    def index() {
        Utilisateur utilisateur = utilisateurService.getCurrentUser()
        [utilisateur: utilisateur]
    }
}
