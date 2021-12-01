# Budget App

![Microverse](https://img.shields.io/badge/Microverse-blueviolet)

>this a mobile view app to manage finances, the user can create categories and add transactions to it. 

|  wireframes |  |  |
|-------|---------|------|
|![image](https://user-images.githubusercontent.com/37901469/144277707-7c760f19-ff66-4327-8807-767038a851a2.png)|![image](https://user-images.githubusercontent.com/37901469/144279874-fbbb8bac-c4b2-4211-95b6-d62730d8c4f2.png)|![image](https://user-images.githubusercontent.com/37901469/144280039-fe6a8192-6935-4ba5-8723-519a51670bfe.png)|
![image](https://user-images.githubusercontent.com/37901469/144281481-4ffc1918-db84-4449-a052-c1af118b976f.png)|![image](https://user-images.githubusercontent.com/37901469/144281145-7df934b9-e71c-4b38-9e3f-63e82eeec676.png)





## Built With

- Ruby on Rails
- PostgreSQL

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/)
- [Rails & Postgres](https://www.howtoforge.com/tutorial/ubuntu-ruby-on-rails/?fbclid=IwAR3G0lCOxctwwOCAXmJKAma8p-IciYv2qwwRUyOX-pULaB_7lmrGgMMK8G4)

### Setup

- Make sure you have Ruby on Rails set up properly on your computer
- Clone or download this repo on your machine


```

### Development Database

```sh
# Go Postgres shell user
 sudo -i -u postgres psql
```

```sh
 - rails db:setup
 and then run
-  rails db:migrate
 optionally run
 - rails db:seed

```

```sh
# Create a user with password
create user "user_name" with password 'user_password';

```

### Install

```sh
bundle install
```

### Run

```sh
rails s
```

#### If you get an error run

```sh
bin/rails webpacker:install
and now run  `rails s`
```

### Test

```sh
rspec or rake
```

## Authors

👤 **Caleb Moses**

- GitHub: [@m05e5](https://github.com/m05e5)
- Twitter: [@CalebMoses](https://twitter.com/CalebMo69401446)
- LinkedIn: [caleb moses](https://www.linkedin.com/in/acleb-moses/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse

## License

[MIT](./LICENSE)
