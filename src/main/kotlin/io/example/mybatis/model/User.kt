package io.example.mybatis.model

import java.io.Serializable

class User : Serializable {

    var id: Long = 0
    lateinit var firstName: String
    lateinit var lastName: String


    override fun toString(): String {
        return "{id = $id, fullName = \"$firstName $lastName\"}"
    }

    companion object {
        private const val serialVersionUID = 1L
    }
}