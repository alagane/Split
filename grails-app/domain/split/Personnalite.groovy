package split

class Personnalite {

    static belongsTo = [
        utilisateur: Utilisateur
    ]

    String surnom
    String description

    static constraints = {
        surnom blank: false, nullable: false
        description blank: true, nullable: true
    }
}
