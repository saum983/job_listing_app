import '../data/job_data.dart';
import '../models/job.dart';

class JobService {
  Future<List<Job>> fetchJobs() async {
    await Future.delayed(const Duration(seconds: 1));

    return getMockJobs();
  }
}