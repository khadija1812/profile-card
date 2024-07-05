import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_rich/contollers/login_controller.dart';
import 'package:im_rich/pages/home_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage ({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    final TextEditingController idController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    return Scaffold( 
      body: SafeArea(child : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Instagram',
            style: GoogleFonts.grandHotel(
              color:Colors.black,
              fontSize: 65,
              fontWeight: FontWeight.w500,
            
            ),
            

            ),
            const SizedBox(
              height: 40,
            ),
            Form(
              key: formKey,
              child: 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: TextFormField(
                validator: (value){
                  if(value!.isEmpty){
                    return 'Phone number is required!';
                  }
                  else if(!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(value))
                  {
                    return 'Enter a valid phone number';
                  }
                  
                },
                controller: loginController.idController,
                decoration: inputDeco('Phone number, username or email'),
                  
                   
                    ),),),
              
            const SizedBox(
              height: 15,
            ),
             TextFormField(validator: (value){
                  if(value!.isEmpty){
                    return 'Password is required!';
                  }
                  else if(!(value.length<=6))
                  {
                    return 'password must have atleast 6 letters';
                  }
                  
                },
                controller: loginController.passController,
                decoration: inputDeco('Password'),

                    
                    ),    
                     Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forget password?',
                  style: GoogleFonts.nunito(
                    color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.w800, 
                   ), ),
                   const SizedBox(
                    width: 20,
                          )
              ],              
            ),
            const SizedBox(
              height: 30,
            ) , 

  
      Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            String username = 'khadija';
                            String password = 'password';
                            if(username==idController.text && password==passController.text)
                            {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
                            }
                          },
                          style: TextButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(2)),
                            ),
                            backgroundColor: const Color(0xFF31C1FF), // foreground
                          ),
                          child: Text(
                            'Log In',
                            style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
    
        ]
  ),
   
   )
   )
      ;
      
  }
}
InputDecoration inputDeco(String hint)
{
  return InputDecoration(
    
                    filled: true,
                    fillColor: const Color(0xFFE8E8E8),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          const BorderSide(color: Color(0xFF3E3E3E), width: .8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          const BorderSide(color: Color(0xFF3E3E3E), width: .8),
                    ),
                    contentPadding: const EdgeInsets.all(20),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          const BorderSide(color: Color(0xFF3E3E3E), width: .8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          const BorderSide(color: Color(0xFF3E3E3E), width: .8),
                    ),
                    hintText: hint,
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Montserrat SemiBold',
                      color: Colors.grey,
                    ));
  
}