


Rails Review Day 8

Let's build an app calld 5 Songs.

There should be 2 views. One view will have a form where users can input their favourite songs, and the main view will have an index of the five most recently input songs.

Let's start by creating a new rails app without tests and with a PostgreSQL database.

## Generate a Song model
Let's begin by generating appropriate attributes

```
bin/rails generate model bin/rails generate model song:string title:string artist:string  album:string youtube_link:string

```


Let's also add the gem Hirb to our Gemfile

```ruby

#...
group :development do
  gem 'hirb'
end

#...
```
Now we are able to hop into our Rails console and have some fun. The [Hirb gem] ..

Run a `bundle install` to make sure the Hirb gem is available. Then hop into `rails console` and create some objects (songs).

```bundle install

rails console

#Add a song to the database in one step
Song.create(title: "Song Title", album: "Song Album", artist: "Song Artist", youtube_link: "Song YouTube Link")

#Instantiate a song variable and add attributes step by step... then save it to the database.

song = Song.new
song.title = "Song Title"
song.album = "Song Album"
song.artist = "Song Artist"
song.youtube_link = "Song YouTube Link"



add some gems to gemfile.


```
