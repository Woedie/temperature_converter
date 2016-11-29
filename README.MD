# Best Temperature Converter EUW

## 1. Purpose

Ability to input a certain temperature in degrees Celcius after which you receive the converted temperatures in Fahrenheit and Kelvin.

### 1.1 Input

* Commandline: input through command.
* File: read input from a certain file.
* Url: read input from a certain URL.
* mqtt: read input from sensor through mqtt.

Comment: mqtt settings have been hardcoded.

### 1.2 Output

* Text: output with regular text markup.
* html: output with html markup.
* json: output with json markup.

## 2. Installation

### 2.1 Install gem (preffered method)
```powershell
$ gem install temperature_converter_milanl
```
### 2.2 Import repository
```powershell
$ git clone git@github.com:Woedie/temperature_converter.git
```

## 3. Usage examples

This project works with commandline options. The executable is called 'temp-conv'. Always use two options, one for input and one for output.

| Option        | Function      |
| ------------- |:-------------:|
| -t            | read input from Commandline |
| -f            | read input from file    |
| -u            | read input from url   |
| -m            | read input from mqtt |
| --text        | output as text      |
| --html        | output as html      |
| --json         | output as json      |


### 3.1 Commandline input to text
```powershell
$ temp-conv -t 30 --text
Temperature
30.0  °C
86.0 °F
303.15  K
```
### 3.2 File input to html
```powershell
$ temp-conv -f .\data\temp.txt --html
<div>
<div>35.0 °C</div>
<div>95.0 °F</div>
<div>308.15 K</div>
</div>
```
### 3.3 mqtt input to json
```powershell
$ temp-conv -m --json
{"celcius: 26.11"; "fahrenheit: 78.99799999999999"; "kelvin: 299.26"}
```

## 4. Dev environment

Import repository (see 2.2).

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

## 5. License and author info

### 5.1 License

MIT

### 5.2 Author info

e-mail: milan.lamote@student.vives.be
