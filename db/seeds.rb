User.destroy_all
User.create :email => 'jonesy@ga.co', :password => 'chicken', :premium => true, :admin => true
User.create :email => 'sicklad@ga.co', :password => 'chicken', :premium => true
User.create :email => 'craigsy@ga.co', :password => 'chicken'
puts "#{ User.count } users"

Artist.destroy_all
Artist.create :name => 'Queens of the Stone Age', :start => '1996-01-01', :end => '2023-10-10', :members => 'Josh Homme, Troy Van Leeuwen, Dean Fertita, Michael Shuman, Jon Theodore', :country => 'California, United States', :image => 'https://upload.wikimedia.org/wikipedia/commons/9/9d/Queens_of_the_Stone_Age_-_SSE_Arena_Wembley_-_Saturday_18th_November_2017_QOTSAWembley181117-29_%2824730972488%29.jpg', :info => 'https://www.qotsa.com/'
Artist.create :name => 'Radiohead', :start => '1985-01-01', :end => '2023-10-10', :members => "Thom Yorke, Jonny Greenwood, Colin Greenwood, Ed O'Brien, Philip Selway", :country => 'Oxfordshire, England', :image => 'https://readdork.com/wp-content/uploads/2020/11/Radiohead-74.jpg', :info => 'https://www.radiohead.com/library/'
Artist.create :name => 'Kavari', :start => '2019-01-01', :end => '2023-10-10', :members => "Cameron Pickthall (She/Her)", :country => 'Glascow, Scotland', :image => 'https://iklectikartlab.com/wp-content/uploads/2022/04/1_KAVARI-Eve-Gleisha-scaled.jpg', :info => 'https://kavarimusic.bandcamp.com/'
Artist.create :name => 'Red Hot Chili Peppers', :start => '1983-01-01', :end => '2023-10-10', :members => "Anthony Kiedis, Flea, Chad Smith, John Frusciante", :country => 'California, United States', :image => 'https://www.billboard.com/wp-content/uploads/stylus/1158009-REdHotChiliPeppers2011-617.jpg?w=617', :info => 'https://redhotchilipeppers.com/'
Artist.create :name => 'Wu-Tang Clan', :start => '1992-01-01', :end => '2023-10-10', :members => "RZA, GZA, Inspectah Deck, U-God, Ghostface Killah, Method Man, Raekwon, Masta Killa, Cappadonna, Ol' Dirty Bastard", :country => 'New York City, United States', :image => 'https://theblueandwhite.files.wordpress.com/2021/04/wutangclan-feat.jpeg', :info => 'https://www.highsnobiety.com/tag/wu-tang-clan/'
Artist.create :name => 'Aphex Twin', :start => '1985-01-01', :end => '2023-10-10', :members => "Richard James", :country => 'California, United States', :image => 'https://live-production.wcms.abc-cdn.net.au/74166a2fbf7a935cea132dd6fe30661a?impolicy=wcms_crop_resize&cropH=1376&cropW=2064&xPos=168&yPos=0&width=862&height=575', :info => 'https://aphextwin.bandcamp.com/'
Artist.create :name => 'The Peep Tempel', :start => '2008-01-01', :end => '2017-10-10', :members => "Steven Carter, Blake Scott, Stewart Rayner", :country => 'Melbourne, Australia', :image => 'https://musicfeeds.com.au/assets/uploads/The-Peep-Tempel-PR-Photo-primary-brick-wall-landscape-4-x-6-credit-Zo-Damage.jpg', :info => 'https://thepeeptempel.bandcamp.com/'
Artist.create :name => 'Violent Soho', :start => '2004-01-01', :end => '2022-10-10', :members => "Luke, Boerdam, Luke Henry, James Tidswell, Michael Richards", :country => 'Brisbane, Australia', :image => 'https://d1kt6vnx6cjjqh.cloudfront.net/wp-content/uploads/violentsoho.png', :info => 'https://violentsoho.com/'
puts "#{ Artist.count } artists"

Album.destroy_all
Album.create :title => 'Songs for the Deaf', :date => '2002-08-27', :length => '1:00:53', :image => 'https://upload.wikimedia.org/wikipedia/en/thumb/0/01/Queens_of_the_Stone_Age_-_Songs_for_the_Deaf.png/220px-Queens_of_the_Stone_Age_-_Songs_for_the_Deaf.png', :tracks => 14
Album.create :title => 'OK Computer', :date => '1997-05-21', :length => '53:21', :image => 'https://upload.wikimedia.org/wikipedia/en/b/ba/Radioheadokcomputer.png', :tracks => 12 
Album.create :title => 'Suture [EP]', :date => '2022-08-19', :length => '14:51', :image => 'https://f4.bcbits.com/img/a0955066811_65', :tracks => 4 
Album.create :title => "Mother's Milk", :date => '1989-08-16', :length => '45:52', :image => 'https://upload.wikimedia.org/wikipedia/en/9/98/Mother%27Albumcover.jpg', :tracks => 13 
Album.create :title => 'Enter the Wu-Tang (36 Chambers)', :date => '1993-11-9', :length => '58:26', :image => 'https://cdn.shopify.com/s/files/1/0024/9803/5810/products/649478-Product-0-I.jpg?v=1572320753', :tracks => 13 
Album.create :title => 'Drukqs', :date => '2001-10-22', :length => '1:40:37', :image => 'https://upload.wikimedia.org/wikipedia/en/f/f0/Drukqs_%28Front_Cover%29.png', :tracks => 30 
Album.create :title => 'Tales', :date => '2014-10-02', :length => '38:13', :image => 'https://supercorrupter.files.wordpress.com/2016/07/peeptempels1.jpg?w=640', :tracks => 11 
Album.create :title => 'Waco', :date => '2016-03-18', :length => '44:48', :image => 'https://i.scdn.co/image/ab67616d0000b273b64131f711e2574519edde12', :tracks => 11
puts "#{ Album.count } albums"

Song.destroy_all
Song.create :title => 'Go with the Flow', :length => '3:07', :video => 'https://youtu.be/DcHKOC64KnE'
Song.create :title => 'Exit Music (For a Film)', :length => ' 4:24', :video => 'https://youtu.be/Bf01riuiJWA'
Song.create :title => 'Attachment Style', :length => '4;21', :video => 'https://youtu.be/jjQOn8csYg0'
Song.create :title => 'Higher Ground', :length => '3:22', :video => 'https://youtu.be/qml8OHFc9Js'
Song.create :title => 'Method Man', :length => '5:50', :video => 'https://youtu.be/PEnwXYJcSZc'
Song.create :title => "Mt Saint Michel + Saint Michael's Mount", :length => '8:10', :video => 'https://youtu.be/DGrFH2Aj71U'
Song.create :title => 'Carol', :length => '3:56', :video => 'https://youtu.be/E5q-dPAHif0'
Song.create :title => 'Like Soda', :length => '4:02', :video => 'https://youtu.be/hRWi-SvzviY'

puts "#{ Song.count } songs"

Genre.destroy_all
Genre.create :name => 'Alternative Rock'
Genre.create :name => 'Hard Dance'
Genre.create :name => 'Stoner Rock'
Genre.create :name => 'Hip Hop'
Genre.create :name => 'Funk Rock'
Genre.create :name => 'Techo'
Genre.create :name => 'Electronic'
Genre.create :name => 'Experimental'
Genre.create :name => 'Rock'
Genre.create :name => 'Indie Rock'
Genre.create :name => 'Heavy Metal'
Genre.create :name => 'Classical'
Genre.create :name => 'Jazz'
Genre.create :name => 'Ambient'

puts "#{ Genre.count } genres " 