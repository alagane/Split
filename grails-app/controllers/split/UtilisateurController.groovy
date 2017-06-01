package split



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UtilisateurController {

    UtilisateurService utilisateurService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Utilisateur.list(params), model:[utilisateurInstanceCount: Utilisateur.count()]
    }

    def show(Utilisateur utilisateurInstance) {
        respond utilisateurInstance
    }

    def create() {
        respond new Utilisateur(params)
    }

    @Transactional
    def save(Utilisateur utilisateurInstance) {
        if (utilisateurInstance == null) {
            notFound()
            return
        }

        if (utilisateurInstance.hasErrors()) {
            respond utilisateurInstance.errors, view:'create'
            return
        }

        utilisateurInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.success = "Successfully registered user"
            }
            '*' { respond utilisateurInstance, [status: CREATED] }
        }
    }

    def edit(Utilisateur utilisateurInstance) {
        respond utilisateurInstance
    }

    @Transactional
    def update(Utilisateur utilisateurInstance) {
        if (utilisateurInstance == null) {
            notFound()
            return
        }

        if (utilisateurInstance.hasErrors()) {
            respond utilisateurInstance.errors, view:'edit'
            return
        }

        utilisateurInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Utilisateur.label', default: 'Utilisateur'), utilisateurInstance.id])
                redirect utilisateurInstance
            }
            '*'{ respond utilisateurInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Utilisateur utilisateurInstance) {

        if (utilisateurInstance == null) {
            notFound()
            return
        }

        utilisateurInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Utilisateur.label', default: 'Utilisateur'), utilisateurInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'utilisateur.label', default: 'Utilisateur'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def login() {
        Utilisateur user = utilisateurService.getUser(params.email)

        if (user == null) {
            flash.error = "Email incorrect"
        } else if (user.password != params.password) {
            flash.error = "Password incorrect"
        } else {
            flash.success = "Happy to see you " + user.prenom + " :)"
            utilisateurService.signIn(user)
        }
    }

    def logout() {
        utilisateurService.signOut()
        redirect(uri: '/')
    }
}
