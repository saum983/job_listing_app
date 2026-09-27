class Job {
  final int id;
  final String title;
  final String company;
  final String location;
  final String salary;
  final String jobType;
  final String description;

  Job({
    required this.id,
    required this.title,
    required this.company,
    required this.location,
    required this.salary,
    required this.jobType,
    required this.description,
  });

  factory Job.fromJson(Map<String, dynamic> json) {
    return Job(
      id: json['id'],
      title: json['title'],
      company: json['company'],
      location: json['location'],
      salary: json['salary'],
      jobType: json['jobType'],
      description: json['description'],
    );
  }
}