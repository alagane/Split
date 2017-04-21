import grails.util.Environment
import split.Utilisateur

import grails.util.Environment

class BootStrap {
    def bootstrapService

    def init = { servletContext ->
        Environment.executeForCurrentEnvironment {
            development {
                bootstrapService.initUtilisateur()
            }
        }
    }
    def destroy = {
    }
}
