package io.example.mybatis.model

import java.io.Serializable

class Book : Serializable {

    var id: Long = 0
    lateinit var title: String


    override fun toString(): String {
        return "{id = $id, title = $title}"
    }

    companion object {
        private const val serialVersionUID = 1L
    }
}

