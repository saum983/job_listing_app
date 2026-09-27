````markdown
# Job Listing Mobile App

A simple and responsive Flutter mobile application for browsing and applying for job opportunities.

The application includes authentication screens, job search and filtering, job details, job application confirmation, mock JSON data, state management, and automated tests.

## Features

- Login screen with form validation
- Signup screen with form validation
- Job listing screen
- Search jobs by title
- Filter jobs by location
- Job details screen
- Apply Now functionality with confirmation dialog
- Loading state
- Empty state
- Error state with Retry option
- Logout functionality
- Mock JSON job data
- Provider state management
- Reusable Job Card widget
- Automated tests

## Tech Stack

- Flutter
- Dart
- Provider
- HTTP package
- Material 3
- Flutter Test

## Project Architecture

The application follows a simple layered architecture:

```text
UI Screens
    ↓
Provider
    ↓
Service
    ↓
Mock JSON Data
    ↓
Job Model
````

### Main Components

**Screens**

* Login
* Signup
* Home
* Job Details

**Provider**

* Manages job loading
* Handles search
* Handles location filtering
* Manages loading and error states

**Service**

* Provides the mock job data
* Simulates API/network delay

**Model**

* Represents job information
* Converts JSON data into Dart objects

**Widgets**

* Reusable Job Card component

## Folder Structure

```text
lib/
├── data/
│   └── job_data.dart
│
├── models/
│   └── job.dart
│
├── providers/
│   └── job_provider.dart
│
├── screens/
│   ├── home_screen.dart
│   ├── job_details_screen.dart
│   ├── login_screen.dart
│   └── signup_screen.dart
│
├── services/
│   └── job_service.dart
│
├── widgets/
│   └── job_card.dart
│
└── main.dart

test/
└── widget_test.dart
```

## Getting Started

### Prerequisites

Make sure Flutter is installed on your system.

Check your Flutter installation:

```bash
flutter doctor
```

### Installation

Clone the repository:

```bash
git clone <your-github-repository-url>
```

Go to the project directory:

```bash
cd job_listing_app
```

Install dependencies:

```bash
flutter pub get
```

Run the application:

```bash
flutter run
```

## Running Tests

Run all automated tests using:

```bash
flutter test
```

The project currently includes tests for:

* JSON to Job model conversion
* Mock job data validation
* Flutter Developer job data
* Job title search
* Location filtering

## Application Flow

```text
Login
  ↓
Find Jobs
  ↓
Search / Filter
  ↓
Job Details
  ↓
Apply Now
  ↓
Application Confirmation
```

Users can also create an account through the Signup screen and logout from the Home screen.

## Mock Data

The application currently uses local mock JSON data instead of a production backend.

This makes the application easy to run and test without requiring an external server.

The data layer is structured so that the mock service can later be replaced with a real REST API.

## Future Improvements

Possible future enhancements include:

* Real REST API integration
* User authentication with backend
* Persistent login
* Saved/bookmarked jobs
* Pagination
* Application history
* Job categories
* Advanced filters
* BLoC/Riverpod state management
* Backend database integration

## Author

Developed as a Flutter mobile application project.

```
```
