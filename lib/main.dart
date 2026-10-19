import 'package:flutter/material.dart';

void main() => runApp(const NationalHospitalApp());

const navy = Color(0xFF102B57);
const blue = Color(0xFF1769AA);
const paleBlue = Color(0xFFEAF4FF);
const ink = Color(0xFF17243A);
const muted = Color(0xFF718096);
const canvas = Color(0xFFF6F8FC);

class NationalHospitalApp extends StatelessWidget {
  const NationalHospitalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'National Hospital',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: canvas,
        colorScheme: ColorScheme.fromSeed(seedColor: blue),
        fontFamily: 'Roboto',
        appBarTheme: const AppBarTheme(
          backgroundColor: canvas,
          foregroundColor: ink,
          elevation: 0,
          centerTitle: false,
        ),
      ),
      home: const MainNavigation(),
    );
  }
}

class Doctor {
  final String name, specialty, qualification, designation, visiting;
  final int fee, experience;
  final double rating;
  final Color color;
  const Doctor(
      this.name,
      this.specialty,
      this.qualification,
      this.designation,
      this.visiting,
      this.fee,
      this.experience,
      this.rating,
      this.color);

  String get imagePath {
    final n = name.toLowerCase();
    if (n.contains('ehteshamul')) return 'assets/images/Ehteshamul haque.jpg';
    if (n.contains('kader')) return 'assets/images/kader.jpg';
    if (n.contains('saddet') || n.contains('sadded')) return 'assets/images/sadded.jpg';
    if (n.contains('shamim')) return 'assets/images/shamim.jpg';
    if (n.contains('farhad')) return 'assets/images/Farhad.jpg';
    if (n.contains('rezaul') || n.contains('reazul')) return 'assets/images/rezaul.jpg';
    if (n.contains('naser')) return 'assets/images/naser.jpg';
    if (n.contains('ferdous')) return 'assets/images/ferdous.jpg';
    if (n.contains('kibria')) return 'assets/images/kibria.png';
    if (n.contains('habibul')) return 'assets/images/habibul.jpg';
    if (n.contains('salam')) return 'assets/images/salam.jpg';
    if (n.contains('nasim')) return 'assets/images/nasim.jpg';
    if (n.contains('tawhidur')) return 'assets/images/tawhidur.jpg';
    if (n.contains('jahangir')) return 'assets/images/jahangir.jpg';
    if (n.contains('nazneen')) return 'assets/images/nazneen.jpg';
    return '';
  }
}

