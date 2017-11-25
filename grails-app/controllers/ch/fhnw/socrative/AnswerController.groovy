package ch.fhnw.socrative

import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.CREATED

@Transactional(readOnly = false)
class AnswerController {

    @Transactional
    def save(Answer answer) {

        if (answer.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond answer.errors, view: 'error'
            return
        }

        answer.save flush: true

        if (answer.question.id < Question.count)
            redirect(controller: "student", action: "answer", id: answer.question.id + 1)
        else
            render view:"/index"
    }


}
