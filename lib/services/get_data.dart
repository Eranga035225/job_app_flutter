import '../models/job_model.dart';

class GetData {
  List<JobModel> getJobData() {
    return [
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

      // Add other jobs similarly...
    ];
  }
}
