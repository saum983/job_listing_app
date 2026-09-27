import 'package:flutter_test/flutter_test.dart';
import 'package:job_listing_app/data/job_data.dart';
import 'package:job_listing_app/models/job.dart';
import 'package:job_listing_app/providers/job_provider.dart';

void main() {
  test('Job model converts JSON correctly', () {
    final Map<String, dynamic> json = {
      'id': 1,
      'title': 'Flutter Developer',
      'company': 'Tech Solutions',
      'location': 'Bangalore',
      'salary': '₹6 - ₹9 LPA',
      'jobType': 'Full Time',
      'description': 'Flutter development job.',
    };

    final Job job = Job.fromJson(json);

    expect(job.id, 1);
    expect(job.title, 'Flutter Developer');
    expect(job.company, 'Tech Solutions');
    expect(job.location, 'Bangalore');
    expect(job.salary, '₹6 - ₹9 LPA');
    expect(job.jobType, 'Full Time');
  });

  test('Mock job data contains 8 jobs', () {
    expect(mockJobJson.length, 8);
  });

  test('Mock job data contains Flutter Developer job', () {
    final List<Job> jobs = getMockJobs();

    final Job flutterJob = jobs.firstWhere(
      (job) => job.title == 'Flutter Developer',
    );

    expect(flutterJob.company, 'Tech Solutions');
    expect(flutterJob.location, 'Bangalore');
  });

  test('JobProvider searches jobs by title', () async {
    final JobProvider provider = JobProvider();

    await provider.loadJobs();

    provider.searchJobs('Flutter');

    expect(provider.jobs.length, 1);
    expect(provider.jobs.first.title, 'Flutter Developer');
  });

  test('JobProvider filters jobs by location', () async {
    final JobProvider provider = JobProvider();

    await provider.loadJobs();

    provider.filterByLocation('Noida');

    expect(provider.jobs.length, 2);
  });
}