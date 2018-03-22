package com.manifest.corp

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class CommentsServiceSpec extends Specification {

    CommentsService commentsService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Comments(...).save(flush: true, failOnError: true)
        //new Comments(...).save(flush: true, failOnError: true)
        //Comments comments = new Comments(...).save(flush: true, failOnError: true)
        //new Comments(...).save(flush: true, failOnError: true)
        //new Comments(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //comments.id
    }

    void "test get"() {
        setupData()

        expect:
        commentsService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Comments> commentsList = commentsService.list(max: 2, offset: 2)

        then:
        commentsList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        commentsService.count() == 5
    }

    void "test delete"() {
        Long commentsId = setupData()

        expect:
        commentsService.count() == 5

        when:
        commentsService.delete(commentsId)
        sessionFactory.currentSession.flush()

        then:
        commentsService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Comments comments = new Comments()
        commentsService.save(comments)

        then:
        comments.id != null
    }
}
