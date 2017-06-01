package split



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PersonnaliteController {
    def utilisateurService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
        List<Personnalite> personnaliteInstance = utilisateurService.getPersonnaliteCurrentUser()
        respond personnaliteInstance, model:[personnaliteInstanceCount: personnaliteInstance.size(), utilisateur: utilisateurService.getCurrentUser()]
    }

    def show(Personnalite personnaliteInstance) {
        respond personnaliteInstance
    }

    def create() {
        respond new Personnalite(params), model:[utilisateur: utilisateurService.getCurrentUser().id]
    }

    @Transactional
    def save(Personnalite personnaliteInstance) {
        if (personnaliteInstance == null) {
            notFound()
            return
        }

        Utilisateur utilisateur = utilisateurService.getCurrentUser()
        personnaliteInstance.setUtilisateur(utilisateur)

        if (personnaliteInstance.hasErrors()) {
            respond personnaliteInstance.errors, view:'create'
            return
        }

        personnaliteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'personnalite.label', default: 'Personnalite'), personnaliteInstance.id])
                redirect (action:  "index")
            }
            '*' { respond personnaliteInstance, [status: CREATED] }
        }
    }

    def edit(Personnalite personnaliteInstance) {
        respond personnaliteInstance
    }

    @Transactional
    def update(Personnalite personnaliteInstance) {
        if (personnaliteInstance == null) {
            notFound()
            return
        }

        if (personnaliteInstance.hasErrors()) {
            respond personnaliteInstance.errors, view:'edit'
            return
        }

        personnaliteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Personnalite.label', default: 'Personnalite'), personnaliteInstance.id])
                redirect personnaliteInstance
            }
            '*'{ respond personnaliteInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Personnalite personnaliteInstance) {

        if (personnaliteInstance == null) {
            notFound()
            return
        }

        personnaliteInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Personnalite.label', default: 'Personnalite'), personnaliteInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'personnalite.label', default: 'Personnalite'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
