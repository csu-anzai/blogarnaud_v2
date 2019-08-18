# ------- destroy all existing entries from the database -------
puts "DESTROYING ALL EXISTING ENTRIES FROM DB"

puts "---destroying all existing articles"
Article.destroy_all

puts "---destroying all existing tags"
Tag.destroy_all

puts "---destroying all exising readers"
Reader.destroy_all

# ------- seed db with all tags -------
puts "SEEDING DB WITH ALL TAGS"

puts "---creating tag for (1/12) gender equality"
equality = Tag.create(name: "Egalité", icon: "icon_impact_equality.svg")

puts "---creating tag for (2/12) education & culture"
education = Tag.create(name: "Education & Culture", icon: "icon_impact_education.svg")

puts "---creating tag for (3/12) energitical transition"
energy = Tag.create(name: "Transition Energétique", icon: "icon_impact_energy.svg")

puts "---creating tag for (4/12) in-home servicing"
home_servicing = Tag.create(name: "Services à la personne", icon: "icon_impact_home-servicing.svg")

puts "---creating tag for (5/12) responsible housing"
housing = Tag.create(name: "Habitat responsable", icon: "icon_impact_housing.svg")

puts "---creating tag for (6/12) health & well-being"
health = Tag.create(name: "Santé & Bien-être", icon: "icon_impact_health.svg")

puts "---creating tag for (7/12) short channels"
short_channels = Tag.create(name: "Circuits courts", icon: "icon_impact_short-channels.svg")

puts "---creating tag for (8/12) aging"
aging = Tag.create(name: "Vieillissement", icon: "icon_impact_aging.svg")

puts "---creating tag for (9/12) circular economy"
circular_economy = Tag.create(name: "Economie circulaire", icon: "icon_impact_circular-economy.svg")

puts "---creating tag for (10/12) ecology"
ecology = Tag.create(name: "Ecologie", icon: "icon_impact_ecology.svg")

puts "---creating tag for (11/12) animal care"
animal_care = Tag.create(name: "Soins aux animaux", icon: "icon_impact_animal-care.svg")

puts "---creating tag for (12/12) responsible agriculture"
agriculture = Tag.create(name: "Agriculture responsable", icon: "icon_impact_agriculture.svg")

puts "---creating tag for (+1/+1) leadership"
leadership = Tag.create(name: "Leadership", icon: "icon_theme_leadership.svg")

# ------- defining a lorem ipsum to seed test articles content -------
puts "DEFINING A LOREM IPSUM"

puts "---creating a lorem impum for test articles content"

lorem_ipsum = "Apud has gentes, quarum exordiens initium ab Assyriis ad Nili cataractas porrigitur et confinia Blemmyarum, omnes pari sorte sunt
bellatores seminudi coloratis sagulis pube tenus amicti, equorum adiumento pernicium graciliumque camelorum per diversa se raptantes, in tranquillis
vel turbidis rebus: nec eorum quisquam aliquando stivam adprehendit vel arborem colit aut arva subigendo quaeritat victum, sed errant semper per spatia
longe lateque distenta sine lare sine sedibus fixis aut legibus: nec idem perferunt diutius caelum aut tractus unius soli illis umquam placet.

Et quoniam mirari posse quosdam peregrinos existimo haec lecturos forsitan, si contigerit, quamobrem cum oratio ad ea monstranda deflexerit quae Romae
gererentur, nihil praeter seditiones narratur et tabernas et vilitates harum similis alias, summatim causas perstringam nusquam a veritate sponte
propria digressurus.

Itaque tum Scaevola cum in eam ipsam mentionem incidisset, exposuit nobis sermonem Laeli de amicitia habitum ab illo secum et cum altero genero,
C. Fannio Marci filio, paucis diebus post mortem Africani. Eius disputationis sententias memoriae mandavi, quas hoc libro exposui arbitratu meo; quasi
enim ipsos induxi loquentes, ne 'inquam' et 'inquit' saepius interponeretur, atque ut tamquam a praesentibus coram haberi sermo videretur.

