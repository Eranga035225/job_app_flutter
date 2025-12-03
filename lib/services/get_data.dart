import '../models/job_model.dart';

class GetData {
  List<JobModel> getJobData() {
    List<JobModel> jobs = [
      JobModel(
        title: 'Senior Software Engineer',
        salary: 'LKR 420,000 / month',
        companyName: 'TechNova',
        companyLogo: 'https://tse4.mm.bing.net/th/id/OIP.w4-dlI38nahObst3P_8gewHaDp?rs=1&pid=ImgDetMain&o=7&rm=3',
        city: 'Colombo',
        type: 'Full-time',
        time: '22 days left',
        aboutCompany: 'TechNova is a leading software solutions company specializing in innovative tech products. We focus on delivering scalable and robust applications for clients globally.',
        description: 'We are looking for a Senior Software Engineer to join our team. '
            'The candidate should have 5+ years of experience in Flutter, Dart, and backend development. '
            'You will be responsible for developing high-quality mobile applications, collaborating with product designers, and ensuring best practices in coding standards. '
            'Strong problem-solving skills, team collaboration, and knowledge of cloud technologies are essential. '
            'We offer a dynamic work environment and opportunities for growth in cutting-edge projects.',
        reviews: [
          JobReview(username: 'Alice', rating: 5.0, comment: 'Great company with excellent work culture.'),
          JobReview(username: 'Bob', rating: 4.5, comment: 'Challenging projects but very rewarding.'),
          JobReview(username: 'Charlie', rating: 4.0, comment: 'Supportive team and flexible timings.'),
        ],
      ),

      JobModel(
        title: 'Frontend Developer',
        salary: 'LKR 180,000 / month',
        companyName: 'PixelWave',
        companyLogo: 'https://th.bing.com/th/id/OIP.xA9RKYV_L_tvzI4ErpiPRwAAAA?w=209&h=106&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
        city: 'Colombo 07',
        type: 'Hybrid',
        time: '15 days left',
        aboutCompany: 'PixelWave is a creative digital agency focusing on frontend and UI/UX solutions for web and mobile applications.',
        description: 'Seeking a talented Frontend Developer to join our team. '
            'Candidate must be proficient in React, HTML, CSS, and JavaScript frameworks. '
            'The role involves designing and implementing responsive web applications, collaborating with designers, and ensuring optimal user experience across platforms. '
            'PixelWave values creativity, innovation, and a passion for clean and maintainable code.',
        reviews: [
          JobReview(username: 'Dana', rating: 4.2, comment: 'Creative environment with lots of learning opportunities.'),
          JobReview(username: 'Evan', rating: 4.0, comment: 'Flexible working hours, good team.'),
        ],
      ),

      JobModel(
        title: 'Backend Engineer',
        salary: 'LKR 220,000 / month',
        companyName: 'CodeSphere',
        companyLogo: 'https://tse3.mm.bing.net/th/id/OIP.q4bIQIC3zNrf_xSChFc9lAHaBm?rs=1&pid=ImgDetMain&o=7&rm=3',
        city: 'Colombo 02',
        type: 'Full-time',
        time: '30 days left',
        aboutCompany: 'CodeSphere provides enterprise backend solutions for finance, healthcare, and e-commerce sectors.',
        description: 'We are hiring a Backend Engineer with strong experience in Node.js, databases, and RESTful API design. '
            'The role involves creating scalable backend systems, integrating third-party APIs, and ensuring security best practices. '
            'Candidates should have experience with cloud infrastructure and server-side optimization. '
            'Opportunity to work on enterprise-level projects with a talented team.',
        reviews: [
          JobReview(username: 'Frank', rating: 4.7, comment: 'High-quality projects and excellent learning opportunities.'),
          JobReview(username: 'Grace', rating: 4.5, comment: 'Supportive management and great tech stack.'),
        ],
      ),

      JobModel(
        title: 'UI/UX Designer',
        salary: 'LKR 150,000 / month',
        companyName: 'DesignCraft',
        companyLogo: 'https://th.bing.com/th/id/OIP.8Lq-yFA7zKRldnTS2tE8YwAAAA?w=168&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
        city: 'Colombo',
        type: 'Remote',
        time: '10 days left',
        aboutCompany: 'DesignCraft is a creative agency delivering modern UI/UX solutions for web and mobile apps.',
        description: 'Hiring a UI/UX Designer familiar with Figma, Adobe XD, and modern design trends. '
            'You will be responsible for creating wireframes, prototypes, and high-fidelity mockups while collaborating with frontend developers. '
            'DesignCraft offers flexible working hours and a creative environment.',
        reviews: [
          JobReview(username: 'Hannah', rating: 4.3, comment: 'Excellent creative freedom.'),
          JobReview(username: 'Ian', rating: 4.1, comment: 'Supportive team and good work-life balance.'),
        ],
      ),

      JobModel(
        title: 'Mobile App Developer',
        salary: 'LKR 260,000 / month',
        companyName: 'AppVenture',
        companyLogo: 'https://th.bing.com/th/id/OIP.t3VdR65XiXTcFCXwyn3eegHaFg?w=288&h=214&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
        city: 'Kandy',
        type: 'Full-time',
        time: '25 days left',
        aboutCompany: 'AppVenture develops innovative mobile applications for startups and enterprises.',
        description: 'Looking for Flutter developers with strong skills in cross-platform mobile development. '
            'The candidate will collaborate with UI/UX designers and backend engineers to deliver high-quality apps. '
            'Experience in state management, REST APIs, and Firebase is preferred. '
            'AppVenture provides opportunities to work on diverse projects and grow your career.',
        reviews: [
          JobReview(username: 'Jack', rating: 4.6, comment: 'Great projects and excellent team support.'),
          JobReview(username: 'Karen', rating: 4.5, comment: 'Good learning environment for Flutter developers.'),
        ],
      ),

      JobModel(
        title: 'Data Analyst',
        salary: 'LKR 170,000 / month',
        companyName: 'InsightEdge',
        companyLogo: 'https://th.bing.com/th/id/OIP.Wqm3zxuCRyA48AtAzWIigAHaD_?w=296&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
        city: 'Colombo 03',
        type: 'Hybrid',
        time: '18 days left',
        aboutCompany: 'InsightEdge provides business intelligence and analytics solutions to enterprises.',
        description: 'Seeking a data analyst skilled in Python, SQL, and data visualization tools. '
            'Responsibilities include cleaning and analyzing large datasets, creating reports, and supporting business decisions. '
            'Ideal candidate has strong problem-solving skills and a keen eye for detail. '
            'InsightEdge offers flexible working hours and opportunities to learn advanced analytics.',
        reviews: [
          JobReview(username: 'Liam', rating: 4.4, comment: 'Good analytical projects and supportive team.'),
          JobReview(username: 'Mia', rating: 4.3, comment: 'Flexible hours and great mentoring.'),
        ],
      ),
    ];

    return jobs;
  }
}
