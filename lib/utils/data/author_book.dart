import 'package:webpagetransition/utils/data/author_data.dart';

class AuthorBook {
  final List<Author> favAuthors = [
    Author(
        name: 'Yency Lorena',
        job: 'Student, Mobile Development',
        quote:
            'My years of experience have prepared me well for this position. You mentioned that mobile development is a big part of this job; I spent three years working in a high-volume call center, answering customer calls, and identifying solutions.',
        imageName: 'girl4'),
    Author(
        name: 'John Legend',
        job: 'UI Designer',
        quote:
            'I worked as a kennel assistant at a local animal hospital. It was there I discovered what I wanted to do as a career. I decided I would go to college and focus on becoming a small-animal veterinarian, so that\'s what I did.',
        imageName: 'man1'),
    Author(
        name: 'Ashton Kutcher',
        job: 'Accountant',
        quote:
            ' I\'m excellent at deescalating situations and finding a way to make the customer happy. Since the role of your marketing department is to improve customers\' impressions of the company, my experience would be a great asset to your team.',
        imageName: 'man2'),
  ];

  List<Author> getFavAuthors() {
    return favAuthors;
  }
}
