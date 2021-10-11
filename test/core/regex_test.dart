import 'package:flutter_test/flutter_test.dart';

void main(){
  RegExp regex =  RegExp(r"(https://www\.eldigitaldealbacete\.com.*?\.(jpg|png|jpeg))");
  test('regex with jpg', (){
    String text = "https://www.eldigitaldealbacete.com/wp-content/uploads/2020/09/accidente-a-31-sepei-620x330.jpg%20620w,%20https://www.eldigitaldealbacete.com/wp-content/uploads/2020/09/accidente-a-31-sepei-300x160.jpg%20300w";
    String expected = "https://www.eldigitaldealbacete.com/wp-content/uploads/2020/09/accidente-a-31-sepei-620x330.jpg";

    String? output = regex.firstMatch(text)!.group(0);

    expect(output, expected);


  });

  test('regex with png', (){
    String text = "https://www.eldigitaldealbacete.com/wp-content/uploads/2020/09/captura-de-pantalla-2020-09-24-a-las-18-23-40-1-620x330.png 620w, https://www.eldigitaldealbacete.com/wp-content/uploads/2020/09/captura-de-pantalla-2020-09-24-a-las-18-23-40-1-300x160.png 300w";
    String expected = "https://www.eldigitaldealbacete.com/wp-content/uploads/2020/09/captura-de-pantalla-2020-09-24-a-las-18-23-40-1-620x330.png";

    String? output = regex.firstMatch(text)!.group(0);

    expect(output, expected);


  });

  test('regex with png', (){
    String text = "https://www.eldigitaldealbacete.com/wp-content/uploads/2019/04/antonio-cepillo-capitan-optimista.jpg 620w, https://www.eldigitaldealbacete.com/wp-content/uploads/2019/04/antonio-cepillo-capitan-optimista-184x98.jpg 184w, https://www.eldigitaldealbacete.com/wp-content/uploads/2019/04/antonio-cepillo-capitan-optimista-370x197.jpg 370w, https://www.eldigitaldealbacete.com/wp-content/uploads/2019/04/antonio-cepillo-capitan-optimista-300x160.jpg 300w";
    String expected = "https://www.eldigitaldealbacete.com/wp-content/uploads/2019/04/antonio-cepillo-capitan-optimista.jpg";

    String? output = regex.firstMatch(text)!.group(0);

    expect(output, expected);


  });

}