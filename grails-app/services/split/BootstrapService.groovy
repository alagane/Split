package split

import grails.transaction.Transactional

@Transactional
class BootstrapService {
    Utilisateur alex
    Utilisateur rachid
    Utilisateur saindy
    Utilisateur ben

    def initUtilisateur() {
        alex = new Utilisateur(prenom: "Alex", nom: "Lol", email: "alex@site.com", sexe: "M", password: "password")
        rachid = new Utilisateur(prenom: "Rachid", nom: "Pull", email: "rachid@site.com", sexe: "M", password: "password")
        saindy = new Utilisateur(prenom: "Saindy", nom: "Di", email: "saindy@site.com", sexe: "F", password: "password")
        ben = new Utilisateur(prenom: "Ben", nom: "Jamin", email: "ben@site.com", sexe: "M", password: "password")

        alex.addToPersonnalites(new Personnalite(surnom: "Pepe", description: "C'est pepe"))
        ben.addToPersonnalites(new Personnalite(surnom: "Dexter", description: "Un psychopate"))
        rachid.addToPersonnalites(new Personnalite(surnom: "BG", description: "Rien à dire, il suffi de regarder...."))
        saindy.addToPersonnalites(new Personnalite(surnom: "La Chef", description: "Obéissez moi !"))

        alex.save()
        rachid.save()
        saindy.save()
        ben.save()
    }

    def getAlex() {
        alex
    }
}
