package ch.fhnw.socrative

class Answer {

    String text

    static belongsTo = [question:Question]

    static constraints = {
        text(nullable: true)
        question(nullable: true)
    }


}