Illud autem non dubitatur quod cum esset aliquando virtutum omnium domicilium Roma, ingenuos advenas plerique nobilium, ut Homerici bacarum suavitate
Lotophagi, humanitatis multiformibus officiis retentabant.

Ex his quidam aeternitati se commendari posse per statuas aestimantes eas ardenter adfectant quasi plus praemii de figmentis aereis sensu carentibus
adepturi, quam ex conscientia honeste recteque factorum, easque auro curant inbracteari, quod Acilio Glabrioni delatum est primo, cum consiliis
armisque regem superasset Antiochum. quam autem sit pulchrum exigua haec spernentem et minima ad ascensus verae gloriae tendere longos et arduos, ut
memorat vates Ascraeus, Censorius Cato monstravit. qui interrogatus quam ob rem inter multos... statuam non haberet malo inquit ambigere bonos quam ob
rem id non meruerim, quam quod est gravius cur inpetraverim mussitare."

# ------- seed db with articles -------
puts "SEEDING DB WITH SOME TEST ARTICLES"

puts "---creating article (1/16) on water"
article_01 = Article.create(title: "L'eau blablablablablablablabla blablablablablablablabla",
                            date: "01/08/2019",
                            remote_photo_url: "https://res.cloudinary.com/dytp1k7cw/image/upload/v1565278932/dvfo4lqyjh5f0yppdeh1.jpg",
                            content_fr: lorem_ipsum,
                            content_en: lorem_ipsum,
                            tag_id: ecology.id)

puts "---creating article (2/16) on animal care"
article_02 = Article.create(title: "Les animaux blablablablablablablabla blablablablablablablabla",
                            date: "13/08/2019",
                            remote_photo_url: "https://res.cloudinary.com/dytp1k7cw/image/upload/v1565278871/rmb3qlrnfyqg6np1ssis.jpg",
                            content_fr: lorem_ipsum,
                            content_en: lorem_ipsum,
                            tag_id: animal_care.id)

puts "---creating article (3/16) on education"
article_03 = Article.create(title: "L'éducation blablablablablablablabla blablablablablablablabla",
                            date: "01/07/2018",
                            remote_photo_url: "https://res.cloudinary.com/dytp1k7cw/image/upload/v1565278796/ixjmcb8pfufylr5sau8s.jpg",
                            content_fr: lorem_ipsum,
                            content_en: lorem_ipsum,
                            tag_id: education.id)

puts "---creating article (4/16) on animal care"
article_04 = Article.create(title: "Les vaches blablablablablablablabla blablablablablablablabla",
                            date: "14/06/2019",
                            remote_photo_url: "https://res.cloudinary.com/dytp1k7cw/image/upload/v1565278713/my3f3sqc7e26bh82rlsh.jpg",
                            content_fr: lorem_ipsum,
                            content_en: lorem_ipsum,
                            tag_id: animal_care.id)

puts "---creating article (5/16) on culture"
article_05 = Article.create(title: "La musique blablablablablablablabla blablablablablablablabla",
                            date: "18/07/2019",
                            remote_photo_url: "https://res.cloudinary.com/dytp1k7cw/image/upload/v1565278647/dcq3yvvuhbyfboh2nked.jpg",
                            content_fr: lorem_ipsum,
                            content_en: lorem_ipsum,
                            tag_id: education.id)

puts "---creating article (6/16) on equality"
article_06 = Article.create(title: "L'égalité blablablablablablablabla blablablablablablablabla",
                            date: "12/02/2019",
                            remote_photo_url: "https://res.cloudinary.com/dytp1k7cw/image/upload/v1565278521/pjxc67lmcooupg2inaxv.jpg",
                            content_fr: lorem_ipsum,
                            content_en: lorem_ipsum,
                            tag_id: equality.id)

