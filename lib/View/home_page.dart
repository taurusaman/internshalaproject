import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internshalaproject/controller/internship_controller.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

 
 InternshipController internshipController = Get.put(InternshipController());

  @override
  void initState() {
  
    super.initState();
    call();
  }

  call() async {
    await internshipController.callApiFromProvider();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        internshipController.isLoading 
         ? 
        const Center(child:  CircularProgressIndicator())
         :   
         Container(
          child: Column(
            children: [
              Text(internshipController.internshipResponseModel
                                      .internshipsMeta[
                                          "${internshipController.internshipResponseModel.internshipIds[0]}"]!
                                       .title
                    ),
            ]
          ),));
        


        //  myDataProvider.isLoading ? const Center(child:  CircularProgressIndicator())
        // :
        //  ListView.builder(
        //     itemCount: 10,
        //     itemBuilder: (context, index) {
        //         return Card(
        //           color: Colors.white,
        //           child: Padding(
        //             padding: const EdgeInsets.all(10.0),
        //             child: Column(
        //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 Row(
        //                   children: [
        //                     RichText(
        //                         text: TextSpan(children: [
        //                       TextSpan(
        //                           text: myDataProvider
        //                               .internshipResponseModel
        //                               .internshipsMeta[
        //                                   "${myDataProvider.internshipResponseModel!.internshipIds[index]}"]!
        //                               .title,
        //                           style: const TextStyle(
        //                               fontSize: 20.0,
        //                               fontWeight: FontWeight.w500,
        //                               color: Colors.black)),
        //                     ])),
        //                     const SizedBox(
        //                       width: 100,
        //                     ),
        //                     Image.network(
        //                         height: 20,
        //                         width: 70,
        //                         fit: BoxFit.cover,
        //                         myDataProvider
        //                             .internshipResponseModel!
        //                             .internshipsMeta[
        //                                 "${myDataProvider.internshipResponseModel.internshipIds[index]}"]!
        //                             .companyLogo),
        //                   ],
        //                 ),
        //                 const SizedBox(height: 6),
        //                 Text(
        //                     myDataProvider
        //                         .internshipResponseModel
        //                         .internshipsMeta[
        //                             "${myDataProvider.internshipResponseModel.internshipIds[index]}"]!.companyName,
        //                     style:
        //                         TextStyle(fontSize: 14.0, color: Colors.black38)),
        //                 const SizedBox(height: 10),
        //                 Row(
        //                   children: [
        //                     Icon(Icons.location_on_outlined, size: 16),
        //                     SizedBox(width: 2),
        //                     Text(myDataProvider
        //                         .internshipResponseModel!
        //                         .internshipsMeta[
        //                             "${myDataProvider.internshipResponseModel!.internshipIds[index]}"]!.locationNames[0]
        //                             ),
        //                   ],
        //                 ),
        //                 const SizedBox(
        //                   height: 10,
        //                 ),
        //                 Row(
        //                   children: [
        //                     Icon(Icons.play_circle_outline_sharp, size: 16),
        //                     SizedBox(width: 2),
        //                     Text(myDataProvider
        //                         .internshipResponseModel!
        //                         .internshipsMeta[
        //                             "${myDataProvider.internshipResponseModel!.internshipIds[index]}"]!
        //                         .startDate),
        //                     SizedBox(
        //                       width: 15,
        //                     ),
        //                     Icon(Icons.calendar_today_outlined, size: 13),
        //                     SizedBox(width: 3),
        //                     Text(myDataProvider
        //                         .internshipResponseModel!
        //                         .internshipsMeta[
        //                             "${myDataProvider.internshipResponseModel!.internshipIds[index]}"]!
        //                         .duration),
        //                   ],
        //                 ),
        //                 const SizedBox(
        //                   height: 10,
        //                 ),
        //                 Row(
        //                   children: [
        //                     Icon(Icons.location_on_outlined, size: 16),
        //                     SizedBox(width: 2),
        //                     Text(myDataProvider
        //                         .internshipResponseModel!
        //                         .internshipsMeta[
        //                             "${myDataProvider.internshipResponseModel!.internshipIds[index]}"]!
        //                         .stipend
        //                         .salary),
        //                   ],
        //                 ),
        //                 const SizedBox(
        //                   height: 10,
        //                 ),
        //                 Card(
        //                     shape: RoundedRectangleBorder(
        //                         borderRadius: BorderRadius.circular(5)),
        //                     color: Colors.white54,
        //                     child: Padding(
        //                       padding: EdgeInsets.all(2.0),
        //                       child: Text(
        //                         myDataProvider
        //                                 .internshipResponseModel!
        //                                 .internshipsMeta[
        //                                     "${myDataProvider.internshipResponseModel!.internshipIds[index]}"]!
        //                                 .employmentType +
        //                             myDataProvider
        //                                 .internshipResponseModel!
        //                                 .internshipsMeta[
        //                                     "${myDataProvider.internshipResponseModel!.internshipIds[index]}"]!
        //                                 .ppoLabelValue,
        //                         style: TextStyle(fontSize: 10),
        //                       ),
        //                     )),
        //                 const SizedBox(
        //                   height: 5,
        //                 ),
        //                 Card(
        //                     shape: RoundedRectangleBorder(
        //                         borderRadius: BorderRadius.circular(5)),
        //                     color: Colors.white54,
        //                     child: Padding(
        //                       padding: EdgeInsets.all(2.0),
        //                       child: Text(
        //                           myDataProvider
        //                               .internshipResponseModel!
        //                               .internshipsMeta[
        //                                   "${myDataProvider.internshipResponseModel!.internshipIds[index]}"]!
        //                               .postedByLabel,
        //                           style: TextStyle(fontSize: 8)),
        //                     )),
        //                 const Divider(thickness: 0.5),
        //                 Row(
        //                   children: [
        //                     const SizedBox(width: 150),
        //                     TextButton(
        //                         onPressed: () {},
        //                         child: const Text(
        //                           "View Details",
        //                           style: TextStyle(color: Colors.blue),
        //                         )),
        //                     ElevatedButton(
        //                         style: ElevatedButton.styleFrom(
        //                           minimumSize: Size(10, 37),
        //                           shape: const RoundedRectangleBorder(
        //                               borderRadius:
        //                                   BorderRadius.all(Radius.circular(5))),
        //                           backgroundColor: Colors.blue,
        //                           // foregroundColor: Colors.blue
        //                         ),
        //                         onPressed: () async {
        //                           await ApiCall.fetchResponse();
        //                         },
        //                         child: const Text("Apply Now",
        //                             style: TextStyle(color: Colors.white))),
        //                   ],
        //                 ),
        //               ],
        //             ),
        //           ),
        //         );
        //       });
      
      
    
      }
    
  }

