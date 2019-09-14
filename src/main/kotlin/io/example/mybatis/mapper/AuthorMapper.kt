package io.example.mybatis.mapper

import io.example.mybatis.model.Author
import org.apache.ibatis.annotations.*


@Mapper
interface AuthorMapper {

    @Select("Select * From author")
    fun getAllAuthors(): List<Author>

    fun selectAuthorBestPractice(): List<Author>

}