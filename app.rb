require 'sinatra'
require 'mysql2'

get '/' do
  client = Mysql2::Client.new(host: 'localhost', username: 'root', database: 'chemicals', encoding: 'utf8')
  @records = client.query("SELECT * FROM chemicals ORDER BY id DESC")
  erb :chemicals
end

get '/:id' do
  client = Mysql2::Client.new(host: 'localhost', username: 'root', database: 'chemicals', encoding: 'utf8')
  @record = client.query("SELECT * FROM chemicals WHERE id = #{params[:id]}")
  @record2 = client.query("select *, count(*) as number_of_prices from original where original_id = #{params[:id]}")
  @record3 = client.query("select * from original where original_id = #{params[:id]}")
  erb :chemical
end

# post '/' do 
#  erb :chemicals
#end 