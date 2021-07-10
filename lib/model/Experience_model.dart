class ExperienceModel {
  final String date, company, logo, role, jobType, place, technology, client;
  const ExperienceModel(
      {this.date,
      this.company,
      this.logo,
      this.role,
      this.jobType,
      this.place,
      this.technology,
      this.client});
}

const List<ExperienceModel> experienceList = [
  ExperienceModel(
      date: 'APR 2016 - JUL 2016',
      company: 'BTeract',
      logo: 'assets/image/bteract.png',
      role: 'Mobile App Developer',
      jobType: 'Full time',
      place: 'Kolkata',
      technology: 'Android',
      client: 'Client : Internal Project'),
  ExperienceModel(
      date: 'SEP 2016 - NOV 2016',
      company: 'LCharmin',
      logo: 'assets/image/lcharmin.png',
      role: 'Mobile App Developer',
      jobType: 'Work from home',
      place: 'Kolkata',
      technology: 'Android',
      client: 'Client : Internal Project'),
  ExperienceModel(
      date: 'AUG 2017 - AUG 2019',
      company: 'Tata Consultancy Services',
      logo: 'assets/image/tcs.png',
      role: 'Assistant System Engineer',
      jobType: 'Full time',
      place: 'Bangalore',
      technology: 'Java, Genesys',
      client: 'Client : Apple Inc.'),
  ExperienceModel(
      date: 'AUG 2019 - JUL 2021',
      company: 'Mahindra Comviva',
      logo: 'assets/image/comviva.png',
      role: 'Senior Software Engineer',
      jobType: 'Full time',
      place: 'Bangalore',
      technology: 'Java',
      client: 'Client : Airtel, Africa'),
  ExperienceModel(
      date: 'JUL 2021 - PRESENT',
      company: 'Udaan',
      logo: 'assets/image/udaan.png',
      role: '  Application Developer',
      jobType: 'Full time',
      place: 'Bangalore',
      technology: 'React Native, Kotlin',
      client: 'Client : Self')
];
