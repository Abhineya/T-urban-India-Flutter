import 'package:flutter/material.dart';

class Sign_up_page extends StatefulWidget {
  const Sign_up_page({Key? key}) : super(key: key);

  @override
  State<Sign_up_page> createState() => _Sign_up_pageState();
}

class _Sign_up_pageState extends State<Sign_up_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEB3527),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 40.0,
                ),
                Text(
                  'T-urban India',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 360.0,
              height: 650.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 40.0,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    height: 50.0,
                    width: 310,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            'Email',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    height: 50.0,
                    width: 310.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            'Set password',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    height: 50.0,
                    width: 310.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            '**************',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        'Signup',
                        style: TextStyle(color: Colors.white, fontSize: 22.0),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffEB3527),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    height: 50.0,
                    width: 310.0,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey[600],
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(45),
                  topLeft: Radius.circular(45),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
