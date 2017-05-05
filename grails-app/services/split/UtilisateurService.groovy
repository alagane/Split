package split

import grails.transaction.Transactional

@Transactional
class UtilisateurService {

    def serviceMethod() {

    }

    def getUser(String email) {
        Utilisateur user = Utilisateur.findByEmail(email)
        return user
    }

}
