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
      ),

      JobModel(
        title: 'Frontend Developer',
        salary: 'LKR 180,000 / month',
        companyName: 'PixelWave',
        companyLogo: 'https://th.bing.com/th/id/OIP.xA9RKYV_L_tvzI4ErpiPRwAAAA?w=209&h=106&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
        city: 'Colombo 07',
        type: 'Hybrid',
        time: '15 days left',
      ),

      JobModel(
        title: 'Backend Engineer',
        salary: 'LKR 220,000 / month',
        companyName: 'CodeSphere',
        companyLogo: 'https://tse3.mm.bing.net/th/id/OIP.q4bIQIC3zNrf_xSChFc9lAHaBm?rs=1&pid=ImgDetMain&o=7&rm=3',
        city: 'Colombo 02',
        type: 'Full-time',
        time: '30 days left',
      ),

      JobModel(
        title: 'UI/UX Designer',
        salary: 'LKR 150,000 / month',
        companyName: 'DesignCraft',
        companyLogo: 'https://th.bing.com/th/id/OIP.8Lq-yFA7zKRldnTS2tE8YwAAAA?w=168&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
        city: 'Colombo',
        type: 'Remote',
        time: '10 days left',
      ),

      JobModel(
        title: 'Mobile App Developer',
        salary: 'LKR 260,000 / month',
        companyName: 'AppVenture',
        companyLogo: 'https://th.bing.com/th/id/OIP.t3VdR65XiXTcFCXwyn3eegHaFg?w=288&h=214&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
        city: 'Kandy',
        type: 'Full-time',
        time: '25 days left',
      ),

      JobModel(
        title: 'Data Analyst',
        salary: 'LKR 170,000 / month',
        companyName: 'InsightEdge',
        companyLogo: 'https://th.bing.com/th/id/OIP.Wqm3zxuCRyA48AtAzWIigAHaD_?w=296&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
        city: 'Colombo 03',
        type: 'Hybrid',
        time: '18 days left',
      ),
    ];
    return jobs;
  }
}
