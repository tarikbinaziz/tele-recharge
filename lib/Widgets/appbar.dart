// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class AppBarSection extends StatelessWidget {
//   const AppBarSection({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(
//         vertical: 5,
//         horizontal: 12,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           CircleAvatar(
//             radius: 22,
//             backgroundColor: Colors.black,
//             child: CircleAvatar(
//               radius: 20,
//               backgroundColor: Color.fromARGB(255, 152, 201, 174),
//               child: Icon(
//                 Icons.person,
//                 size: 30,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//           Text(
//             "Top Recharge Telecom",
//             style: GoogleFonts.dmSans(
//                 fontSize: 15, fontWeight: FontWeight.bold, letterSpacing: 1.5),
//           ),
//           Row(
//             children: [
//               CircleAvatar(
//                 radius: 17,
//                 backgroundColor: Colors.black,
//                 child: CircleAvatar(
//                   radius: 15,
//                   backgroundColor: Colors.white,
//                   child: IconButton(
//                       onPressed: () {},
//                       icon: Center(
//                         child: Icon(
//                           Icons.message,
//                           color: Colors.black,
//                           size: 18,
//                         ),
//                       )),
//                 ),
//               ),
//               SizedBox(
//                 width: 5,
//               ),
//               CircleAvatar(
//                 radius: 17,
//                 backgroundColor: Colors.black,
//                 child: CircleAvatar(
//                   radius: 15,
//                   backgroundColor: Colors.white,
//                   child: GestureDetector(
//                     onTap: () {},
//                     child: Image(
//                       image: AssetImage(
//                         "images/logo.png",
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
