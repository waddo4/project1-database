User.destroy_all
u1 = User.create :email => 'jonesy@ga.co', :password => 'chicken', :premium => true, :admin => true
u2 = User.create :email => 'sicklad@ga.co', :password => 'chicken', :premium => true
u3 = User.create :email => 'craigsy@ga.co', :password => 'chicken'

puts "#{ User.count } users"

Artist.destroy_all
a1 = Artist.create :name => 'Queens of the Stone Age', :start => '1996-01-01', :end => '2023-10-10', :members => 'Josh Homme, Troy Van Leeuwen, Dean Fertita, Michael Shuman, Jon Theodore', :country => 'California, United States', :image => 'https://upload.wikimedia.org/wikipedia/commons/9/9d/Queens_of_the_Stone_Age_-_SSE_Arena_Wembley_-_Saturday_18th_November_2017_QOTSAWembley181117-29_%2824730972488%29.jpg', :info => 'https://www.qotsa.com/'

a2 = Artist.create :name => 'Radiohead', :start => '1985-01-01', :end => '2023-10-10', :members => "Thom Yorke, Jonny Greenwood, Colin Greenwood, Ed O'Brien, Philip Selway", :country => 'Oxfordshire, England', :image => 'https://readdork.com/wp-content/uploads/2020/11/Radiohead-74.jpg', :info => 'https://www.radiohead.com/library/'

a3 = Artist.create :name => 'Kavari', :start => '2019-01-01', :end => '2023-10-10', :members => "Cameron Pickthall (She/Her)", :country => 'Glascow, Scotland', :image => 'https://iklectikartlab.com/wp-content/uploads/2022/04/1_KAVARI-Eve-Gleisha-scaled.jpg', :info => 'https://kavarimusic.bandcamp.com/'

a4 = Artist.create :name => 'Red Hot Chili Peppers', :start => '1983-01-01', :end => '2023-10-10', :members => "Anthony Kiedis, Flea, Chad Smith, John Frusciante", :country => 'California, United States', :image => 'https://www.billboard.com/wp-content/uploads/stylus/1158009-REdHotChiliPeppers2011-617.jpg?w=617', :info => 'https://redhotchilipeppers.com/'

a5 = Artist.create :name => 'Wu-Tang Clan', :start => '1992-01-01', :end => '2023-10-10', :members => "RZA, GZA, Inspectah Deck, U-God, Ghostface Killah, Method Man, Raekwon, Masta Killa, Cappadonna, Ol' Dirty Bastard", :country => 'New York City, United States', :image => 'https://theblueandwhite.files.wordpress.com/2021/04/wutangclan-feat.jpeg', :info => 'https://www.highsnobiety.com/tag/wu-tang-clan/'

a6 = Artist.create :name => 'Aphex Twin', :start => '1985-01-01', :end => '2023-10-10', :members => "Richard James", :country => 'California, United States', :image => 'https://live-production.wcms.abc-cdn.net.au/74166a2fbf7a935cea132dd6fe30661a?impolicy=wcms_crop_resize&cropH=1376&cropW=2064&xPos=168&yPos=0&width=862&height=575', :info => 'https://aphextwin.bandcamp.com/'

a7 = Artist.create :name => 'The Peep Tempel', :start => '2008-01-01', :end => '2017-10-10', :members => "Steven Carter, Blake Scott, Stewart Rayner", :country => 'Melbourne, Australia', :image => 'https://musicfeeds.com.au/assets/uploads/The-Peep-Tempel-PR-Photo-primary-brick-wall-landscape-4-x-6-credit-Zo-Damage.jpg', :info => 'https://thepeeptempel.bandcamp.com/'

a8 = Artist.create :name => 'Violent Soho', :start => '2004-01-01', :end => '2022-10-10', :members => "Luke, Boerdam, Luke Henry, James Tidswell, Michael Richards", :country => 'Brisbane, Australia', :image => 'https://d1kt6vnx6cjjqh.cloudfront.net/wp-content/uploads/violentsoho.png', :info => 'https://violentsoho.com/'

puts "#{ Artist.count } artists"