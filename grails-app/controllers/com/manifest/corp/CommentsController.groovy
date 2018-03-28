package com.manifest.corp

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import grails.converters.*
import org.springframework.security.access.annotation.Secured

class CommentsController {

    CommentsService commentsService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond commentsService.list(params), model:[commentsCount: commentsService.count()]
    }

    def list(){
        def comments = []
        Posts blogPost = Posts.get(params.postId)
        if(blogPost) {
            comments = Comments.findAllByPostId(blogPost.id)
        }
        render comments as JSON
    }

    def show(Long id) {
        respond commentsService.get(id)
    }

    @Secured(["ROLE_BLOGGER, ROLE_COMMENTER"])
    def create() {
        respond new Comments(params)
    }

    @Secured(["ROLE_BLOGGER, ROLE_COMMENTER"])
    def save(Comments comments) {
        if (comments == null) {
            notFound()
            return
        }

        try {
            commentsService.save(comments)
        } catch (ValidationException e) {
            respond comments.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'comments.label', default: 'Comments'), comments.id])
                redirect comments
            }
            '*' { respond comments, [status: CREATED] }
        }
    }

    @Secured(["ROLE_BLOGGER, ROLE_COMMENTER"])
    def edit(Long id) {
        respond commentsService.get(id)
    }

    @Secured(["ROLE_BLOGGER, ROLE_COMMENTER"])
    def update(Comments comments) {
        if (comments == null) {
            notFound()
            return
        }

        try {
            commentsService.save(comments)
        } catch (ValidationException e) {
            respond comments.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'comments.label', default: 'Comments'), comments.id])
                redirect comments
            }
            '*'{ respond comments, [status: OK] }
        }
    }

    @Secured(["ROLE_BLOGGER, ROLE_COMMENTER"])
    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        commentsService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'comments.label', default: 'Comments'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'comments.label', default: 'Comments'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    @Secured(["ROLE_BLOGGER, ROLE_COMMENTER"])
    def updateComments(){
        def comment = params.values()
        render "${comment}"
    }
}
