package io.example.mybatis

import io.example.mybatis.mapper.AuthorMapper
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.CommandLineRunner
import org.springframework.boot.SpringApplication
import org.springframework.context.annotation.Bean


@SpringBootApplication
class SpringBootMybatisApplication(private val authorMapper: AuthorMapper) {

    @Bean
    internal fun sampleCommandLineRunner() = CommandLineRunner {
        println(this.authorMapper.selectAuthorBestPractice())
    }

    companion object {

        @JvmStatic
        fun main(args: Array<String>) {
            SpringApplication.run(SpringBootMybatisApplication::class.java, *args)
        }
    }

}