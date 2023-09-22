// import 'package:flutter/material.dart';
// import 'package:flutter_onedrive/flutter_onedrive.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';

// class OneDriveListTile extends StatefulWidget {
//   final OneDrive onedrive;
//   final String? disconnectText;
//   final String? connectedText;
//   const OneDriveListTile(
//     this.onedrive, {
//     this.disconnectText = "Disconnect",
//     this.connectedText = "Connected",
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<StatefulWidget> createState() => OneDriveListTileStatue();
// }

// class OneDriveListTileStatue extends State<OneDriveListTile> {
//   static const name = "OneDrive";
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: widget.onedrive.isConnected(),
//       builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
//         if (snapshot.connectionState != ConnectionState.done || !snapshot.hasData) {
//           return const ListTile(
//             title: Text(name),
//             trailing: SizedBox(
//               width: 15,
//               height: 15,
//               child: CircularProgressIndicator(),
//             ),
//           );
//         }

//         if (snapshot.data ?? false) {
//           return Slidable(
// // 左滑显示断开按钮
//             endActionPane: ActionPane(
//               motion: const DrawerMotion(),
//               extentRatio: .30,
//               children: <Widget>[
//                 SlidableAction(
//                   label: widget.disconnectText,
//                   backgroundColor: Colors.red,
//                   icon: Icons.delete,
//                   onPressed: (_) async {
//                     // 点击断开连接
//                     await widget.onedrive.disconnect();
//                     setState(() {});
//                   },
//                 ),
//               ],
//             ),
//             child: Container(
//               decoration: const BoxDecoration(
//                 border: Border(bottom: BorderSide(width: 1, color: Color(0xFFCCCCCC))),
//               ),
//               child: ListTile(
//                 title: const Text(name),
//                 subtitle: Text(widget.connectedText ?? ""),
//                 trailing: const Icon(Icons.check_circle, color: Colors.lightGreen),
//               ),
//             ),
//           );
//         } else {
//           return ListTile(
//             title: const Text(name),
//             trailing: const Icon(Icons.chevron_right),
//             onTap: () async {
// // 点击连接
//               final success = await widget.onedrive.connect(context);
//               if (success) {
//                 setState(() {});
//               }
//             },
//           );
//         }
//       },
//     );
//   }
// }
