# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
PlantLibrary.destroy_all
Plant.destroy_all

PlantLibrary.create(
  water_freq_avg:7,
  image:"https://cdn.pixabay.com/photo/2014/03/02/05/27/aloe-vera-277948_1280.jpg",
  latin_name: "Aloe vera",
  description:"Aloe vera is a very ornamental indoor plant, easy to care for and not demanding at any time during the year.Its leaves are original and elegant, and it is also used for its medicinal properties, especially in the field of cosmetics.",
  family:"Liliaceae (lily family)",
  average_height: "1 ⅓ to 3 feet (0.5 to 1 meter)",
  light_preference:"well-lit, Aloe vera requires a good deal of light but doesn’t appreciate direct sunlight which tends to dehydrate the plant.",
  soil:"soil mix + sand",
  flowering:"March",
  temperature:"The temperature of a house or apartment is perfect, because ideal temperatures range from 65 to 70° F (18 to 21° C) all year round.From May to September, you can bring your plant outdoors without any problems, but do bring it back inside in the evening if nights are cold.",
  fertilizer:"No need to add fertilizer to your Aloe vera.",
  watering:"Watering in spring and summer - Watering must be moderate but regular, more or less once a week. Best is to water when the surface of the soil has dried out.Don’t wait too long, especially if it is hot, because the plant could suffer from it; Watering in fall and winter - Slowly restrict watering during the dormant state.Wait for the soil to dry off to about an inch deep (a few centimeters) before watering again with lukewarm water. You’ll water again at a normal rhythm in spring, when the plant starts growing again.",
  careinfo:"Once every 3 years at most, repot your Aloe vera in spring after the blooming."
  )

 PlantLibrary.create(
  water_freq_avg:7,
  image:"https://images.pexels.com/photos/59872/strelitzia-blossom-bloom-flower-59872.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  latin_name: "Strelitzia reginae",
  description:"Strelitzia is a superb plant that comes from the tropics, boasting simply magnificent flowers and nicely dense leafage.",
  family:"Strelitziaceae",
  average_height: "3 to 6 ½ feet (1 to 2 meters)",
  light_preference:"full sun, part sun",
  soil:"it requires proper flower plant soil mix.rather moist soil, cool but well drained.",
  flowering:"May to September.",
  temperature:"Strelitzia is sensitive to frost, even light frost below 35°F (2°C) and thus can only be planted directly in the ground in regions with mild enough winters.It normally lives in the warmer regions of the globe that offer rather tropical growing conditions and must be grown in pots and brought indoors in winter if this isn’t the case.",
  fertilizer:"",
  watering:"In summer, when the weather is hot, it is important to water your strelitzia often, especially when grown in pots.",
  careinfo:"If it was planted in the ground outdoors, it means your climate will allow for it, and so there isn’t much to do except to protect the plant if ever temperatures drop."
  )


 PlantLibrary.create(
  water_freq_avg: 7,
  image:"http://img5.imgtn.bdimg.com/it/u=3389406587,401482620&fm=15&gp=0.jpg",
  latin_name: "Mandevilla sanderi",
  description:"Mandevilla – some species of which are called Dipladenia – are remarkable climbing shrub vines.",
  family:"Apocynceae or dogbane",
  average_height: "Height – 10 feet long or tall (3 meters)
",
  light_preference:"well-lit,choose a very well-lit space for your flowering vines, but not in direct sunlight behind a window.",
  soil:"well-drained",
  flowering:"June to October",
  temperature:"Temperatures of at least 68°F (20°C) are required for this plant to survive.Ideal temperatures are around 68 to 70° F (20 to 21° C) in summer, and 50 to 60°F (10 to 15°C) in winter.",
  watering:"Water regularly but not too much, to avoid suffocating roots.",
  careinfo:"Care for both Mandevilla and Dipladenia is almost identical. From planting to pruning and including watering, they should give you magnificent flowers in summer!")










# ----------
 # PlantLibrary.create(
#   water_freq_avg:"",
#   image:"",
#   latin_name: "",
#   description:"",
#   family:"",
#   average_height: "",
#   light_preference:"",
#   soil:"",
#   flowering:"",
#   temperature:"",
#   fertilizer:"",
#   watering:"",
#   careinfo:""
#   )

# -----------------
             # "Zamioculcas zamiifolia",
             # "Ficus elastica",
             # "Cyclamen persicum",
             # "Euphorbia pulcherrima",
             # "Zygocactus truncatus",
             # "Sedum rubrotinctum cv.'Aurora'",
             # "Echinocactus grusonii",
             # "Dracaena marginata",
             # "Schefflera arboricola",
             # "Crassula rogersii",
             # "Collinia elegans",
             # "Ficus microcarpa",
             # "Kalanchoe blossfeldiana",
             # "Sinningia speciosa",
             # "Cyclamen persicum",
             # "Clerodendrum speciosum",
             # "Adenium obesum",

             # "Tillandsia cyanea",
             # "Dracaena sanderiana",
             # "Calliandra haematocephala",
             # "Echeveria secunda",
             # "Dypsis lutescens",
             # "Zygocactus truncatus",
             # "Brunfelsia pauciflora",
             # "Ficus microcarpa",
             # "Hippeastrum vittatum",
             # "Billbergia pyramidalis",

             # "Anthurium andraeanum",
             # "Clivia nobilis",
             # "Sansevieria trifasciata var. laurentii",
             # "Abutilon megapotamicum",
             # "Begonia argenteo-guttata",
             # "Dracaena fragrans",
             # "Spathiphyllum floribundum",
             # "Cymbidium faberi × hybridum",
             # "Ananas comosus",
             # "Ficus microcarpa",

             # "Dypsis lutescens",
             # "Euphorbia pulcherrima",
             # "Hibiscus rosa-sinensis",
             # "Hibiscus syriacus var. syriacus f. albus-plenus",
             # "Dracaena fragrans",
             # "Epipremnum aureum",
             # "Monstera deliciosa",
             # "Plumeria rubra",
             # "Ficus benjamina",
             # "Clivia miniata",

             # "Strelitzia nicolai",
             # "Nolina recurvata",
             # "Dracaena sanderiana",
             # "Billbergia pyramidalis",
             # "Aphelandra Fittonia",
             # "Codiaeum variegatum",
             # "Tristellateia australasiae",
             # "Gardenia jasminoides var. fortuniana",
             # "Dieffenbachia picta",
             # "Saintpaulia ionantha",

             # "Aeschynanthus pulcher",
             # "Philodendron selloum",
             # "Coleus hybridus",
             # "Chlorophytum comosum cv. medio-pictum",
             # "Adenium obesum",
             # "Agave sisalana",
             # "Bellis perennis",
             # "Stromanthe sanguinea",
             # "Pilea peperomioides",
             # "Caladium bicolor",

             # "Iresine herbstii",
             # "Phoenix loureiroi",
             # "Calathea makoyana",
             # "Cereus",
             # "Primula sinensis",
             # "Pachira aquatica",






