require "mysql2"

client = Mysql2::Client.new(:host =>"localhost", 
                        :username => "root",
                        :database => "class_db")

def clean_table(client)
	x = client.query("SELECT * FROM people_caio").to_a
  puts x
end

clean_table(client)

client.close