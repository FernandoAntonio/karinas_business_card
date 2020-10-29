import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:karinas_business_card/constants.dart';
import 'package:karinas_business_card/menu_card_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class MainScreen extends StatelessWidget {
  _launchEmail(String email) async {
    final String mailTo = Uri(scheme: 'mailto', path: email).toString();
    await launch(mailTo);
  }

  _launchWhatsapp(String number) async {
    final String wpp = WhatsAppUnilink(
            phoneNumber: number, text: 'Olá, vi sua página no Instagram')
        .toString();
    await launch(wpp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kPurple3, kPurple2, kPurpleMain],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('images/karina.jpeg'),
              backgroundColor: kPurple1,
              radius: 50.0,
            ),
            SizedBox(height: 16.0),
            Text(
              'Karina Dirane',
              style: GoogleFonts.alice(
                  fontSize: 30.0,
                  color: kWhite,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5),
            ),
            SizedBox(height: 8.0),
            GradientText(
              'English Teacher'.toUpperCase(),
              gradient: LinearGradient(
                colors: [kPurple1, kWhite],
              ),
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(
              height: 16.0,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Divider(color: kPurple1),
            ),
            SizedBox(height: 32.0),
            MenuCard(
              title: kMobileNumber,
              iconData: Icons.phone,
              onPressed: () => _launchWhatsapp(kMobileNumber),
            ),
            SizedBox(height: 16.0),
            MenuCard(
              title: kEmail,
              iconData: Icons.email,
              onPressed: () => _launchEmail(kEmail),
            ),
          ],
        ),
      ),
    );
  }
}