puts "---creating article (7/16) on agriculture"
article_07 = Article.create(title: "Notre terre nourricière est en danger d'extinction",
                            date: "18/10/2018",
                            remote_photo_url: "https://res.cloudinary.com/dytp1k7cw/image/upload/v1565278455/rbquioassuyolrgnv5zx.jpg",
                            content_fr: lorem_ipsum,
                            content_en: lorem_ipsum,
                            tag_id: agriculture.id)

puts "---creating article (8/16) on forests"
article_08 = Article.create(title: "Les forêts blablablablablablablabla blablablablablablablabla",
                            date: "08/02/2019",
                            remote_photo_url: "https://res.cloudinary.com/dytp1k7cw/image/upload/v1565278364/gj3w3r1huse1ffpt2lr1.jpg",
                            content_fr: lorem_ipsum,
                            content_en: lorem_ipsum,
                            tag_id: ecology.id)

puts "---creating article (9/16) on mindfulness"
article_09 = Article.create(title: "La pleine conscience blablablablablablablabla blablablablablablablabla",
                            date: "07/04/2019",
                            remote_photo_url: "https://res.cloudinary.com/dytp1k7cw/image/upload/v1565278292/tl9p3c3cyvzsybyv7pl6.jpg",
                            content_fr: lorem_ipsum,
                            content_en: lorem_ipsum,
                            tag_id: health.id)

puts "---creating article (10/16) on recycling"
article_10 = Article.create(title: "Le recyclage blablablablablablablabla blablablablablablablabla",
                            date: "23/10/2019",
                            remote_photo_url: "https://res.cloudinary.com/dytp1k7cw/image/upload/v1565278144/w4tgros2pfk9jaduiyiq.jpg",
                            content_fr: lorem_ipsum,
                            content_en: lorem_ipsum,
                            tag_id: circular_economy.id)

puts "---creating article (11/16) on energy"
article_11 = Article.create(title: "La transition énergétique blablablablablablablabla blablablablablablablabla",
                            date: "16/07/2019",
                            remote_photo_url: "https://res.cloudinary.com/dytp1k7cw/image/upload/v1565278071/ia2ss3vijrf4umpda1hr.jpg",
                            content_fr: lorem_ipsum,
                            content_en: lorem_ipsum,
                            tag_id: energy.id)

puts "---creating article (12/16) on aging"
article_12 = Article.create(title: "Les personnes agées blablablablablablablabla blablablablablablablabla",
                            date: "29/11/2017",
                            remote_photo_url: "https://res.cloudinary.com/dytp1k7cw/image/upload/v1565277998/naoiebztrhsiu6x5letf.jpg",
                            content_fr: lorem_ipsum,
                            content_en: lorem_ipsum,
                            tag_id: aging.id)

puts "---creating article (13/16) on agriculture"
article_13 = Article.create(title: "Le maïs blablablablablablablabla blablablablablablablabla",
                            date: "18/11/2018",
                            remote_photo_url: "https://res.cloudinary.com/dytp1k7cw/image/upload/v1565277928/yf99ttybnvq26xuuqehe.jpg",
                            content_fr: lorem_ipsum,
                            content_en: lorem_ipsum,
                            tag_id: agriculture.id)

puts "---creating article (14/16) on in-home servicing"
article_14 = Article.create(title: "Les services à la personne blablablablablablablabla blablablablablablablabla",
                            date: "05/03/2019",
                            remote_photo_url: "https://res.cloudinary.com/dytp1k7cw/image/upload/v1565277806/hufkcvzsfbtkcakl7jwr.jpg",
                            content_fr: lorem_ipsum,
                            content_en: lorem_ipsum,
                            tag_id: home_servicing.id)

puts "---creating article (15/16) on ecology"
article_15 = Article.create(title: "Les bouteilles en plastique blablablablablablablabla blablablablablablablabla",
                            date: "31/07/2019",
                            remote_photo_url: "https://res.cloudinary.com/dytp1k7cw/image/upload/v1565277717/jrjxewuhojz3oodujfuw.jpg",
                            content_fr: lorem_ipsum,
                            content_en: lorem_ipsum,
                            tag_id: ecology.id)

