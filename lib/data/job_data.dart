import '../models/job.dart';

const List<Map<String, dynamic>> mockJobJson = [
  {
    'id': 1,
    'title': 'Flutter Developer',
    'company': 'Tech Solutions',
    'location': 'Bangalore',
    'salary': '₹6 - ₹9 LPA',
    'jobType': 'Full Time',
    'description':
        'We are looking for a Flutter Developer to build and maintain '
        'cross-platform mobile applications. You will work with designers '
        'and backend developers to create high-quality applications.',
  },
  {
    'id': 2,
    'title': 'Java Developer',
    'company': 'Infosys',
    'location': 'Pune',
    'salary': '₹5 - ₹8 LPA',
    'jobType': 'Full Time',
    'description':
        'Join our development team as a Java Developer. You will design, '
        'develop and maintain Java-based applications and APIs.',
  },
  {
    'id': 3,
    'title': 'Frontend Developer',
    'company': 'Wipro',
    'location': 'Hyderabad',
    'salary': '₹4 - ₹7 LPA',
    'jobType': 'Full Time',
    'description':
        'We are looking for a Frontend Developer with knowledge of '
        'HTML, CSS, JavaScript and modern frontend frameworks.',
  },
  {
    'id': 4,
    'title': 'Backend Developer',
    'company': 'TCS',
    'location': 'Mumbai',
    'salary': '₹6 - ₹10 LPA',
    'jobType': 'Full Time',
    'description':
        'Work with our backend team to develop scalable APIs and '
        'server-side applications. Experience with Node.js or Java '
        'is preferred.',
  },
  {
    'id': 5,
    'title': 'React Developer',
    'company': 'Accenture',
    'location': 'Noida',
    'salary': '₹5 - ₹9 LPA',
    'jobType': 'Full Time',
    'description':
        'Develop responsive web applications using React. You will '
        'collaborate with designers and backend engineers.',
  },
  {
    'id': 6,
    'title': 'Software Engineer',
    'company': 'Amazon',
    'location': 'Delhi',
    'salary': '₹8 - ₹14 LPA',
    'jobType': 'Full Time',
    'description':
        'Join our engineering team to build reliable and scalable '
        'software solutions used by millions of customers.',
  },
  {
    'id': 7,
    'title': 'Mobile App Developer',
    'company': 'Marelli',
    'location': 'Noida',
    'salary': '₹5 - ₹8 LPA',
    'jobType': 'Full Time',
    'description':
        'Build and maintain mobile applications while working closely '
        'with product and engineering teams.',
  },
  {
    'id': 8,
    'title': 'UI/UX Designer',
    'company': 'Deloitte',
    'location': 'Gurgaon',
    'salary': '₹4 - ₹7 LPA',
    'jobType': 'Full Time',
    'description':
        'Create intuitive and visually appealing user experiences '
        'for web and mobile applications.',
  },
];

List<Job> getMockJobs() {
  return mockJobJson
      .map((json) => Job.fromJson(json))
      .toList();
}