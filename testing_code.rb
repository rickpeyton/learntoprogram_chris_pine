# dealers = {
# 	'FL0511' => {
# 		:company => 'An Invitation to Grace',
# 		:returnmail => 'aninvitationtograce@et.printswell.com',
# 		:logo => 'FL0511.gif',
# 		:web => 'http://invitationtograce.printswell.com/',
# 		:email => 'aninvitationtograce@gmail.com'
# 	},
# 	'TX0024' => {
# 		:company => 'A Perfect Pair by Julie and Sally',
# 		:returnmail => 'aperfectpairbyjulieandsally@et.printswell.com',
# 		:logo => 'TX0024.gif',
# 		:web => 'http://aperfectpair.printswell.com/',
# 		:email => 'juliegoudge@gmail.com'
# 	}
# }

email_addresses = ['wingcindy7@gmail.com','ttobin5@gmail.com','tgately@sachristianschools.org','tellkamps@aol.com','susansgaines@gmail.com','sreynosa@jw.com','spchrist@swbell.net','smb2178@gmail.com','schmidtfamily8@gmail.com','sasser_laura@yahoo.com','rhudnall@satx.rr.com','raypam22@gmail.com','prymer@mac.com','paulamcgee@satx.rr.com','patti@keith-family.net','ovtt417@hotmail.com','nmyers@sachristianschools.org','neesenees@aol.com','nancy.heppes@verizon.net','my3sons@satx.rr.com','mmjudson@sbcgloball.net','mmichelson@hixonprop.com','MelissaKGaines@gmail.com','meg.bekavac@gmail.com','mboutlaw@aol.com','margomccaleb@yahoo.com','lwest51122@aol.com','lori.willis@sbcglobal.net','leanne@trinitystaffing.com','leah1985@satx.rr.com','ladsa@aol.com','kimgauntt@icloud.com','kfleming3@satx.rr.com','kelleyfrost@att.net','kathydrago@hotmail.com','kakigaines@gmail.com','jkclement@sbcglobal.net','jennikgodwin@sbcglobal.net','jcdulske@aol.com','jasacheney@satx.rr.com','heartbeams@sbcglobal.net','hannah.veldt@my.wheaton.edu','gnhooton@sbcglobal.net','ginnyvan8@yahoo.com','etcat09@gmail.com','esawhill@aol.com','emcdonough@phyllisbrowning.com','dpotter@trinitybaptist.org','dkkjj@sbcglobal.net','denise@apflorist.com','cynthiascofield@gmail.com','cthychesser@aol.com','creyna@satx.rr.com','christina@isenhowers.com','cheriestsa@aol.com','cgb@aol.com','cferris0602@yahoo.com','cathyoksmith@hotmail.com','carol.fenley@gmail.com','brightmk@kingwoodcable.net','blonkvist@sbcglobal.net','bjc06a@acu.edu','Beverly.Hernandez@energytransfer.com','antichef@hotmail.com','abarrow@phyllisbrowning.com','lauriedtruax@aim.com','juliegoudge@gmail.com','youngquist.holly@gmail.com','twcbevo@att.net','tkelly2@satx.rr.com','terrymgeorge@gmail.com','suzthom54@yahoo.com','susanhern@gmail.com','stacey.drzymala@energytransfer.com','spencer_family@sbcglobal.net','smackyoh63@sbcglobal.net','sbrouillard@broadwaybank.com','sbparrott_99@yahoo.com','rsugg@sbcglobal.net','rharris393@satx.rr.com','rayjessee@aol.com','pauline.patrick@frx.com','patrice.hanlon@gmail.com','pampawelek@gmail.com','nschwarz@sachristianschools.org','nhollimon@hollimonoil.com','nancybthorne@gmail.com','my3g1b@yahoo.com','mmitchell09@gmail.com','meredithrgroves@gmail.com','melinda.McCracken@tylertech.com','mediasophisticate@yahoo.com','marley.wing@gmail.com','lyonfive@msn.com','lrh157@aol.com','leslanking@gmail.com','leahannvick@yahoo.com','lboliver@satx.rr.com','kmclemore@sachristianschools.org','kimdcsmith@yahoo.com','kelseyann2212@gmail.com','kekatie@yahoo.com','kathy.timberlake@att.net','julieievans@aol.com','jim@bkads.com','jeanne@jungoil.com','jbaxtell53098@yahoo.com','hausser83@sbcglobal.net','gragg.libby@gmail.com','goudge6@sbcglobal.net','ggould@satx.rr.com','faulknerh87@gmail.com','emilyhendry@gmail.com','elgerlinger@aol.com','dweyand@satx.rr.com','dmalavolta@gvtc.com','davidkarenb@sbcglobal.net','danagrubb@att.net','crfincke@hotmail.com','copper1010@att.net','cherisnyder@austin.rr.com','charlotte@gwmitchell.com','ccarruth@satx.rr.com','catfam6@swbell.net','carol@gracefellowshipsa.org','bonnie.bassham@yahoo.com','bofurman2@aol.com','blairbperry@gmail.com','beyerfamily@satx.rr.com','annsbingham@gmail.com','all4aggies@sbcglobal.net','7blessings@dishmail.net','carolpbaugh@gmail.com']

require 'yaml'
# Define yaml save and load methods...
def yaml_save object, filename
	File.open filename, 'w' do |f|
		f.write(object.to_yaml)
	end
end
def yaml_load filename
	yaml_string = File.read filename

	YAML::load yaml_string
end

# filename = 'dealers_yaml.txt'
filename = 'email_addresses_yaml.txt'

# Save it
yaml_save email_addresses, filename

# Load it
read_array = yaml_load filename

puts(read_array == email_addresses)