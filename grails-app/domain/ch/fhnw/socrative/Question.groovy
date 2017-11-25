package ch.fhnw.socrative

class Question {

    //String type;

    static hasMany = [answers:Answer]

    String text
    Boolean isTextQuestion = true


    static constraints = {
        answers(nullable: true)
    }





}
