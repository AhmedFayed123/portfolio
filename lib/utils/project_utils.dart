enum LinkType { youtube, website, appleStore, googleStore, github }

class ProjectInfo {
  final String title;
  final String description;
  final String bannerPath;
  final Map<LinkType, String> links;

  const ProjectInfo(
      {required this.title,
      required this.description,
      required this.bannerPath,
      required this.links});
}

class ProjectUtils {
  static const List<ProjectInfo> bigProjects = [
    ProjectInfo(
      title: "BitVest",
      description:
          "BitVest is a cryptocurrency trading application built with Flutter and Laravel, providing users with a secure and seamless trading experience. It offers advanced features for buying, selling, and managing crypto assets efficiently.",
      bannerPath: "assets/projects/banners/bitvest.png",
      links: {
        LinkType.website:
            'https://drive.google.com/file/d/1ZRpyBwVUSSI68FGGk_I_vBtxIZKy_Nb7/view?usp=sharing'
      },
    ),
    ProjectInfo(
      title: "Map App",
      description:
          "Route Finder is a navigation app built with Flutter that helps users select a location and get directions from their current position. It also allows users to choose two locations for route calculation, view a history of previous routes, and find paths between saved locations.",
      bannerPath: "assets/projects/banners/map.png",
      links: {},
    ),
    ProjectInfo(
      title: "Selaty",
      description:
          "Selaty is an e-commerce application built with Flutter, allowing users to browse, search, and purchase products seamlessly. It features a user-friendly interface, secure payment options, and an efficient product management system.",
      bannerPath: "assets/projects/banners/selaty.png",
      links: {},
    ),
    ProjectInfo(
      title: "Azkar",
      description:
          "Azkar App is an Islamic application built with Flutter, featuring daily Azkar, a digital Tasbih, and customizable alarms for morning and evening reminders. It supports push notifications via OneSignal and Firebase to keep users consistent in their remembrance.",
      bannerPath: "assets/projects/banners/azkar.png",
      links: {},
    ),
    ProjectInfo(
      title: "Doctoriaplus",
      description:
          "Smart Medical Solution is a web platform designed to streamline healthcare services, offering online appointment booking, medical record management, and telemedicine consultations. It provides a seamless and efficient experience for both patients and healthcare providers.",
      bannerPath: "assets/projects/banners/doctoria-plus.png",
      links: {LinkType.website: 'http://Doctoriaplus.com'},
    ),
    ProjectInfo(
      title: "Turuq",
      description:
          "Smart Learning Hub is an online course platform that offers a wide range of educational content, enabling users to enroll in courses, track progress, and earn certifications. It features a user-friendly interface, interactive lessons, and seamless access across devices.",
      bannerPath: "assets/projects/banners/about.png",
      links: {},
    ),
    ProjectInfo(
      title: "Colorlib",
      description:
          "Smart Courses is a modern e-learning website inspired by Colorlib, offering a sleek design, diverse courses, and an intuitive user experience. It provides easy course enrollment, progress tracking, and certification upon completion.",
      bannerPath: "assets/projects/banners/colorlib.png",
      links: {},
    ),
    ProjectInfo(
      title: "Gym Website Page",
      description:
          "Modern gym website featuring a sleek design, membership plans, class schedules, and trainer information. It provides an easy-to-navigate interface for booking sessions, exploring workout programs, and staying updated on fitness events.",
      bannerPath: "assets/projects/banners/gym.png",
      links: {},
    ),
  ];

  static const List<ProjectInfo> sideProjects = [];
}
