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

    def Utilisateur getCurrentUser() {
        return current_user
    }

    def signOut() {
        current_user = null;
    }

    def signIn(Utilisateur user) {
        current_user = user;
    }

}
