# README

This is an Rails Application, rBot rbotovich. This is a template for my personal site.

## By [rBot](http://rbotovich.herokuapp.com.br/).

## Ruby on Rails Info

* Ruby 2.1.2
* Rails 4.1.4

## Development
* Front-End framwork Twitter-Bootstrap (Sass)
* Template engine: HAML (helpful gem/script: [html2haml](https://github.com/haml/html2haml))
 ```console
 find . -name \*.erb -print | sed 'p;s/.erb$/.haml/' | xargs -n2 html2haml
 ```
* Testing Framwork: Rspec/Cucumber
* Form builder: simple_form
* Users: [Devise](https://github.com/plataformatec/devise)

## Problems I've ran into & Solutions
* When RVM lists a ruby version, but Rails thinks you're using a different version: [(has to do with Rails 4 'spring' gem)](http://stackoverflow.com/questions/19342044/in-ruby-your-ruby-version-is-1-9-3-but-your-gemfile-specified-2-0-0), answer #5 worked for me
* ...


