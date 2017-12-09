package mvc

import ch.fhnw.socrative.Question
import grails.util.Environment

class BootStrap {

    def init = { servletContext ->
        if (Environment.current == Environment.PRODUCTION) {
            return
        }

        Room windowRoom = save(new Room(name: "1.333", max: 32))
        Room cornerRoom = save(new Room(name: "1.331", max: 42))

        Person dierk = save(new Person(firstName: "Dierk", lastName: "König", email:"dierk.koenig@fhnw.ch"))

        Date today = new Date().clearTime();
        save(new Booking(booker: dierk, room: windowRoom, date: today - 1, slot: Booking.AM))
        save(new Booking(booker: dierk, room: windowRoom, date: today,     slot: Booking.AM))
        save(new Booking(booker: dierk, room: windowRoom, date: today + 1, slot: Booking.AM))
        save(new Booking(booker: dierk, room: cornerRoom, date: today ,    slot: Booking.AM))

        //TODO: löschen für abgabe
        save(new Question(text: "How are you?"))
        save(new Question(text: "How are you two?"))

    }

    static save(domainObject) {
        domainObject.save(failOnError: true)
    }

    def destroy = {
    }
}
