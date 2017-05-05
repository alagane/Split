package split

import grails.transaction.Transactional
import org.codehaus.groovy.grails.plugins.web.api.CommonWebApi

@Transactional
class UtilisateurService {
    public Utilisateur current_user

    def serviceMethod() {

    }

    def getUser(String email) {
        Utilisateur user = Utilisateur.findByEmail(email)
        return user
    }

    def getCurrentuser() {
        return current_user
    }

}
