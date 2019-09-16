class EducationModel {
  final String date,
      edcationType,
      board,
      institute,
      instituteLogo,
      stream,
      place,
      marks;

  const EducationModel(
      {this.date,
      this.edcationType,
      this.board,
      this.institute,
      this.instituteLogo,
      this.stream,
      this.place,
      this.marks});
}

const List<EducationModel> educationList = [
  EducationModel(
      date: 'APR 1999 - MAR 2011',
      edcationType: 'Matriculation',
      board: 'ICSE',
      institute: 'M. H. Memorial School',
      instituteLogo: 'assets/image/mhms.jpg',
      stream: 'Science',
      place: 'Kolkata, West Bengal, India',
      marks: 'Score: 91.2%'),
  EducationModel(
      date: 'APR 2011 - MAR 2013',
      edcationType: 'Higher Secondary',
      board: 'ISC',
      institute: 'M. H. Memorial School',
      instituteLogo: 'assets/image/mhms.jpg',
      stream: 'Science',
      place: 'Kolkata, West Bengal, India',
      marks: 'Score: 89.4%'),
  EducationModel(
      date: 'AUG 2013 - AUG 2017',
      edcationType: 'Graduation',
      board: 'West Bengal University of Technology',
      institute: 'Netaji Subhash Engg. College',
      instituteLogo: 'assets/image/nsec.png',
      stream: 'B.Tech in Computer Science',
      place: 'Kolkata, West Bengal, India',
      marks: 'Score: 8.4 DGPA'),
];