puts "---creating article (16/16) on short channels"
article_16 = Article.create(title: "Les circuits courts blablablablablablablabla blablablablablablablabla",
                            date: "15/01/2019",
                            remote_photo_url: "https://res.cloudinary.com/dytp1k7cw/image/upload/v1565277561/delwzuub2vgt9g90jfpz.jpg",
                            content_fr: lorem_ipsum,
                            content_en: lorem_ipsum,
                            tag_id: short_channels.id)

# ------- seed db with entreprises -------
puts "SEEDING DB WITH ENTREPRISES"

puts "---creating entreprise (1/4) the green group"
the_green_group = Entreprise.create(name: "TheGreenGroup",
                                    value_proposition_fr: "Une value proposition de ouf qui va venir bientôt",
                                    content_fr: lorem_ipsum,
                                    photo: "img_entreprise_thegreengroup.jpg",
                                    logo: "logo_thegreengroup.png",
                                    tag_id: ecology.id)

puts "---creating entreprise (2/4) together.io"
together = Entreprise.create(name: "together.io",
                             value_proposition_fr: "Une value proposition de ouf qui va venir bientôt",
                             content_fr: lorem_ipsum,
                             photo: "img_entreprise_together.jpg",
                             logo: "logo_together.png",
                             tag_id: ecology.id)

puts "---creating entreprise (3/4) fund a better place"
fabp = Entreprise.create(name: "Fund a Better Place",
                         value_proposition_fr: "Une value proposition de ouf qui va venir bientôt",
                         content_fr: lorem_ipsum,
                         photo: "img_entreprise_fundabetterplace.jpg",
                         logo: "logo_fundabetterplace.png",
                         tag_id: ecology.id)

puts "---creating entreprise (4/4) maanaz"
maanaz = Entreprise.create(name: "Maanaz",
                           value_proposition_fr: "Une value proposition de ouf qui va venir bientôt",
                           content_fr: lorem_ipsum,
                           photo: "img_entreprise_maanaz.jpg",
                           logo: "logo_maanaz.png",
                           tag_id: education.id)

# ------- seed db with readers -------
puts "SEEDING DB WITH SOME READERS"

puts "---creating reader (01/05) al gore"
reader_01 = Reader.create(first_name: "Al",
                          last_name: "Gore",
                          email: "al.gore@idontlikethetruth.org",
                          message: "I love what you do. Keep up the good work. Maybe we should partner?")

puts "---creating reader (02/05) jean-jacques goldman"
reader_02 = Reader.create(first_name: "Jean_Jacques",
                          last_name: "Goldman",
                          email: "jjg@lesenfoires.com",
                          message: "J'aime bien les gens qui ne font pas de l'écologie par procuration en jetant du pain sur le balcon pour
                          le donner aux pigeons")

puts "---creating reader (03/05) barack obama"
reader_03 = Reader.create(first_name: "Barack",
                          last_name: "Obama",
                          email: "barack@whitehouse.gov",
                          message: "Awesome work bro! Ya gotta make Secretary of State, pale. Wanna find a job in DC?")

puts "---creating reader (04/05) josé bové"
reader_04 = Reader.create(first_name: "José",
                          last_name: "Bové",
                          email: "josé.bové@leperche.fr",
                          message: "Vindiou, j'ai rien compris à ce que tu écris mon gars, mais ça a l'air rudement éduqué")

puts "---creating reader (05/05) donald trump"
reader_05 = Reader.create(first_name: "Donald",
                          last_name: "Trump",
                          email: "donald@worldpresident.gov",
                          message: "Just a fuckin' pile of shit even Twitter is not worth hostin'. You suck you dick-head French")

# ------- terminate -------
puts "SEED COMPLETE"












