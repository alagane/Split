package split

class Utilisateur {

    static hasMany = [
            personnalites: Personnalite
    ]

    String nom
    String prenom
    String email
    String sexe
    Date dateNaissance
    String photo
    String password

    static constraints = {
        nom blank: false, nullable: false
        prenom blank: false, nullable: false
        email blank: false, nullable: false, email: true
        sexe blank: false, nullable: false, matches: "[MF]"
        dateNaissance nullable: true
        photo blank: true, nullable: true
        password blank: false, nullable: false, minSize: 6
    }
}
