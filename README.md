# AztecDecoder

Convert

```
"uAMAANtYAAJDAP8xAHwAQgBBAPtNADUAMhr9MAA2ADbtKwY0exI1Dvc3ADge/1AAUgBFAFoA71kARA5O9wBUACBqvy4KUwBUfQ9X745SGlp7DldO3XxSrxZJWkx7Xkna2UFL3gFPFkj+Q0EATPt3S3LeQQpP/T5TAEv3UzL6vTdGMOASLfsOMwAzy0dBez5XArUuNPADWG1OIk175lLGwUVX71N6Qgdn7VoAfAPeU2Iz974wDr5Ee03wllR3S6NeRAIyW+89MQBB9xs5Er0yWnzvCjAWNgczBD/eOSot8APuW08ATPinTn1DLuwSLvt3MGfDMd/gOeALpss5DucIywWhI4dOS8NTd31KAFXiJjbtV/9VPTIAN7avE5s0tofnBnd4NAA1a19hD7wyBxkvzGNzLTs3Ob5rKiw/YNZbMBsxYY9DLzUHl7wwCjAdn4HXo1Pfogdv02u7TyYGdEIAT1tv30uXLSMp0Sss9B9rd0GG3DO+GJcZV9crMCLvNAA3cwQ/tAOyOxn/sXwn2zEDkE62Q1mD7TcAMGuEkkkklf8=M"
```

Into

```Swift
"XXC1|BAM5210661|1465178|PREZYDENT M. ST. WARSZAWY|DZIELNICA WŁOCHY|AL. KRAKOWSKA 257|02-133 WARSZAWA|WW 444XP|MERCEDES-BENZ||||S 350 D 4MATIC|WDD2221331A229124|2016-12-19|---|POLMAN S.A.||||012110950|02-197|WARSZAWA|WARSZAWA|NA SKRAJU|68||POLMAN S.A.||||012110950|02-197|WARSZAWA|WARSZAWA|NA SKRAJU|68||2750|2750|4935|2045|---|---|2|2100|750|---|2987,00|190,00|D |2015-10-07|5|---|SAMOCHÓD OSOBOWY|---|2015|---|14,31|AAC3745751|03470119000000|03|01|000|1111NNNNNNNN|009007001|4,"
```

## Installation

AztecDecoder is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "AztecDecoder"
```

If you used `use_framework` in your podfile just simply do:

```Swift
import AztecDecoder

```

for every file when you need to use it.

you may also use:

```Swift
@import AztecDecoder

```

within **bridging header** file and avoid to import framework for every needed file.


## Usage

```Swift
        let aztecString = "[here_your_string]"
        let decoder = AztecDecoder()
        let decodedString = decoder.decode(aztecString)
```


## Author

Bartłomiej Semańczyk, bartekss2@icloud.com

## License

AztecDecoder is available under the MIT license. See the LICENSE file for more info.
