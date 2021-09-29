import 'package:feedbook/core/models/models.dart';

final User currentUser = User(
  firstName: 'Ahmed',
  lastName: 'Abdelsalam',
  imageUrl:
      'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
);

final List<User> users = [
  User(
    firstName: 'Mohamed',
    lastName: 'Ahmed',
    imageUrl:
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    firstName: 'Abdullah',
    lastName: 'Usama',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhEWoGO65sKHaEoBPnVy3tW52rFVfjC19v-Q&usqp=CAU',
  ),
  User(
    firstName: 'Hussin',
    lastName: 'Islam',
    imageUrl:
        'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80',
  ),
  User(
    firstName: 'Kahled',
    lastName: 'Rashed',
    imageUrl:
        'https://images.unsplash.com/reserve/OlxPGKgRUaX0E1hg3b3X_Dumbo.JPG?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    firstName: 'Hassan',
    lastName: 'Alaa',
    imageUrl:
        'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
  ),
  User(
    firstName: 'Eman',
    lastName: 'Magdy',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    firstName: 'Mohamed',
    lastName: 'Ahmed',
    imageUrl:
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    firstName: 'Abdullah',
    lastName: 'Usama',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhEWoGO65sKHaEoBPnVy3tW52rFVfjC19v-Q&usqp=CAU',
  ),
  User(
    firstName: 'Hussin',
    lastName: 'Islam',
    imageUrl:
        'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80',
  ),
  User(
    firstName: 'Hassan',
    lastName: 'Alaa',
    imageUrl:
        'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
  ),
  User(
    firstName: 'Eman',
    lastName: 'Magdy',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
];

final List<Story> stories = [
  Story(
    user: users[1],
    imageUrl:
        'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80',
  ),
  Story(
    user: users[2],
    imageUrl:
        'https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    isViewed: true,
  ),
  Story(
    user: users[3],
    imageUrl:
        'https://images.unsplash.com/photo-1497262693247-aa258f96c4f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=624&q=80',
  ),
  Story(
    user: users[4],
    imageUrl:
        'https://images.unsplash.com/photo-1496950866446-3253e1470e8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    isViewed: true,
  ),
  Story(
    user: users[5],
    imageUrl:
        'https://images.unsplash.com/photo-1475688621402-4257c812d6db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80',
  ),
  Story(
    user: users[0],
    imageUrl:
        'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80',
  ),
  Story(
    user: users[3],
    imageUrl:
        'https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    isViewed: true,
  ),
  // Story(
  //   user: users[3],
  //   imageUrl:
  //       'https://images.unsplash.com/photo-1497262693247-aa258f96c4f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=624&q=80',
  // ),
  // Story(
  //   user: users[9],
  //   imageUrl:
  //       'https://images.unsplash.com/photo-1496950866446-3253e1470e8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
  //   isViewed: true,
  // ),
  // Story(
  //   user: users[7],
  //   imageUrl:
  //       'https://images.unsplash.com/photo-1475688621402-4257c812d6db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80',
  // ),
];

final List<List<Post>> posts = [
  [
    Post(
      id: '123',
      user: users[4],
      text:
          'Hello, everyone. I need help for the Arabic translation of an English  sentence:\n"It\'s one thing to think you\'re on the right path, but it\'s another to think that yours is the only path\" \nMy proposal: \n \"شيء أن ترى أنك في الطريق الصحيح، وشيء آخر أن ترى أن طريقك هو الطريق الوحيد\" \n Is it OK\?',
      postDate: DateTime(2021, 9, 11, 20, 33),
      likers: [users[0], users[3]],
      comments: 37,
      shares: 9,
    ),
    Post(
      id: '566',
      user: users[1],
      text:
          'Omar al-Mukhtar (d.1931), The Lion of the Desert teaching Qur\'an at his home. Omar was an Islamic scholar and revolutionary who heroically led the resistance against the Italian occupation of Libya for almost 20 years. May God have mercy on his soul.',
      postDate: DateTime(2021, 8, 11, 17, 0),
      likers: [users[0]],
      comments: 79,
      shares: 18,
    ),
    Post(
      id: '005645',
      user: users[0],
      text: 'ثلاثة أشياء وصفها الله بالجمال',
      postDate: DateTime(2017, 9, 7, 17, 30),
      imageUrl: [
        'https://cdn.meetoor.com/media/media/PostsFiles/Meetoor_fervsxilbvyghgrqzmod.jpg',
        'https://images.unsplash.com/photo-1496950866446-3253e1470e8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
      ],
      likers: [users[1], users[4], users[0], users[3], users[2]],
      comments: 184,
      shares: 96,
    ),
    Post(
      id: '216a1sd',
      user: users[2],
      text: 'This is a very good boi.',
      postDate: DateTime(2021, 9, 11, 17, 0),
      imageUrl: [
        'https://images.unsplash.com/photo-1575535468632-345892291673?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'
      ],
      likers: [],
      comments: 201,
      shares: 27,
    ),
    Post(
      id: 'asdq',
      user: users[3],
      text: 'Adventure 🏔',
      postDate: DateTime(2020, 3, 3, 3, 45),
      imageUrl: [
        'https://images.unsplash.com/photo-1573331519317-30b24326bb9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
      ],
      likers: [users[5], users[7], users[3], currentUser],
      comments: 183,
      shares: 42,
    ),

    // Post(
    //   user: onlineUsers[9],
    //   caption: 'A classic.',
    //   timeAgo: '1d',
    //   imageUrl:
    //       'https://images.unsplash.com/reserve/OlxPGKgRUaX0E1hg3b3X_Dumbo.JPG?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    //   likes: 1523,
    //   shares: 129,
    //   comments: 301,
    // )
  ],
  [
    Post(
      id: '123',
      user: users[4],
      text:
          'Hello, everyone. I need help for the Arabic translation of an English  sentence:\n"It\'s one thing to think you\'re on the right path, but it\'s another to think that yours is the only path\" \nMy proposal: \n \"شيء أن ترى أنك في الطريق الصحيح، وشيء آخر أن ترى أن طريقك هو الطريق الوحيد\" \n Is it OK\?',
      postDate: DateTime(2021, 9, 11, 20, 33),
      likers: [users[0], users[3]],
      comments: 37,
      shares: 9,
    ),
    Post(
      id: '566',
      user: users[1],
      text:
          'Omar al-Mukhtar (d.1931), The Lion of the Desert teaching Qur\'an at his home. Omar was an Islamic scholar and revolutionary who heroically led the resistance against the Italian occupation of Libya for almost 20 years. May God have mercy on his soul.',
      postDate: DateTime(2021, 8, 11, 17, 0),
      likers: [users[0]],
      comments: 79,
      shares: 18,
    ),
    Post(
      id: '005645',
      user: users[0],
      text: 'ثلاثة أشياء وصفها الله بالجمال',
      postDate: DateTime(2017, 9, 7, 17, 30),
      imageUrl: [
        'https://cdn.meetoor.com/media/media/PostsFiles/Meetoor_fervsxilbvyghgrqzmod.jpg',
        'https://images.unsplash.com/photo-1496950866446-3253e1470e8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
      ],
      likers: [users[1], users[4], users[0], users[3], users[2]],
      comments: 184,
      shares: 96,
    ),
    Post(
      id: '216a1sd',
      user: users[2],
      text: 'This is a very good boi.',
      postDate: DateTime(2021, 9, 11, 17, 0),
      imageUrl: [
        'https://images.unsplash.com/photo-1575535468632-345892291673?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'
      ],
      likers: [],
      comments: 201,
      shares: 27,
    ),
    Post(
      id: 'asdq',
      user: users[3],
      text: 'Adventure 🏔',
      postDate: DateTime(2020, 3, 3, 3, 45),
      imageUrl: [
        'https://images.unsplash.com/photo-1573331519317-30b24326bb9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
      ],
      likers: [users[5], users[7], users[3], currentUser],
      comments: 183,
      shares: 42,
    ),
    Post(
      id: 'qweq',
      user: users[1],
      text: 'A classic.',
      postDate: DateTime(2020, 3, 3, 3, 45),
      imageUrl: [
        'https://images.unsplash.com/reserve/OlxPGKgRUaX0E1hg3b3X_Dumbo.JPG?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      ],
      likers: [users[5], users[7], users[3], currentUser],
      shares: 129,
      comments: 301,
    )
  ]
];
