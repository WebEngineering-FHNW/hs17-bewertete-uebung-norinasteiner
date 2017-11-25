package ch.fhnw.socrative

import grails.test.mixin.Mock
import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(AnswerController)
@Mock([Answer, Question])
class AnswerControllerSpec extends Specification {

    def setup() {
        new Question(text: "test").save()
    }

    def populateValidParams(params) {
        assert params != null

        params["text"] = 'helo'
        params["question"] = 1
    }

    def cleanup() {
        Question.get(1).delete()
        Answer.get(1).delete()
    }

    void "Test with one question"() {
        when:"The save action is executed"
        response.reset()
        populateValidParams(params)
        def answer = new Answer(params)

        controller.save(answer)

        then:"A redirect is issued to the show action"
        Answer.count() == 1
    }

    void "Test with two questions" () {
        new Question(text: "Test2").save()

        when:"The save action is executed"
        response.reset()
        populateValidParams(params)
        def answer = new Answer(params)

        controller.save(answer)

        then:"A redirect is issued to the show action"
        response.redirectedUrl == '/student/answer/2'
        Answer.count() == 1

        Question.get(2).delete()
    }
}
