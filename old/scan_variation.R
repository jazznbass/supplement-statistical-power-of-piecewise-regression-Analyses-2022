

.onAttach <- function(lib, pkg, ...) {
	out <- paste0("scan - Single-Case Data Analysis for Single and Multiple AB-Designs\n",
	              "Caution! This is a beta version and heavily under construction!\n")
	packageStartupMessage(out)
}	

.onLoad <- function(lib, pkg, ...) {}

.male.names <- c("Jacob", "Mason", "Ethan", "Noah", "William", "Liam", "Jayden", "Michael", "Alexander", "Aiden", "Daniel", "Matthew", "Elijah", "James", "Anthony", "Benjamin", "Joshua", "Andrew", "David", "Joseph", "Logan", "Jackson", "Christopher", "Gabriel", "Samuel", "Ryan", "Lucas", "John", "Nathan", "Isaac", "Dylan", "Caleb", "Christian", "Landon", "Jonathan", "Carter", "Luke", "Owen", "Brayden", "Gavin", "Wyatt", "Isaiah", "Henry", "Eli", "Hunter", "Jack", "Evan", "Jordan", "Nicholas", "Tyler", "Aaron", "Jeremiah", "Julian", "Cameron", "Levi", "Brandon", "Angel", "Austin", "Connor", "Adrian", "Robert", "Charles", "Thomas", "Sebastian", "Colton", "Jaxon", "Kevin", "Zachary", "Ayden", "Dominic", "Blake", "Jose", "Oliver", "Justin", "Bentley", "Jason", "Chase", "Ian", "Josiah", "Parker", "Xavier", "Adam", "Cooper", "Nathaniel", "Grayson", "Jace", "Carson", "Nolan", "Tristan", "Luis", "Brody", "Juan", "Hudson", "Bryson", "Carlos", "Easton", "Damian", "Alex", "Kayden", "Ryder", "Jesus", "Cole", "Micah", "Vincent", "Max", "Jaxson", "Eric", "Asher", "Hayden", "Diego", "Miles", "Steven", "Ivan", "Elias", "Aidan", "Maxwell", "Bryce", "Antonio", "Giovanni", "Timothy", "Bryan", "Santiago", "Colin", "Richard", "Braxton", "Kaleb", "Kyle", "Kaden", "Preston", "Miguel", "Jonah", "Lincoln", "Riley", "Leo", "Victor", "Brady", "Jeremy", "Mateo", "Brian", "Jaden", "Ashton", "Patrick", "Declan", "Sean", "Joel", "Gael", "Sawyer", "Alejandro", "Marcus", "Leonardo", "Jesse", "Caden", "Jake", "Kaiden", "Wesley", "Camden", "Edward", "Brantley", "Roman", "Axel", "Silas", "Jude", "Grant", "Cayden", "Emmanuel", "George", "Maddox", "Malachi", "Bradley", "Alan", "Weston", "Gage", "Devin", "Greyson", "Kenneth", "Mark", "Oscar", "Tanner", "Rylan", "Nicolas", "Harrison", "Derek", "Peyton", "Ezra", "Tucker", "Emmett", "Avery", "Cody", "Calvin", "Andres", "Jorge", "Abel", "Paul", "Abraham", "Kai", "Collin", "Theodore", "Ezekiel", "Omar", "Jayce", "Conner", "Bennett", "Trevor", "Eduardo", "Peter", "Maximus", "Jaiden", "Jameson", "Seth", "Kingston", "Javier", "Travis", "Garrett", "Everett", "Graham", "Xander", "Cristian", "Damien", "Ryker", "Griffin", "Corbin", "Myles", "Luca", "Zane", "Francisco", "Ricardo", "Alexis", "Stephen", "Zayden", "Iker", "Drake", "Lukas", "Charlie", "Spencer", "Zion", "Erick", "Josue", "Jeffrey", "Trenton", "Chance", "Paxton", "Elliot", "Fernando", "Keegan", "Landen", "Manuel", "Amir", "Shane", "Raymond", "Zander", "Andre", "Israel", "Mario", "Cesar", "Simon", "King", "Jaylen", "Johnathan", "Troy", "Dean", "Clayton", "Dominick", "Tyson", "Jasper", "Martin", "Kyler", "Hector", "Edgar", "Marco", "Cash", "Edwin", "Shawn", "Judah", "Andy", "Donovan", "Kameron", "Elliott", "Dante", "Braylon", "Anderson", "Johnny", "Drew", "Sergio", "Cruz", "Dalton", "Rafael", "Gregory", "Lane", "Erik", "Skyler", "Finn", "Reid", "Gunner", "Jared", "Caiden", "Holden", "Emilio", "Fabian", "Aden", "Brendan", "Rowan", "Emiliano", "Braden", "Jase", "Jax", "Emanuel", "Lorenzo", "Roberto", "Amari", "Angelo", "Beau", "Louis", "Derrick", "Beckett", "Dawson", "Felix", "Pedro", "Brennan", "Frank", "Maximiliano", "Quinn", "Dallas", "Romeo", "Braylen", "Joaquin", "Waylon", "Allen", "Colt", "Ruben", "Milo", "Julius", "Grady", "August", "Dakota", "Cohen", "Brock", "Kellen", "Brycen", "Desmond", "Malik", "Colby", "Nehemiah", "Leland", "Jett", "Marcos", "Taylor", "Karter", "Marshall", "Ty", "Phillip", "Corey", "Ali", "Adan", "Dillon", "Arthur", "Maverick", "Leon", "Brooks", "Tristen", "Titus", "Keith", "Dexter", "Karson", "Emerson", "Landyn", "Armando", "Pablo", "Knox", "Enrique", "Cade", "Gerardo", "Reed", "Kellan", "Jayson", "Barrett", "Walter", "Dustin", "Kolton", "Ronald", "Trent", "Phoenix", "Ismael", "Julio", "Danny", "Kason", "Scott", "Messiah", "Jay", "Esteban", "Gideon", "Tate", "Abram", "Trey", "Keaton", "Jakob", "Jaime", "Devon", "Braydon", "Izaiah", "Donald", "Albert", "Raul", "Darius", "Archer", "Colten", "Damon", "River", "Gustavo", "Philip", "Atticus", "Walker", "Matteo", "Randy", "Saul", "Rocco", "Davis", "Enzo", "Noel", "Orion", "Jamari", "Remington", "Bruce", "Darren", "Larry", "Mathew", "Russell", "Dennis", "Tony", "Chris", "Porter", "Rodrigo", "Armani", "Zaiden", "Kade", "Ari", "Hugo", "Zachariah", "Kamden", "Mohamed", "Quentin", "Solomon", "Curtis", "Leonel", "Issac", "Khalil", "Alberto", "Jerry", "Alec", "Gianni", "Moises", "Gunnar", "Adriel", "Lawrence", "Alijah", "Chandler", "Ronan", "Prince", "Payton", "Arturo", "Jimmy", "Orlando", "Ricky", "Mitchell", "Maximilian", "Cason", "Malcolm", "Muhammad", "Kasen", "Marvin", "Jalen", "Cyrus", "Mauricio", "Warren", "Jonas", "Kendrick", "Rhys", "Dane", "Ryland", "Pierce", "Johan", "Rory", "Uriel", "Major", "Bryant", "Reece", "Casey", "Ibrahim", "Nikolas", "Arjun", "Sullivan", "Finnegan", "Alfredo", "Royce", "Ahmed", "Amare", "Lance", "Ramon", "Jamison", "Brayan", "Brenden", "Dominik", "Case", "Kristopher", "Maurice", "Mekhi", "Kobe", "Zackary", "Rhett", "Jensen", "Jaxton", "Deandre", "Isaias", "Channing", "Yahir", "Ezequiel", "Tobias", "Talon", "Sam", "Justice", "Kash", "Nash", "Alvin", "Jacoby", "Ace", "Nico", "Quinton", "Cannon", "Franklin", "Raiden", "Joe", "Lawson", "Beckham", "Gary", "Aldo", "Raylan", "Frederick", "London", "Boston", "Carl", "Byron", "Ernesto", "Moshe", "Terry", "Eddie", "Kane", "Moses", "Finley", "Salvador", "Reese", "Kelvin", "Cullen", "Madden", "Wade", "Clark", "Mohammed", "Kieran", "Jagger", "Dorian", "Korbin", "Nelson", "Roy", "Asa", "Matias", "Nasir", "Nickolas", "Roger", "Alonzo", "Jaxen", "Skylar", "Callen", "Malakai", "Douglas", "Ahmad", "Uriah", "Conor", "Kristian", "Carmelo", "Blaine", "Kayson", "Bentlee", "Braeden", "Julien", "Nathanael", "Aarav", "Keagan", "Lucian", "Morgan", "Chad", "Terrance", "Benson", "Noe", "Rodney", "Francis", "Layne", "Mohammad", "Zayne", "Tatum", "Brett", "Wilson", "Kian", "Marc", "Rohan", "Dayton", "Braiden", "Harper", "Luciano", "Nikolai", "Kamari", "Camron", "Joey", "Santino", "Ellis", "Layton", "Xzavier", "Jefferson", "Winston", "Guillermo", "Demetrius", "Bowen", "Daxton", "Melvin", "Soren", "Neil", "Sylas", "Jon", "Raphael", "Rex", "Yusuf", "Shaun", "Brodie", "Tommy", "Harley", "Quincy", "Dax", "Trace", "Adonis", "Bently", "Giovani", "Jeffery", "Odin", "Luka", "Kylan", "Willie", "Lewis", "Tripp", "Vihaan", "Davion", "Kendall", "Arian", "Cory", "Jamarion", "Jonathon", "Nixon", "Rayan", "Emery", "Jermaine", "Reginald", "Tomas", "Emmitt", "Ayaan", "Zechariah", "Billy", "Hamza", "Micheal", "Urijah", "Aryan", "Lee", "Jasiah", "Landry", "Crosby", "Mathias", "Toby", "Tristian", "Will", "Felipe", "Triston", "Eden", "Terrell", "Deacon", "Matthias", "Jamal", "Makai", "Maxim", "Sterling", "Hank", "Gerald", "Alessandro", "Jaydon", "Hayes", "Niko", "Branson", "Flynn", "Kody", "Marlon", "Mayson", "Allan", "Augustus", "Jessie", "Neymar", "Adrien", "Aydan", "Leonard", "Sincere", "Kyson", "Terrence", "Jerome", "Jadiel", "Kole", "Aron", "Aydin", "Omari", "Ronnie", "Zain", "Vicente", "Bobby", "Yosef", "Alexzander", "Harry", "Kale", "Rogelio", "Casen", "Ray", "Clay", "Masen", "Sage", "Ulises", "Kymani", "Chaim", "Javon", "Brent", "Jadon", "Elisha", "Stanley", "Jovanni", "Princeton", "Alonso", "Darian", "Conrad", "Dwayne", "Eugene", "Gauge", "Rene", "Kareem", "Roland", "Ben", "Vincenzo", "Abdullah", "Camren", "Kenny", "Brentley", "Memphis", "Blaze", "Edison", "Osvaldo", "Teagan", "Westin", "Deshawn", "Rayden", "Cedric", "Marquis", "Samir", "Steve", "Draven", "Jairo", "Giovanny", "Brennen", "Bronson", "Crew", "Davin", "Kolten", "Ronin", "Ariel", "Semaj", "Alden", "Isiah", "Lennox", "Davian", "Jaylin", "Cain", "Wayne", "Craig", "Lamar", "Leonidas", "Cristopher", "Otto", "Bo", "Darrell", "Kolby", "Marcelo", "Bruno", "Fletcher", "Justus", "Alfonso", "Theo", "Tyrone", "Aidyn", "Harvey", "Rudy", "Brendon", "Tristin", "Dominique", "Kaeden", "Samson", "Kyree", "Jovani", "Lionel", "Amos", "Giancarlo", "Misael", "Callum", "Quintin", "Valentino", "Gavyn", "Lennon", "Jamir", "Kamron", "Zavier", "Arlo", "Junior", "Killian", "Leandro", "Konnor", "Hezekiah", "Jordyn", "Markus", "Ramiro", "Callan", "Chace", "Johnathon", "Lyric", "Fisher", "Rashad", "Kamryn", "Legend", "Duncan", "Harold", "Camilo", "Hendrix", "Seamus", "Coleman", "Vance", "Rylee", "Elian", "Jaeden", "Jamie", "Krish", "Abdiel", "Antoine", "Camdyn", "Van", "Branden", "Cayson", "Gibson", "Javion", "Izayah", "Darwin", "Jamar", "Mike", "Randall", "Brecken", "Hassan", "Thiago", "Heath", "Arnav", "Kingsley", "Kyrie", "Xavi", "Damari", "Deangelo", "Jionni", "Joziah", "Makhi", "Vaughn", "Zeke", "Konner", "Ean", "Frankie", "Yael", "Benton", "Oakley", "Efrain", "Marcel", "Rolando", "Maxton", "Jaycob", "Keenan", "Rowen", "Yousef", "Ishaan", "Jedidiah", "Remy", "Todd", "Reagan", "Bodhi", "Damarion", "Juelz", "Valentin", "Austyn", "Broderick", "Anders", "Alvaro", "Mustafa", "Thaddeus", "Brenton", "Cale", "Clinton", "Derick", "Jorden", "Gilberto", "Jabari", "Rey", "Salvatore", "Freddy", "Donte", "Ernest", "Aaden", "Axton", "Blaise", "Lucca", "Maximo", "Sidney", "Dario", "Rodolfo", "Trevon", "Camryn", "Deegan", "Sonny", "Cassius", "Truman", "Brice", "Brogan", "Hugh", "Yehuda", "Agustin", "Eliot", "Stefan", "Zaid", "Bridger", "Damion", "Eliseo", "Houston", "Johann", "Leroy", "Sheldon", "Dariel", "Darryl", "Isai", "Tyrell", "Alfred", "Demarcus", "Kohen", "Ignacio", "Rylen", "Santos", "Cael", "Davon", "Kaysen", "Mack", "Darien", "Ross", "Titan", "Tyree", "Ameer", "Zaire", "Aditya", "Briggs", "Immanuel", "Malaki", "Turner", "Bradyn", "Graysen", "Kase", "Reuben", "Yandel", "Gaige", "Jaidyn", "Franco", "Trystan", "Maison", "Simeon", "Anton", "Darnell", "Emory", "Roderick", "Deon", "Devan", "Graeme", "Howard", "Jael", "Kael", "Karsen", "Jarrett", "Apollo", "Denzel", "Foster", "Gilbert", "Jaylon", "Kylen", "Augustine")	
.female.names <- c("Sophia", "Emma", "Isabella", "Olivia", "Ava", "Emily", "Abigail", "Mia", "Madison", "Elizabeth", "Chloe", "Ella", "Avery", "Addison", "Aubrey", "Lily", "Natalie", "Sofia", "Charlotte", "Zoey", "Grace", "Hannah", "Amelia", "Harper", "Lillian", "Samantha", "Evelyn", "Victoria", "Brooklyn", "Zoe", "Layla", "Hailey", "Leah", "Kaylee", "Anna", "Aaliyah", "Gabriella", "Allison", "Nevaeh", "Alexis", "Audrey", "Savannah", "Sarah", "Alyssa", "Claire", "Taylor", "Riley", "Camila", "Arianna", "Ashley", "Brianna", "Sophie", "Peyton", "Bella", "Khloe", "Genesis", "Alexa", "Serenity", "Kylie", "Aubree", "Scarlett", "Stella", "Maya", "Katherine", "Julia", "Lucy", "Madelyn", "Autumn", "Makayla", "Kayla", "Mackenzie", "Lauren", "Gianna", "Ariana", "Faith", "Alexandra", "Melanie", "Sydney", "Bailey", "Caroline", "Naomi", "Morgan", "Kennedy", "Ellie", "Jasmine", "Eva", "Skylar", "Kimberly", "Violet", "Molly", "Aria", "Jocelyn", "Trinity", "London", "Lydia", "Madeline", "Reagan", "Piper", "Andrea", "Annabelle", "Maria", "Brooke", "Payton", "Paisley", "Paige", "Ruby", "Nora", "Mariah", "Rylee", "Lilly", "Brielle", "Jade", "Destiny", "Nicole", "Mila", "Kendall", "Liliana", "Kaitlyn", "Natalia", "Sadie", "Jordyn", "Vanessa", "Mary", "Mya", "Penelope", "Isabelle", "Alice", "Reese", "Gabrielle", "Hadley", "Katelyn", "Angelina", "Rachel", "Isabel", "Eleanor", "Clara", "Brooklynn", "Jessica", "Elena", "Aliyah", "Vivian", "Laila", "Sara", "Amy", "Eliana", "Lyla", "Juliana", "Valeria", "Adriana", "Makenzie", "Elise", "Mckenzie", "Quinn", "Delilah", "Cora", "Kylee", "Rebecca", "Gracie", "Izabella", "Josephine", "Alaina", "Michelle", "Jennifer", "Eden", "Valentina", "Aurora", "Catherine", "Stephanie", "Valerie", "Jayla", "Willow", "Daisy", "Alana", "Melody", "Hazel", "Summer", "Melissa", "Margaret", "Kinsley", "Kinley", "Ariel", "Lila", "Giselle", "Ryleigh", "Haley", "Julianna", "Ivy", "Alivia", "Brynn", "Keira", "Daniela", "Aniyah", "Angela", "Kate", "Londyn", "Hayden", "Harmony", "Adalyn", "Megan", "Allie", "Gabriela", "Alayna", "Presley", "Jenna", "Alexandria", "Ashlyn", "Adrianna", "Jada", "Fiona", "Norah", "Emery", "Maci", "Miranda", "Ximena", "Amaya", "Cecilia", "Ana", "Shelby", "Katie", "Hope", "Callie", "Jordan", "Luna", "Leilani", "Eliza", "Mckenna", "Angel", "Genevieve", "Makenna", "Isla", "Lola", "Danielle", "Chelsea", "Leila", "Tessa", "Adelyn", "Camille", "Mikayla", "Adeline", "Adalynn", "Sienna", "Esther", "Jacqueline", "Emerson", "Arabella", "Maggie", "Athena", "Lucia", "Lexi", "Ayla", "Diana", "Alexia", "Juliet", "Josie", "Allyson", "Addyson", "Delaney", "Teagan", "Marley", "Amber", "Rose", "Erin", "Leslie", "Kayleigh", "Amanda", "Kathryn", "Kelsey", "Emilia", "Alina", "Kenzie", "Kaydence", "Alicia", "Alison", "Paris", "Sabrina", "Ashlynn", "Lilliana", "Sierra", "Cassidy", "Laura", "Alondra", "Iris", "Kyla", "Christina", "Carly", "Jillian", "Madilyn", "Kyleigh", "Madeleine", "Cadence", "Nina", "Evangeline", "Nadia", "Raegan", "Lyric", "Giuliana", "Briana", "Georgia", "Yaretzi", "Elliana", "Haylee", "Fatima", "Phoebe", "Selena", "Charlie", "Dakota", "Annabella", "Abby", "Daniella", "Juliette", "Lilah", "Bianca", "Mariana", "Miriam", "Parker", "Veronica", "Gemma", "Noelle", "Cheyenne", "Marissa", "Heaven", "Vivienne", "Brynlee", "Joanna", "Mallory", "Aubrie", "Journey", "Nyla", "Cali", "Tatum", "Carmen", "Gia", "Jazmine", "Heidi", "Miley", "Baylee", "Elaina", "Macy", "Ainsley", "Jane", "Raelynn", "Anastasia", "Adelaide", "Ruth", "Camryn", "Kiara", "Alessandra", "Hanna", "Finley", "Maddison", "Lia", "Bethany", "Karen", "Kelly", "Malia", "Jazmin", "Jayda", "Esmeralda", "Kira", "Lena", "Kamryn", "Kamila", "Karina", "Eloise", "Kara", "Elisa", "Rylie", "Olive", "Nayeli", "Tiffany", "Macie", "Skyler", "Addisyn", "Angelica", "Briella", "Fernanda", "Annie", "Maliyah", "Amiyah", "Jayden", "Charlee", "Caitlyn", "Elle", "Crystal", "Julie", "Imani", "Kendra", "Talia", "Angelique", "Jazlyn", "Guadalupe", "Alejandra", "Emely", "Lucille", "Anya", "April", "Elsie", "Madelynn", "Myla", "Julissa", "Scarlet", "Helen", "Breanna", "Kyra", "Madisyn", "Rosalie", "Brittany", "Brylee", "Jayleen", "Arielle", "Karla", "Kailey", "Arya", "Sarai", "Harley", "Miracle", "Kaelyn", "Kali", "Cynthia", "Daphne", "Aleah", "Caitlin", "Cassandra", "Holly", "Janelle", "Marilyn", "Katelynn", "Kaylie", "Itzel", "Carolina", "Bristol", "Haven", "Michaela", "Monica", "June", "Janiyah", "Camilla", "Jamie", "Rebekah", "Audrina", "Dayana", "Lana", "Serena", "Tiana", "Nylah", "Braelyn", "Savanna", "Skye", "Raelyn", "Madalyn", "Sasha", "Perla", "Bridget", "Aniya", "Rowan", "Logan", "Mckinley", "Averie", "Jaylah", "Aylin", "Joselyn", "Nia", "Hayley", "Lilian", "Adelynn", "Jaliyah", "Kassidy", "Kaylin", "Kadence", "Celeste", "Jaelyn", "Zariah", "Tatiana", "Jimena", "Lilyana", "Anaya", "Catalina", "Viviana", "Cataleya", "Sloane", "Courtney", "Johanna", "Amari", "Melany", "Anabelle", "Francesca", "Ada", "Alanna", "Priscilla", "Danna", "Angie", "Kailyn", "Lacey", "Sage", "Lillie", "Brinley", "Caylee", "Joy", "Kenley", "Vera", "Bailee", "Amira", "Aileen", "Aspen", "Emmalyn", "Erica", "Gracelyn", "Kennedi", "Skyla", "Annalise", "Danica", "Dylan", "Kiley", "Gwendolyn", "Jasmin", "Lauryn", "Aleena", "Justice", "Annabel", "Tenley", "Dahlia", "Gloria", "Lexie", "Lindsey", "Hallie", "Sylvia", "Elyse", "Annika", "Maeve", "Marlee", "Aryanna", "Kenya", "Lorelei", "Selah", "Kaliyah", "Adele", "Natasha", "Brenda", "Erika", "Alyson", "Braylee", "Emilee", "Raven", "Ariella", "Blakely", "Liana", "Jaycee", "Sawyer", "Anahi", "Jaelynn", "Elsa", "Farrah", "Cameron", "Evelynn", "Luciana", "Zara", "Madilynn", "Eve", "Kaia", "Helena", "Anne", "Estrella", "Leighton", "Nataly", "Whitney", "Lainey", "Amara", "Anabella", "Malaysia", "Samara", "Zoie", "Amani", "Phoenix", "Dulce", "Paola", "Marie", "Aisha", "Harlow", "Virginia", "Ember", "Regina", "Jaylee", "Anika", "Ally", "Kayden", "Alani", "Miah", "Yareli", "Journee", "Kiera", "Nathalie", "Mikaela", "Jaylynn", "Litzy", "Charley", "Claudia", "Aliya", "Madyson", "Cecelia", "Liberty", "Braelynn", "Evie", "Rosemary", "Myah", "Lizbeth", "Giana", "Ryan", "Teresa", "Ciara", "Isis", "Lea", "Shayla", "Jazlynn", "Rosa", "Gracelynn", "Desiree", "Elisabeth", "Isabela", "Arely", "Mariam", "Abbigail", "Emersyn", "Brenna", "Kaylynn", "Nova", "Raquel", "Dana", "Laney", "Laylah", "Siena", "Amelie", "Clarissa", "Lilianna", "Lylah", "Halle", "Madalynn", "Maleah", "Sherlyn", "Linda", "Shiloh", "Jessie", "Kenia", "Greta", "Marina", "Melina", "Amiya", "Bria", "Natalee", "Sariah", "Mollie", "Nancy", "Christine", "Felicity", "Zuri", "Irene", "Simone", "Amya", "Matilda", "Colette", "Kristen", "Paityn", "Alayah", "Janiya", "Kallie", "Mira", "Hailee", "Kathleen", "Meredith", "Janessa", "Noemi", "Aiyana", "Aliana", "Leia", "Mariyah", "Tori", "Alissa", "Ivanna", "Joslyn", "Sandra", "Maryam", "Saniyah", "Kassandra", "Danika", "Denise", "Jemma", "River", "Charleigh", "Emelia", "Kristina", "Armani", "Beatrice", "Jaylene", "Karlee", "Blake", "Cara", "Addilyn", "Amina", "Ansley", "Kaitlynn", "Iliana", "Mckayla", "Adelina", "Briley", "Elaine", "Lailah", "Mercedes", "Chaya", "Lindsay", "Hattie", "Lisa", "Marisol", "Patricia", "Bryanna", "Taliyah", "Adrienne", "Emmy", "Millie", "Paislee", "Charli", "Kourtney", "Leyla", "Maia", "Willa", "Milan", "Paula", "Ayleen", "Clare", "Kensley", "Reyna", "Martha", "Adley", "Elianna", "Emilie", "Karsyn", "Yasmin", "Lorelai", "Amirah", "Aryana", "Livia", "Alena", "Kiana", "Celia", "Kailee", "Rylan", "Ellen", "Galilea", "Kynlee", "Leanna", "Renata", "Mae", "Ayanna", "Chanel", "Lesly", "Cindy", "Carla", "Pearl", "Jaylin", "Kimora", "Angeline", "Carlee", "Aubri", "Edith", "Alia", "Frances", "Corinne", "Jocelynn", "Cherish", "Wendy", "Carolyn", "Lina", "Tabitha", "Winter", "Abril", "Bryn", "Jolie", "Yaritza", "Casey", "Zion", "Lillianna", "Jordynn", "Zariyah", "Audriana", "Jayde", "Jaida", "Salma", "Diamond", "Malaya", "Kimber", "Ryann", "Abbie", "Paloma", "Destinee", "Kaleigh", "Asia", "Demi", "Yamileth", "Deborah", "Elin", "Kaiya", "Mara", "Averi", "Nola", "Tara", "Taryn", "Emmalee", "Aubrianna", "Janae", "Kyndall", "Jewel", "Zaniyah", "Kaya", "Sonia", "Alaya", "Heather", "Nathaly", "Shannon", "Ariah", "Avah", "Giada", "Lilith", "Samiyah", "Sharon", "Coraline", "Eileen", "Julianne", "Milania", "Chana", "Regan", "Krystal", "Rihanna", "Sidney", "Hadassah", "Macey", "Mina", "Paulina", "Rayne", "Kaitlin", "Maritza", "Susan", "Raina", "Hana", "Keyla", "Temperance", "Aimee", "Alisson", "Charlize", "Kendal", "Lara", "Roselyn", "Alannah", "Alma", "Dixie", "Larissa", "Patience", "Taraji", "Sky", "Zaria", "Aleigha", "Alyvia", "Aviana", "Bryleigh", "Elliot", "Jenny", "Luz", "Ali", "Alisha", "Ayana", "Campbell", "Karis", "Lilyanna", "Azaria", "Blair", "Micah", "Moriah", "Myra", "Lilia", "Aliza", "Giovanna", "Karissa", "Saniya", "Emory", "Estella", "Juniper", "Kairi", "Kenna", "Meghan", "Abrielle", "Elissa", "Rachael", "Emmaline", "Jolene", "Joyce", "Britney", "Carlie", "Haylie", "Judith", "Renee", "Saanvi", "Yesenia", "Barbara", "Dallas", "Jaqueline", "Karma", "America", "Sariyah", "Azalea", "Everly", "Ingrid", "Lillyana", "Emmalynn", "Marianna", "Brisa", "Kaelynn", "Leona", "Libby", "Deanna", "Mattie", "Miya", "Kai", "Annalee", "Nahla", "Dorothy", "Kaylyn", "Rayna", "Araceli", "Cambria", "Evalyn", "Haleigh", "Thalia", "Jakayla", "Maliah", "Saige", "Avianna", "Charity", "Kaylen", "Raylee", "Tamia", "Aubrielle", "Bayleigh", "Carley", "Kailynn", "Katrina", "Belen", "Karlie", "Natalya", "Alaysia", "Celine", "Milana", "Monroe", "Estelle", "Meadow", "Audrianna", "Cristina", "Harlee", "Jazzlyn", "Scarlette", "Zahra", "Akira", "Ann", "Collins", "Kendyl", "Anabel", "Azariah", "Carissa", "Milena", "Tia", "Alisa", "Bree", "Carleigh", "Cheyanne", "Sarahi", "Laurel", "Kylah", "Tinley", "Kora", "Marisa", "Esme", "Sloan", "Cailyn", "Gisselle", "Kasey", "Kyndal", "Marlene", "Riya", "Annabell", "Aubriana", "Izabelle", "Kirsten", "Aya", "Dalilah", "Devyn", "Geraldine", "Analia", "Hayleigh", "Landry", "Sofie", "Tess", "Ashtyn", "Jessa", "Katalina")	
.names <- c(.male.names, .female.names)

