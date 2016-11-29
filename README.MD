# Best Temperature Converter EUW

## 1. Purpose

Ability to input a certain temperature in degrees Celcius after which you receive the converted temperatures in Fahrenheit and Kelvin.

### 1.1 Input

1. Commandline: input through command.
2. File: read input from a certain file.
3. Url: read input from a certain URL.
4. mqtt: read input from sensor through mqtt.

Comment: mqtt settings have been hardcoded.

### 1.2 Output

1. Text: output with regular text markup.
2. html: output with html markup.
3. json: output with json markup.

## 2. Installation

1. Install gem (preffered method)
```powershell
$ gem install temperature_converter_milanl
```
2. Import repository
```powershell
$ git clone git@github.com:Woedie/temperature_converter.git
```

## 3. Usage examples

This project works with commandline options.

### 4.1 Commandline input to text
```powershell
$ ruby .\app.rb -t 30 --text
Temperature
30.0  °C
86.0 °F
303.15  K
```
### 4.2 File input to html
```powershell
$ ruby .\app.rb -f .\data\temp.txt --html
<div>
<div>35.0 °C</div>
<div>95.0 °F</div>
<div>308.15 K</div>
</div>
```
### 4.3 mqtt input to json
```powershell
$ ruby .\app.rb -m --json
{"celcius: 26.11"; "fahrenheit: 78.99799999999999"; "kelvin: 299.26"}
```

## 4. Dev environment

### 4.1 Commandline input to text
```powershell
$ ruby .\app.rb -t 30 --text
Temperature
30.0  °C
86.0 °F
303.15  K
```
### 4.2 File input to html
```powershell
$ ruby .\app.rb -f .\data\temp.txt --html
<div>
<div>35.0 °C</div>
<div>95.0 °F</div>
<div>308.15 K</div>
</div>
```
### 4.3 mqtt input to json
```powershell
$ ruby .\app.rb -m --json
{"celcius: 26.11"; "fahrenheit: 78.99799999999999"; "kelvin: 299.26"}
```