const doctors = <Doctor>[
  Doctor(
      'Professor Dr. A. M. M. Ehteshamul Haque',
      'Kidney Specialist',
      'MBBS, MD (Nephrology)',
      'Professor & Head of Department',
      '10:00 AM – 1:00 PM',
      1200,
      20,
      4.9,
      Color(0xFF2F80A8)),
  Doctor(
      'Dr. Mohammad Abdul Kader',
      'Medicine',
      'MBBS, BCS (Health), MD (Nephrology)',
      'Consultant',
      '5:00 PM – 8:00 PM',
      1000,
      14,
      4.8,
      Color(0xFF4D8A78)),
  Doctor(
      'Dr. Saddet Hossain',
      'Cardiology',
      'MBBS, BCS (Health), MD (Cardiology)',
      'Senior Consultant',
      '4:00 PM – 7:00 PM',
      1500,
      12,
      4.8,
      Color(0xFF8A6CB5)),
  Doctor(
      'Dr. Shamim Boksha',
      'Gastroenterology',
      'MBBS, FCPS (Medicine), MD (Gastroenterology)',
      'Consultant',
      '5:00 PM – 8:00 PM',
      900,
      13,
      4.7,
      Color(0xFFB7774B)),
  Doctor(
      'Dr. Mohammad Farhad',
      'Medicine',
      'MBBS, FCPS (Medicine)',
      'Consultant',
      'Please confirm with hospital',
      1000,
      10,
      4.7,
      Color(0xFF4A80C2)),
  Doctor(
      'Dr. Mohammad Rezaul Karim',
      'Medicine',
      'MBBS, FCPS (Medicine)',
      'Consultant',
      'Please confirm with hospital',
      1000,
      10,
      4.7,
      Color(0xFFB85D79)),
  Doctor(
      'Dr. Mohammed Abu Naser Siddique',
      'Medicine',
      'MBBS, BCS (Health), FCPS (Medicine)',
      'Professor of Medicine',
      '6:00 PM – 9:00 PM',
      1200,
      18,
      4.8,
      Color(0xFF6C8EAC)),
  Doctor(
      'Dr. MD Ferdous',
      'Medicine',
      'MBBS, FCPS (Medicine)',
      'Consultant',
      'Please confirm with hospital',
      1000,
      11,
      4.7,
      Color(0xFF3579C8)),
  Doctor(
      'Dr. Fazle Kibria Chowdhury',
      'Chest & Esophagus',
      'MBBS, MD (Chest)',
      'Chest & Respiratory Medicine Specialist',
      'Please confirm with hospital',
      1100,
      12,
      4.8,
      Color(0xFF7B8BC6)),
  Doctor(
      'Dr. Habibul Islam Chowdhury',
      'Cardiology',
      'MBBS, BCS (Health), MD (Cardiology)',
      'Assistant Professor, Cardiology',
      '6:00 PM – 9:00 PM',
      1200,
      15,
      4.9,
      Color(0xFFD95769)),
  Doctor(
      'Prof. Dr. Abdus Salam',
      'Cardiac Vascular',
      'MBBS, BCS (Health), FCPS (Surgery), MS (Urology)',
      'Professor (Urology)',
      'Please confirm with hospital',
      1500,
      22,
      4.9,
      Color(0xFF4E9B8B)),
  Doctor(
      'Prof. Dr. Md. Majharul Haque Nasim',
      'Pediatric Surgery',
      'MBBS, MS',
      'Professor & Head of Department',
      'Please confirm with hospital',
      1500,
      20,
      4.9,
      Color(0xFFB07D58)),
  Doctor(
      'Dr. Tawhidur Rahman',
      'Brain Medicine',
      'MBBS, BCS (Health), MD (Neurology)',
      'Assistant Professor, Neurology',
      '7:00 PM – 9:00 PM',
      1100,
      11,
      4.8,
      Color(0xFF8D70C8)),
  Doctor(
      'Dr. Jahangir Alam Chowdhury',
      'Physical Medicine',
      'MBBS, FCPS (Physical Medicine)',
      'Associate Professor & Head',
      '8:00 AM – 10:00 AM',
      1000,
      15,
      4.7,
      Color(0xFF6E9E61)),
  Doctor(
      'Dr. Nazneen Sultana (Lulu)',
      'Gynaecology & Obstetrics',
      'MBBS, FCPS (OBGYN)',
      'Consultant',
      'Please confirm with hospital',
      1000,
      14,
      4.8,
      Color(0xFFCA7894)),
];

class Specialty {
  final String name;
  final IconData icon;
  final Color color;
  const Specialty(this.name, this.icon, this.color);
}

