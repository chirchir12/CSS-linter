# Capstone Project: CSS Linter
this is a CSS Linter developed in Ruby to help highlight sytle errors in CSS. It provides feedback when there are offences in the file. These offences include indentation, trailing white spaces, space before semi-colon, single space before and after colon, and missing semi colon. The linter print error and its corresponding line in the file. 

## Built With

- Ruby-2.5.1p57
- Rspec

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

## How to Use

1. From bin folder right click on the main file and select open with terminal option
2. pass the path to the css file to the linter like so `lint assets/css/file.css`


### How to install using Command line

    1. Click on the install or download button under the repository name and grab the url
    by clicking on the clipboard icon

![Step-1](images/github.png)

    2.open your terminal

    3.Navigate to the location in your computer where you want the repo to be cloned

    4. Type git clone  and paste the url you copied on step one.

        $ git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY

    5. Press Enter. Your local clone will be created.

                $ git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY
                > Cloning into `Spoon-Knife`...
                > remote: Counting objects: 10, done.
                > remote: Compressing objects: 100% (8/8), done.
                > remove: Total 10 (delta 1), reused 10 (delta 1)
                > Unpacking objects: 100% (10/10), done.

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