.SCmovingAverage <- function(x, xLag, FUN = mean) {
	for(i in (xLag + 1):(length(x) - xLag))
		x[i] <- FUN(x[(i - xLag):(i + xLag)], na.rm = TRUE)
	return(x)
}
	
.SCfill <- function(x, y, ymin, col = "grey") {
	for(i in 1:length(x))
		polygon(c(x[i], x[i+1], x[i+1], x[i]),c(ymin,ymin, y[i+1],y[i]), col=col, border = NA)
}

.SCac <- function(x, lag = 1) {
	m <- mean(x, na.rm = TRUE)
	ax1 <- x[1:(length(x) - lag)]-m
	ax2 <- x[(lag + 1):length(x)]-m
	ac <- sum(ax1*ax2, na.rm = TRUE)/sum((x-m)^2, na.rm = TRUE)
	ac
}

.SClm <- function(x = NULL,y) {
	if(is.null(x))
		x <- 1:length(y)
	mx <- mean(x)
	my <- mean(y)
	ss.xy <- sum( (x-mx)*(y-my) )
	ss.xx <- sum ( (x-mx)^2 )
	b <- ss.xy/ss.xx
	return(b)
}

.SCbeta <- function(model) {
	b <- summary(model)$coef[-1, 1]
    sx <- apply(model$model[-1],2,sd)
    sy <- apply(model$model[1],2,sd)
    return(c(model$coefficients,b * sx/sy))
}

.SCprepareData <- function(data, B.start = NULL, MT = NULL) {
	
	#vector with B.start -> single data frame

	if (class(data) == "numeric" || class(data) == "integer") {
		if (is.null(MT))
			MT <- 1:length(data)
		B.start <- which(MT == B.start)
		D <- c(rep("A", B.start - 1), rep("B", length(data) - B.start + 1))
		data <- data.frame(phase = D, values = data, mt = MT)
	}
	
	#single data.frame -> list with single data frame
	if (class(data) == "data.frame") {
		if(ncol(data) == 2)
			data[3] <- 1:nrow(data)
		names(data) <- c("phase", "values", "mt")
		data <- list(data)
	}
	
	#list with vectors and vector with B.start -> list with data frames
	if(length(B.start) > 1) {
		if(length(data) != length(B.start) || mode(data) != "list")
			stop("Wrong data format. Format schould be a list of vectors and a vector of startpoints.")
		dat <- list()
		for(i in 1:length(data)) {
			if (is.null(MT))
				MT.tmp <- 1:length(D)
			else
				MT.tmp <- MT[[i]]
			B.start[i] <- which(MT.tmp == B.start[i])
			D <- c(rep("A", B.start[i] - 1), rep("B", length(data[[i]]) - B.start[i] + 1))
			dat[[i]] <- data.frame(phase = D, values = data[[i]], mt = MT.tmp)
		}
		data <- dat
	}
	
	if(class(data) != "list")
		stop("Wrong data format. Data have to be a numeric vector, a data.frame, or a list.")


	for(i in 1:length(data))
		if(ncol(data[[i]]) == 2) data[[i]]$mt <- 1:nrow(data[[i]])
		
	return(data)
}

.remove.levelSC <-function(data, type = "B.start") {
	for(i in 1:length(data)) {
		mA  <- mean(data[[i]][data[[i]][,1] == "A",2], na.rm = TRUE)
		if(type == "mean")
			mB  <- mean(data[[i]][data[[i]][,1] == "B",2], na.rm = TRUE)
		if(type == "B.start") {
			B.start <- sum(data[[i]][,1] == "A") + 1
			corrB  <- data[[i]][B.start ,2]
			data[[i]] <- data[[i]][-B.start,]
		}
		data[[i]][data[[i]][,1] == "B",2] <- data[[i]][data[[i]][,1] == "B",2] - (corrB-mA)
	}
	data
}


.estimate.d.SC <- function(data = NULL, model = NULL, s = NULL) {

	if(is.null(s)) stop("Parameter s (standard deviation) must be specified!\n")

	if(is.null(model)) model <- plm(data)$full
	b <- summary(model)$coef[-1, 1]
    out <- b/s
	names(out) <- c("d.trend","d.level","d.slope")
	round(out,4)
}

makesingleSC <- function(data, scale = FALSE, type = "add") {
	data <- .SCprepareData(data)
	N <- length(data)
	for(i in 1:N) {
		m  <- mean(data[[i]][data[[i]][,1] == "A",2], na.rm = TRUE)
		if (!scale) 
			sd <- 1
		if (scale) 
			sd <-  sd(data[[i]][data[[i]][,1] == "A",2], na.rm = TRUE)
		data[[i]][,2] <- (data[[i]][,2] - m) / sd 
		A <- data[[i]][data[[i]][,1] == "A",]	
		B <- data[[i]][data[[i]][,1] == "B",]	
		B[,3] <- B[,3] - min(B[,3], na.rm = TRUE) + 1
		if(i == 1) {
			new.data.A <- A
			new.data.B <- B	
		}
		if(i > 1) {
			new.data.A <- rbind(new.data.A, A)	
			new.data.B <- rbind(new.data.B, B)	
		}
	}
	new.data.A <- new.data.A[order(new.data.A[,3]),]
	if(type == "mean") {
		tmp <- aggregate(values~mt, data = new.data.A, mean, na.rm = TRUE)
		new.data.A <- data.frame(phase = rep("A", nrow(tmp)), values = tmp$values, mt = tmp$mt)
		tmp <- aggregate(values~mt, data = new.data.B, mean, na.rm = TRUE)
		new.data.B <- data.frame(phase = rep("B", nrow(tmp)), values = tmp$values, mt = tmp$mt)
	}
	if(type == "median") {
		tmp <- aggregate(values~mt, data = new.data.A, median, na.rm = TRUE)
		new.data.A <- data.frame(phase = rep("A", nrow(tmp)), values = tmp$values, mt = tmp$mt)
		tmp <- aggregate(values~mt, data = new.data.B, median, na.rm = TRUE)
		new.data.B <- data.frame(phase = rep("B", nrow(tmp)), values = tmp$values, mt = tmp$mt)
	}
	maxA <- max(new.data.A[,3], na.rm = TRUE)
	new.data.B[,3] <- new.data.B[,3] + maxA
	new.data.B <- new.data.B[order(new.data.B[,3]),]
	new.data <- rbind(new.data.A, new.data.B)
		
	return(list(new.data))
}

