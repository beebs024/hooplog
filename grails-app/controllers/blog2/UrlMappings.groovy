package blog2

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?/$title?/$datePosted?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:'posts', action: 'index')
        "500"(view:'/error')
        "404"(view:'/notFound')

    }
}
