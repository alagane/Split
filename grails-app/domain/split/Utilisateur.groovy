package split

class Utilisateur {

    static hasMany = [
            activites: Personnalite
    ]

    String nom
    String prenom
    String email
    String sexe
    Date dateNaissance
    String photo

    static constraints = {
        nom blank: false, nullable: false
        prenom blank: false, nullable: false
        email blank: false, nullable: false, email: true
        sexe blank: false, nullable: false, matches: "[MF]"
        dateNaissance blank: true, nullable: true
        photo blanc: true, nullable: true
    }
}