const specialties = <Specialty>[
  Specialty('Medicine', Icons.medical_services_rounded, Color(0xFF3579C8)),
  Specialty('Brain Medicine', Icons.psychology_rounded, Color(0xFF8D70C8)),
  Specialty('Dermatology', Icons.face_retouching_natural, Color(0xFFCA7894)),
  Specialty('Pediatrics', Icons.child_care_rounded, Color(0xFFDF8A56)),
  Specialty('Cardiology', Icons.favorite_rounded, Color(0xFFD95769)),
  Specialty('Cardiac Vascular', Icons.monitor_heart_rounded, Color(0xFF4E9B8B)),
  Specialty('Eye', Icons.remove_red_eye_rounded, Color(0xFF3D9DAD)),
  Specialty('Chest & Esophagus', Icons.air_rounded, Color(0xFF7B8BC6)),
  Specialty('Pediatric Surgery', Icons.healing_rounded, Color(0xFFB07D58)),
  Specialty('Food & Nutrition', Icons.restaurant_rounded, Color(0xFF6E9E61)),
  Specialty('Gastroenterology', Icons.water_drop_rounded, Color(0xFF4C9AA2)),
  Specialty('Kidney Specialist', Icons.spa_rounded, Color(0xFFBD6B6B)),
];

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});
  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int selectedIndex = 0;
  String search = '';
  final List<String> titles = [
    'National Hospital',
    'Doctor Categories',
    'All Doctors',
    'My Appointments',
    'My Profile'
  ];

  void openDoctor(Doctor doctor) {
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => DoctorDetailScreen(doctor: doctor)));
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomeScreen(
          onDoctorTap: openDoctor,
          onSeeAll: () => setState(() => selectedIndex = 2),
          onCategories: () => setState(() => selectedIndex = 1)),
      CategoriesScreen(onSpecialtyTap: (name) {
        setState(() => selectedIndex = 2);
      }),
      DoctorsScreen(onDoctorTap: openDoctor),
      const SimplePage(
          icon: Icons.calendar_month_rounded,
          title: 'My Appointments',
          subtitle: 'Your appointment list will appear here.'),
      const SimplePage(
          icon: Icons.person_outline_rounded,
          title: 'My Profile',
          subtitle: 'Profile and preferences'),
    ];
    return Scaffold(
      appBar: selectedIndex == 0
          ? null
          : AppBar(
          title: Text(titles[selectedIndex],
              style: const TextStyle(fontWeight: FontWeight.w700))),
      body: IndexedStack(index: selectedIndex, children: pages),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (i) => setState(() => selectedIndex = i),
        backgroundColor: Colors.white,
        indicatorColor: paleBlue,
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home_rounded),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.grid_view_rounded), label: 'Categories'),
          NavigationDestination(
              icon: Icon(Icons.medical_services_outlined), label: 'Doctors'),
          NavigationDestination(
              icon: Icon(Icons.calendar_month_outlined), label: 'Appointments'),
          NavigationDestination(
              icon: Icon(Icons.person_outline_rounded), label: 'Profile'),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final void Function(Doctor) onDoctorTap;
  final VoidCallback onSeeAll, onCategories;
  const HomeScreen(
      {super.key,
        required this.onDoctorTap,
        required this.onSeeAll,
        required this.onCategories});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(18, 12, 18, 24),
        children: [
          Row(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/Logo.jpg',
                width: 52,
                height: 52,
                fit: BoxFit.contain,
                errorBuilder: (_, __, ___) => Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [navy, blue]),
                      borderRadius: BorderRadius.circular(14)),
                  child: const Icon(Icons.local_hospital_rounded,
                      color: Colors.white, size: 29),
                ),
              ),
            ),
            const SizedBox(width: 12),
            const Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('NATIONAL HOSPITAL',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              letterSpacing: .5,
                              fontSize: 15,
                              color: navy)),
                      SizedBox(height: 3),
                      Text('Chattogram & Sigma Lab Ltd.',
                          style: TextStyle(fontSize: 11, color: muted)),
                    ])),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13)),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none_rounded,
                        color: navy))),
          ]),
          const SizedBox(height: 22),
          const Text('Hello! 👋',
              style: TextStyle(color: muted, fontSize: 14)),
          const SizedBox(height: 4),
          const Text('Find your specialist',
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.w800, color: ink)),
          const SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              hintText: 'Search doctors, specialties...',
              prefixIcon: const Icon(Icons.search_rounded, color: muted),
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(vertical: 15),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none),
            ),
          ),
          const SizedBox(height: 18),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [navy, Color(0xFF1769AA), Color(0xFF2F8BB9)]),
              boxShadow: [
                BoxShadow(
                    color: blue.withValues(alpha: .18),
                    blurRadius: 18,
                    offset: const Offset(0, 8))
              ],
            ),
            child: Row(children: [
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: .15),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text('YOUR HEALTH, OUR PRIORITY',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9,
                                    letterSpacing: .7,
                                    fontWeight: FontWeight.w700))),
                        const SizedBox(height: 12),
                        const Text('Book your doctor\nappointment easily',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                                fontWeight: FontWeight.w800,
                                height: 1.2)),
                        const SizedBox(height: 8),
                        const Text('Find trusted specialists in one place.',
                            style:
                            TextStyle(color: Color(0xFFD9E9FF), fontSize: 12)),
                        const SizedBox(height: 15),
                        FilledButton(
                          style: FilledButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: navy,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 10)),
                          onPressed: onSeeAll,
                          child: const Text('Explore doctors',
                              style: TextStyle(fontWeight: FontWeight.w700)),
                        ),
                      ])),
              const SizedBox(width: 6),
              Container(
                  width: 82,
                  height: 110,
                  decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: .12),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(Icons.medical_services_rounded,
                      color: Colors.white, size: 58)),
            ]),
          ),
          const SizedBox(height: 25),
          SectionHeading(
              title: 'Doctor Categories', action: 'See all', onTap: onCategories),
          const SizedBox(height: 14),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 8,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 9,
                mainAxisSpacing: 12,
                childAspectRatio: .82),
            itemBuilder: (_, i) => SpecialtyTile(
                specialty: specialties[i], compact: true, onTap: onCategories),
          ),
          const SizedBox(height: 26),
          SectionHeading(
              title: 'Popular Doctors', action: 'View all', onTap: onSeeAll),
          const SizedBox(height: 12),
          ...doctors.take(3).map((d) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: DoctorCard(doctor: d, onTap: () => onDoctorTap(d)),
          )),
          const SizedBox(height: 6),
          Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: const Color(0xFFFFF6E8),
                  borderRadius: BorderRadius.circular(18)),
              child: const Row(children: [
                Icon(Icons.call_rounded, color: Color(0xFFB7791F), size: 26),
                SizedBox(width: 12),
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Need emergency help?',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, color: ink)),
                          SizedBox(height: 3),
                          Text(
                              'Contact the hospital directly for urgent assistance.',
                              style: TextStyle(fontSize: 12, color: muted)),
                        ])),
              ])),
        ],
      ),
    );
  }
}