truncateSC <- function (data, A = c(0,0), B = c(0,0)){
  data <- .SCprepareData(data)
  N = length(data)

  for(i in 1:N){
    lengthA <- sum(data[[i]]$phase == "A")
    lengthB <- sum(data[[i]]$phase == "B")
    selectA <- (A[1] + 1):(lengthA - A[2])
    select <- c(selectA,(lengthA + 1 + B[1]):(lengthA + lengthB - B[2]))
    data[[i]] <- data[[i]][select,]
    data[[i]]$mt <- 1:nrow(data[[i]])
  }
  return(data)
}

rSC <- function(n = 1, MT = 20, B.start = 6, m = 50, s = 10, prob = 0.5, d.trend = 0, d.level = 0.0, d.slope = 0.0, rtt = 0.80, concise = FALSE, cases = 1, round = NA, extreme.p = 0, extreme.d = c(-4,-3), missing.p = 0, distribution = "normal", random.names = FALSE, output.long = FALSE) {

  MT <- rep(MT, length.out = n * cases)
  m <- rep(m, length.out = n * cases)
  s <- rep(s, length.out = n * cases)
  rtt <- rep(rtt, length.out = n * cases)
  extreme.p <- rep(extreme.p, length.out = n * cases)
  missing.p <- rep(missing.p, length.out = n * cases)
  d.level <- rep(d.level, length.out = n * cases)
  d.slope <- rep(d.slope, length.out = n * cases)
  d.trend <- rep(d.trend, length.out = n * cases)

  
  if (B.start[1] == "rand") {
  	tmp.start <- round(as.numeric(B.start[2]) * MT)
  	tmp.end <- round(as.numeric(B.start[3]) * MT)  
    B.start <- round(runif(n*cases, tmp.start, tmp.end))
  }
  
  if(any(B.start < 1) && any(B.start >= 1)) stop("A B.start vector must not include values below and above 1 at the same time.")
  if(B.start[1] < 1 && B.start[1] > 0) B.start <- round(B.start * MT)+1
  B.start <- rep(B.start, length.out = n * cases)  

  error <- sqrt(((1-rtt)/rtt) * s^2)
  
  dat <- list()
  for (i in 1:n) {
    if(cases > 1)
      dat[[i]] <- list()
    for (j in 1:cases) {
      B <- (i - 1) * cases + j
      if(distribution == "normal") {
        start_values <- rep(rnorm(1, m[B], s[B]), MT[B])	
        slope_values <- c(rep(0, B.start[B] - 1), 1:(MT[B] - B.start[B] + 1) * d.slope[B] * s[B])
        level_values <- c(rep(0, B.start[B] - 1), rep(d.level[B] * s[B], MT[B] - B.start[B] + 1))
        trend_values <- c(0 :(MT[B]-1) * d.trend[B] * s[B])
        true_values <- start_values + trend_values + slope_values + level_values
        error_values <- rnorm(MT[B], mean = 0, sd = error[B])
        measured_values <- true_values + error_values
      } else if(distribution == "poisson") {
        start_values <- rep(m[B], MT[B])	
        #start_values <- rep(rnorm(1, m[B], s), MT[B])
        #start_values[start_values < 0] <- 0				
        slope_values <- c(rep(0, B.start[B] - 1), 1:(MT[B] - B.start[B] + 1) * d.slope[B])
        level_values <- c(rep(0, B.start[B] - 1), rep(d.level[B], MT[B] - B.start[B] + 1))
        trend_values <- 0 :(MT[B]-1) * d.trend[B]
        true_values <- round(start_values + trend_values + slope_values + level_values)
        true_values[true_values < 0] <- 0
        measured_values <- rpois(length(true_values), true_values)
      } else if(distribution == "binomial") {
        start_values <- rep(m[B], MT[B])
        #start_values <- rep(rnorm(1, m[B], s), MT[B])
        #start_values[start_values < 0] <- 0				
        slope_values <- c(rep(0, B.start[B] - 1), 1:(MT[B] - B.start[B] + 1) * d.slope[B])
        level_values <- c(rep(0, B.start[B] - 1), rep(d.level[B], MT[B] - B.start[B] + 1))
        trend_values <- 0 :(MT[B]-1) * d.trend[B]
        true_values <- start_values + trend_values + slope_values + level_values
        true_values[true_values < 0] <- 0
        measured_values <- rbinom(n = length(true_values), size = round(true_values * (1/prob)), prob = prob)
      }
      if(extreme.p[B] > 0){
        ra <- runif(MT[B])
        if(distribution == "normal")
          multiplier <- s[B]
        if (distribution == "binomial" || distribution == "poisson")
          multiplier <- 1
        for(k in 1:MT[B]) {
          if(ra[k] <= extreme.p[B])
            measured_values[k] <- measured_values[k] + (runif(1, extreme.d[1], extreme.d[2]) * multiplier) 
        }
      }

      if(missing.p[B] > 0){
		measured_values[sample(1:MT[B], missing.p[B]*MT[B])] <- NA
      }

      
      if(!is.na(round))
        measured_values <- round(measured_values, round) 
      
      if (distribution == "binomial" || distribution == "poisson" || distribution == "poisson_old") 
        measured_values[measured_values < 0] <- 0
      
      condition <- c(rep("A", B.start[B] - 1), rep("B", MT[B] - B.start[B] + 1))
      if (cases == 1) {
        dat[[i]] <- data.frame(phase = condition, values = measured_values, mt = 1:MT[B])
        if (output.long){
          dat[[i]]$true <- true_values
          dat[[i]]$trend <- trend_values
          dat[[i]]$level <- level_values
          dat[[i]]$slope <- slope_values
          dat[[i]]$errors <- error_values
        }
        if(random.names)
          names(dat)[i] <- sample(.names,1)
      } else {
        dat[[i]][[j]] <- data.frame(phase = condition, values = measured_values, mt = 1:MT[B])
        if (output.long){
          dat[[i]][[j]]$true <- true_values
          dat[[i]][[j]]$trend <- trend_values
          dat[[i]][[j]]$level <- level_values
          dat[[i]][[j]]$slope <- slope_values
          dat[[i]][[j]]$errors <- error_values
        }
        if(random.names)
          names(dat[[i]])[j] <- sample(.names,1)
      }
    }
  }
  if(!concise) {
    cat("Create a random sample with the following parameters:\n\n")
    cat("Distribution:", distribution,"\n")
    cat("n\t",n,"\n")
    cat("Cases\t",cases,"\n")
    cat("M\t",unique(m),"\n")
    if(distribution == "normal")
      cat("SD\t",unique(s),"\n")
    cat("MT\t",unique(MT),"\n")
    cat("B.start\t",unique(B.start),"\n")
    if(distribution == "normal")
      cat("rtt\t",unique(rtt),"\n")
    cat("d level\t",unique(d.level),"\n")
    cat("d slope\t",unique(d.slope),"\n")
    cat("d trend\t",unique(d.trend),"\n")
    cat("p missing\t",unique(missing.p),"\n")
    
    if(any(extreme.p != 0)){
      cat("p extreme\t",unique(extreme.p),"\n")
      cat("d extreme low\t",extreme.d[1],"\n")
      cat("d extreme high\t",extreme.d[2],"\n")
      if (distribution == "binomial" || distribution == "poisson")
        cat("\n*effects sizes d represent frequencies (i.e., points for binomial distribution or counts for poisson distribution)\n")
      
    }
  }
  
  return(dat)
}






rand.test <- function (data, statistic = "Mean B-A", number = 500, complete = FALSE,limit = 5, startpoints = NA, exclude.equal = FALSE, graph = FALSE, output = "c") {

	data <- .SCprepareData(data)

	if(statistic == "B" || statistic == "Bdecrease")
		data <- .remove.levelSC(data)
	
	a <- lapply(data, function(x) x[,2][x[,1] == "A"])
	b <- lapply(data, function(x) x[,2][x[,1] == "B"])
	obs <- lapply(data, function(x) x[,2])
	MT <- lapply(data, nrow)
	N <- length(data)
	obs.B.start <- unlist(lapply(a, function(x) length(x)+1))

	if(is.na(startpoints[1])) {
		pos.startpts <- lapply(MT, function(x) (limit[1]+1):(x-limit+1))
	} else {
		pos.startpts <- lapply(MT, function(x) startpoints)
	}

	possible.combinations <- cumprod(unlist(lapply(pos.startpts, length)))[N]	
	
	auto.corrected.number <- FALSE
	if(!complete && possible.combinations <= number) {
		auto.corrected.number <- TRUE
		complete <- TRUE
	}
	
	if(!complete) {
		startpts <- matrix(unlist(lapply(pos.startpts, function(x) sample(x, number, replace = TRUE))), nrow = number, ncol = N)
		#while(nrow(startpts) < number) {
		#	n.new <- number - nrow(startpts) 
		#	new.startpts <- matrix(unlist(lapply(pos.startpts, function(x) sample(x, n.new, replace = TRUE))), nrow = n.new, ncol = N)		
		#	skip <- apply(new.startpts, 1, function(x) !all(x==obs.B.start))
		#	new.startpts <- as.data.frame(new.startpts[skip,])
		#	startpts <- (rbind(startpts, new.startpts))
		#}
	}
	if(complete) {
		startpts <- expand.grid(pos.startpts)
		#skip <- apply(startpts, 1, function(x) !all(x==obs.B.start))
		#startpts <- as.data.frame(startpts[skip,])
		number <- nrow(startpts)
	}
	
	rnd.a <- list()
	for (i in 1:number) {
		ascores <- list()
		for (case in 1:N)
			ascores[[case]] <- data[[case]][1:(startpts[i, case] - 1), 2]
		rnd.a[[i]] <- ascores
	}

	rnd.b <- list()
	for (i in 1:number) {
		ascores <- list()
		for (case in 1:N)
			ascores[[case]] <- data[[case]][startpts[i, case]:MT[[case]], 2]
		rnd.b[[i]] <- ascores
	}
	

	if (statistic == "B-A" || statistic == "Mean B-A") {
		means.b <- unlist(lapply(rnd.b, function(x) lapply(x,mean,na.rm = TRUE)))
		means.a <- unlist(lapply(rnd.a, function(x) lapply(x,mean,na.rm = TRUE)))
		ma <- matrix(means.b-means.a, ncol = N, nrow = number, byrow = TRUE)

		dist <- apply(ma,1,mean,na.rm = TRUE)
		means.b <- unlist(lapply(b, mean,na.rm = TRUE))
		means.a <- unlist(lapply(a, mean,na.rm = TRUE))
		ma <- matrix(means.b-means.a, ncol = N, nrow = 1, byrow = TRUE)
		obs.stat <- mean(ma,na.rm = TRUE)
	}

	if (statistic == "A-B" || statistic == "Mean A-B") {
		means.b <- unlist(lapply(rnd.b, function(x) lapply(x,mean,na.rm = TRUE)))
		means.a <- unlist(lapply(rnd.a, function(x) lapply(x,mean,na.rm = TRUE)))
		ma <- matrix(means.a-means.b, ncol = N, nrow = number, byrow = TRUE)

		dist <- apply(ma,1,mean,na.rm = TRUE)
		means.b <- unlist(lapply(b, mean,na.rm = TRUE))
		means.a <- unlist(lapply(a, mean,na.rm = TRUE))
		ma <- matrix(means.a-means.b, ncol = N, nrow = 1, byrow = TRUE)
		obs.stat <- mean(ma,na.rm = TRUE)
	}

	if (statistic == "Median B-A") {
		medians.b <- unlist(lapply(rnd.b, function(x) lapply(x,median,na.rm = TRUE)))
		medians.a <- unlist(lapply(rnd.a, function(x) lapply(x,median,na.rm = TRUE)))
		ma <- matrix(medians.b-medians.a, ncol = N, nrow = number, byrow = TRUE)

		dist <- apply(ma,1,median,na.rm = TRUE)
		medians.b <- unlist(lapply(b, median,na.rm = TRUE))
		medians.a <- unlist(lapply(a, median,na.rm = TRUE))
		ma <- matrix(medians.b-medians.a, ncol = N, nrow = 1, byrow = TRUE)
		obs.stat <- median(ma,na.rm = TRUE)
	}

	if (statistic == "Median A-B") {
		medians.b <- unlist(lapply(rnd.b, function(x) lapply(x,median,na.rm = TRUE)))
		medians.a <- unlist(lapply(rnd.a, function(x) lapply(x,median,na.rm = TRUE)))
		ma <- matrix(medians.a-medians.b, ncol = N, nrow = number, byrow = TRUE)

		dist <- apply(ma,1,median,na.rm = TRUE)
		medians.b <- unlist(lapply(b, median,na.rm = TRUE))
		medians.a <- unlist(lapply(a, median,na.rm = TRUE))
		ma <- matrix(medians.a-medians.b, ncol = N, nrow = 1, byrow = TRUE)
		obs.stat <- median(ma,na.rm = TRUE)
	}	
	
	
	if (statistic == "Mean |A-B|") {
		means.b <- unlist(lapply(rnd.b, function(x) lapply(x,mean,na.rm = TRUE)))
		means.a <- unlist(lapply(rnd.a, function(x) lapply(x,mean,na.rm = TRUE)))
		ma <- matrix(abs(means.a-means.b), ncol = N, nrow = number, byrow = TRUE)

		dist <- apply(ma,1,mean,na.rm = TRUE)
		means.b <- unlist(lapply(b, mean,na.rm = TRUE))
		means.a <- unlist(lapply(a, mean,na.rm = TRUE))
		ma <- matrix(abs(means.a-means.b), ncol = N, nrow = 1, byrow = TRUE)
		obs.stat <- mean(ma,na.rm = TRUE)
	}

	if (statistic == "B") {
		b.b <- unlist(lapply(rnd.b, function(x) lapply(x,function(x) .SClm(y = x))))
		b.a <- unlist(lapply(rnd.a, function(x) lapply(x,function(x) .SClm(y = x))))
		ma <- matrix(b.b-b.a, ncol = N, nrow = number, byrow = TRUE)

		dist <- apply(ma,1,mean,na.rm = TRUE)
		b.b <- unlist(lapply(b, function(x) .SClm(y = x)))
		b.a <- unlist(lapply(a, function(x) .SClm(y = x)))
		ma <- matrix(b.b-b.a, ncol = N, nrow = 1, byrow = TRUE)
		obs.stat <- mean(ma,na.rm = TRUE)
		statistic <- "linear slope B - linear slope A"
	}

	if (statistic == "Bdecrease") {
		b.b <- unlist(lapply(rnd.b, function(x) lapply(x,function(x) .SClm(y = x))))
		b.a <- unlist(lapply(rnd.a, function(x) lapply(x,function(x) .SClm(y = x))))
		ma <- matrix(b.a-b.b, ncol = N, nrow = number, byrow = TRUE)

		dist <- apply(ma,1,mean,na.rm = TRUE)
		b.b <- unlist(lapply(b, function(x) .SClm(y = x)))
		b.a <- unlist(lapply(a, function(x) .SClm(y = x)))
		ma <- matrix(b.a-b.b, ncol = N, nrow = 1, byrow = TRUE)
		obs.stat <- mean(ma,na.rm = TRUE)
		statistic <- "linear slope A - linear slope B"
	}
	
	if(statistic == "t plm level") {
		dist <- numeric(number)
		for (i in 1:number) {
			tmp.dat <- list()
			for(case in 1:N)
				tmp.dat[[case]] <- makeSCDF(c(rnd.a[[i]][[case]], rnd.b[[i]][[case]]), B.start = length(rnd.a[[i]][[case]]) + 1)
			dist[i] <- .plm.mt(tmp.dat, type = 3)
		}
		obs.stat <- .plm.mt(data, type = 3)
		statistic <- "t-value of the level parameter in a piecewise-regression model"
	}

	if(statistic == "t plm slope") {
		dist <- numeric(number)
		for (i in 1:number) {
			tmp.dat <- list()
			for(case in 1:N)
				tmp.dat[[case]] <- makeSCDF(c(rnd.a[[i]][[case]], rnd.b[[i]][[case]]), B.start = length(rnd.a[[i]][[case]]) + 1)
			dist[i] <- .plm.mt(tmp.dat, type = 4)
		}
		obs.stat <- .plm.mt(data, type = 4)
		statistic <- "t-value of the slope parameter in a piecewise-regression model"
	}	
	
	if (!exclude.equal)
		test <- dist >= obs.stat
	else
		test <- dist > obs.stat

	p.value <- sum(test)/number
	
	### return
	
	if (output == "p") 
		return(p.value)
	
	
	if (graph){
		h <- hist(dist, plot = FALSE)
		lab <- paste0(round(h$counts/length(dist)*100,0), "%")
		xlim <- c(min(h$breaks,na.rm = TRUE), max(h$breaks,na.rm = TRUE))
		if(obs.stat < xlim[1]) 
			xlim[1] <- obs.stat
		if(obs.stat > xlim[2]) 
			xlim[2] <- obs.stat
		hist(dist, xlab = statistic, labels = lab, xlim = xlim, ylab = "Frequency", main = "Random distribution", col = "grey")
		abline(v = obs.stat, lty = 2, lwd = 2) 
		if (p.value < 0.5) pos <- 2 else pos <- 4
		text(obs.stat, max(h$counts,na.rm = TRUE), "observed value", pos = pos)
	}
	
	Z <- (obs.stat - mean(dist,na.rm = TRUE)) / sd(dist,na.rm = TRUE)
	p.Z.single <- 1 - pnorm(Z)
		
	if (output == "c") {
		possible.combinations <- cumprod(unlist(lapply(pos.startpts, length)))[N]

		out <- list(statistic = statistic, N = N, n1 = length(unlist(a)), n2 = length(unlist(b)), limit = limit, startpoints = startpoints, p.value = p.value, number = number, complete = complete, observed.statistic = obs.stat, Z = Z, p.Z.single = p.Z.single, distribution = dist, possible.combinations = possible.combinations, auto.corrected.number = auto.corrected.number)	
		class(out) <- c("sc","rand")
		out
	}
}


