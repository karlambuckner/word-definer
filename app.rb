require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('pry')

get('/') do
  @word = Word.all
  erb(:input)
end

get('/output/:word') do
  @word = Word.find(params[:word])
  erb(:output)
end

post('/output/:word') do
  @word = Word.find(params[:word])
  @word.add_def({:definitions=>params["definition"]})
  erb(:output)
end

get('/end/:word') do
  @word = Word.find(params[:word])
  erb(:end)
end

post('/output') do
  item = Word.new({:word=>params["word"]})
  item.save()
  @word = Word.all
  erb(:input)
end
