# Capstone Project: CSS Linter

this is a CSS Linter developed in Ruby to help highlight sytle errors in CSS. It provides feedback when there are offences in the file. These offences include indentation, trailing white spaces, space before semi-colon, single space before and after colon, and missing semi colon. The linter print error and its corresponding line in the file.

## Future Implementations
- ability to fix linter errors
- at the moment, it only checks rules on single line. future implementations include checking rules that span multiple lines
## Built With

- Ruby-2.5.1p57
- Rspec
- colorize

## Usage

  1. Click on the install or download button under the repository name and grab the url
  2.open your terminal
  3.Navigate to the location in your computer where you want the repo to be cloned
  4. type `git clone https://github.com/chirchir12/CSS-linter.git`
  5. Press Enter. Your local clone will be created.
  6. type `cd CSS-linter `
  7. run `bundle install ` to install gem files
  8. run `bin/lint path_to/file.css `

## Developer Guide
#### missing Semicolon
the following is considered violation
```
#active {
color : aliceblue
}

```
the following is not considered violation
```
#active {
color : aliceblue;
}

```
#### space Before Semicolon
the following is considered violation
```
.bg-black {
  background-color: #000 ;
}

```
the following is not considered violation
```
.bg-black {
  background-color: #000;
}

```

#### Indentation
the following is considered violation
```
body {
margin: 0;
}

```
the following is not considered violation
```
body {
  margin: 0;
}

```
#### Empty Blocks
the following is considered violation
```
body>#chirchir {
  
}
```
the following is not considered violation: you can delete the rule altogether
```
body>#chirchir {
  color:blue
}

```
#### Single Space After Colon
the following is considered violation
```
.bg-white-black-text {
  color:#000;
}

```
the following is not considered violation
```
.bg-white-black-text {
  color: #000;
}

```

#### Trailing Whitespaces
the following is considered violation: notice space at the end of rule
```
.d-flex-vertical-center-column {
  justify-content: center; 
}
```
the following is not considered violation
```
.d-flex-vertical-center-column {
  justify-content: center;
}

```
## Demo

### bad code

```
.bg-black {
  background-color:#000
}

.bg-white-black-text {
  color: #000;
}

.d-flex-vertical-center-column {
  justify-content: center ;
flex-direction: column
}

```

![screenshot](images/bad.png)

### Good code

```
#color {
    color : aliceblue;
    background-color : #6688;
    border : 50px;
    }

```

![screenshot](images/good.png)




## Testing- Rspec
- run ` rspec -fdoc` to see test passing all checks

![screenshot](images/test.png)
## Author

👤 **Author**

- Github: [@githubhandle](https://github.com/chirchir12)
- Twitter: [@twitterhandle](https://twitter.com/shadochir)
- Linkedin: [linkedin](https://www.linkedin.com/in/emmanuel-chirchir/)
- Email: [email](chirchir7370@gmail.com)

## 🤝 Contributing

    Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/chirchir12/TicTacToe/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Microverse](https://www.microverse.org/)
- [Odin Project](https://www.theodinproject.com//)
- [Github](https://github.com/)

## 📝 License

This project is [MIT](lic.url) licensed.
