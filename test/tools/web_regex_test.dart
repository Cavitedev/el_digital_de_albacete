import 'package:el_digital_de_albacete/tools/web_regex.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  test('regex with jpg', (){
    String text = "background-image: url(https://www.eldigitaldealbacete.com/wp-content/uploads/2020/11/gente_calle_rosario_251020_archivo_albacete-30.jpg)";
    String expected = "https://www.eldigitaldealbacete.com/wp-content/uploads/2020/11/gente_calle_rosario_251020_archivo_albacete-30.jpg";

    String output = WebRegex.getUrlFromStyleRegex(text);

    expect(output, expected);


  });

  test('regex with gif', (){
    String text = "background-image: url(https://www.eldigitaldealbacete.com/wp-content/uploads/2020/11/gente_calle_rosario_251020_archivo_albacete-30.gif)";
    String expected = "https://www.eldigitaldealbacete.com/wp-content/uploads/2020/11/gente_calle_rosario_251020_archivo_albacete-30.gif";

    String output = WebRegex.getUrlFromStyleRegex(text);

    expect(output, expected);


  });

  test('regex with png', (){
    String text = "background-image: url(https://www.eldigitaldealbacete.com/wp-content/uploads/2020/11/gente_calle_rosario_251020_archivo_albacete-30.png)";
    String expected = "https://www.eldigitaldealbacete.com/wp-content/uploads/2020/11/gente_calle_rosario_251020_archivo_albacete-30.png";

    String output = WebRegex.getUrlFromStyleRegex(text);

    expect(output, expected);


  });

}