rci <- function(data, rel = 0.80, ci = 0.95, graph = FALSE) {
	data <- .SCprepareData(data)
	N <- length(data)
	if(N > 1)
		data <- makesingleSC(data)
	A <- lapply(data, function(x) x[,2][x[,1] == "A"])
	B <- lapply(data, function(x) x[,2][x[,1] == "B"])
	A <- unlist(A)
	B <- unlist(B)
	sA <- sd(A, na.rm = TRUE)
	sB <- sd(B, na.rm = TRUE)
	mA <- mean(A, na.rm = TRUE)
	mB <- mean(B, na.rm = TRUE)
	nA <- length(A)
	nB <- length(B)
	n <- nA + nB
	SE.A <- sA * sqrt(1 - rel)
	SE.B <- sB * sqrt(1 - rel)
	stand.dif <- (mB-mA)/sd(c(A,B))
	RCI.1 <- (mB - mA) / SE.A
	RCI.2 <- (mB - mA) / sqrt(2*SE.A*SE.A)
	RCI.3 <- (mB - mA)*rel + (mB - mA)*(1-rel) / (sqrt(rel)*sqrt(2*SE.A*SE.A))
	descriptives.ma <- matrix(c(nA,nB, mA,mB,sA,sB, SE.A, SE.B),2,4, dimnames = list(c("A-Phase","B-Phase"),c("n","mean", "SD", "SE"))) 
	z <- qnorm(ci+0.5*(1-ci))
	ci.ma <- matrix(NA, 2,2, byrow = TRUE, dimnames = list(c("A-Phase","B-Phase"),c("Lower", "Upper")))
	ci.ma[1,1] <- mA - z * SE.A
	ci.ma[1,2] <- mA + z * SE.A
	ci.ma[2,1] <- mB - z * SE.B
	ci.ma[2,2] <- mB + z * SE.B

	if(graph) {
	 dat <- cbind(ci.ma[1,], ci.ma[2,])
	 colnames(dat) <- c("A-Phase", "B-Phase")
	 main <- sprintf("%d%% confidence interval (rtt = %.2f)", ci*100, rel)
	 boxplot(dat, ylab = "Mean", main = main)
	}

	RCI.ma <- matrix(c(RCI.1, RCI.2, RCI.3), 3,1,dimnames = list(c("Jacobson et al.","Christensen and Mendoza","Hageman and Arrindell"), "RCI"))
	out <- list(RCI = RCI.ma, stand.dif = stand.dif, conf = ci.ma, conf.percent = ci, reliability = rel, descriptives = descriptives.ma, N = N, A = A, B = B) 
	class(out) <- c("sc","rci")

	out
}

pnd <- function(data, decreasing = FALSE) {

  data <- .SCprepareData(data)

	PND <- c()
	for(i in 1:length(data)) {
		A <- data[[i]][,2][data[[i]][,1] == "A"]
		B <- data[[i]][,2][data[[i]][,1] == "B"]
		if (!decreasing)
			PND[i] <- sum(B > max(A, na.rm = TRUE), na.rm = TRUE) / length(B) * 100
		if (decreasing)
			PND[i] <- sum(B < min(A, na.rm = TRUE), na.rm = TRUE) / length(B) * 100
	}
	out <- list(PND = PND)
	class(out) <- c("sc","PND")
	out
}

pem <- function(data, decreasing = FALSE, binom.test = TRUE, chi.test = FALSE, FUN = median, ...) {
  
  data <- .SCprepareData(data)
	N <- length(data)
	PEM <- rep(NA,N)
	chi <- rep(NA,N)
	chi.df <- rep(NA,N)
	chi.p <- rep(NA,N)
	binom.p <- rep(NA,N)
	
	for(i in 1:N) {
		A <- data[[i]][,2][data[[i]][,1] == "A"]
		B <- data[[i]][,2][data[[i]][,1] == "B"]
		if (!decreasing)
			PEM[i] <- mean(B > FUN(A, na.rm = TRUE,...), na.rm = TRUE) * 100
		if (decreasing)
			PEM[i] <- mean(B < FUN(A, na.rm = TRUE,...), na.rm = TRUE) * 100
		if(binom.test) {
			nB <- length(B)
			binom.p[i] <- binom.test(round(PEM[i] / 100  * nB), nB, alternative = ifelse(decreasing, "less", "greater"))$p.value
		}
		if(chi.test) {
			nB <- length(B)
			exceeding <- PEM[i] / 100  * nB
			res <- chisq.test(c(exceeding, nB - exceeding), p = c(0.5,0.5))
			chi[i] <- res$statistic
			chi.df[i] <- res$parameter
			chi.p[i] <- res$p.value
		}
	}
	stats.ma <- cbind(binom.p,chi, chi.df, chi.p)
	colnames(stats.ma) <- c("binom.p","Chi", "DF", "p")
	if(is.null(names(data)))
		names(data) <- paste("Case",1:N)
	rownames(stats.ma) <- names(data)
	
	out <- list(PEM = PEM, test = stats.ma, decreasing = decreasing)
	class(out) <- c("sc","PEM")
	out
}

pand <- function(data, decreasing = FALSE, correction = TRUE) {
	data <- .SCprepareData(data)
	
	phase.expected <- list()
	phase.real <- list()
	A <- list()
	B <- list()
	N <- length(data)
	for (i in 1:N) {
		A[[i]] <- data[[i]][2][data[[i]][1] == "A"]
		B[[i]] <- data[[i]][2][data[[i]][1] == "B"]
		if(class(data[[i]][[1]]) != "factor")
			data[[i]][[1]] <- factor(data[[i]][[1]])
		phase.real[[i]] <- as.numeric(data[[i]][order(data[[i]][2]),1])
		phase.expected[[i]] <- as.numeric(data[[i]][[1]])
		
	}	
	
	tmp <- getOption("warn")
	options(warn = -1)
	results.cor <- cor.test(unlist(phase.real), unlist(phase.expected), method = "kendall")
	options(warn = tmp)
	
	nA <- 0
	nB <- 0
	for (i in 1:N) {
		nA <- nA + length(A[[i]])
		nB <- nB + length(B[[i]])
	}
	
	n <- nA + nB

	OD.PP <- rep(NA,N)
	OD.A <- 0
	OD.B <- 0
	for (i in 1:N) {
		z <- data[[i]][2]
		n1 <- length(A[[i]])
		n2 <- length(B[[i]])
		n12 <- n1 + n2
		
		rang <- order(z, decreasing = decreasing)
		AB <- sum(rang[1:n1] > n1, na.rm = TRUE)
		BA <- sum(rang[(n1+1):n12] <= n1, na.rm = TRUE)
		if(correction) {
			ord <- z[rang,]
			AB <- AB + 0.5*sum(ord[1:n1] == min(ord[(n1+1):n12], na.rm = TRUE), na.rm = TRUE)
			BA <- BA + 0.5*sum(ord[(n1+1):n12] == max(ord[1:n1], na.rm = TRUE), na.rm = TRUE)
		}
		OD.PP[i] <- AB + BA
		OD.A <- OD.A + AB
		OD.B <- OD.B + BA
	}
	
	OD <- sum(OD.PP)
	POD <- OD / n * 100
	pA <- nA / n
	pB <- nB / n
	
	b <- OD.A / n
	c <- OD.B / n
	a <- pA - b
	d <- pB - c
	phi <- (a/(a + c))-(b/(b + d))
	PAND <- 100 - POD
	mat <- matrix(c(a,b,c,d), nrow = 2)
	mat2 <- mat * n
	out <- list(PAND = PAND, phi = phi, POD = POD, OD.PP = OD.PP, OD = OD, n = n, N = N, nA = nA, nB = nB, pA = pA, pB = pB, matrix = mat, matrix.counts = mat2, correlation = results.cor, correction = correction)
	class(out) <- c("sc","PAND")
	out
}




describeSC <- function(data, decreasing = FALSE) {
	data.list <- .SCprepareData(data)
	N <- length(data.list)
	case.names <- names(data.list)
	if (is.null(case.names))
		case.names <- paste("Case",1:N, sep = "")

    d.f <- data.frame(tmp = rep(NA,N))
  
	for(i in 1:N) {
		data <- data.list[[i]]
		A <- data[,2][data[,1] == "A"]
		B <- data[,2][data[,1] == "B"]
		d.f$acA[i] <- .SCac(A,1)
		d.f$acB[i] <- .SCac(B,1)
		d.f$nA[i] <- length(A)
		d.f$nB[i] <- length(B)
		d.f$nAB[i] <- d.f$nA[i] + d.f$nB[i]
		d.f$misA[i] <- sum(is.na(A),na.rm = TRUE) 
		d.f$misB[i] <- sum(is.na(B),na.rm = TRUE) 
		d.f$misAB[i] <- d.f$misA[i] + d.f$misB[i]
		d.f$mA[i] <- mean(A,na.rm = TRUE)
		d.f$mB[i] <- mean(B,na.rm = TRUE)
		d.f$minA[i] <- min(A,na.rm = TRUE)
		d.f$minB[i] <- min(B,na.rm = TRUE)
		d.f$maxA[i] <- max(A,na.rm = TRUE)
		d.f$maxB[i] <- max(B,na.rm = TRUE)
		trend <- trendSC(data)$trend
		d.f$bA[i] <- trend[2,2]
		d.f$bB[i] <- trend[3,2]
		d.f$bC[i] <- trend[1,2]
		d.f$bdif[i] <- d.f$bB[i] - d.f$bA[i]
		d.f$sdA[i] <- sd(A,na.rm = TRUE)
		d.f$sdB[i] <- sd(B,na.rm = TRUE)
		d.f$sdAB[i] <- sd(data[,2],na.rm = TRUE)
		d.f$dif[i] <- d.f$mB[i] - d.f$mA[i]
		d.f$smd1[i] <- d.f$dif[i]/d.f$sdA[i]
		d.f$smd2[i] <- d.f$dif[i]/d.f$sdB[i]
		d.f$smd3[i] <- d.f$dif[i]/d.f$sdAB[i]
		d.f$PND[i] <- pnd(data, decreasing = decreasing)$PND
		d.f$PEM[i] <- pem(data, decreasing = decreasing, binom.test = FALSE, chi.test = FALSE)$PEM
		d.f$NAP[i] <- nap(data, decreasing = decreasing)$NAP
		d.f$PAND[i] <- pand(data, decreasing = decreasing)$PAND
		d.f$TAU_U[i] <- tauUSC(data)$tau_u
		}

	if(N > 1) {
		N <- N + 1
		d.f[N,"tmp"] <- NA
		d.f$nA[N] <- sum(d.f$nA,na.rm = TRUE)
		d.f$nB[N] <- sum(d.f$nB,na.rm = TRUE)
		d.f$nAB[N] <- sum(d.f$nAB,na.rm = TRUE)
		d.f$misA[N] <- sum(d.f$misA,na.rm = TRUE)
		d.f$misB[N] <- sum(d.f$misB,na.rm = TRUE)
		d.f$misAB[N] <- sum(d.f$misAB,na.rm = TRUE)
		d.f$mA[N] <- mean(d.f$mA,na.rm = TRUE)
		d.f$mB[N] <- mean(d.f$mB,na.rm = TRUE)
		d.f$dif[N] <- mean(d.f$dif,na.rm = TRUE)
		d.f$minA[N] <- min(d.f$minA,na.rm = TRUE)
		d.f$minB[N] <- min(d.f$minB,na.rm = TRUE)
		d.f$maxA[N] <- max(d.f$maxA,na.rm = TRUE)
		d.f$maxB[N] <- max(d.f$maxB,na.rm = TRUE)
		d.f$sdA[N] <- sqrt(mean(d.f$sdA^2,na.rm = TRUE))
		d.f$sdB[N] <- sqrt(mean(d.f$sdB^2,na.rm = TRUE))
		d.f$sdAB[N] <- sqrt(mean(d.f$sdAB^2,na.rm = TRUE))
		d.f$smd1[N] <- mean(d.f$smd1,na.rm = TRUE)
		d.f$smd2[N] <- mean(d.f$smd2,na.rm = TRUE)
		d.f$smd3[N] <- mean(d.f$smd3,na.rm = TRUE)
		d.f$acA[N] <- mean(d.f$acA,na.rm = TRUE)
		d.f$acB[N] <- mean(d.f$acB,na.rm = TRUE)
		d.f$bA[N] <- mean(d.f$bA,na.rm = TRUE)
		d.f$bB[N] <- mean(d.f$bB,na.rm = TRUE)
		d.f$bC[N] <- mean(d.f$bC,na.rm = TRUE)
		d.f$bdif[N] <- mean(d.f$bdif,na.rm = TRUE)
		d.f$PND[N] <- mean(d.f$PND,na.rm = TRUE)
		d.f$PEM[N] <- mean(d.f$PEM,na.rm = TRUE)
		d.f$NAP[N] <- mean(d.f$NAP,na.rm = TRUE)
		d.f$PAND[N] <- mean(d.f$PAND,na.rm = TRUE)
		d.f$TAU_U[N] <- mean(d.f$TAU_U,na.rm = TRUE)
		rownames(d.f) <- c(case.names, "total")
	}
	if(N == 1)
		rownames(d.f) <- c(case.names)

	out <- list(descriptives = d.f[,-1])
	class(out) <- c("sc","describe")
	out
}


trendSC <- function(data, B.offset = -1,model = NA) {
	data <- .SCprepareData(data)
	
	N <- length(data)
	if(N == 1)
		data <- data[[1]]

	if(N > 1)
		data <- makesingleSC(data)[[1]]
	
	data.A <- subset(data, phase == "A")
	data.B <- subset(data, phase == "B")
	data.B$mt <- data.B$mt - min(data.B$mt) + 1 + B.offset
	
	rows <- 6
	row.names <- c("Linear.AB","Linear.A","Linear.B","Squared.AB","Squared.A","Squared.B")

	out <- c(
		.SCbeta(lm(values~mt, data = data)), 
		.SCbeta(lm(values~mt, data = data.A)),
		.SCbeta(lm(values~mt, data = data.B)),
		.SCbeta(lm(values~I(mt^2), data = data)),
		.SCbeta(lm(values~I(mt^2), data = data.A)),
		.SCbeta(lm(values~I(mt^2), data = data.B))
		)
	
	if(!is.na(model[1])) {
		for(i in 1:length(model)) {
			out <- c(out,
				.SCbeta(lm(as.formula(model[i]), data = data)),
				.SCbeta(lm(as.formula(model[i]), data = data.A)),
				.SCbeta(lm(as.formula(model[i]), data = data.B))
				)
		}
		rows <- rows + length(model) * 3
		if(is.null(names(model)))
			names(model) <- model
		row.names <- c(row.names,paste(rep(names(model), each = 3), rep(c("AB","A","B")), sep = "."))
	}

	out <- matrix(out,rows,3, byrow = TRUE, dimnames = list(row.names, c("Intercept", "B","Beta")))
	out <- list(trend = out, N = N, B.offset = B.offset)
	class(out) <- c("sc","trend")
	out
}

