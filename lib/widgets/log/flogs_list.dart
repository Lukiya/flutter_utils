// import 'package:f_logs/f_logs.dart';
// import 'package:flutter/material.dart';
// import 'package:dreamvat/dreamvat.dart';

// class FLogsListView extends StatefulWidget {
//   final Widget? title;
//   const FLogsListView({this.title, Key? key}) : super(key: key);

//   @override
//   FLogsListState createState() => FLogsListState();
// }

// class FLogsListState extends State<FLogsListView> {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<Log>>(
//       future: Future<List<Log>>(() async {
//         final r = await FLog.getAllLogs();
//         r.sort((a, b) => (b.timeInMillis ?? 0) - (a.timeInMillis ?? 0));
//         return r;
//       }),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState != ConnectionState.done || !snapshot.hasData) {
//           return const Center(child: CircularProgressIndicator());
//         }

//         final logs = snapshot.data!;

//         return Scaffold(
//           appBar: AppBar(
//             title: widget.title,
//             actions: [
//               IconButton(
//                 icon: const Icon(Icons.delete),
//                 onPressed: () async {
//                   await FLog.clearLogs();
//                   setState(() {});
//                 },
//               ),
//             ],
//           ),
//           body: Padding(
//             padding: const EdgeInsets.all(5),
//             child: ListView.separated(
//               itemCount: logs.length,
//               itemBuilder: (context, index) {
//                 final log = logs[index];
//                 final sb = StringBuffer("${log.timestamp} ${log.logLevel}\n");
//                 sb.writeln(log.text);
//                 if (log.exception.isPresent() && log.exception != "null") {
//                   sb.writeln(log.exception);
//                 }
//                 if (log.stacktrace.isPresent() && log.exception != "null") {
//                   sb.writeln(log.stacktrace);
//                 }

//                 return Container(
//                   color: const Color(0xfff5f5f5),
//                   child: Text(sb.toString().trim()),
//                 );
//               },
//               separatorBuilder: (BuildContext context, int index) => const Divider(),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
