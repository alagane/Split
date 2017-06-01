package split

import grails.test.spock.IntegrationSpec

class BootstrapServiceIntegrationSpec extends IntegrationSpec {

	BootstrapService bootstrapService



	void "test users and personnalities are created"() {
		when:
		bootstrapService.initUtilisateur()

		then:
		def alex = bootstrapService.alex
		alex.prenom == "Alex"
		alex.nom == "Lol"
		alex.email == "alex@site.com"
		alex.sexe == "M"
		alex.password == "password"

		def rachid = bootstrapService.rachid
		rachid.prenom == "Rachid"
		rachid.nom == "Pull"
		rachid.email == "rachid@site.com"
		rachid.sexe == "M"
		rachid.password == "password"

		def saindy = bootstrapService.saindy
		saindy.prenom == "Saindy"
		saindy.nom == "Di"
		saindy.email == "saindy@site.com"
		saindy.sexe == "F"
		saindy.password == "password"

		def ben = bootstrapService.ben
		ben.prenom == "Ben"
		ben.nom == "Jamin"
		ben.email == "ben@site.com"
		ben.sexe == "M"
		ben.password == "password"

		def pepe = alex.getPersonnalites()[0]
		pepe.surnom == "Pepe"
		pepe.description == "C'est pepe"

		def dexter = ben.getPersonnalites()[0]
		dexter.surnom == "Dexter"
		dexter.description == "Un psychopate"

		def bg = rachid.getPersonnalites()[0]
		bg.surnom == "BG"
		bg.description == "Rien à dire, il suffi de regarder...."

		def laChef = saindy.getPersonnalites()[0]
		laChef.surnom == "La Chef"
		laChef.description == "Obéissez moi !"
	}
}
