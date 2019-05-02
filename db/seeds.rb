amy_schumer = Comedian.create(name: "Amy Schumer", age: 37, city: "Upper East Side", image: "https://images.bwwstatic.com/headshots/402388sm.jpg")
ali_wong = Comedian.create(name: "Ali Wong", age: 36, city: "San Francisco", image: "http://pittsburghurbanmedia.com/clientfiles/image/Ali%20Wong%20photo.png")
ellen_degeneres = Comedian.create(name: "Ellen Degeneres", age: 61, city: "Metairie", image: "https://res.cloudinary.com/allamerican/image/fetch/t_face_s270/https://speakerdata2.s3.amazonaws.com/photo/image/884210/ellen.jpg")
hannah_gadsby = Comedian.create(name: "Hannah Gadsby", age: 41, city: "Smithton", image: "https://media.gettyimages.com/photos/hannah-gadsby-arrives-at-the-8th-aacta-international-awards-at-los-picture-id1089984136")
tig_notaro = Comedian.create(name: "Tig Notaro", age: 47, city: "Jackson", image: "http://cdn.teamcococdn.com/image/1000x1000,scale:max/tig-thumb-5aea272aaeda2.jpg")
russell_peters = Comedian.create(name: "Russell Peters", age: 48, city: "Toronto", image: "https://s3-ca-central-1.amazonaws.com/604now.com/wp-content/uploads/2015/10/10002332/russel1.png")
jerry_seinfeld = Comedian.create(name: "Jerry Seinfeld", age: 64, city: "Brooklyn", image: "https://photos.smugmug.com/KCP-201718/i-CV7B6TH/0/bbd1223b/L/Jerry%20Seinfeld%20headshot-L.jpg")
john_mulaney = Comedian.create(name: "John Mulaeny", age: 36, city: "Chicago", image: "https://media.gettyimages.com/photos/john-mulaney-attends-the-2018-vanity-fair-oscar-party-hosted-by-at-picture-id927645782")
trevor_noah = Comedian.create(name: "Trevor Noah", age: 35, city: "Johannesburg", image: "http://www.trbimg.com/img-59b14ae4/turbine/hc-trevor-noah-foxwoods-20170913")
craig_ferguson = Comedian.create(name: "Craig Ferguson", age: 56, city: "Springburn", image: "https://res.cloudinary.com/allamerican/image/fetch/t_face_s270/https://speakerdata2.s3.amazonaws.com/photo/image/758083/craig_ferguson.jpg")
hasan_minhaj = Comedian.create(name: "Hasan Minhaj", age: 33, city: "Davis", image: "https://masterchatmag.files.wordpress.com/2016/02/hasan-minhaj-portrait-session-1733x1254.jpeg?w=1024")
anjelah_johnson = Comedian.create(name: "Anjelah Johnson", age: 36, city: "San Jose", image: "https://pmcdeadline2.files.wordpress.com/2018/10/anjelahjohnson1.png?w=450&h=253&crop=1")

amy_schumer.specials.create(name: "Amy Schumer: The Leather Special", run_time: 57)
amy_schumer.specials.create(name: "Amy Schumer: Live at the Apollo", run_time: 61)

ali_wong.specials.create(name: "Ali Wong: Hard Knock Wife", run_time: 64)
ali_wong.specials.create(name: "Ali Wong: Baby Cobra", run_time: 60)

ellen_degeneres.specials.create(name: "Relatable", run_time: 68)

hannah_gadsby.specials.create(name: "Hannah Gadsby: Nanette", run_time: 69)

tig_notaro.specials.create(name: "Tig Notaro: Boyish Girl Interrupted", run_time: 55)
tig_notaro.specials.create(name: "Tig Notaro: Happy To Be Here", run_time: 58)

russell_peters.specials.create(name: "Russell Peters: Outsourced", run_time: 72)
russell_peters.specials.create(name: "Russell Peters: Red, White and Brown", run_time: 78)
russell_peters.specials.create(name: "Russell Peters: The Green Card Tour: Live from the O2 Arena", run_time: 58)
russell_peters.specials.create(name: "Russell Peters: Notorious", run_time: 71)

jerry_seinfeld.specials.create(name: "Jerry Seinfeld: Confidential", run_time: 55)
jerry_seinfeld.specials.create(name: "I'm Telling You for the Last Time", run_time: 75)
jerry_seinfeld.specials.create(name: "Jerry Before Seinfeld", run_time: 62)

john_mulaney.specials.create(name: "John Mulvaney: The Comeback Kid", run_time: 62)
john_mulaney.specials.create(name: "John Mulvaney: New in Town", run_time: 60)

trevor_noah.specials.create(name: "Trevor Noah: Son of Patricia", run_time: 63)
trevor_noah.specials.create(name: "Trevor Noah: Afraid of the Dark", run_time: 67)

craig_ferguson.specials.create(name: "Craig Ferguson: A Wee Bit O' Revolution", run_time: 80)
craig_ferguson.specials.create(name: "Craig Ferguson: Does This Need to Be Said?", run_time: 66)

hasan_minhaj.specials.create(name: "Hassan Minhaj: Homecoming King", run_time: 73)

anjelah_johnson.specials.create(name: "Anjelah Johnson-Reyes: Not Fancy", run_time: 90)