plm <- function(data, AR = NULL, model = "B&L-B", count.data = FALSE, family = ifelse(count.data, "poisson", "gaussian"),...) {

  data <- .SCprepareData(data)

  N <- length(data)
  
  if(N == 1)
    data <- data[[1]]
  
  if(N > 1)
    stop("Procedure could not be applied for more than one case.\nConsider to use the hplm function.")
  
  
	if (!is.null(AR)) {
		return(.plm.ar(data = data, AR = AR, model = model))
	}

	
	#### to do multiple baseline
	
	data <- na.omit(data)
	
	### model definition
	y <- data[,2]
	n1 <- sum(data[,1] == "A")
	n2 <- sum(data[,1] == "B")
	
	if(model == "H-M") {
		MT <- data[,3]
		D <- c(rep(0, n1), rep(1, n2))
		inter <- (MT-MT[n1+1])*D	
	} else if (model == "B&L-B") {
		MT <- data[,3]
		D <- c(rep(0, n1), rep(1, n2))
		inter <- (MT-MT[n1])*D	
	} else if (model == "Mohr#1") {
		MT <- data[,3]
		D <- c(rep(0, n1), rep(1, n2))
		inter <- MT*D	
	} else if (model == "Mohr#2") {
		MT <- data[,3]
		D <- c(rep(0, n1), rep(1, n2))
		inter <- (MT-MT[n1+1])*D
		MT <- MT-MT[n1+1]
	} else if (model == "Manly") {
		MT <- data[,3]
		D <- c(rep(0, n1), rep(1, n2))
		inter <- MT*D
	} else stop("Wrong model definition!\n")

	if(family == "nbinomial") {
		full <- glm.nb(y ~ 1 + MT + D + inter)
		lr1 <- glm.nb(y ~ 1 + MT + D)
		lr2 <- glm.nb(y ~ 1 + MT + inter)
		lr3 <- glm.nb(y ~ 1 + D + inter)
	} else {
		full <- glm(y ~ 1 + MT + D + inter, family = family,...)
		lr1 <- glm(y ~ 1 + MT + D, family = family,...)
		lr2 <- glm(y ~ 1 + MT + inter, family = family,...)
		lr3 <- glm(y ~ 1 + D + inter, family = family,...)
	}
	
	full.I <- full$coefficients[[1]]
	full.T <- full$coefficients[[2]]
	full.D <- full$coefficients[[3]]
	full.TxD <- full$coefficients[[4]]
	
	### inference
	df2.full <- full$df.residual
	QSE <- sum(full$residuals^2, na.rm = TRUE)
	QST <- sum((y-mean(y))^2, na.rm = TRUE)
	MQSA <- (QST - QSE) / 3
	MQSE <- QSE / df2.full
	F.full <- MQSA / MQSE
	p.full <- pf(F.full,3,df2.full, lower.tail = FALSE)
	r2.full <- 1 - (QSE / QST)
	r2.full.adj <- r2.full-(1-r2.full)*(3/(length(y)-3-1))
	
	r2.full <- 1-(var(full$residuals, na.rm = TRUE)/var(y, na.rm = TRUE))
	r2.lr1 <- 1-(var(lr1$residuals, na.rm = TRUE)/var(y, na.rm = TRUE))
	r2.lr2 <- 1-(var(lr2$residuals, na.rm = TRUE)/var(y, na.rm = TRUE))
	r2.lr3 <- 1-(var(lr3$residuals, na.rm = TRUE)/var(y, na.rm = TRUE))

	test.slope <- anova(lr1, full)
	p.slope <- test.slope$"Pr(>F)"[2]
	F.slope <- test.slope$F[2]
	ES.slope <- r2.full-r2.lr1

	test.level <- anova(lr2, full)
	p.level <- test.level$"Pr(>F)"[2]
	F.level <- test.level$F[2]
	ES.level <- r2.full-r2.lr2

	test.trend <- anova(lr3, full)
	p.trend <- test.trend$"Pr(>F)"[2]
	F.trend <- test.trend$F[2]
	ES.trend <- r2.full-r2.lr3

	### output
	out <- list(model = model, F = F.full, df1 = 3, df2 = df2.full, p = p.full, R2 = r2.full, R2.adj = r2.full.adj, n1 = n1, n2 = n2, count.data = count.data, I = full.I, T = full.T, D = full.D, TxD = full.TxD, F.slope = F.slope, p.slope = p.slope, ES.slope = ES.slope, F.level = F.level, p.level = p.level, ES.level = ES.level, F.trend = F.trend, p.trend = p.trend, ES.trend = ES.trend, full.model = full, MT = MT, data = data, N = N, family = family)
	class(out) <- c("sc", "pr")
	out
}

hplm <- function(data, model = "B&L-B", method = "ML", control = list(opt = "optim"), random.slopes = TRUE, ICC = TRUE) {
  dat <- .SCprepareData(data)
  N <- length(dat)
  for(i in 1:N) {
    n1 <- sum(dat[[i]]$phase == "A")
    dat[[i]]$D <- ifelse(dat[[i]]$phase == "A",0,1)
    for(j in 1:nrow(dat[[i]])) {
      if(model == "H-M")
        dat[[i]]$inter[j] <- (dat[[i]]$mt[j]-dat[[i]]$mt[n1+1])*dat[[i]]$D[j]
      if(model == "B&L-B")
        dat[[i]]$inter[j] <- (dat[[i]]$mt[j]-dat[[i]]$mt[n1])*dat[[i]]$D[j]
    }
  }
  dat <- longSCDF(dat)
  out <- list()
  out$model <- model
  out$method <- method
  out$N <- N
  out$analyze.random.slopes <- random.slopes
  out$analyze.ICC <- ICC
  if(!random.slopes)
	out$random.intercept$model <- lme(values ~ mt + D + inter, random =~1|case, data = dat, na.action=na.omit, method = method, control=control)
  if(random.slopes) {
    #out$random.trend$model <- lme(values ~ mt + D + inter, random =~ 1 + mt|case, data = dat, na.action=na.omit, method = method, control=control)
    #out$random.level$model <- lme(values ~ mt + D + inter, random =~ 1 + D|case, data = dat, na.action=na.omit, method = method, control=control)
    #out$random.slope$model <- lme(values ~ mt + D + inter, random =~ 1 + inter|case, data = dat, na.action=na.omit, method = method, control=control)
    out$random.trend.level$model <- lme(values ~ mt + D + inter, random =~ 1 + mt + D |case, data = dat, na.action=na.omit, method = method, control=control)
    out$random.trend.slope$model <- lme(values ~ mt + D + inter, random =~ 1 + mt + inter|case, data = dat, na.action=na.omit, method = method, control=control)
    out$random.level.slope$model <- lme(values ~ mt + D + inter, random =~ 1 + D + inter|case, data = dat, na.action=na.omit, method = method, control=control)
    out$random.trend.level.slope$model <- lme(values ~ mt + D + inter, random =~ 1 + mt + D + inter|case, data = dat, na.action=na.omit, method = method, control=control)
    out$random.nointercept.trend.level.slope$model <- lme(values ~ mt + D + inter, random =~ -1 + mt + D + inter|case, data = dat, na.action=na.omit, method = method, control=control)
    out$random.trend$LR.test <- anova(out$random.level.slope$model, out$random.trend.level.slope$model)
    out$random.level$LR.test <- anova(out$random.trend.slope$model, out$random.trend.level.slope$model)
    out$random.slope$LR.test <- anova(out$random.trend.level$model, out$random.trend.level.slope$model)
	out$random.nointercept.trend.level.slope$LR.test <- anova(out$random.nointercept.trend.level.slope$model, out$random.trend.level.slope$model)
	
	}
  if(ICC) {
    out$model.0 <- lme(values ~ 1, random =~1|case, data = dat, method = method, na.action=na.omit, control = control)
    VC <- as.numeric(VarCorr(out$model.0))
    out$ICC <- VC[1]/(VC[1]+VC[2])	
    out$model.without <- gls(values ~ 1, data = dat, method = method, na.action=na.omit, control = control)
    dif <- anova(out$model.0, out$model.without)
    out$L.ICC <- dif$L.Ratio[2]
    out$p.ICC <- dif$"p-value"[2]
  } 

  class(out) <- c("sc","hplm")
  
  out
}



.plm.ar <- function(data, AR = 2, model = "B&L-B") {

  data <- .SCprepareData(data)
	
	#### to do multiple baseline
	N <- length(data)
	
	if(N == 1)
		data <- data[[1]]

	if(N > 1)
		data <- makesingleSC(data)[[1]]
	
	### extracting variables
	y <- data[,2]
	n1 <- sum(data[,1] == "A")
	n2 <- sum(data[,1] == "B")

	### descriptive
	if(model == "H-M") {
		MT <- data[,3]
		D <- c(rep(0, n1), rep(1, n2))
		inter <- (MT-MT[n1+1])*D	
	} else if (model == "B&L-B") {
		MT <- data[,3]
		D <- c(rep(0, n1), rep(1, n2))
		inter <- (MT-MT[n1])*D	
	} else if (model == "Mohr#1") {
		MT <- data[,3]
		D <- c(rep(0, n1), rep(1, n2))
		inter <- MT*D	
	} else if (model == "Mohr#2") {
		MT <- data[,3]
		D <- c(rep(0, n1), rep(1, n2))
		inter <- (MT-MT[n1+1])*D
		MT <- MT-MT[n1+1]
	} else if (model == "Manly") {
		MT <- data[,3]
		D <- c(rep(0, n1), rep(1, n2))
		inter <- MT*D
	}	
	
	
	if(AR > 0)
		full <- gls(y ~ 1 + MT + D + inter, correlation=corARMA(p=AR), method="ML")
	if(AR == 0)
		full <- gls(y ~ 1 + MT + D + inter, method="ML")

	full.I <- full$coefficients[[1]]
	full.T <- full$coefficients[[2]]
	full.D <- full$coefficients[[3]]
	full.TxD <- full$coefficients[[4]]

	### inference
	df2.full <- full$dims$N - full$dims$p
	QSE <- sum(full$residuals^2, na.rm = TRUE)
	QST <- sum((y-mean(y))^2, na.rm = TRUE)
	MQSA <- (QST - QSE) / 3
	MQSE <- QSE / df2.full
	F.full <- MQSA / MQSE
	p.full <- pf(F.full,3,df2.full, lower.tail = FALSE)
	r2.full <- 1 - (QSE / QST)
	r2.full.adj <- r2.full-(1-r2.full)*(3/(length(y)-3-1))
	
	if(AR > 0) {
		lr1 <- gls(y ~ 1 + MT + D, correlation=corARMA(p=AR), method="ML")
		lr2 <- gls(y ~ 1 + MT + inter, correlation=corARMA(p=AR), method="ML")
		lr3 <- gls(y ~ 1 + D + inter, correlation=corARMA(p=AR), method="ML")
	}
	if(AR == 0) {
		lr1 <- gls(y ~ 1 + MT + D, method="ML")
		lr2 <- gls(y ~ 1 + MT + inter, method="ML")
		lr3 <- gls(y ~ 1 + D + inter, method="ML")
	}
	r2.full <- 1-(var(full$residuals, na.rm = TRUE)/var(y, na.rm = TRUE))
	r2.lr1 <- 1-(var(lr1$residuals, na.rm = TRUE)/var(y, na.rm = TRUE))
	r2.lr2 <- 1-(var(lr2$residuals, na.rm = TRUE)/var(y, na.rm = TRUE))
	r2.lr3 <- 1-(var(lr3$residuals, na.rm = TRUE)/var(y, na.rm = TRUE))

	test.slope <- anova(lr1, full)
	p.slope <- test.slope$"Pr(>F)"[2]
	F.slope <- test.slope$F[2]
	ES.slope <- r2.full-r2.lr1

	test.level <- anova(lr2, full)
	p.level <- test.level$"Pr(>F)"[2]
	F.level <- test.level$F[2]
	ES.level <- r2.full-r2.lr2

	test.trend <- anova(lr3, full)
	p.trend <- test.trend$"Pr(>F)"[2]
	F.trend <- test.trend$F[2]
	ES.trend <- r2.full-r2.lr3
	
	### output
	out <- list(model = model, F = F.full, df1 = 3, df2 = df2.full, p = p.full, R2 = r2.full, R2.adj = r2.full.adj, n1 = n1, n2 = n2, I = full.I, T = full.T, D = full.D, TxD = full.TxD, F.slope = F.slope, p.slope = p.slope, ES.slope = ES.slope, F.level = F.level, p.level = p.level, ES.level = ES.level, F.trend = F.trend, p.trend = p.trend, ES.trend = ES.trend,full.model = full, MT = MT, data = data, ar = AR, N = N, count.data = FALSE, family = "gaussian")
	class(out) <- c("sc", "plm.ar")
	out
}



.plm.mt <- function(data, type = "level p", model = "B&L-B", count.data = FALSE) {
	N <- length(data)
	if(N > 1)
		data <- makesingleSC(data)[[1]]
	if(class(data)=="list")
		data <- data[[1]]
	if(ncol(data) < 3)
		data[,3] <- 1:nrow(data)

	y <- data[,2]
	n1 <- sum(data[,1] == "A")
	n2 <- sum(data[,1] == "B")
	
	if(model == "H-M") {
		MT <- data[,3]
		D <- c(rep(0, n1), rep(1, n2))
		inter <- (MT-MT[n1+1])*D	
	} else if (model == "B&L-B") {
		MT <- data[,3]
		D <- c(rep(0, n1), rep(1, n2))
		inter <- (MT-MT[n1])*D	
	} else if (model == "Mohr#1") {
		MT <- data[,3]
		D <- c(rep(0, n1), rep(1, n2))
		inter <- MT*D	
	} else if (model == "Mohr#2") {
		MT <- data[,3]
		D <- c(rep(0, n1), rep(1, n2))
		inter <- (MT-MT[n1+1])*D
		MT <- MT-MT[n1+1]
	} else if (model == "Manly") {
		MT <- data[,3]
		D <- c(rep(0, n1), rep(1, n2))
		inter <- MT*D
	}	
	
	if(count.data) {
		full <- glm(I(round(y)) ~ 1 + MT + D + inter, family = "poisson")
	} else full <- lm(y ~ 1 + MT + D + inter)

	if (type == "1" || type == "level p")
		return(summary(full)$coef[3,4])
	if (type == "2" || type == "slope p")
		return(summary(full)$coef[4,4])
	if (type == "3" || type == "level t") 
		return(summary(full)$coef[3,3])
	if (type == "4" || type == "slope t")
		return(summary(full)$coef[4,3])
	if (type == "5" || type == "level B")
		return(summary(full)$coef[3,1])
	if (type == "6" || type == "slope B")
		return(summary(full)$coef[4,1])
	if (type == "model")
		return(full)
		
}

pet <- function(data, ci = 0.95, decreasing = FALSE) {

  data <- .SCprepareData(data)

	N <- length(data)
	
	if (ci != 0) se.factor <- qnorm(ci) else se.factor <- 0 
	
	pet <- rep(NA, N)
	pet.ci <- rep(NA, N)
	p <- rep(NA, N)
	for(i in 1:N) {
		model <- lm(values~mt, data = data[[i]][data[[i]][,1] == "A",], na.action = na.omit)
		B <- data[[i]][data[[i]][,1] == "B",]
		res <- predict(model, B, se.fit = TRUE)
		nB <- nrow(B)
		if(!decreasing) {
				pet.ci[i] <- mean(B$values > (res$fit + res$se.fit * se.factor), na.rm = TRUE)*100
				pet[i] <- mean(B$values > res$fit, na.rm = TRUE)*100
				p[i] <- binom.test(sum(B$values > res$fit, na.rm=TRUE), nB, alternative = "greater")$p.value
		} else {
				pet.ci[i] <- mean(B$values < (res$fit - res$se.fit * se.factor), na.rm = TRUE)*100
				pet[i] <- mean(B$values < res$fit, na.rm = TRUE)*100
				p[i] <- binom.test(sum(B$values < res$fit, na.rm = TRUE), nB, alternative = "less")$p.value
		}
	}
	if(is.null(names(data)))
		names(data) <- paste("Case",1:N)
	
	out <- list(PET = pet, PET.ci = pet.ci, p = p, ci.percent = ci * 100, se.factors = se.factor, N = N, decreasing = decreasing, case.names = names(data))
	class(out) <- c("sc","PET")
	out
}

nap <- function(data, decreasing = FALSE) {
	
  data <- .SCprepareData(data)
	N <- length(data)
	if(N == 1)
		data <- data[[1]]
	if(N > 1)
		data <- makesingleSC(data)[[1]]
	
	A <- data[data[,1] == "A",2]
	B <- data[data[,1] == "B",2]
	n1 <- length(A)
	n2 <- length(B)
	
	pairs <- n1 * n2
	if (!decreasing)
		pos <- pairs - sum(sapply(A,function(x)x>=B), na.rm = TRUE)
	if (decreasing)
		pos <- pairs - sum(sapply(A,function(x)x<=B), na.rm = TRUE)
	
	ties <- sum(sapply(A,function(x)x==B), na.rm = TRUE)
	NAP <- (pos + (0.5 * ties)) / pairs 
	
	out <- list(NAP = NAP*100, N = N)
	class(out) <- c("sc","NAP")
	out
}


