import 'dart:ui';

class ProjectModel {
  final String date, name, platform, description, link;
  final List<String> features;
  final List<String> technologies;
  Color color;

  ProjectModel(
      {this.date,
      this.name,
      this.platform,
      this.description,
      this.link,
      this.features,
      this.technologies});
}

List<ProjectModel> recentProjectList = [
  ProjectModel(
    date: 'AUG 2017 - AUG 2019',
    name: 'Apple Contact Center Tech.',
    platform: 'Linux',
    description:
        'Apple Inc. manages its customer support using Genesys, a comprehensive customer experience solution which allows easy configuration of routing designs. The project involved maintenance of the Genesys routing environment, automation for core object creation using Genesys PSDK and development of internal applications used by client.',
    link: '',
    features: [
      'Maintenance of the Genesys routing environment',
      'Design and development of Apple internal applications',
      'Automation for Genesys object creation using Genesys PSDK'
    ],
    technologies: [
      'Java',
      'Genesys PSDK',
      'Unix',
      'Shell script',
      'Expect Script'
    ],
  ),
  ProjectModel(
    date: 'AUG 2019 - PRESENT',
    name: 'Airtel Africa Mobiquity',
    platform: 'Website',
    description:
        'Mobiquity offers a feature-rich digital wallet for consumers and a robust and flexible platform for service providers and their partners. My role in the project involves design, development and testing of new modules for the product. It also involves integration of third party vendors with the core product.',
    link:
        'https://www.comviva.com/products/mobile-financial-solutions/mobiquity-suite/mobiquity-wallet.htm',
    features: [
      'Design and development of web modules as per business requirement',
      'Suppport for System Integration Testing',
      'Integration and Development of API',
    ],
    technologies: [
      'Mobiquity',
      'Java',
      'Spring',
      'Hibernate',
      'J2EE',
    ],
  ),
].reversed.toList();

