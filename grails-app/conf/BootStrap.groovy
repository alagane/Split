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