tauUSC <- function (data, ties.method = "omit") {
  data <- .SCprepareData(data)
  N <- length(data)
  if(N == 1)
    data <- data[[1]]
  
  if(N > 1)
    stop("Procedure could not be applied for more than one case.\n")

  out <- matrix(rep(NA,6*5),6,5, dimnames= list(c("A vs. B","Trend A","Trend B","Full","A vs. B + Trend B", "A vs. B + Trend B - Trend A"),c("pairs", "pos", "neg","S","Tau")))
  
  out <- as.data.frame(out)
  
  A <- data[data[,1] == "A",2]
  B <- data[data[,1] == "B",2]
  
  AB <- c(A,B)
  nA <- length(A)
  nB <- length(B)
  nAB <- nA+nB
  
  tau_m <- matrix(NA, nrow = nAB, ncol = nAB, dimnames = (list(AB,AB)))
  tmp <- t(sapply(AB,function(x) x > AB))
  tau_m[tmp] <- "-"
  tmp <- t(sapply(AB,function(x) x < AB))
  tau_m[tmp] <- "+"
  tmp <- t(sapply(AB,function(x) x == AB))
  tau_m[tmp] <- "T"
  
  diag(tau_m) <- 0
  
  pos.s <- c("+")
  neg.s <- c("-")
  if(ties.method == "positive") 
	pos.s <- c("+","T")
  if(ties.method == "negative") 
	neg.s <- c("-","T")
   
  
  tau_m[lower.tri(tau_m)] <- ""

  AvBm <- tau_m[1:nA,(nA+1):nAB]
  AvBpos <- sum(AvBm%in%pos.s)
  AvBneg <- sum(AvBm%in%neg.s)
  
  AvAm <- tau_m[1:nA,1:nA]
  AvApos <- sum(AvAm%in%pos.s)
  AvAneg <- sum(AvAm%in%neg.s)
  
  BvBm <- tau_m[(nA+1):nAB,(nA+1):nAB]
  BvBpos <- sum(BvBm%in%pos.s)
  BvBneg <- sum(BvBm%in%neg.s)
  
  out$pairs <- c(nA*nB, (nA*(nA-1))/2, (nB*(nB-1))/2, (nAB*(nAB-1))/2, nA*nB + (nB*(nB-1))/2, (nAB*(nAB-1))/2)
  out$pos <- c(AvBpos,AvApos,BvBpos,AvApos+BvBpos+AvBpos, AvBpos+BvBpos, AvBpos+BvBpos+AvAneg)
  out$neg <- c(AvBneg,AvAneg,BvBneg,AvAneg+BvBneg+AvBneg, AvBneg+BvBneg, AvBneg+BvBneg+AvApos)
  out$S <- out$pos-out$neg
  out$Tau <- out$S / out$pairs
  out <- list(table = out, matrix = tau_m, tau_u = out$Tau[6])
  class(out) <- c("sc","TAU-U")
  out
}

fillmissingSC <- function(data, interpolation = "linear", na.rm = TRUE) {
		data <- .SCprepareData(data)
		N <- length(data)
		for(i in 1:N) {
			dat <- data[[i]]
			if (na.rm)
			  dat <- dat[!is.na(dat$values),]
			new.dat <- dat
			for(j in 1 : (nrow(dat)-1)) {
				if(dat$mt[j+1] - dat$mt[j] != 1){
					if(interpolation == "linear")
						step.size <- (dat$values[j+1] - dat$values[j]) / (dat$mt[j+1] - dat$mt[j])
					for(k in (dat$mt[j]+1) : (dat$mt[j+1]-1)) {
						tmp <- dat[j, ]
						tmp$mt <- k
						if(interpolation == "linear")
							tmp$values <- dat$values[j] + step.size * (k - dat$mt[j])
						new.dat <- rbind(new.dat, tmp) 
					}
				}
			}
			data[[i]] <- new.dat[order(new.dat$mt),]
		}
	data
}


smoothSC <- function(data, FUN = "movingMedian", intensity = NULL){
	data <- .SCprepareData(data)
	if (FUN == "movingMean") {
		if(is.null(intensity)) intensity <- 1
		return(lapply(data, function(x) {
				x[,2] <- .SCmovingAverage(x[,2], intensity, mean)
				x}))
	}
	if (FUN == "movingMedian") {
		if(is.null(intensity)) intensity <- 1
		return(lapply(data, function(x) {
				x[,2] <- .SCmovingAverage(x[,2], intensity, median)
				x}))
	}
	if (FUN == "localRegression") {
		if(is.null(intensity)) intensity <- 0.2
		return(lapply(data, function(x) {
				xval <- x[,3]
				xval <- xval[!is.na(x[,2])]
				yval <- x[!is.na(x[,2]),2]
				x[,2] <- lowess(yval~xval, f = intensity)$y
				x}))
	}
}	


outlierSC <- function(data, criteria = c("SD", "2")){

  data.list <- .SCprepareData(data)
	
  out <- list()
  
  N <- length(data.list)
	case.names <- names(data.list)
  dropped.mts <- list()
  dropped.n <- list()
  ci.matrix <- list()
  sd.matrix <- list()
  cook <- list()

  if(is.null(case.names))
		case.names <- paste("Person", 1:N, sep = "")

	for(i in 1:N) {
		data <- data.list[[i]]
		A <- data[,2][data[,1] == "A"]
		B <- data[,2][data[,1] == "B"]
		if (criteria[1] == "CI") {
			cut.off <- as.numeric(criteria[2])
			fac <- qnorm((1-cut.off)/2, lower.tail = FALSE)
			critA.upper <- mean(A) + fac * (sd(A)/sqrt(length(A)))
			critA.lower <- mean(A) - fac * (sd(A)/sqrt(length(A)))
			critB.upper <- mean(B) + fac * (sd(B)/sqrt(length(B)))
			critB.lower <- mean(B) - fac * (sd(B)/sqrt(length(B)))
			filterA <- (A < critA.lower) | (A > critA.upper)
			filterB <- (B < critB.lower) | (B > critB.upper)
			filterAB <- c(filterA, filterB)
			mat <- matrix(c(critA.lower, critB.lower, critA.upper, critB.upper), nrow = 2, dimnames = list(c("A-phase","B-phase"), c("lower", "upper")))
			ci.matrix[[i]] <- mat
		}
		if (criteria[1] == "SD") {
			SD <- as.numeric(criteria[2])
			critA.upper <- mean(A) + SD * sd(A)
			critA.lower <- mean(A) - SD * sd(A)
			critB.upper <- mean(B) + SD * sd(B)
			critB.lower <- mean(B) - SD * sd(B)
			filterA <- (A < critA.lower) | (A > critA.upper)
			filterB <- (B < critB.lower) | (B > critB.upper)
			filterAB <- c(filterA, filterB)
			mat <- matrix(c(critA.lower, critB.lower, critA.upper, critB.upper), nrow = 2, dimnames = list(c("A-phase","B-phase"), c("lower", "upper")))
			sd.matrix[[i]] <- mat
		}		
		if (criteria[1] == "Cook") {
			if (criteria[2] == "4/n")
				cut.off <- 4/(length(A)+length(B))
			else
				cut.off <- as.numeric(criteria[2])
			n1 <- length(A)
			MT <- data[,3]
			values <- data[,2]
			T <- MT[n1+1]
			D <- c(rep(0, length(A)), rep(1, length(B)))
			int <-  D * (MT - T)
			reg <- lm(values ~ 1 + MT + D + int)
			cd <- cooks.distance(reg)
			filterAB <- cd >= cut.off
			cook[[i]] <- data.frame(Cook = round(cd,2), MT = MT)
		}		
		    
		#data.list[[i]][,4] <- filterAB
		#names(data.list[[i]])[4] <- "outlier"
		dropped.mts[[i]] <- data.list[[i]]$mt[filterAB]
		dropped.n[[i]] <- sum(filterAB)
    
    data.list[[i]] <- data.list[[i]][!filterAB,]
	}
  
  out$data <- data.list
  out$dropped.mt <- dropped.mts
  out$dropped.n <- dropped.n
  out$ci.matrix <- ci.matrix
  out$sd.matrix <- sd.matrix
  out$cook <- cook
  out$criteria <- criteria
  out$N <- N
  out$case.names <- case.names
  class(out) <- c("sc","outlier")
	out
}


plotSC <- function(data, ylim = NULL, xlim = NULL, fill = "", lines = "", marks = NULL, annotations = NULL, phase.names = c("A","B"), FUN.AB = NULL, xlab = "Measurement time", ylab = "Score", text.ABlag = NULL, lwd = 2, pch = 17, type = "b", mai = c(0.6, 0.82, 0.2, 0.42), ...) {
  data.list <- .SCprepareData(data)

  
  annotations.cex <- 0.8 ### maybe for later implementation as an argument
  
  case.names <- names(data.list)
  
  if(class(lines) != "list")
    lines <- lapply(lines,function(x) x)
  
  
  if(!is.null(names(lines))) {
    id <- which(names(lines)=="")
    names(lines)[id] <- lines[id]
    lines[id] <- NA
  } else {
    tmp <- lines
    lines <- rep(NA, length(lines))
    names(lines) <- tmp
  }
  
  N <- length(data.list)
  if(N > 1) op <- par(mfrow = c(N, 1)) else op <- par(lwd = par()$lwd)
  
  values.tmp <- unlist(lapply(data.list, function(x) x[,2]))
  mt.tmp <- unlist(lapply(data.list, function(x) x[,3]))
  
  
  if (is.null(ylim))
    ylim <- c(min(values.tmp, na.rm = TRUE), max(values.tmp, na.rm = TRUE))
  if (is.null(xlim))
    xlim <- c(min(mt.tmp, na.rm = TRUE), max(mt.tmp, na.rm = TRUE))
  
  if (!is.null(text.ABlag))
    text.ABlag <- rep(text.ABlag, length.out = N)
  
  par(cex = 1)
  par(mex = 1)
  par(mgp = c(2,1,0))
  for(i in 1:N) {
    data <- data.list[[i]]
    A <- data[,2][data[,1] == "A"]
    B <- data[,2][data[,1] == "B"]
    n1 <- length(A)
    n2 <- length(B)
    
    y.lim <- ylim
    if(is.na(ylim[2]))
      y.lim[2] <- max(data[,2])
    if(is.na(ylim[1]))
      y.lim[1] <- min(data[,2])
    
    if (i == N) {
      par(mai = mai)
      plot(data[,3], data[,2], xlab = xlab, type = "n", xlim = xlim, ylim = y.lim, ylab = ylab, lwd = lwd, pch = pch, xaxp = c(xlim[1],xlim[2],xlim[2] - xlim[1]), ...)
    }
    else {
      if (i == 1)
        par(mai = c(0.2, 0.82, 0.6, 0.42))
      else  
        par(mai = c(0.4, 0.82, 0.4, 0.42))
      plot(data[,3], data[,2], xaxt = "n", xlab = "", lwd = lwd, type = "n", xlim = xlim, ylim = y.lim, ylab = ylab, pch = pch)
    }
    Ax <- data[1:n1,3]
    Ax <- Ax[!is.na(A)]
    Bx <- data[(n1+1):(n1+n2),3]
    Bx <- Bx[!is.na(B)]
    A <- A[!is.na(A)]
    B <- B[!is.na(B)]
    if(fill != "") {
      .SCfill(Ax,A, y.lim[1], fill)
      .SCfill(Bx,B, y.lim[1],fill)		
    }
    lines(Ax, A, type = type, pch = pch, lwd = lwd, ...)
    lines(Bx, B, type = type, pch = pch, lwd = lwd, ...)
    
    if(!is.null(marks)) {
      marks.cex <- 1
      marks.col <- "red"
      marks.pch <- pch
      
      if (any(names(marks) == "positions")) {
        marks.pos <- marks[[which(names(marks) == "positions")]]
      } else {stop("Positions of marks must be defined.")}
      
      if (any(names(marks) == "cex")) {
        marks.cex <- marks[[which(names(marks) == "cex")]]
      }
      if (any(names(marks) == "col")) {
        marks.col <- marks[[which(names(marks) == "col")]]
      }
      if (any(names(marks) == "pch")) {
        marks.pch <- marks[[which(names(marks) == "pch")]]
      }
      
      
      if(class(marks.pos) == "numeric") {
        mks <- marks.pos
      } else {
        mks <- marks.pos[[i]]
      }
      
      marks.x <- Ax[Ax%in%mks]
      marks.x <- c(marks.x,Bx[Bx%in%mks])
      marks.y <- A[Ax%in%mks]
      marks.y <- c(marks.y,B[Bx%in%mks])
      
      points(x = marks.x, y = marks.y, pch = marks.pch, cex = marks.cex, col = marks.col)
      
    }
    
    if(!is.null(annotations)) {
      annotations.cex <- 1
      annotations.round <- 1
      annotations.col <- "black"
      annotations.pos <- 3
      annotations.offset <- 0.5
      
      if (any(names(annotations) == "cex")) {
        annotations.cex <- annotations[[which(names(annotations) == "cex")]]
      }
      if (any(names(annotations) == "col")) {
        annotations.col <- annotations[[which(names(annotations) == "col")]]
      }
      if (any(names(annotations) == "round")) {
        annotations.round <- annotations[[which(names(annotations) == "round")]]
      }
      if (any(names(annotations) == "pos")) {
        annotations.pos <- annotations[[which(names(annotations) == "pos")]]
      }
      if (any(names(annotations) == "offset")) {
        annotations.offset <- annotations[[which(names(annotations) == "offset")]]
      }


      annotations.label.A <- round(A, annotations.round)
      annotations.label.B <- round(B, annotations.round)        
      
      ### not yet implemented
      if (any(names(annotations) == "label")) {
        id <- which(names(annotations) == "label")
        if(annotations[[id]]=="values") {
          #annotations.label.A <- round(A, annotations.round)
          #annotations.label.B <- round(B, annotations.round)
        } else {
          
        }
      }
      
      text(Ax,A, label = annotations.label.A, col = annotations.col, pos = annotations.pos, offset = annotations.offset, cex = annotations.cex)
      text(Bx,B, label = annotations.label.B, col = annotations.col, pos = annotations.pos, offset = annotations.offset, cex = annotations.cex)
    }

    
    label <- ""
    labelxy <- c(0,0)
    lty.line <- "dashed"
    lwd.line <- 2
    col.line <- "black"
    
    if (any(names(lines) == "lty")) {
      id <- which(names(lines) == "lty")
      lty.line <- lines[[id]]
    }
    if (any(names(lines) == "col")) {
      id <- which(names(lines) == "col")
      col.line <- lines[[id]]
    }
    if (any(names(lines) == "lwd")) {
      id <- which(names(lines) == "lwd")
      lwd.line <- lines[[id]]
    }
    if (any(names(lines) == "trend")) {
      reg <- lm(A~Ax)
      lines(c(min(Ax), max(Ax)), c(reg$coefficients[1] + min(Ax) * reg$coefficients[2], reg$coefficients[1] + max(Ax) * reg$coefficients[2]), lty = lty.line, col = col.line, lwd = lwd.line)
      reg <- lm(B~I(Bx-Bx[1]+1))
      lines(c(min(Bx), max(Bx)), c(reg$coefficients[1] + 1 * reg$coefficients[2], reg$coefficients[1] + (Bx[length(Bx)] - Bx[1]+ 1)  * reg$coefficients[2]), lty = lty.line, col = col.line, lwd = lwd.line)
    }
    if (any(names(lines) == "median")) {
      lines(c(min(Ax), max(Ax)), c(median(A, na.rm = TRUE), median(A, na.rm = TRUE)), lty = lty.line, col = col.line, lwd = lwd.line)		
      lines(c(min(Bx), max(Bx)), c(median(B, na.rm = TRUE), median(B, na.rm = TRUE)), lty = lty.line, col = col.line, lwd = lwd.line)		
      labelxy <- c(max(Bx), median(B,na.rm = TRUE))
      label <- "Median"
      
    }
    if (any(names(lines) == "mean")) {
      id <- which(names(lines) == "mean")
      lines.par <- lines[[id]]
      if (is.na(lines.par)) lines.par <- 0.1
      lines(c(min(Ax), max(Ax)), c(mean(A, trim = lines.par, na.rm = TRUE), mean(A, trim = lines.par, na.rm = TRUE)), lty = lty.line, col = col.line, lwd = lwd.line)		
      lines(c(min(Bx), max(Bx)), c(mean(B, trim = lines.par, na.rm = TRUE), mean(B, trim = lines.par, na.rm = TRUE)), lty = lty.line, col = col.line, lwd = lwd.line)		
      labelxy <- c(max(Bx), mean(B, trim = lines.par, na.rm = TRUE))
      label <- "Trimmed mean"
    }
    if (any(names(lines) == "trendA")) {
      #reg <- lm(A~I(1:length(A)))
      reg <- lm(A~Ax)
      lines(c(min(Ax), max(Bx)), c(reg$coefficients[1]  + min(Ax) * reg$coefficients[2], reg$coefficients[1] + max(Bx) * reg$coefficients[2]), lty = lty.line, col = col.line, lwd = lwd.line)
      labelxy <- c(max(Bx), reg$coefficients[1] + (max(Bx) - min(Bx)) * reg$coefficients[2])
      label <- "Trend A"
    }
    if (any(names(lines) == "loreg")) {
      id <- which(names(lines) == "loreg")
      lines.par <- lines[[id]]
      if (is.na(lines.par)) lines.par <- 0.5
      
      AB <- c(A,B)
      ABx <- c(Ax,Bx)
      reg <- lowess(AB~ABx, f = lines.par)
      lines(reg, lty = lty.line, col = col.line, lwd = lwd.line)
      labelxy <- c(max(Bx), (max(AB)-min(AB))/2+min(AB))
      label <- "Local Regression"
    }
    
    if (any(names(lines) == "pnd") || any(names(lines) == "maxA")) {
      lines(c(min(Ax), max(Bx)), c(max(A), max(A)), lty = lty.line, col = col.line, lwd = lwd.line)		
      labelxy <- c(max(Bx), max(A))
      label <- "Max A"
    }
    if (any(names(lines) == "medianA")) {
      lines(c(min(Ax), max(Bx)), c(median(A, na.rm = TRUE), median(A, na.rm = TRUE)), lty = lty.line, col = col.line, lwd = lwd.line)		
      labelxy <- c(max(Bx), median(A, na.rm = TRUE))
      label <- "Median A"
    }
    if (any(names(lines) == "meanA")) {
      id <- which(names(lines) == "meanA")
      lines.par <- lines[[id]]
      if (is.na(lines.par)) lines.par <- 0.1
      
      lines(c(min(Ax), max(Bx)), c(mean(A, trim = lines.par, na.rm = TRUE), mean(A, trim = lines.par, na.rm = TRUE)), lty = lty.line, col = col.line, lwd = lwd.line)		
      labelxy <- c(max(Bx), mean(A, trim = lines.par, na.rm = TRUE))
      label <- "Mean A"
    }
    if (any(names(lines) == "piecewisereg") || any(names(lines) == "plm")) {
      pr <- plm(data)
      y <- pr$full.model$fitted.values
      lines(data[,3], y, lty = lty.line, col = col.line, lwd = lwd.line)
    }
    if (any(names(lines) == "plm.ar")) {
      id <- which(names(lines) == "plm.ar")
      lines.par <- as.numeric(lines[[id]])
      pr <- plm(data, AR = lines.par)
      y <- pr$full.model$fitted
      lines(data[,3], y, lty = lty.line, col = col.line, lwd = lwd.line)
    }
    
    if (any(names(lines) == "movingMean")) {
      id <- which(names(lines) == "movingMean")
      lines.par <- lines[[id]]
      if (is.na(lines.par)) lines.par <- 1
      y <- .SCmovingAverage(c(A,B),lines.par, mean)
      lines(c(Ax,Bx), y, lty = lty.line, col = col.line, lwd = lwd.line)
    }
    if (any(names(lines) == "movingMedian")) {
      id <- which(names(lines) == "movingMedian")
      lines.par <- lines[[id]]
      if (is.na(lines.par)) lines.par <- 1
      y <- .SCmovingAverage(c(A,B),lines.par, median)
      lines(c(Ax,Bx), y, lty = lty.line, col = col.line, lwd = lwd.line)
    }
    
    if (!is.null(FUN.AB)){
      FUN <- FUN.AB
      .xA <- FUN(A)
      .xB <- FUN(B)
      lines(c(min(Ax), max(Ax)), c(.xA,.xA), lty = lty.line, col = col.line, lwd = lwd.line)
      lines(c(min(Bx), max(Bx)), c(.xB,.xB), lty = lty.line, col = col.line, lwd = lwd.line)
      labelxy <- c(max(Bx), .xB)
      #label <- FUN.AB[2]
    }
    
    text(labelxy[1], labelxy[2], label, adj = c(1,1))
    mtext(phase.names[1], side = 3, at = (Ax[length(Ax)] - Ax[1]) / 2 + Ax[1])
    if(length(Bx) > 0)
      mtext(phase.names[2], side = 3, at = (Bx[length(Bx)] - Bx[1]) / 2 + Bx[1])
    
    if(is.null(text.ABlag))
      abline(v = data[n1 + 1,3] - 0.5, lty = 2,lwd = lwd)
    if(!is.null(text.ABlag)) {
      tex <- paste(unlist(strsplit(text.ABlag[i], "")), collapse ="\n")
      text(data[n1 + 1,3] - 0.5, (y.lim[2]-y.lim[1])/2 + y.lim[1], labels = tex, cex = 1)
    }
    if (length(case.names) ==  N)
      mtext(case.names[i], side = 3, line = -1, adj = 0, at = 1)	
  }
  par(op)
}


