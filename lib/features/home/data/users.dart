// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  String assetName;
  String userName;
  UserModel({
    required this.assetName,
    required this.userName,
  });
}

class PostModel {
  UserModel user;
  String caption;
  String image;
  bool liked;
  PostModel({
    required this.user,
    required this.caption,
    required this.liked,
    required this.image,
  });
}

UserModel nitinchauhan = UserModel(
    assetName: 'assets/1_nitinchauhan.jpeg', userName: 'nitinchauhan');
UserModel utsavKamboj = UserModel(
    assetName: 'assets/2_utsav_kamboj.jpeg', userName: 'utsav_kamboj');
UserModel bawaraa =
    UserModel(assetName: 'assets/3_bawaraa.jpeg', userName: 'bawaraa');
UserModel karanAujala = UserModel(
    assetName: 'assets/4_karan_aujala.jpeg', userName: 'karan_aujala');
UserModel panchmighavri = UserModel(
    assetName: 'assets/5_panchamighavri.jpeg', userName: 'panchmighavri');
UserModel ezsnippet =
    UserModel(assetName: 'assets/6_ezsnippet.jpeg', userName: 'ezsnippet');

List<UserModel> stories = [
  nitinchauhan,
  utsavKamboj,
  bawaraa,
  karanAujala,
  panchmighavri,
  ezsnippet
];

List<PostModel> posts = [
  PostModel(
    user: nitinchauhan,
    caption:
        "Embracing the timeless beauty of black and white, channeling the essence of Hindu symbolism. 🖤✨ #NitinChauhan #MonochromeMagic #SpiritualElegance",
    liked: true,
    image: 'assets/posts/u1_1.jpeg',
  ),
  PostModel(
    user: utsavKamboj,
    caption: '''After coming back from Salone & crashing straight into bed 🙃
Events are good for networking and learning but if there’s one thing I dislike about them, its how physically and mentally draining they can be.🥲

Walking around the exhibition hall, interacting with brands and visitors, checking out unique exhibits, attending conferences and panel discussions- its all too demanding. 😅😅😅

By the end of the day, I can't feel my feet, my head buzzes constantly, my throat doesn't want to make any sound, and in the name of lunch I end up eating chips on my way back home.

But over the years, I have figured out how to deal with (atleast) some of these downsides. 👀 Here they are:

#1 I now check the event directory well in advance to see which brands and exhibits I want to visit. If the event has a real-time app, I use it to map stall locations, making my navigation easier.

#2 I dress up stylish yet comfy and light. The choice of my clothes, handbag, and footwear are all determined based on these three factors. I carry only essentials so that I am not straining my back, hands, or shoulders.

#3 I have learnt to let go (for the good). I do not put myself under the pressure of making it to every exhibit and conference session. Prioritizing quality over quantity is what keeps me sane.

Once I made the mistake of wearing block heels to an exhibition. I never ever want to punish my feet like that ever again 🙈.''',
    liked: true,
    image: 'assets/posts/u2_1.jpg',
  ),
  PostModel(
    user: bawaraa,
    caption: "📍 Mumbai, India",
    liked: true,
    image: 'assets/posts/u3_1.jpeg',
  ),
  PostModel(
    user: karanAujala,
    caption: "i Run my own race.",
    liked: true,
    image: 'assets/posts/u4_1.jpeg',
  ),
  PostModel(
    user: panchmighavri,
    caption:
        '''As we step into the new year I’m thrilled to see what 2023 has in store for us. 2022 was incredibly overwhelming we grew more than ever before, outgrew our office space and became a team of 12. What started out alone as a freelancer is now a family. There are days I still pinch myself, the little girl in me was so scared to even get an office space wondering how I would pay the bills. I’m so incredible grateful for all the people that showed faith in me and my team. Thank you ♥️''',
    liked: true,
    image: 'assets/posts/u5_1.jpeg',
  ),
];
