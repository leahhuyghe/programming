=begin


Rails Review Day 8

Let's build an app calld 5 Songs.

There should be 2 views. One view will have a form where users can input their favourite songs, and the main view will have an index of the five most recently input songs.

Let's start by creating a new rails app without tests and with a PostgreSQL database.

## Generate a Song model
Let's begin by generating appropriate attributes

```
bin/rails generate model bin/rails generate model song:string title:string artist:string  album:string youtube_link:string
```
=end