print.sc <- function(x, ...) {
	value <- class(x)[2]

	if(value == "TAU-U") {	
	  cat("Tau-U = ", x$tau_U,"\n")
	  
	  print(x$table)
	}

	if(value == "power") {	
		cat("Test-Power in percent:\n")
		ma <- matrix(unlist(x[1:16])*100,byrow = FALSE, ncol = 2, dimnames = list(c(paste0("Rand-Test: ",x$rand.test.stat[1]), paste0("Rand-Test: ",x$rand.test.stat[2]), "PLM.Norm: Level", "PLM.Norm: Slope", "PLM.Poisson: Level", "PLM.Poisson: Slope", "HPLM: Level", "HPLM: Slope"), c("Power", "Alpha-error")))
		print(ma)
	}
		
	if(value == "PET") {	
		cat("Percent Exceeding the Trend\n\n")
		cat("N persons = ", x$N,"\n")
		cat("\n")
		ma <- cbind(x$PET, x$p, x$PET.ci)
		colnames(ma) <- c("PET","binom.p", "PET CI")
		rownames(ma) <- x$case.names
		print(round(ma,3))
		cat("\n")

		if(x$decreasing) {
			cat("Assumed decreasing values in the B-phase.\n\n")
			cat("Binom.test: alternative hypothesis: true probability < 50%\n")
			cat(sprintf("PET CI: Percent of values less than lower %d%% confidence threshold (smaller %.3f*se below predicted value)\n",x$ci,x$se.factor))
		} else {
			cat("Binom.test: alternative hypothesis: true probability > 50%\n")
			cat(sprintf("PET CI: Percent of values greater than upper %d%% confidence threshold (greater %.3f*se above predicted value)\n",x$ci,x$se.factor))
		}

	}	
	
	if(value == "NAP") {
		cat("Non-overlap of All Pairs\n\n")
		cat("N persons = ", x$N,"\n")
		if (x$N > 1)
		 	cat("Data of cases are aggregated using the makesingleSC command.\n")
		cat("\n")
		cat("NAP = ", x$NAP, "%\n")
		cat("Rescaled NAP = ", 2 * x$NAP - 100, "%\n")
	}

	if(value == "PEM") {
		cat("Percent Exceeding the Median\n\n")
		ma <- cbind(PEM = x$PEM, x$test)
		print(round(ma,3))
		cat("\n")
		if(x$decreasing) {
			cat("Assumed decreasing values in the B-phase.\n\n")
			cat("Alternative hypothesis: true probability < 50%\n")
		} else {
			cat("Alternative hypothesis: true probability > 50%\n")
		}
	}

	if(value == "PND") {
		cat("Percent Non-Overlapping Data\n\n")
		cat(paste("Case ", 1:length(x$PND), ": ",round(x$PND,2), "%",sep = ""), sep = "\n")
		cat("Mean  :", round(mean(x$PND, na.rm = TRUE),2),"%\n")
	}	
	
	if(value == "trend") {
		x$trend <- round(x$trend,3)
		cat("Trend in A and B-Phase\n\n")
		cat("N persons = ", x$N,"\n")
		if (x$N > 1)
		 	cat("Data of cases are aggregated using the makesingleSC command.\n")
		cat("\n")
		print(x$trend)
		cat("\n")
		cat("Note. Measurement-times of the B-Phase start at", 1+x$B.offset, "\n")
	}

	
	if(value == "rci") {
		cat("Under development, not yet ready for use !!!\n\n")
		cat("Reliable Change Index\n\n")
		cat("N persons = ", x$N,"\n")
		if (x$N > 1)
		 		cat("Data of cases are aggregated using the makesingleSC command.\n\n")
		cat("Mean difference = ", x$descriptives[2,2] - x$descriptives[1,2], "\n")

		cat("Standardized difference = ", x$stand.dif, "\n")
		cat("\n")
		cat("Descriptives:\n")
		print(x$descriptives)
		cat("\n")
		cat("Reliability = ", x$reliability, "\n")
		cat("\n")
		cat(x$conf.percent*100,"% confidence intervals:\n")
		print(x$conf)
		cat("\n")
		cat("Reliable Change Indices:\n")
		print(x$RCI)
		cat("\n")
	}
	
	if(value == "rand") {
		cat("Randomization test\n\n")
		if (x$N > 1)
			cat("Multiple-Baseline test for", x$N, "cases.\n\n")
		cat("Statistic: ",x$statistic,"\n")
		#cat("Length A-phase", x$n1, "\n")
		#cat("Length B-phase", x$n2, "\n")
		if(is.na(x$startpoints[1])) {
			cat("Minimal length of each phase: ", x$limit, "\n")
		} else {
			cat("Possible startpoints of B-phase: ", x$startpoints, "\n")
		}
		cat("Observed statistic = ", x$observed.statistic, "\n")
		cat("\n")
		if(x$auto.corrected.number)
			cat("Warning! Assigned number of random permutation exceeds the number of possible permutations.\nAnalysis is restricted to all possible permutations.\n")
		if(x$complete) {
			cat("\nDistribution based on all", x$possible.combinations,"possible combinations.\n")
		} else 
			cat("\nDistribution based on a random sample of all", x$possible.combinations, "possible combinations.\n")
		
		#cat("\nDistribution:\n")
		cat("n   = ", x$number,"\n")
		cat("M   = ", mean(x$distribution),"\n")
		cat("SD  = ", sd(x$distribution),"\n")
		cat("Min = ", min(x$distribution),"\n")
		cat("Max = ", max(x$distribution),"\n")
		cat("\n")
		if(x$p.value == 0)
			cat("p   < ", format(1/x$number, scientific = FALSE), "\n")
		else
			cat("p   = ", x$p.value, "\n")
		if(x$number > 3 & x$number < 5001) {
			sh <- shapiro.test(x$distribution)
			cat(sprintf("\nShapiro-Wilk normality test: W = %0.3f; p = %0.3f",sh[[1]], sh$p.value))
			if (sh$p.value > .05)
				cat("  (hypothesis of normality maintained)\n")
			else
				cat("  (hypothesis of normality rejected)\n")
		} else cat("\nSample size must be between 3 and 5000 to perform a shapiro test.\n")
		cat(sprintf("z = %0.4f, p = %0.4f (single sided)\n", x$Z, x$p.Z.single))
	}
  
  if(value == "hplm") {
  
    cat("Hierarchical piecewise linear regression\n\n")
    
    cat("Method",x$method,"\n")
    cat(x$N,"cases\n\n")
    
    out <- list()
    
    if(x$analyze.ICC) {
      out$ICC <- sprintf("ICC = %.3f; L = %.1f; p = %.3f\n\n", x$ICC, x$L.ICC, x$p.ICC)
      cat(out$ICC)
    }
    
    if(!x$analyze.random.slopes) {
		md <- as.data.frame(summary(x$random.intercept$model)$tTable)
		#cat("Random intercept model\n\n")
	}	
	if(x$analyze.random.slopes) {
		#cat("Random slope model\n\n")
		md <- as.data.frame(summary(x$random.trend.level.slope$model)$tTable)
	}

    colnames(md) <- c("B","SE","df","t","p")
    rownames(md) <- c("Intercept","Trend","Level","Slope")
    md$B <- round(md$B,3)
    md$SE <- round(md$SE,3)
    md$t <- round(md$t,3)
    md$p <- round(md$p,3)
    out$ttable <- md
      cat("Fixed effcects\n\n")
      print(md)
    if(x$analyze.random.slopes) {
      cat("\nRandom effcects\n\n")
	  out$random.effects <- data.frame(Parameter = c("Intercept", "Trend","Level", "Slope","Residual"),"EstimateSD" = round(c(as.numeric(VarCorr(x$random.trend.level.slope$model)[,2])),3), L = round(c(x$random.nointercept.trend.level.slope$LR.test$L.Ratio[2],x$random.trend$LR.test$L.Ratio[2], x$random.level$LR.test$L.Ratio[2], x$random.slope$LR.test$L.Ratio[2], NA),1), p = round(c(x$random.nointercept.trend.level.slope$LR.test$"p-value"[2],x$random.trend$LR.test$"p-value"[2], x$random.level$LR.test$"p-value"[2], x$random.slope$LR.test$"p-value"[2], NA),3))
	  
	  print(out$random.effects)
	  # cat("\n")
      # out$random.trend <- sprintf("Random trend		: L = %.1f; p = %.3f\n", x$random.trend$LR.test$L.Ratio[2], x$random.trend$LR.test$"p-value"[2])
      # cat(out$random.trend)
      # out$random.level <- sprintf("Random level		: L = %.1f; p = %.3f\n", x$random.level$LR.test$L.Ratio[2], x$random.level$LR.test$"p-value"[2])
      # cat(out$random.level)
      # out$random.slope <- sprintf("Random slope		: L = %.1f; p = %.3f\n", x$random.slope$LR.test$L.Ratio[2], x$random.slope$LR.test$"p-value"[2])
      # cat(out$random.slope)
    }
    invisible(out)
  }
  
	if(value == "pr" || value == "plm.ar") {
		cat("Piecewise Regression Analysis\n\n")
		if(x$N>1)
			cat("Multiple Baseline Design for", x$N, "cases.\n\n")
		
		cat("Regression model: ", x$model,"\n\n")
		if(x$count.data)
			cat("Measurements are count data.\n")
		#if(x$family != "gaussian")
			cat("Fitted a", x$family, "distribution.\n\n")		
			
		if (value == "plm.ar")
			cat("Correlated residuals up to autoregressions of lag", x$ar, "are modelled\n\n")

		if(x$family == "poisson" || x$family == "nbinomial") {
			Chi <- x$full$null.deviance - x$full$deviance
			DF <- x$full$df.null - x$full$df.residual
			cat(sprintf("X-Square(%d) = %.2f; p = %0.3f; AIC = %.0f\n\n", DF, Chi, 1 - pchisq(Chi, df = DF), x$full$aic))	
		} else {
				cat(sprintf("F(%d, %d) = %.2f; p = %0.3f; R-Square = %0.3f; adjusted R-Square = %0.3f\n\n", x$df1, x$df2, x$F, x$p, x$R2, x$R2.adj))	
		}
		
		
		if(value == "pr")
			res <- summary(x$full)$coefficients
		if(value == "plm.ar")
			res <- summary(x$full)$tTable
		#ci <- sqrt(qt(0.975,x$df1+x$df2))
		res <- cbind(res[,1], suppressMessages(confint(x$full)), res[,2:4])
		res <- as.data.frame(res)
		res$R2 <- c("", sprintf("%.3f",x$ES.trend), sprintf("%.3f",x$ES.level), sprintf("%.3f",x$ES.slope))
		res[1:6] <- round(res[1:6],3)
		row.names(res) <- c("Intercept", "Trend", "Level","Slope")
		colnames(res) <- c("B","2.5%","97.5%","SE", "t","p", "R-Square")		
		if(x$family == "poisson" || x$family == "nbinomial") {
			OR <- exp(res[,1:3])
			Q <- (OR-1)/(OR+1)
			res <- cbind(res[,-7], round(OR,3), round(Q,2))
			colnames(res) <- c("B","2.5%","97.5%","SE", "t","p", "Odd Ratio","2.5%", "97.5%","Yule's Q","2.5%", "97.5%")		
		}
		print(res)
		cat("\n")
		#cat(sprintf("Test of level: F(1) = %.2f; p = %0.3f; delta R-Square = %0.3f", x$F.level, x$p.level, x$ES.level), "\n")
		#cat(sprintf("Test of slope: F(1) = %.2f; p = %0.3f; delta R-Square = %0.3f", x$F.slope, x$p.slope, x$ES.slope), "\n\n")
		
		#cat("Separate regressions for phases\n")
		#print(matrix(c(x$I, x$I + x$D + x$T*x$n1), x$T,x$T + x$TxD), ncol = 2, dimnames = list(c("Phase A", "Phase B"), c("Intercept", "Slope"))),...)
		#cat("\n")
	}

	if(value == "PAND") {
		cat("Percent all non-overlapping data\n\n")
		cat("PAND = ", round(x$PAND,1), "%\n")
		cat("Phi = ", round(x$phi,3), " ; Phi-square = ", round(x$phi^2,3), "\n\n")
		cat("Number of persons: ", x$N, "\n")
		cat("Total measurements: ", x$n, "\n")
		cat("in phase A: ", x$nA, "\n")
		cat("in phase B: ", x$nB, "\n")
		cat("n Overlapping data per person: ")
		cat(x$OD.PP, sep = ", ")
		cat("\n")
		cat("n Overlapping data: ",x$OD, "\n")
		cat("% Overlapping data: ",round(x$POD,1), "\n")
		ma <- x$matrix
		cat("\n")
		cat("2 x 2 Matrix of proportions\n")
		cat("\t% expected\n")

		cat("\tA\tB\ttotal\n")
		cat("%    A",round(ma[1,]*100,1), sum(round(ma[1,]*100,1)), sep = "\t")
		cat("\n")
		cat("real B",round(ma[2,]*100,1), sum(round(ma[2,]*100,1)), sep = "\t")
		cat("\n")
		cat(" total",sum(round(ma[,1]*100,1)), sum(round(ma[,2]*100,1)), sep = "\t")
		cat("\n")
		ma <- x$matrix.counts
		cat("\n")
		cat("2 x 2 Matrix of counts\n")
		cat("\texpected\n")

		cat("\tA\tB\ttotal\n")
		cat("     A",round(ma[1,],1), sum(round(ma[1,],1)), sep = "\t")
		cat("\n")
		cat("real B",round(ma[2,],1), sum(round(ma[2,],1)), sep = "\t")
		cat("\n")
		cat(" total",sum(round(ma[,1],1)), sum(round(ma[,2],1)), sep = "\t")
		cat("\n")
		cat("\n")
		if(x$correction)
			cat("\nNote. Matrix is corrected for ties\n")
		cat("\nCorrelation based analysis:\n\n")
		out <- sprintf("z = %.3f, p = %.3f, tau = %.3f",x$correlation$statistic, x$correlation$p.value, x$correlation$estimate)
		cat(out,"\n")
	}

	if(value == "describe") {
		cat("Describe single-case data\n\n")
		#x$descriptives <- x$descriptives[,!names(x$descriptives)%in%c("smd2","smd3")]
		#colnames(x$descriptives) <- c("n A", "n B", "n AB", "Missing A", "Missing B", "Missing AB","Mean A", "Mean B", "Mean dif", "Min A", "Min B", "Max A", "Max B", "SD A", "SD B", "SD AB", "SMD", "Autocor A", "Autocor B", "Trend A", "Trend B", "Trend AB", "Trend dif","PND", "PEM", "NAP", "PAND", "TAU-U")
		out <- data.frame(
		  "n A" = x$descriptives$nA, 
      "n B"  = x$descriptives$nB, 
      "n AB" = x$descriptives$nAB, 
      "Missing A" = x$descriptives$misA, 
      "Missing B" = x$descriptives$misB, 
      "Missing AB" = x$descriptives$misAB,
      "Mean A" = x$descriptives$mA, 
      "Mean B" = x$descriptives$mB, 
      "Mean dif" =  x$descriptives$dif, 
      "Min A" = x$descriptives$minA, 
      "Min B" = x$descriptives$minB, 
      "Max A" = x$descriptives$maxA, 
      "Max B" = x$descriptives$maxB, 
      "SD A" = x$descriptives$sdA, 
      "SD B" = x$descriptives$sdB, 
      "SD AB" = x$descriptives$sdAB, 
      "Autocor A" = x$descriptives$acA, 
      "Autocor B" = x$descriptives$acB, 
      "Trend A" = x$descriptives$bA, 
      "Trend B" = x$descriptives$bB, 
      "Trend AB" = x$descriptives$bC, 
      "Trend dif" = x$descriptives$bdif,
		  "SMD" = x$descriptives$smd1, 
      "PND" = x$descriptives$PND, 
      "PEM" = x$descriptives$PEM, 
      "NAP" = x$descriptives$NAP, 
      "PAND" = x$descriptives$PAND,
		  "TAU-U" = x$descriptives$TAU_U
		)
    #print(t(x$descriptives), digits = 2, ...)
		#print(round(t(x$descriptives),2))
		row.names(out) <- row.names(x$descriptives)
    print(round(t(out),2))
	}	
  
	if(value == "outlier") {
	  cat("Outlier analysis for single case data\n\n")
	  
	  if (x$criteria[1] == "CI") {
	    names(x$ci.matrix) <- x$case.names
	    cat("Criteria: Exceeds", as.numeric(x$criteria[2])*100,"% confidence intervall\n\n")
	    print(x$ci.matrix)
	  }
	  if (x$criteria[1] == "SD") {
	    names(x$sd.matrix) <- x$case.names
      cat("Criteria: Exceeds", x$criteria[2], "standard deviations\n\n")
	    print(x$sd.matrix)
	  }
	  if (x$criteria[1] == "Cook") {
	    cat("Criteria: Cook's distance based on piecewise-linear-regression exceeds", x$criteria[2],"\n\n")
	  }
    for(i in 1:length(x$dropped.n)) {
      cat("Case",x$case.names[i],": Dropped",x$dropped.n[[i]],"\n")
    }
    cat("\n")
	}

}


