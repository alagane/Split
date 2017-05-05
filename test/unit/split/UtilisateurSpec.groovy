package split

import grails.test.mixin.TestFor
import spock.lang.Specification
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Utilisateur)
class UtilisateurSpec extends Specification {

	@Unroll
	void "test la validite d'un utilisateur valide"(String unNom, String unPrenom, String unEmail, String unSexe, Date uneDateNaissance, String unePhoto, String unPassword) {

		given: "un utilisateur initialise correctement"
		Utilisateur utilisateur = new Utilisateur(nom: unNom, prenom: unPrenom, email: unEmail, sexe: unSexe, dateNaissance: uneDateNaissance, photo: unePhoto, password: unPassword)

		expect: "l'utilisateur est valide"
		utilisateur.validate() == true

		where:
		unNom    | unPrenom  | unEmail     | unSexe | uneDateNaissance		| unePhoto | unPassword
		"Dupont" | "Jeanne"  | "jd@jd.com" | "F"    | new Date(1972, 6, 17) | "lien"   | "password"
		"Durand" | "Jacques" | "jd@jd.com" | "M"    | new Date(1972, 6, 17) | ""   	   | "password2"
		"Durand" | "Jacques" | "jd@jd.com" | "M"    | null					| null     | "password3"

	}

	@Unroll
	void "test l'invalidite d'un utilisateur non valide"(String unNom, String unPrenom, String unEmail, String unSexe, String unePhoto, String unPassword) {

		given: "un utilisateur initialise de maniere non valide"
		Utilisateur utilisateur = new Utilisateur(nom: unNom, prenom: unPrenom, email: unEmail, sexe: unSexe, photo: unePhoto, password: unPassword)

		expect: "l'utilisateur est invalide"
		utilisateur.validate() == false

		where:
		unNom    | unPrenom  | unEmail     | unSexe | unePhoto | unPassword
		null     | "Jeanne"  | "jd@jd.com" | "F"	| "lien"   | "password"
		''       | "Jeanne"  | "jd@jd.com" | "F"	| "lien"   | "password"
		"Dupont" | null      | "jd@jd.com" | "F"	| "lien"   | "password"
		"Durand" | ""        | "jd@jd.com" | "M"	| "lien"   | "password"
		"Durand" | "Jacques" | "jdjd.com"  | "M"	| "lien"   | "password"
		"Durand" | "Jacques" | null        | "M"	| "lien"   | "password"
		"Durand" | "Jacques" | "jd@jd.com" | "Z"	| "lien"   | "password"
		"Durand" | "Jacques" | "jd@jd.com" | null	| "lien"   | "password"
		"Durand" | "Jacques" | "jd@jd.com" | "M"	| "lien"   | ""
		"Durand" | "Jacques" | "jd@jd.com" | "M"	| "lien"   | null

	}
}
