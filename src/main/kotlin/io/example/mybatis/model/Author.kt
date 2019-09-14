package io.example.mybatis.model

import java.io.Serializable

class Author : Serializable {

    var id: Long = 0
    lateinit var firstName: String
    lateinit var lastName: String
    var books: MutableList<Book> = mutableListOf()
    var users: MutableList<User> = mutableListOf()


    override fun toString(): String {
        return "\n{ id = $id, firstName = $firstName, lastName = $lastName,\nbooks = $books,\nusers = $users\n}"
    }

    companion object {
        private const val serialVersionUID = 1L
    }
}