makeSCDF <- function (...){
	out <- .SCprepareData(...)
  if(length(out) == 1)
    return(out[[1]])
	return(out)
}

longSCDF <- function(data) {
  dat <- .SCprepareData(data)
  label <- names(dat)
  if (is.null(label))
    label <- as.character(1:length(dat))
  outdat <- vector()
  for (i in 1:length(dat)) {
	  dat[[i]]$case <- label[i]
		outdat <- rbind(outdat, dat[[i]])
	}
  outdat <- cbind(outdat[,ncol(outdat)],outdat[,-ncol(outdat)])
  colnames(outdat)[1] <- "case"
  return(outdat)
}


writeSC <- function(dat, filename, sep = ",", dec = ".", ...) {
	write.table(longSCDF(dat), filename, sep = sep, row.names = FALSE, dec = dec, ...)
}

readSC <- function(filename, sep = ",", dec = ".", sort.labels = FALSE, phase.names = c("A","B"),...) {
	dat <- read.table(filename, header = TRUE, sep = sep, dec = dec, stringsAsFactors = FALSE, ...)
	columns <- ncol(dat)
	names(dat) <- c("case", "phase", "values", "mt")[1:columns]
	if(!sort.labels) 
		dat$case <- factor(dat$case, levels = unique(dat$case))
	else
		dat$case <- factor(dat$case)
	
	dat$phase[dat$phase == phase.names[1]] <- "A"
	dat$phase[dat$phase == phase.names[2]] <- "B"
	dat$phase <- factor(dat$phase)
	
	lab <- levels(dat$case)
	dat <- split(dat, dat$case)
	dat <- lapply(dat, function(x) x[,2:columns])
	for(i in 1:length(dat))
		row.names(dat[[i]]) <- 1:nrow(dat[[i]])
	names(dat) <- lab
	cat("Imported",length(dat),"cases.\n")
	if(columns == 3) {
		cat("Measurement-times are missing. Standard times were assigned.\n")
		dat <- .SCprepareData(dat)
	}
	return(dat)
}

### experimetal functions

.power.testSC <- function(n = NA, MT = NA, B.start = NA, d.level = NA, d.slope = NA, cases = NA, d.trend = NA, extreme.p = 0, rand.test.stat, extreme.d = c(-4,-3),rtt = NA, alpha = NA, m = NA, s = NA, limit = NA, startpoints = NA, exclude.equal = NA, concise = NA, return.distribution = FALSE, stat, test.parameter, distribution) {
	
	out <- list()
	out$rand.slope <- NA
	out$rand.level <- NA
	out$plm.slope <- NA
	out$plm.level <- NA
	out$plm.poisson.slope <- NA
	out$plm.poisson.level <- NA

	out$rand.sample <- NA
	
	rand.sample <- rSC(n = n, MT = MT, m = m, s = s,B.start = B.start, d.level = d.level, d.slope = d.slope, cases = cases, d.trend = d.trend, extreme.p = extreme.p, extreme.d = extreme.d, rtt = rtt, concise = concise, distribution = distribution)
	if(cases == 1)
		rand.sample <- lapply(rand.sample, list)

	if(any(stat == "rand.test")) {
		if(any(test.parameter == "level")) {
			p.rand.level <- unlist(lapply(rand.sample, function(x) rand.test(x, statistic = rand.test.stat[1], number = 100, exclude.equal = exclude.equal, limit = limit, startpoints = startpoints, output = "p")))
			out$rand.level <- mean(p.rand.level <= alpha, na.rm = TRUE)
		} else out$rand.level <- NA

		if(any(test.parameter == "slope")) {
			p.rand.slope <- unlist(lapply(rand.sample, function(x) rand.test(x, statistic = rand.test.stat[2], number = 100, exclude.equal = exclude.equal, limit = limit,  startpoints = startpoints, output = "p")))
			out$rand.slope <- mean(p.rand.slope <= alpha, na.rm = TRUE)
		} else out$rand.slope <- NA
	}

	if(any(stat == "plm")) {
		if(any(test.parameter == "level")) {
			p.plm.level <- unlist(lapply(rand.sample, function(x) .plm.mt(x, type = "level p")))
			out$plm.level <- mean(p.plm.level <= alpha, na.rm = TRUE)
		} else out$plm.level <- NA
		
		
		if(any(test.parameter == "slope")) {
			p.plm.slope <- unlist(lapply(rand.sample, function(x) .plm.mt(x, type = "slope p")))
			out$plm.slope <- mean(p.plm.slope <= alpha, na.rm = TRUE)
		} else out$plm.slope <- NA
	}
	
	if(any(stat == "plm.poisson")) {
		if(any(test.parameter == "level")) {
			p.plm.poisson.level <- unlist(lapply(rand.sample, function(x) .plm.mt(x, count.data = TRUE, type = "level p")))
			out$plm.poisson.level <- mean(p.plm.poisson.level <= alpha, na.rm = TRUE)
		} else out$plm.poisson.level <- NA
		
		
		if(any(test.parameter == "slope")) {
			p.plm.poisson.slope <- unlist(lapply(rand.sample, function(x) .plm.mt(x, count.data = TRUE, type = "slope p")))
			out$plm.poisson.slope <- mean(p.plm.poisson.slope <= alpha, na.rm = TRUE)
		} else out$plm.poisson.slope <- NA
	}
	
  
	if(any(stat == "hplm")) {
	  if(any(test.parameter == "level")) {
	    p.hplm.level <- unlist(lapply(rand.sample, function(x) summary(hplm(x, random.slopes = FALSE, ICC = FALSE)$random.intercept$model)$tTable[3,5]))
	    out$hplm.level <- mean(p.hplm.level <= alpha, na.rm = TRUE)
	  } else out$hplm.level <- NA
	  
	  
	  if(any(test.parameter == "slope")) {
	    p.hplm.slope <- unlist(lapply(rand.sample, function(x) summary(hplm(x, random.slopes = FALSE, ICC = FALSE)$random.intercept$model)$tTable[4,5]))
	    out$hplm.slope <- mean(p.hplm.slope <= alpha, na.rm = TRUE)
	  } else out$hplm.slope <- NA
	}
	
  
  if(return.distribution)
		out$rand.sample <- rand.sample

	out
}

power.testSC <- function(data = NULL, stat = c("rand.test","plm"), test.parameter = c("level", "slope"), rand.test.stat = c("Mean B-A","B"), cases = NULL, rtt = 0.8, d.level = NULL, d.slope = NULL, MT = NULL, B.start = NULL, d.trend = NULL, n = 100, limit = 5,  m = 50, s = 10, startpoints = NA, extreme.p = 0, extreme.d = c(-4,-3), exclude.equal = "auto", alpha = 0.05, distribution = "normal", concise = TRUE, silent = FALSE) {
  
  return.distribution <- FALSE # depricated parameter 	
	
  if(!is.null(data)) {
		data <- .SCprepareData(data)
		cases <- length(data)
		B.start <- unlist(lapply(data, function(x) sum(x$phase == "A") + 1))
		MT <- unlist(lapply(data, function(x) length(x$mt)))
		MT <- MT #to be extended later
		means <- describeSC(data)$descriptives$mA
		if(cases > 1)
			m <- mean(means[1:cases], na.rm = TRUE)
		if(cases > 2)
			s <- sd(means[1:cases], na.rm = TRUE)

		res <- .estimate.d.SC(data = data, s = s)
		if(is.null(d.level)) d.level <- res[2]
		if(is.null(d.slope)) d.slope <- res[3]
		if(is.null(d.trend)) d.trend <- res[1]
	}
	if(is.null(data)) {
		if(is.null(d.level)) d.level <- 0
		if(is.null(d.slope)) d.slope <- 0
		if(is.null(d.trend)) d.trend <- 0
		if(is.null(cases)) cases <- 1
	
	}
	if(exclude.equal == "auto") 
		exclude.equal <- ifelse(cases == 1, TRUE, FALSE)

		if(!silent)	{
		cat("Compute Monte-Carlo power-analyses with the following parameters:\n\n")
		cat("Stats:\t\t",stat,"\n")
		cat("Sample studies\t",n,"\n")
		cat("Cases per sample",cases,"\n")
		cat("M\t\t",m,"\n")
		cat("SD\t\t",s,"\n")
		cat("MT\t\t",MT,"\n")
		cat("B.start\t\t",B.start,"\n")
		cat("rtt\t\t",rtt,"\n")
		cat("d level\t\t",d.level,"\n")
		cat("d slope\t\t",d.slope,"\n")
		cat("d trend\t\t",d.trend,"\n")	
		cat("Extreme.p\t",extreme.p,"\n")	
		cat("Extreme.d\t",extreme.d,"\n")	

		cat("Alpha level\t",alpha,"\n")	
		cat("Exclude equal\t",exclude.equal,"\n")
		if (is.na(startpoints[1])) {
			cat("Limit\t\t",limit,"\n")
		} else {
			cat("Startpoints\t\t",startpoints,"\n")
		}
	}
	out <- list()

	out$power.rand.level <- NA
	out$power.rand.slope <- NA
	out$power.plm.level <- NA
	out$power.plm.slope <- NA
	out$power.plm.poisson.level <- NA
	out$power.plm.poisson.slope <- NA

	out$power.hplm.level <- NA
	out$power.hplm.slope <- NA
  
	out$alphaerror.rand.level <- NA
	out$alphaerror.rand.slope <- NA
	out$alphaerror.plm.level <- NA
	out$alphaerror.plm.slope <- NA
	out$alphaerror.plm.poisson.level <- NA
	out$alphaerror.plm.poisson.slope <- NA

	out$alphaerror.hplm.level <- NA
	out$alphaerror.hplm.slope <- NA
  
	out$rand.test.stat <- rand.test.stat
	out$rand.sample <- NA

	res <- .power.testSC(n = n, MT = MT, B.start = B.start, rand.test.stat = rand.test.stat, d.level = d.level, d.slope = d.slope, extreme.p = extreme.p, extreme.d = extreme.d,m = m, s = s, cases = cases, d.trend = d.trend, rtt = rtt, alpha = alpha, limit = limit,  startpoints = startpoints, exclude.equal = exclude.equal, concise = concise, return.distribution = return.distribution, stat = stat, test.parameter = test.parameter, distribution = distribution)
	
	if(return.distribution) 
		out$rand.sample <- res$rand.sample
	
	if(all(d.level == 0)) {
		if(any(stat == "rand.test"))
			out$alphaerror.rand.level <- res$rand.level
		if(any(stat == "plm"))
			out$alphaerror.plm.level <- res$plm.level
		if(any(stat == "plm.poisson"))
			out$alphaerror.plm.poisson.level <- res$plm.poisson.level
		if(any(stat == "hplm"))
		  out$alphaerror.hplm.level <- res$hplm.level
		
	} else {
		if(any(stat == "rand.test"))
			out$power.rand.level <- res$rand.level
		if(any(stat == "plm"))
			out$power.plm.level <- res$plm.level
		if(any(stat == "plm.poisson"))
			out$power.plm.poisson.level <- res$plm.poisson.level
		if(any(stat == "hplm"))
		  out$power.hplm.level <- res$hplm.level
		
	}

	
	if(all(d.slope == 0)) {
		if(any(stat == "rand.test"))
			out$alphaerror.rand.slope <- res$rand.slope
		if(any(stat == "plm"))
			out$alphaerror.plm.slope <- res$plm.slope
		if(any(stat == "plm.poisson"))
			out$alphaerror.plm.poisson.slope <- res$plm.poisson.slope
		if(any(stat == "hplm"))
		  out$alphaerror.hplm.slope <- res$hplm.slope
  } else {
		if(any(stat == "rand.test"))
			out$power.rand.slope <- res$rand.slope
		if(any(stat == "plm"))
			out$power.plm.slope <- res$plm.slope
		if(any(stat == "plm.poisson"))
			out$power.plm.poisson.slope <- res$plm.poisson.slope
		if(any(stat == "hplm"))
		  out$power.hplm.slope <- res$hplm.slope
  }

	
	if(any(d.level != 0)) {
		res <- .power.testSC(n = n, MT = MT, B.start = B.start, rand.test.stat = rand.test.stat, d.level = 0, d.slope = d.slope, extreme.p = extreme.p, extreme.d = extreme.d,m = m, s = s, cases = cases, d.trend = d.trend, rtt = rtt, alpha = alpha, limit = limit,  startpoints = startpoints, exclude.equal = exclude.equal, concise = concise, stat = stat, test.parameter = test.parameter, distribution = distribution)
		if(any(stat == "rand.test"))
			out$alphaerror.rand.level <- res$rand.level
		if(any(stat == "plm"))
			out$alphaerror.plm.level <- res$plm.level
		if(any(stat == "plm.poisson"))
			out$alphaerror.plm.poisson.level <- res$plm.poisson.level
		if(any(stat == "hplm"))
		  out$alphaerror.hplm.level <- res$hplm.level
		
	}
	
	if(any(d.slope != 0)) {
		res <- .power.testSC(n = n, MT = MT, B.start = B.start, rand.test.stat = rand.test.stat, d.level = d.level, d.slope = 0, extreme.p = extreme.p, extreme.d = extreme.d,m = m, s = s, cases = cases, d.trend = d.trend, rtt = rtt, alpha = alpha, limit = limit,  startpoints = startpoints, exclude.equal = exclude.equal, concise = concise, stat = stat, test.parameter = test.parameter, distribution = distribution)
		if(any(stat == "rand.test"))
			out$alphaerror.rand.slope <- res$rand.slope
		if(any(stat == "plm"))
			out$alphaerror.plm.slope <- res$plm.slope
		if(any(stat == "plm.poisson"))
			out$alphaerror.plm.poisson.slope <- res$plm.poisson.slope
		if(any(stat == "hplm"))
		  out$alphaerror.hplm.slope <- res$hplm.slope
	}
	
	class(out) <- c("sc","power")
	out
}


.onAttach()



