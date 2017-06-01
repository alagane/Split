package split

import grails.test.mixin.TestFor
import spock.lang.Specification
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Personnalite)
class PersonnaliteSpec extends Specification {

    @Unroll
    void "test la validite d'une personnalité"(String unSurnom, String uneDescription, Utilisateur unUtilisateur) {

        given: "une personnalite initialise correctement"
        Personnalite personnalite = new Personnalite(surnom: unSurnom, description: uneDescription, utilisateur: unUtilisateur)

        expect: "la personnalite est valide"
        personnalite.validate() == true

        where:
        unSurnom | uneDescription  | unUtilisateur
        "Perso1" | "description1"  | new Utilisateur(nom: "nom1", prenom: "prenom", email: "mail@ddd.com", password: "password")
        "Perso2" | ""              | new Utilisateur(nom: "nom2", prenom: "prenom", email: "mail@ddd.com", password: "password")
        "Perso3" | null            | new Utilisateur(nom: "nom3", prenom: "prenom", email: "mail@ddd.com", password: "password")

    }

    @Unroll
    void "test la non validite d'une personnalité"(String unSurnom, String uneDescription, Utilisateur unUtilisateur) {

        given: "une personnalite mal initialisé"
        Personnalite personnalite = new Personnalite(surnom: unSurnom, description: uneDescription, utilisateur: unUtilisateur)

        expect: "la personnalite n'est pas valide"
        personnalite.validate() == false

        where:
        unSurnom | uneDescription  | unUtilisateur
        ""       | "description1"  | new Utilisateur(nom: "nom1", prenom: "prenom", email: "mail@ddd.com", password: "password")
        null     | ""              | new Utilisateur(nom: "nom2", prenom: "prenom", email: "mail@ddd.com", password: "password")
        "Perso3" | null            | null

    }
}
