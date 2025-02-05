import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movieapp/view/widgets/movie_description.dart';

class MoviesScreen extends StatelessWidget {
  String image;

  MoviesScreen(this.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/${image}.jpg'),
                      opacity: 0.8,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 35,horizontal: 10),
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    image,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    spacing: 30,
                    children: [
                      Text(
                        'PG-13',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Action',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '2.30 hrs',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 25,
                    unratedColor: Colors.white,
                    itemBuilder: (context, _) => Icon(Icons.star,color: Colors.amber,),
                    onRatingUpdate: (rating) {},
                  ),
                  SizedBox(height: 10,),
                  if(image == 'Thor Love And Thunder')
                    MovieDescription("Thor embarks on a journey unlike anything he's ever faced -"
                        "- a quest for inner peace. However, his retirement gets "
                        "interrupted by Gorr the God Butcher, a galactic killer who "
                        "seeks the extinction of the gods. To combat the threat, Thor"
                        " enlists the help of King Valkyrie, Korg and ex-girlfriend Jane "
                        "Foster, who -- to his surprise -- inexplicably wields his "
                        "magical hammer. Together, they set out on a harrowing "
                        "cosmic adventure to uncover the mystery of the God "
                        "Butcher's vengeance.")
                  else if(image == 'Avatar 2')
                    MovieDescription("Jake Sully and Ney'tiri have formed a family and are doing "
                        "everything to stay together. However, they must leave their "
                        "home and explore the regions of Pandora. When an ancient "
                        "threat resurfaces, Jake must fight a difficult war against the "
                        "humans.")
                  else if(image == 'Black Panther 2')
                    MovieDescription("Queen Ramonda, Shuri, M'Baku, Okoye and the Dora "
                        "Milaje fight to protect their nation from intervening world "
                        "powers in the wake of King T'Challa's death. As the "
                        "Wakandans strive to embrace their next chapter, the heroes "
                        "must band together with Nakia and Everett Ross to forge a "
                        "new path for their beloved kingdom.")
                  else if(image == 'Black Adam')
                    MovieDescription("After being granted with the divine power of the Egyptian "
                        "Gods and spending almost 5000 years in a guardhouse, "
                        "Black Adam is freed and he decides to unloose his own "
                        "style of justice to the world.")
                  else if(image == 'Dune')
                    MovieDescription("Paul Atreides arrives on Arrakis after his father accepts the "
                        "stewardship of the dangerous planet. However, chaos "
                        "ensues after a betrayal as forces clash to control melange, "
                        "a precious resource.")
                  else if(image == 'Black In Action')
                    MovieDescription("Former CIA spies Emily and Matt are pulled back into "
                        "espionage after their secret identities are exposed.")
                  else if(image == "Don't Look Up")
                    MovieDescription("Two low-level astronomers must go on a giant media tour to "
                        "warn mankind of an approaching comet that will destroy "
                        "planet Earth.")
                  else if(image == "Jumanji")
                    MovieDescription("When four students play with a magical video game, they a"
                        "re drawn to the jungle world of Jumanji, where they are "
                        "trapped as their avatars. To return to the real world, "
                        "they must finish the game.")
                  else if(image == "Jungle Cruise")
                    MovieDescription("Dr Lily Houghton, a researcher, and her brother team up "
                        "with Frank, a skipper, to locate a mystical tree in the "
                        "Amazon. However, they are pursued by evil entities lusting "
                        "after immortality.")
                  else if(image == "LEO")
                    MovieDescription("Leo the Lizard has been stuck in the same Florida "
                        "school for decades. When he learns he only has one "
                        "year left to live, he plans to escape to freedom, but "
                        "instead has to rescue his class from their horribly mean "
                        "substitute teacher.")
                  else if(image == "Moana")
                    MovieDescription("Moana journeys to the far seas of Oceania after "
                        "receiving an unexpected call from her wayfinding "
                        "ancestors.")
                  else if(image == "Ratatouille")
                    MovieDescription("Remy, a rat, aspires to become a renowned French "
                        "chef. However, he fails to realise that people despise "
                        "rodents and will never enjoy a meal cooked by him.")
                  else if(image == "Shazam")
                    MovieDescription("After being abandoned at a fair, Billy constantly searches "
                        "for his mother. His life, however, takes a huge turn when he "
                        "inherits superpowers from a powerful wizard.")
                  else if(image == "The Hangover")
                    MovieDescription("A few days before his wedding, Doug Billings and his best "
                        "men go to Las Vegas for a bachelor party. However, "
                        "the next day, the friends realise that they have no recollection of "
                        "the previous night.")
                  else if(image == "The Mummy Returns")
                    MovieDescription("When a cult resurrects the mummified body of Imhotep, an "
                        "evil Egyptian high priest, to use his power to trounce the "
                        "Scorpion King and his supernatural army, an Egyptologist is "
                        "caught in the crossfire.")
                  else if(image == "The Scorpion King")
                    MovieDescription("Mathayus, an assassin, is hired by the leaders of the free "
                        "tribes to stop Memnon, an evil king, from demolishing their "
                        "land. The task turns out to be much more dangerous "
                        "than what he had expected.")
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Material(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    spacing: 5,
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 30,
                        color: Colors.white,
                      ),
                      Text(
                        'Add to Wishlist',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.red,
              borderRadius: BorderRadius.circular(30),
              child: InkWell(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
