require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/replace')
require('pry')

get('/') do
  erb(:index)
end

get('/result') do
  @replace_word = params.fetch('replace_word')
  @new_word = params.fetch('new_word')
  @result = params.fetch('words').find_and_replace(@replace_word, @new_word)
  erb(:result)
end