List<ProjectModel> projectList = [
  ProjectModel(
    date: 'MAR 2015',
    name: 'J.A.R.V.I.S.',
    platform: 'Windows',
    description:
        'J.A.R.V.I.S. is a desktop software that helps users to launch applications and interact using voice commands. It not only helps in launching applications, but also helps in changing System settings.',
    link: 'https://github.com/IamAKX/J.A.R.V.I.S',
    features: [
      'Runs on Voice command',
      'Controls system settings',
      'Launches and quits applications'
    ],
    technologies: ['Java', 'CMU Sphinx'],
  ),
  ProjectModel(
    date: 'JUN 2015',
    name: 'Single Object Detection',
    platform: 'Windows',
    description:
        'This is a Windows based software that processes image frames in real time taken by device camera and tracks the exact location of the object. The output is very precise, but there is only one limitation that when the object is of multiple colors, the quality of the output is compromised. User needs to set the exact HSV color of the object using the software controller and feedback. The software then generaters a binary image of the object in order to reduce noise.',
    link: 'https://github.com/IamAKX/SingleObjectDetection',
    features: [
      'Realtime object tracking',
      'Filtration  of HSV colors of the object from every frame in realtime',
      'Conversion to Binary image'
    ],
    technologies: ['C++', 'Open CV'],
  ),
  ProjectModel(
    date: 'AUG 2015',
    name: 'Impilo',
    platform: 'Windows, Android',
    description:
        'This application was to help the users in need of blood from nearby blood banks or hospitals. A desktop client is to be given to the blood banks and hospital to update their inventory collection of blood of each type to the system. The Android application is for users who can search, request or donate blood.',
    link: 'https://github.com/IamAKX/Impilo',
    features: [
      'Blood banks can update their information and inventory collection of blood',
      'Blood banks can accept or reject blood request',
      'Users can find nearby blood banks',
      'Users can see available blood in respective banks',
      'Users can request or donate blood to a bank'
    ],
    technologies: ['Java', 'Swing', 'Android'],
  ),
  ProjectModel(
    date: 'OCT 2015',
    name: 'TAgency',
    platform: 'Website',
    description:
        'This static web application was developed for a client as a part of freelancing. The client had musical event organization business. The application showcases the events and artist details. The application also helps user to subscribe and give feedback to admin.',
    link: 'http://tagency.fanclub.rocks/?i=1',
    features: [
      'Showcase events and artists',
      'Newsletter subscription',
      'Contact admin via email',
    ],
    technologies: ['PHP', 'JS', 'HTML', 'CSS', 'SQL'],
  ),
  ProjectModel(
    date: 'Dec 2015',
    name: 'Start - Remote PC Controller',
    platform: 'Android, Windows',
    description:
        'The app can remotely control Windows desktop connected over same WAN. The application is supported by Windows 8 and above. The app can also launch Windows metro application. User can run any CMD commands, use the mobile device as trackpad, open control panel and settings and also shutdown their computers remotely.',
    link: 'https://play.google.com/store/apps/details?id=com.kainotomia.start',
    features: [
      'Launches applications remotely',
      'Converts Android device to trackpad',
      'Connects to Command prompt and runs commands',
      'Controls Windows (8 and above) desktop remotely'
    ],
    technologies: ['Java', 'Socket', 'Swing', 'Android'],
  ),
  ProjectModel(
    date: 'Feb 2016',
    name: 'Link Sharer',
    platform: 'Android, Windows, Linux',
    description:
        'The application helps in sharing clipboard content from Android to desktop over WAN. User can also open any copied link on desktop.',
    link: 'https://github.com/IamAKX/LinkSharer',
    features: [
      'Sync clipboard content from Android to Desktop',
      'Open link in Desktop browser',
    ],
    technologies: ['Java', 'Socket', 'Swing', 'Android'],
  ),
  ProjectModel(
    date: 'APR 2016',
    name: 'Offline Inventory Management System',
    platform: 'Windows',
    description:
        'Offline Inventory Management System is a software that helps the user to maintain the stock in an organised way. The software also generates a barcode ID of the stock and stores the location in the warehouse(if any). Software can add/update stock one by one or in bulk. The software also provides option to generate an invoice and print it.',
    link: 'https://github.com/IamAKX/InventoryManagementSystem-OfflineMode',
    features: [
      'Manage product Count',
      'Organise product',
      'Generate barcode',
      'Generate and print invoice',
    ],
    technologies: ['Java', 'Swing', 'Apache POI', 'Derby Database'],
  ),
  ProjectModel(
    date: 'MAY 2016',
    name: 'EasySearch',
    platform: 'Android',
    description:
        'The application can scan any text by device camera, recognise it and then search it on Google.',
    link: 'https://github.com/IamAKX/EasySearch',
    features: [
      'Scan textual information from camera',
      'Search the recognised text on Google',
    ],
    technologies: ['Android', 'Google OCR'],
  ),
  ProjectModel(
    date: 'JUL 2016',
    name: 'Security System',
    platform: 'Arduino',
    description:
        'The security system detects intruders with the help of PIR sensors and then processes the signal using Arduino Uno. If any intruder is found, Arduino sends a call and message to the owner\'s mobile device using GSM900A module and triggers an alarm to alert the neighbourhood.',
    link: 'https://github.com/IamAKX/EasySearch',
    features: [
      'Intrusion detection',
      'Call and message notification',
      'Alarm trigger',
    ],
    technologies: ['IOT'],
  ),
  ProjectModel(
    date: 'AUG 2017',
    name: 'Freelance',
    platform: 'Android',
    description:
        'This application is for both employers and freelancers. It allows two modes - Work and Hire. In HIRE mode, user can post a project with category specific to skills, job type and deadline. Then the live bidding starts. The other users in WORK mode with the same skillset will get the job notification, bid on the project and then chat for the details. The WORK mode user can browse other projects as well. The user can also report a project/profile. The super admin is provided with a console and can monitor all users and ban or block users.',
    link: 'https://github.com/IamAKX/Freelance',
    features: [
      'Session Management',
      'Post project',
      'Live project bidding',
      'Chatting',
      'Skill based project routing',
      'Report profile',
      'Admin console',
      'Admin - View User details',
      'Admin - Ban or block user',
      'Admin - View reported issue'
    ],
    technologies: [
      'Android',
      'Node js',
      'Firebase realtime database',
      'Firebase storage',
      'Firebase Auth',
      'Mongo DB',
      'Redis DB'
    ],
  ),
  ProjectModel(
    date: 'OCT 2017',
    name: 'Smart Dustbin',
    platform: 'Arduino',
    description:
        'This module monitors the garbage level of a bin and notifies the responsible authority once the threshold exceeds. The garbage level is monitored by Ultrasonic distance sensor, fitted upside down on the lid. The Arduino Uno is connected to WiFi module ESP8266 for internet access. Once the threshold exceeds, the arduino makes a request to the server to intimate responsible authority for cleaning the bin.',
    link: 'https://github.com/IamAKX/EasySearch',
    features: [
      'Monitors Garbage level',
      'Sends SMS and e-mail',
      'Shows graphical representation of garbage level on ThingSpeak',
    ],
    technologies: ['IOT', 'PHP', 'AWS SNS', 'ThingSpeak'],
  ),
  ProjectModel(
      date: 'May 2018',
      name: 'FindU',
      platform: 'Android, IOS, Windows',
      description:
          'The application tracks the location of your friend. So if you are lost in a crowd, this application will help you to find your friend.',
      link: 'https://github.com/IamAKX/FindU',
      features: [
        'Track Geolocation',
        'Show the location of users on map',
      ],
      technologies: [
        'Ionic',
        'Google Maps',
        'GPS',
        'Geo Location',
        'Firebase Auth',
        'Firebase realtime database',
      ]),
  ProjectModel(
      date: 'May 2018',
      name: 'Todo',
      platform: 'Website',
      description: 'A web application to maintain todo list.',
      link: 'https://todo-everything.herokuapp.com',
      features: [
        'Create todo',
        'Delete todo',
      ],
      technologies: [
        'Node js',
        'Express',
        'Mongo DB',
        'Heroku'
      ]),
  ProjectModel(
    date: 'JUN 2018',
    name: 'LearnCodeOnline',
    platform: 'Android',
    description:
        'A dummy prototype Android application for educational purpose.',
    link: 'https://github.com/IamAKX/LearnCodeOnline/blob/master/README.md',
    features: [
      'Watch Youtube videos',
      'Participates in quizzes',
    ],
    technologies: [
      'Android',
      'Youtube API',
    ],
  ),
  ProjectModel(
    date: 'AUG 2018',
    name: 'NearMe',
    platform: 'Android',
    description:
        'An android application to show restaurant information near you. You can search restaurants as well as change your current location for searching.',
    link: 'https://github.com/IamAKX/NearMe/blob/master/README.md',
    features: [
      'Fetch current location',
      'Fetch near by restaurant details and reviews',
      'Displays current status of restaurants',
    ],
    technologies: [
      'Android',
      'Geo location',
      'Google Place API',
      'Google Map API',
      'GPS'
    ],
  ),
  ProjectModel(
    date: 'AUG 2018',
    name: 'Shoutube',
    platform: 'Android',
    description: 'An android application to show funny YouTube content.',
    link: 'https://github.com/IamAKX/shoutube/blob/master/README.md',
    features: [
      'Fetch trending funny videos from YouTube',
      'Play YouTube videos',
    ],
    technologies: [
      'Android',
      'Youtube API',
    ],
  ),
  ProjectModel(
    date: 'AUG 2018',
    name: 'Flickr Demo',
    platform: 'Android',
    description:
        'An android application to show images by consuming flickr API.',
    link: 'https://github.com/IamAKX/Flickr-demo/blob/master/README.md',
    features: [
      'Show images and its details',
      'Search images',
    ],
    technologies: [
      'Android',
      'Flickr API',
    ],
  ),
  ProjectModel(
    date: 'SEP 2018',
    name: 'Box-8 Demo',
    platform: 'Android',
    description: 'An android demo application for food delivery.',
    link:
        'https://github.com/IamAKX/Box8-Assignments/blob/master/Assignment2/README.md',
    features: [
      'Display Menu',
      'Display offer related banner',
    ],
    technologies: [
      'Android',
    ],
  ),
  ProjectModel(
    date: 'SEP 2018',
    name: 'MyChat',
    platform: 'Android',
    description: 'An android application for online chatting.',
    link: 'https://github.com/IamAKX/MyChat/blob/master/README.md',
    features: ['Create chat room', 'Online chatting', 'Push notification'],
    technologies: [
      'Android',
      'Firebase Realtime Database',
      'Firebase Cloud Messaging'
    ],
  ),
  ProjectModel(
    date: 'SEP 2018',
    name: 'Wission',
    platform: 'Android',
    description:
        'Wission is a social media platform for like-minded people with similar interests and hobbies to discover, connect and engage with each other, so that strong communities can be built around it.',
    link:
        'https://play.google.com/store/apps/details?id=co.wission.community.wission&hl=en',
    features: [
      'User Authentication',
      'Data Encryption',
      'Create text, image or YouTube video post',
      'Like, comment and share on post',
      'Bookmark post',
      'Post or check music event\'s ticket',
      'Follow your favourite artists',
      'Contribute to the events',
      'Push notification'
    ],
    technologies: [
      'Android',
      'Firebase Auth',
      'Firebase Cloud Function',
      'Firebase Realtime Database',
      'Firebase Storage',
      'Firebase Firestore',
      'Firebase Analytics',
      'Firebase Deeplinking',
      'Firebase Crashlytics',
      'Firebase Cloud Messaging',
      'Node js',
    ],
  ),
  ProjectModel(
    date: 'APR 2019',
    name: 'Coffee Time',
    platform: 'Android',
    description: 'An android demo application for coffee shop.',
    link: 'https://github.com/IamAKX/Coffee_Time/blob/master/README.md',
    features: [
      'Display Menu',
      'Display offer related banner',
      'Display cart',
    ],
    technologies: ['Android', 'Flutter'],
  ),
  ProjectModel(
    date: 'APR 2019',
    name: 'Headlines',
    platform: 'Android',
    description:
        'This application consumes open source News API for displaying news.',
    link: 'https://github.com/IamAKX/Headlines/blob/master/README.md',
    features: [
      'Display news',
      'Search news',
      'Filter news based on type, country and language',
    ],
    technologies: ['Android', 'Ionic', 'Open Source News API'],
  ),
  ProjectModel(
    date: 'JUN 2019',
    name: 'Memory Game',
    platform: 'Website',
    description:
        'This web application is a simple and addictive game to test your memory power.',
    link: 'http://memorygame.is-best.net/?i=1',
    features: [
      'Game',
    ],
    technologies: [
      'JS',
    ],
  ),
  ProjectModel(
    date: 'JUL 2019',
    name: 'Technical Anna',
    platform: 'Android',
    description:
        'This application is for educational purpose where user can get course material, weekly boosters and appear for short and subject wise full length examination. User also gets notified about upcoming Indian Government examination dates and schedules. An admin side application is there to support and publish information by the administrator.',
    link:
        'https://play.google.com/store/apps/details?id=com.akashapplications.technicalanna',
    features: [
      'Short Quiz',
      'Subjectwise full length exams',
      'Study material',
      'View and download study material',
      'Weekly exam tips',
      'Toppers recomendations',
      'Push notification of alerts',
      'Upcoming exam dates and syllabus'
    ],
    technologies: [
      'Android',
      'Firebase Auth',
      'Firebase Cloud Function',
      'Firebase Realtime Database',
      'Firebase Storage',
      'Firebase Firestore',
      'Firebase Cloud Messaging',
      'Node js',
    ],
  ),
  ProjectModel(
    date: 'AUG 2019',
    name: 'Sabka Insurance',
    platform: 'Android',
    description:
        'This application is for keeping track of the customers and their vehicle and payment details for an Insurance business.',
    link:
        'https://play.google.com/store/apps/details?id=com.akashapplications.instainsure',
    features: [
      'Managing Customer',
      'Managing Vehicle',
      'Adding Vehicle Insurance quote',
      'Keep track of Insurance dealing (Paid/Unpaid bill)',
      'Generating reports',
    ],
    technologies: [
      'Android',
      'Local Preference',
      'Spring Boot',
    ],
  ),
  ProjectModel(
    date: 'SEP 2019',
    name: 'Video Streaming',
    platform: 'Website',
    description: 'This application is for live video streaming',
    link: 'https://video-stream-iamakx.herokuapp.com',
    features: [
      'Live video streaming',
      'Capture frames and store the image in base64 string',
    ],
    technologies: [
      'Node.js',
      'Web socket',
    ],
  ),
];

List<ProjectModel> getProjectList() {
  return projectList.reversed.toList();
}
