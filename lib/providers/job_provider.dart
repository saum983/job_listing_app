import 'package:flutter/foundation.dart';

import '../models/job.dart';
import '../services/job_service.dart';

class JobProvider extends ChangeNotifier {
  final JobService _jobService = JobService();

  List<Job> _allJobs = [];
  List<Job> _filteredJobs = [];

  bool _isLoading = false;
  String? _errorMessage;

  String _searchQuery = '';
  String _selectedLocation = 'All';

  List<Job> get jobs => _filteredJobs;

  bool get isLoading => _isLoading;

  String? get errorMessage => _errorMessage;

  String get selectedLocation => _selectedLocation;

  List<String> get locations {
    final List<String> locations =
        _allJobs.map((job) => job.location).toSet().toList();

    locations.sort();

    return ['All', ...locations];
  }

  Future<void> loadJobs() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      _allJobs = await _jobService.fetchJobs();

      _applyFilters();
    } catch (e) {
      _errorMessage = 'Failed to load jobs. Please try again.';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void searchJobs(String query) {
    _searchQuery = query.toLowerCase().trim();

    _applyFilters();
  }

  void filterByLocation(String location) {
    _selectedLocation = location;

    _applyFilters();
  }

  void _applyFilters() {
    _filteredJobs = _allJobs.where((job) {
      final bool matchesTitle =
          job.title.toLowerCase().contains(_searchQuery);

      final bool matchesLocation =
          _selectedLocation == 'All' ||
          job.location == _selectedLocation;

      return matchesTitle && matchesLocation;
    }).toList();

    notifyListeners();
  }

  void retry() {
    loadJobs();
  }
}