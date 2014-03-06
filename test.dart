import 'web/csvparser.dart';


main()
{
  String raw = '''
"first_name","last_name","company_name","address","city","county","state","zip","phone1","phone2","email","web"
"James","Butt","Benton, John B Jr","6649 N Blue Gum St","New Orleans","Orleans","LA",70116,"504-621-8927","504-845-1427","jbutt@gmail.com","http://www.bentonjohnbjr.com"
"Josephine","Darakjy","Chanay, Jeffrey A Esq","4 B Blue Ridge Blvd","Brighton","Livingston","MI",48116,"810-292-9388","810-374-9840","josephine_darakjy@darakjy.org","http://www.chanayjeffreyaesq.com"
"Art","Venere","Chemel, James L Cpa","8 W Cerritos Ave #54","Bridgeport","Gloucester","NJ","08014","856-636-8749","856-264-4130","art@venere.org","http://www.chemeljameslcpa.com"
''';
  CsvParser data = new CsvParser(raw);
  for(var row in data)
  {
    for(var col in row)
    {
      print('${col}, ');
    }
  }
}