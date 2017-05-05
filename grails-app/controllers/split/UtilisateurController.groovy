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
                flash.message = message(code: 'default.created.message', args: [message(code: 'utilisateur.label', default: 'Utilisateur'), utilisateurInstance.id])
                redirect utilisateurInstance
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
            flash.message = "Email incorrect"
            redirect(action: 'index')
        } else if (user.password != params.password) {
            flash.message = "Password incorrect"
            redirect(action: 'index')
        } else {
            flash.message = "Welcome back, ${params.email}."
            session.user = user
            utilisateurService.current_user = user
            session.nom = utilisateurService.getCurrentuser().nom
        }

    }

    def logout() {
        session.user = null
        utilisateurService.current_user = null
        redirect(action: 'index')
    }
}
