import 'package:github_app/github_app.dart';
import 'package:linkedin_application/linkedin_application.dart';
import 'package:models/models.dart';
import 'package:gmail/gmail.dart';

final siriSuggestions = SiriSuggestions(
  [
    LinkedInApplication('https://ru.linkedin.com/in/artemparfenov/'),
    GitHubApplication(),
    GmailApplication(),
  ],
);
