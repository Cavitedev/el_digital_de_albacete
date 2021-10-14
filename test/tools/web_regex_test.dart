import 'package:el_digital_de_albacete/tools/web_regex.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  test('regex with jpg', (){
    const String text = 'background-image: url(https://www.eldigitaldealbacete.com/wp-content/uploads/2020/11/gente_calle_rosario_251020_archivo_albacete-30.jpg)';
    const String expected = 'https://www.eldigitaldealbacete.com/wp-content/uploads/2020/11/gente_calle_rosario_251020_archivo_albacete-30.jpg';

    final String? output = WebRegex.getUrlFromStyleRegex(text);

    expect(output, expected);


  });

  test('regex with gif', (){
    const String text = 'background-image: url(https://www.eldigitaldealbacete.com/wp-content/uploads/2020/11/gente_calle_rosario_251020_archivo_albacete-30.gif)';
    const String expected = 'https://www.eldigitaldealbacete.com/wp-content/uploads/2020/11/gente_calle_rosario_251020_archivo_albacete-30.gif';

    final String? output = WebRegex.getUrlFromStyleRegex(text);

    expect(output, expected);


  });

  test('regex with png', (){
    const String text = 'background-image: url(https://www.eldigitaldealbacete.com/wp-content/uploads/2020/11/gente_calle_rosario_251020_archivo_albacete-30.png)';
    const String expected = 'https://www.eldigitaldealbacete.com/wp-content/uploads/2020/11/gente_calle_rosario_251020_archivo_albacete-30.png';

    final String? output = WebRegex.getUrlFromStyleRegex(text);

    expect(output, expected);


  });

}