class SectionHeading extends StatelessWidget {
  final String title, action;
  final VoidCallback onTap;
  const SectionHeading(
      {super.key,
        required this.title,
        required this.action,
        required this.onTap});
  @override
  Widget build(BuildContext context) => Row(children: [
    Expanded(
        child: Text(title,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w800, color: ink))),
    TextButton(
        onPressed: onTap,
        child: Text(action,
            style: const TextStyle(
                color: blue, fontWeight: FontWeight.w700))),
  ]);
}

class CategoriesScreen extends StatelessWidget {
  final ValueChanged<String> onSpecialtyTap;
  const CategoriesScreen({super.key, required this.onSpecialtyTap});
  @override
  Widget build(BuildContext context) => GridView.builder(
    padding: const EdgeInsets.all(18),
    itemCount: specialties.length,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: .95),
    itemBuilder: (_, i) => SpecialtyTile(
        specialty: specialties[i],
        onTap: () => onSpecialtyTap(specialties[i].name)),
  );
}

class SpecialtyTile extends StatelessWidget {
  final Specialty specialty;
  final bool compact;
  final VoidCallback onTap;
  const SpecialtyTile(
      {super.key,
        required this.specialty,
        required this.onTap,
        this.compact = false});
  @override
  Widget build(BuildContext context) => InkWell(
    borderRadius: BorderRadius.circular(18),
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(compact ? 8 : 12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: const Color(0xFFEBEFF5))),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: compact ? 42 : 54,
                height: compact ? 42 : 54,
                decoration: BoxDecoration(
                    color: specialty.color.withValues(alpha: .12),
                    borderRadius: BorderRadius.circular(15)),
                child: Icon(specialty.icon,
                    color: specialty.color, size: compact ? 23 : 28)),
            SizedBox(height: compact ? 7 : 10),
            Text(specialty.name,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: compact ? 9 : 11,
                    fontWeight: FontWeight.w700,
                    color: ink)),
          ]),
    ),
  );
}

class DoctorsScreen extends StatefulWidget {
  final void Function(Doctor) onDoctorTap;
  const DoctorsScreen({super.key, required this.onDoctorTap});
  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  String query = '';
  @override
  Widget build(BuildContext context) {
    final filtered = doctors
        .where((d) => ('${d.name} ${d.specialty}')
        .toLowerCase()
        .contains(query.toLowerCase()))
        .toList();
    return Column(children: [
      Padding(
          padding: const EdgeInsets.fromLTRB(18, 6, 18, 12),
          child: TextField(
              onChanged: (v) => setState(() => query = v),
              decoration: InputDecoration(
                  hintText: 'Search doctor or specialty',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none)))),
      Expanded(
          child: ListView.separated(
              padding: const EdgeInsets.fromLTRB(18, 0, 18, 18),
              itemCount: filtered.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (_, i) => DoctorCard(
                  doctor: filtered[i],
                  onTap: () => widget.onDoctorTap(filtered[i])))),
    ]);
  }
}

