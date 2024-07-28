import 'package:booklyapp/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/books_action.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksDetailsSction extends StatelessWidget {
  const BooksDetailsSction({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: const CustomBookImage(
              imagUrl:
                  'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAKgAswMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAAAQQCAwUGBwj/xABREAABAwICBQcGCAoGCwEAAAABAAIDBBEFIQYSMUFxEzJRYYGhsRQiUnKRwRUjQmKCssLRFiQzQ1SDhJKi0jRjc3ST8SVERVNVhZSj4eLwB//EABkBAQEBAQEBAAAAAAAAAAAAAAABAgMEBf/EACIRAQEAAgICAwADAQAAAAAAAAABAhEDIRIxE0FRImFxMv/aAAwDAQACEQMRAD8A+4oiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICItFRNyTcgS47ApSN6KjHVu+WAesK0yRrx5pv0pLtdNiKApVQREQEREBERAREQERQUEotElTFHkXXPQqUtc9xs0ag6VLVk26EsjIxeRwA61kxwcLtII3WXGI199+ves4Kh0D7AXbvCz5NeHTrqVqbLG5odcZor5RnVbVClapnljC5rHPIGTW71pEVEwib0uOwLmuJc4uOZO9aIq2KrmcGy3l/3ZBDwOBW8DK4uue5fTrJ4sg4AG61l5vc9ihzr9ixVNLUdVIw7dcdCtxVMcmV9V3QuXrLIG+V7K7S4uyFK5kVTJHkfOHQr0UrZBdp4joVYsbUUBSqgiIggoh61Sqaq12x9pUtWdrE1QyMZ7ehUJqmSQ87VB3LTdxzcsSVluY6Te1wsCbZ9CbVBy6exRQOzv0rZfWC1B1ujsUc06ylajZZFkHXF1Cg7jlycUrMzBGchz3DwXQq5mQQue+1tlr7T0LxOJz1FO90kdVPFfPk3sD2ew594V5eSYxniw8q3V4ie3VliY4Nzbf5PA7uzNURjtTh7tXljLH6M5vYdTwNYdocqfw29/myx00x+ZJyTjwa/I9jlorJsNlP462qonH9IhLR+8LjvXjufe5XrmF+49RS6QUNQ1pnPkzjsc8gsJ/tB5vtsepdawOY84EXyXzVuCz6pnwiuEjTtdC8PaR0EA2PaFFHi+I4S7VeyWmA+VTNvGfWidkOLbcF0nPZ/0zeKX0+kkW3WQmy87hmlkNREDWRNLBtqaW72D1mEa7O0Fehhlhqomz000csTua6N2sPau+HJjl6cLjlj7ZtN1k0kEFu3pG5a9VSHLpGXRp6gPOo/ndPSrIXH1jtG5XqSoD/Nft3KsWLag96KtXTakWq02c/IIzO2isqszHHs3qpewWAsRtvbJZBZdpNI2qDYbVLidygXJF+xBibnaocMlkeccieCyETjzgB0WURg2waL37FNnO6MujatojDRc9+xYPqYGZa7SehoU2Rjybv8ANFj5Y3cz+JQm2nYxF8LYCJmteHZBjhcE8F5ialp7Osx0Z38k8sHsabLZi+PQQ1JE7ZDq5DUbcBct2PYfNzda53cpGO7WXLk5MK3x8eUiliMNNG0lzhIOiWFpH8Oqe9cpr6anH4vVOpmnaxkxDO1j2lnteu5K6kqR50NSR83UPg5c+bDcNcdbk6xnWIHHwXly8fp6cdz2pGjp6h7ZjSxucMxUUwMT+OvHrs72rKM1royaHFhUMAzixBjZWjjK0n6wVeXCMLZLykdXPTP3OMUrCO3VWLoTrAsx6lnc03aKtzHO7C8a3sIWYu0VIdA5k9fhNRSPBuyrw6XlG8QCQQODjwWzDK+YT8thdUyomOb30vxc+XpwuAD+0A7c1ugdisd3RRMmBN3vpKnW1h1h2sTw1gq9Z8H1hDMWw/k5L3D3Q8i8Eb7i7RxJVq+/b1eFaWxTgx4m0DV508IcA314zdzOObetekjLZI2yxPa+J4uxzTcEdIO8L5h5HVa0clFXNrWA3jZVO1ZW+pMMz2kjqVjB8aqMPqeRj16eZxu6kqG6okPAZE/OZZ1trCu+HNZ7u3HLimXp9HvZNY7jYqpheKU2KxkwWZO3zpIXbbdI3EdY7ti3yk3N16ZlL6eeyzqutRVTahpF7ubtXOr5dercPRy/+71RFU6jfy4F2t5w6RvWDaltSfKGG7JfPa7pBS5/STDtdBUrVG65C3NF33ts39C0IN7iy2NiAsX9mSr4hiNLhsfxrszsjbzivNV+kNZWuLYHchFss3nHt+5c8uSYtTC16eorqWiuJ5WtcPkNF3ewLlT6QOeSKSINHpSkEns2LgRwyPN3Nz33Kuw0r3bGtyXG8uWTcwxja6unmdeZ5d1E2t2Lex7t2zdkQojon77t4q02gOVzdJsv9MQ91v8AJFZFLYKF07ZcKppnU/nzGM3JNxK7PuVF2J4dESXOe077ax8Qu3XQyFhfLLTE9Hk7j36685W4hFTCxhaT8yJlz7QV5ssdV6MbuNhxbBXHWe9xO64cPcsm4vgx2SStt0SkeLlx3Y7N+boat3qmBvhCsfhrEHnzMPr/AKNc1nhEFnbWnoG43hlrCukbwkh97ll8I4XKLPrI3j+ubE4fwlcAVmLS/wCzsSP/ADWT3MWxoxh4ywfED1nFZf5Vf9R1n0Wj9YQCKGR+4xxPYR2i9ll8Cwn+g4lVQuOxkdXyjP3X28FxzFi5ydhddwOKu97CpZTYkx2v8GYhF1skglv7Ywe9Ovw7/VyfA8VpyZGClqHHb5hp3uHFvmntBCqVFUGRClxukkbEcg2pjBb2PGX1QtlPiOI0R84V0IG0S0js/pNc76q6NLpPFOBBUxQTa3yYngOP0HAOceDFNRd1z6ds1K5k+HzS1ELPPjAcDNH1td+cG7PPiMj7HBMaixaBty3ly02czmydPAjeN3h5/wCCcMqpXOwqodh1W3N8JBAv85htbqtY5qpVQ1lDVh9VGyjqXPFpwbQVDhsDnDmO6Hbdl7hbwyywvTOWMyeyqGBzHj5uxU8EGvhlO3ojA9gss8MxBuI08kcrTHVxebLG5tjfrHaNmRBBBIIU4SCyJ0YFi2V4t1axsu25cpY461LHRp2Fzri9t9jt6ly8Yx7kXGkwvVfPsc/5MZ6Osrbi9W9jH01M4Rm15ZL2DG+7iubS08UbBybOUFsi7Jvt2u7MutY5Oaz+OK48c91Rgw6oq5eUqS97ztcTc3XRbR09LlUzMa87r2cexWQyaQBmsdX0IyWDuufaqlRUUVDrNqa2kowdrXSMjPeVy06b23+VxNHxFNLIfngRjvz7lg+urB+iQA7AQ959wXOdjWA2scZhd1seD9Vq1OxzR9ufwpq9Yke1LciSfi+6pqje9dPwjiYzvK0Pnedrq13r1gaD7Cq7cVwOQ/F400k7hO+/irINK9hcKqQs9J072DvCzq1qXSudYn+iwHrdXPv4KVsD6YDKthI/vTiiz4tebpT1ME5sxkrwehot4quKaNxP4qwdbnl3dYeKvx0zR+ZaOt51lYawgZm3qtXb+V9uPU9OdHRk5BkQ9SKx77qy2kLRYvcPY36tlZe6KNt5X2HS59lQnx3Bqbn19KD0cq0n2Bb1E2tNpoRtLn9T5HOHes+Qgy+IHARriTaZ4SzKLlpT/VwO94AVQ6aOcT5NhFa7rcGtv3lNxO3q2gAWEer2gLID5veF452lONyH4nAZCPnTf+hQY9pK/ZgLR+sd/Kmx7P6PgtFTRUdVGWVVNHMze17A5eZbjekvysCZbrmcPsqzFjuLD8tgTuLaoe8Jufh6XJdHaFzA2mdNTNHNDHazGHqa64HZYqG0uI0bOTD46ynOXJvGduizr9vnHdkphxsPNp6Goh69eNwHsddX2VUMjbtky3KWRZXHjo4hK2poOUp54BYwSXuxvo5/J2kDPVvcZFzXXG1ckZeYGHlJrOiaM9XLNx6gb8SRuWzEKlkVLJK4sYGMc7lnmzYhvcT0Dv2bSF88of8A9MoPhuogqYHRYYX2pqyNutMfnSNvmHbbAAt2WKkwyy6xauUj3TaaOECeuk13A3DSdYA8PlHrt/4wdVVs4Ao6ctBGchaHud3hoPEu4KzSzUVbTMraeWOrhfzKhh12cOo9RzW2acDOWZrR0ucB4rHjro3vtyJMHqao2rJGyA7quofIDxiZqsUQYAIGasVTRU43Cmw+NvsvdXH1+Ht59fTD9oaPetDsXwe+eIUX/Uj706N0OET/APHapvUKeAfYWp+DVruZpFUN9alp3DvYtoxTB37K+iP7S371tbUUMv5KaJ/qVF/Aq7Xtz5MBxNwN8Ro6n+2oIh9ULnS6OYi14ecNwCW29lO+J/7wcvThrTzHvHBwKyDXDmyO+kLp0bryZocUBsMGk/V4xM1vYEXr+VkH5z+Eop0bryk+m+GjL4cph/doXO8WuC5s+mGEyflK/FqkdAD2A9jdVfZ24XRt2UsA/Vj7lIw+lGyniHBgX0Jw4PH8mT4Q7SLAtbW/B+snduc+O/e6QlbWaWxNv5No1I2wy81mf8JX3PyGn3QsHBoUiihGyNv7qvxYT6ZueX6+GDTTGLARYCGCw2v39jAsXaW6TO5mGMZxdKfBwX3XySP0GjsU+SRei1a8cTyr4KdJdLjsoom8YZXeL1qdiul0m2Fo/Zfvuvv/AJLH6I7E8lj9FXxibr8+mq0wftLxwpmD7K1n8MHZCoqxf0Y2t8Gr9DeSx+inkrNzU1DdfnCc6Whp5WpxKwzykeFvw2LFKnDcQhkqK2SZ/JlodI8lrGkuJbvvcN2Z2uv0QaVm9q1PwujlHxlLC/1ows5YyzUXHLV2/O+Lu0jxLDG4ZUYkZ6VrtfVcWtc8jZrHabZWvvsuXSaIV8hBc0MbvdcZDjsHbbvX6UOj2Fg63kTbn0XOHgVH4N4MSDJhlLIW80yR65HC65Tiv3XW8v8AT4hh0sOjEUgw01dZNIBrsheWxO9Zw51uq+/NVRpDpS95e+ON5JyBpR5o6Bb3m6/QbMLoWANjo4WDqYAs/IIRzWMHAWXWYYxzudr4EzSXSZv+oQH9S8faW78LceFuUweB/wDiD3r7v5DDva32IaGD0Gn6KvjinlXwg6XV9vjNHoSfW+9pWt2lFO4HyjRaJzt5a1n8i+9eQU++Fp+iFicOpj+YZ2tCnx4fi+eX6+Ds0kwhoBdo7UxnphDR4OCsxaW4O0i0eMw57nOIH/cPgvtpwylO2njP0AsThFG7bSxHjGFLxYL8mT5FFprhIjH+kcRHUacH7KL638DUP6JB/ht+5Ss/DgfJk6hQhSi6ObGyWWSIMbIAskQRZLKUQRZLKUQRZApRBBRSiCApREEFLKUQRZLKUQQQosskQY2RZIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIg//9k='),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 30,
        ),
        const BooksAction(),
      ],
    );
  }
}
