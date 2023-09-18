//
//  Movie.swift
//  Flixster
//
//  Created by Colin Hrzich on 9/11/23.
//

import Foundation
//Movie Model Struct
struct Movie: Decodable {
    let original_title: String
    let overview: String
    let poster_path: URL
    let vote_average: Double
    let vote_count: Int
    let popularity: Double
    let backdrop_path: URL
}

struct MoviesResponse: Decodable {
    let results: [Movie]
}



//Extension with data given
extension Movie {

    /// An array of mock movies
   /* static var mockMovie: [Movie]  = [
        Movie(movieTitle: "Meg 2: The Trench", movieDesc: "An exploratory dive into the deepest depths of the ocean of a daring research team spirals into chaos when a malevolent mining operation threatens their mission and forces them into a high-stakes battle for survival.", artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500//4m1Au3YkjqsxF8iwQy0fPYSxE0h.jpg")!, voteAvg: "7", voteCount: "1595", popular: "5133.953", movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500//8pjWz2lt29KyVGoq1mXYu6Br7dE.jpg")!),
        Movie(movieTitle: "Barbie", movieDesc: "Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.", artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500//iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg")!, voteAvg: "7.3", voteCount: "4060", popular: "3712.487", movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500//nHf61UzkfFno5X1ofIhugCPus2R.jpg")!),
        Movie(movieTitle: "Strays", movieDesc: "When Reggie is abandoned on the mean city streets by his lowlife owner, Doug, Reggie is certain that his beloved owner would never leave him on purpose. But once Reggie falls in with Bug, a fast-talking, foul-mouthed stray who loves his freedom and believes that owners are for suckers, Reggie finally realizes he was in a toxic relationship and begins to see Doug for the heartless sleazeball that he is.", artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500///n1hqbSCtyBAxaXEl1Dj3ipXJAJG.jpg")!, voteAvg: "7.4", voteCount: "172", popular: "1873.846", movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500//2ii07lSwHarg0gWnJoCYL3Gyd1j.jpg")!),
        Movie(movieTitle: "The Nun II", movieDesc: "1956 – France. A priest is murdered. An evil is spreading. The sequel to the worldwide smash hit follows Sister Irene as she once again comes face-to-face with Valak, the demon nun.", artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500///5gzzkR7y3hnY8AD1wXjCnVlHba5.jpg")!, voteAvg: "6.9", voteCount: "85", popular: "2536.981", movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500//53z2fXEKfnNg2uSOPss2unPBGX1.jpg")!),
        Movie(movieTitle: "Elemental", movieDesc: "In a city where fire, water, land and air residents live together, a fiery young woman and a go-with-the-flow guy will discover something elemental: how much they have in common.", artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500///6oH378KUfCEitzJkm07r97L0RsZ.jpg")!, voteAvg: "7.8", voteCount: "1838", popular: "1890.803", movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500//4fLZUr1e65hKPPVw0R3PmKFKxj1.jpg")!),
        Movie(movieTitle: "Teenage Mutant Ninja Turtles: Mutant Mayhem", movieDesc: "After years of being sheltered from the human world, the Turtle brothers set out to win the hearts of New Yorkers and be accepted as normal teenagers through heroic acts. Their new friend April O'Neil helps them take on a mysterious crime syndicate, but they soon get in over their heads when an army of mutants is unleashed upon them.", artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500///ueO9MYIOHO7M1PiMUeX74uf8fB9.jpg")!, voteAvg: "7.3", voteCount: "398", popular: "1463.597", movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500//w2nFc2Rsm93PDkvjY4LTn17ePO0.jpg")!),
        Movie(movieTitle: "Sound of Freedom", movieDesc: "The story of Tim Ballard, a former US government agent, who quits his job in order to devote his life to rescuing children from global sex traffickers.", artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500///kSf9svfL2WrKeuK8W08xeR5lTn8.jpg")!, voteAvg: "8", voteCount: "437", popular: "1363.068", movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500//waBWlJlMpyFb7STkFHfFvJKgwww.jpg")!),
        Movie(movieTitle: "Transformers: Rise of the Beasts", movieDesc: "When a new threat capable of destroying the entire planet emerges, Optimus Prime and the Autobots must team up with a powerful faction known as the Maximals. With the fate of humanity hanging in the balance, humans Noah and Elena will do whatever it takes to help the Transformers as they engage in the ultimate battle to save Earth.", artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500///gPbM0MK8CP8A174rmUwGsADNYKD.jpg")!, voteAvg: "7.5", voteCount: "3115", popular: "1227.346", movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500//2vFuG6bWGyQUzYS9d69E5l85nIz.jpg")!),
        Movie(movieTitle: "The Last Voyage of the Demeter", movieDesc: "The crew of the merchant ship Demeter attempts to survive the ocean voyage from Carpathia to London as they are stalked each night by a merciless presence onboard the ship.", artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500///nrtbv6Cew7qC7k9GsYSf5uSmuKh.jpg")!, voteAvg: "7.3", voteCount: "515", popular: "1097.795", movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500//qEm4FrkGh7kGoEiBOyGYNielYVc.jpg")!),
        Movie(movieTitle: "The Little Mermaid", movieDesc: "The youngest of King Triton’s daughters, and the most defiant, Ariel longs to find out more about the world beyond the sea, and while visiting the surface, falls for the dashing Prince Eric. With mermaids forbidden to interact with humans, Ariel makes a deal with the evil sea witch, Ursula, which gives her a chance to experience life on land, but ultimately places her life – and her father’s crown – in jeopardy.", artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500///ym1dxyOk4jFcSl4Q2zmRrA5BEEN.jpg")!, voteAvg: "", voteCount: "", popular: "", movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500//AeR5k8Sp3zc2Ql4tT6CmgqspsEq.jpg")!),
        Movie(movieTitle: "The Super Mario Bros. Movie", movieDesc: "While working underground to fix a water main, Brooklyn plumbers—and brothers—Mario and Luigi are transported down a mysterious pipe and wander into a magical new world. But when the brothers are separated, Mario embarks on an epic quest to find Luigi.", artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500///qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg")!, voteAvg: "7.8", voteCount: "6551", popular: "702.985", movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500//9n2tJBplPbgR2ca05hS5CKXwP2c.jpg")!),
        Movie(movieTitle: "Mob Land", movieDesc: "A sheriff tries to keep the peace when a desperate family man violently robs a pill mill with his brother-in-law, alerting an enforcer for the New Orleans mafia.", artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500///mcz8oi9oCgq1wkA3Wz2kluE94pE.jpg")!, voteAvg: "6", voteCount: "18", popular: "835.001", movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500//3mrli3xsGrAieQks7KsBUm2LpCg.jpg")!),
        Movie(movieTitle: "No Hard Feelings", movieDesc: "On the brink of losing her childhood home, Maddie discovers an intriguing job listing: wealthy helicopter parents looking for someone to “date” their introverted 19-year-old son, Percy, before he leaves for college. To her surprise, Maddie soon discovers the awkward Percy is no sure thing.", artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500///gD72DhJ7NbfxvtxGiAzLaa0xaoj.jpg")!, voteAvg: "7.2", voteCount: "1188", popular: "672.532", movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500//rRcNmiH55Tz0ugUsDUGmj8Bsa4V.jpg")!),
        Movie(movieTitle: "Talk to Me", movieDesc: "When a group of friends discover how to conjure spirits using an embalmed hand, they become hooked on the new thrill, until one of them goes too far and unleashes terrifying supernatural forces.", artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500///kdPMUMJzyYAc4roD52qavX0nLIC.jpg")!, voteAvg: "7.1", voteCount: "308", popular: "704.524", movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500//lDCIQ1Qe7cRnhZ4ybQVVEbadMZ.jpg")!),
        Movie(movieTitle: "Sympathy for the Devil", movieDesc: "After being forced to drive a mysterious passenger at gunpoint, a man finds himself in a high-stakes game of cat and mouse where it becomes clear that not everything is as it seems.", artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500///afGdVMa80LMs6ibLP22CwM5uI4e.jpg")!, voteAvg: "6.3", voteCount: "82", popular: "579.396", movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500//4vlsYpItGVZN1UWZGqQBoCzrUSw.jpg")!),
        Movie(movieTitle: "Oppenheimer", movieDesc: "The story of J. Robert Oppenheimer’s role in the development of the atomic bomb during World War II.", artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500///8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg")!, voteAvg: "8.3", voteCount: "3353", popular: "656.133", movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500//fm6KqXpk3M2HVveHwCrBSSBaO0V.jpg")!),
        Movie(movieTitle: "The Mistress", movieDesc: "Newlyweds Parker and Madeline move into their dream home. As they settle in, they discover a box of old love letters written to the original owner. And as the couple digs into the increasingly obsessive correspondence, a mysterious woman arrives with a horrifying secret that threatens their lives.", artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500///1kdmre0wlUAUk9BvySv4Xoveieg.jpg")!, voteAvg: "4.9", voteCount: "7", popular: "712.045", movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500//65rFnxzirxQDM0rYWmtAUYnjc.jpg")!),
        Movie(movieTitle: "The Boogeyman", movieDesc: "Still reeling from the tragic death of their mother, a teenage girl and her younger sister find themselves plagued by a sadistic presence in their house and struggle to get their grieving father to pay attention before it’s too late.", artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500///pYwZdnXVnVxAr7dx4MEK7tTK9gI.jpg")!, voteAvg: "6.7", voteCount: "339", popular: "557.578", movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500//AvSeU3ji59QLN2tfWXzVqI6hg8x.jpg")!),
        Movie(movieTitle: "The Equalizer 3", movieDesc: "Robert McCall finds himself at home in Southern Italy but he discovers his friends are under the control of local crime bosses. As events turn deadly, McCall knows what he has to do: become his friends' protector by taking on the mafia.", artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500///p0WBnzgyqxMxbF4UGiqTwBLnwht.jpg")!, voteAvg: "6.8", voteCount: "137", popular: "490.18", movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500//h0nmmdFAdBjQttN8Y0q825MWzZp.jpg")!),
        Movie(movieTitle: "Gran Turismo", movieDesc: "The ultimate wish-fulfillment tale of a teenage Gran Turismo player whose gaming skills won him a series of Nissan competitions to become an actual professional racecar driver.", artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500///51tqzRtKMMZEYUpSYkrUE7v9ehm.jpg")!, voteAvg: "7.5", voteCount: "253", popular: "464.892", movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500//jv4tiXAgaArMQo57jFMjvBEjmoa.jpg")!),
    ]
*/
    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}