class DoctorCard extends StatelessWidget {
  final Doctor doctor;
  final VoidCallback onTap;
  const DoctorCard({super.key, required this.doctor, required this.onTap});
  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(18),
    child: Container(
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: const Color(0xFFEBEFF5))),
      child: Row(children: [
        DoctorAvatar(doctor: doctor, size: 70),
        const SizedBox(width: 13),
        Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(doctor.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 13,
                          color: ink)),
                  const SizedBox(height: 4),
                  Text(doctor.designation,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                      const TextStyle(fontSize: 11, color: muted)),
                  const SizedBox(height: 3),
                  Text(doctor.qualification,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                      const TextStyle(fontSize: 10, color: muted)),
                  const SizedBox(height: 8),
                  Row(children: [
                    const Icon(Icons.star_rounded,
                        color: Color(0xFFF5B324), size: 16),
                    Text(
                        ' ${doctor.rating}  •  ${doctor.experience} yrs exp.',
                        style: const TextStyle(
                            fontSize: 10, color: muted)),
                    const Spacer(),
                    Text('৳${doctor.fee}',
                        style: const TextStyle(
                            fontSize: 13,
                            color: blue,
                            fontWeight: FontWeight.w800)),
                  ]),
                ])),
        const Icon(Icons.chevron_right_rounded, color: muted),
      ]),
    ),
  );
}

class DoctorAvatar extends StatelessWidget {
  final Doctor doctor;
  final double size;
  const DoctorAvatar({super.key, required this.doctor, required this.size});
  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: BorderRadius.circular(size * 0.25),
    child: Container(
      width: size,
      height: size,
      color: doctor.color.withValues(alpha: .13),
      child: doctor.imagePath.isNotEmpty
          ? Image.asset(
        doctor.imagePath,
        width: size,
        height: size,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => Icon(Icons.person_rounded,
            color: doctor.color, size: size * 0.72),
      )
          : Icon(Icons.person_rounded,
          color: doctor.color, size: size * 0.72),
    ),
  );
}

class DoctorDetailScreen extends StatefulWidget {
  final Doctor doctor;
  const DoctorDetailScreen({super.key, required this.doctor});
  @override
  State<DoctorDetailScreen> createState() => _DoctorDetailScreenState();
}

class _DoctorDetailScreenState extends State<DoctorDetailScreen> {
  int selectedDay = 0;
  String? selectedTime;
  final times = const [
    '09:00 AM',
    '10:00 AM',
    '11:30 AM',
    '05:00 PM',
    '06:00 PM',
    '07:00 PM'
  ];
  @override
  Widget build(BuildContext context) {
    final d = widget.doctor;
    return Scaffold(
      appBar: AppBar(
          title: const Text('Doctor Details',
              style: TextStyle(fontWeight: FontWeight.w800))),
      body: ListView(padding: const EdgeInsets.all(18), children: [
        Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22)),
            child: Column(children: [
              DoctorAvatar(doctor: d, size: 104),
              const SizedBox(height: 14),
              Text(d.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w800,
                      color: ink)),
              const SizedBox(height: 5),
              Text(d.designation,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: blue, fontWeight: FontWeight.w600)),
              const SizedBox(height: 5),
              Text(d.qualification,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: muted, fontSize: 12)),
              const SizedBox(height: 12),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star_rounded,
                        color: Color(0xFFF5B324), size: 18),
                    Text(' 4.8  |  Patient-friendly care',
                        style: TextStyle(
                            color: muted, fontSize: 12)),
                  ]),
              const Divider(height: 28),
              Row(children: [
                Expanded(
                    child: _InfoCell(
                        label: 'Specialty',
                        value: d.specialty,
                        icon: Icons.medical_services_outlined)),
                Expanded(
                    child: _InfoCell(
                        label: 'Experience',
                        value: '${d.experience} years',
                        icon: Icons.workspace_premium_outlined)),
                Expanded(
                    child: _InfoCell(
                        label: 'Consultation',
                        value: '৳${d.fee}',
                        icon: Icons.payments_outlined)),
              ]),
            ])),
        const SizedBox(height: 18),
        const Text('Chamber Information',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w800, color: ink)),
        const SizedBox(height: 10),
        const _DetailRow(
            icon: Icons.local_hospital_outlined,
            title: 'National Hospital Chattogram',
            subtitle: 'Chattogram, Bangladesh'),
        _DetailRow(
            icon: Icons.access_time_rounded,
            title: 'Visiting hours',
            subtitle: d.visiting),
        const _DetailRow(
            icon: Icons.calendar_month_outlined,
            title: 'Available days',
            subtitle: 'Please confirm with the hospital'),
        const SizedBox(height: 18),
        const Text('Select Date',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w800, color: ink)),
        const SizedBox(height: 12),
        SizedBox(
            height: 82,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                separatorBuilder: (_, __) => const SizedBox(width: 9),
                itemBuilder: (_, i) {
                  final date = DateTime.now().add(Duration(days: i));
                  final selected = selectedDay == i;
                  const days = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];
                  return InkWell(
                      onTap: () => setState(() => selectedDay = i),
                      child: Container(
                          width: 58,
                          decoration: BoxDecoration(
                              color: selected ? blue : Colors.white,
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                  color: selected
                                      ? blue
                                      : const Color(0xFFE2E8F0))),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                    days[date.weekday - 1],
                                    style: TextStyle(
                                        color: selected
                                            ? Colors.white70
                                            : muted,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700)),
                                const SizedBox(height: 5),
                                Text('${date.day}',
                                    style: TextStyle(
                                        color: selected
                                            ? Colors.white
                                            : ink,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w800)),
                              ])));
                })),
        const SizedBox(height: 18),
        const Text('Select Time Slot',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w800, color: ink)),
        const SizedBox(height: 12),
        Wrap(
            spacing: 9,
            runSpacing: 9,
            children: times.map((time) {
              final selected = selectedTime == time;
              return ChoiceChip(
                  label: Text(time),
                  selected: selected,
                  onSelected: (_) =>
                      setState(() => selectedTime = time),
                  selectedColor: paleBlue,
                  labelStyle: TextStyle(
                      color: selected ? blue : ink,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                  side: BorderSide(
                      color: selected
                          ? blue
                          : const Color(0xFFE2E8F0)));
            }).toList()),
        const SizedBox(height: 22),
        FilledButton.icon(
          style: FilledButton.styleFrom(
              backgroundColor: blue,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          onPressed: selectedTime == null
              ? () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                  content: Text('Please select a time slot first.')))
              : () => showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: const Text('Demo appointment'),
                content: Text(
                    'Selected: ${d.name}\nDate: ${DateTime.now().add(Duration(days: selectedDay)).day}\nTime: $selectedTime\n\nThis is a UI demo. No real appointment was submitted.'),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('OK'))
                ],
              )),
          icon: const Icon(Icons.calendar_month_rounded),
          label: const Text('Book Appointment (Demo)',
              style: TextStyle(fontWeight: FontWeight.w800)),
        ),
      ]),
    );
  }
}

