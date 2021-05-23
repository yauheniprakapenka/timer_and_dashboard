class RecentFile {
  final String icon, title, date, size;

  RecentFile({
    required this.date,
    required this.icon,
    required this.size,
    required this.title,
  });
}

List<RecentFile> demoRecentFiles = <RecentFile>[
  RecentFile(
      title: 'XD File',
      date: '01-03-2021',
      size: '231 MB',
      icon: 'assets/icons/Figma_file.svg'),
  RecentFile(
      title: 'Figma File',
      date: '08-01-2021',
      size: '231 MB',
      icon: 'assets/icons/sound_file.svg'),
  RecentFile(
      title: 'Doc File',
      date: '22-05-2021',
      size: '231 MB',
      icon: 'assets/icons/doc_file.svg'),
];
