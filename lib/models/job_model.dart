class JobModel {
  String title;
  String salary;
  String companyName;
  String companyLogo;
  String city;
  String type; // Full-time, Hybrid, Remote
  String time; // e.g., "22 days left"
  String aboutCompany;
  List<JobReview> reviews; // List of user reviews
  String description; // Long job description

  JobModel({
    required this.title,
    required this.salary,
    required this.companyName,
    required this.companyLogo,
    required this.city,
    required this.type,
    required this.time,
    required this.aboutCompany,
    required this.reviews,
    required this.description,
  });
}

class JobReview {
  String username;
  double rating; // 1.0 - 5.0
  String comment;

  JobReview({
    required this.username,
    required this.rating,
    required this.comment,
  });
}