class _InfoCell extends StatelessWidget {
  final String label, value;
  final IconData icon;
  const _InfoCell(
      {required this.label, required this.value, required this.icon});
  @override
  Widget build(BuildContext context) => Column(children: [
    Icon(icon, color: blue, size: 21),
    const SizedBox(height: 7),
    Text(value,
        textAlign: TextAlign.center,
        maxLines: 2,
        style: const TextStyle(
            color: ink, fontWeight: FontWeight.w800, fontSize: 11)),
    const SizedBox(height: 3),
    Text(label, style: const TextStyle(color: muted, fontSize: 10)),
  ]);
}

class _DetailRow extends StatelessWidget {
  final IconData icon;
  final String title, subtitle;
  const _DetailRow(
      {required this.icon, required this.title, required this.subtitle});
  @override
  Widget build(BuildContext context) => Container(
      margin: const EdgeInsets.only(bottom: 9),
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(children: [
        Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
                color: paleBlue, borderRadius: BorderRadius.circular(12)),
            child: Icon(icon, color: blue)),
        const SizedBox(width: 12),
        Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          color: ink,
                          fontWeight: FontWeight.w700,
                          fontSize: 13)),
                  const SizedBox(height: 4),
                  Text(subtitle,
                      style: const TextStyle(color: muted, fontSize: 11)),
                ])),
      ]));
}

class SimplePage extends StatelessWidget {
  final IconData icon;
  final String title, subtitle;
  const SimplePage(
      {super.key,
        required this.icon,
        required this.title,
        required this.subtitle});
  @override
  Widget build(BuildContext context) => Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                  color: paleBlue, borderRadius: BorderRadius.circular(28)),
              child: Icon(icon, size: 45, color: blue)),
          const SizedBox(height: 18),
          Text(title,
              style: const TextStyle(
                  fontSize: 22, fontWeight: FontWeight.w800, color: ink)),
          const SizedBox(height: 8),
          Text(subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(color: muted)),
          const SizedBox(height: 14),
          const Text('UI demo only',
              style: TextStyle(color: blue, fontWeight: FontWeight.w700)),
        ]),
      ));
}
