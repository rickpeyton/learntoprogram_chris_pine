tx0024 = {
	'email' => 'sallywvick@yahoo.com',
	'company' => 'A Perfect Pair by Julie and Sally',
	'reply' => 'aperfectpairbyjulieandsally@et.printswell.com',
	'logo' => 'TX0024.gif',
	'url' => 'http://aperfectpair.printswell.com/',
	'master_email' => 'juliegoudge@gmail.com'
}
mt0002 = {
	'email' => 'tbishop@bishopspharmacy.com',
	'company' => 'Noteworthy Paper & Press',
	'reply' => 'noteworthypaperandpress@et.printswell.com',
	'logo' => 'MT0002.gif',
	'url' => 'http://noteworthystore.printswell.com/',
	'master_email' => 'taylor@noteworthystore.com'
}
al0001 = {
	'email' => 'tbishop@bishopspharmacy.com',
	'company' => 'Noteworthy Paper & Press',
	'reply' => 'noteworthypaperandpress@et.printswell.com',
	'logo' => 'MT0002.gif',
	'url' => 'http://noteworthystore.printswell.com/',
	'master_email' => 'taylor@noteworthystore.com'
}
puts 'What dealer would you like to lookup?'
dealer = gets.chomp.downcase
puts 'What attribute woudl you like to lookup?'
att = gets.chomp.downcase
puts mt0002['logo']