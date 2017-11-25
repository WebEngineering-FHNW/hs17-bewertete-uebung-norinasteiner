package ch.fhnw.socrative

class Question {

    //String type;

    static hasMany = [answers:Answer]

    String text


    static constraints = {
        answers(nullable: true)
    }
}
