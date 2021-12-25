import 'package:community_app/constant.dart';
import 'package:community_app/models/api_response.dart';
import 'package:community_app/screens/home.dart';
import 'package:community_app/services/user_service.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);


  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void loadUserInfo() async{
    String token = await getToken();
    if(token == ''){
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder:
      (context)=>const Login() ), (route) => false);
    }
    else{
      ApiResponse response = await getUserDetail();
      if(response.error == null){
         Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder:
      (context)=>Home()), (route) => false);
      }
      else if (response.error == unauthorized){
         Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder:
      (context)=>Login() ), (route) => false);
      }
      else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('${response.error}'),
          ));
      }
    }
  }

@override
  void initState() {
    // TODO: implement initState
    loadUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      height: MediaQuery.of(context).size.height,
      color:Colors.white,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
