<!-- This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->

# BorrowBuddy

## Description

Have you ever lent something to a friend or family member and never seen it again? Not with this app! BorrowBuddy tracks which item you lent out and to whom you lent the item. You simply select the "Create New Loan" button on the home screen to select a borrower and an item from your list or create a new one by completing the provided form fields. You then enter the number of days the item has been borrowed, the number of reminders you have sent the borrower about your loan, and whether or not the item has been returned.

If you send a reminder or the item is returned, just select the "Edit" link next to the loan, make the appropriate changes, and click the "Update Loan" button.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

#### Ruby

BorrowBuddy uses Ruby version 2.5.3. In my opinion, the best way to install Ruby is by using a Ruby version management system. The two most popular tools for this are [RVM](https://rvm.io/) and [rbenv](https://github.com/rbenv/rbenv). I've used both and have found rbenv to be more well-documented and easier to navigate than RVM but the ultimate choice is yours.

Since I use rbenv, I'm going to walk you through that installation. (_**NOTE:** If you decide to install rbenv and you used to use RVM, you must remove all RVM files or rbenv will **not** work!_)

##### For Mac Users

If you haven't done so already, download **[Homebrew](https://brew.sh/)**. It's an amazing macOS package manager that's built with Ruby. Just paste the following script in a new terminal window:

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

It will run through the installation, and explain the steps the script is taking along the way.

Once Homebrew is installed (or if you already had it installed, you smarty pants!), it's time to install rbenv. Open a new terminal window that's running `bash` or `zsh` and `cd` into your home path (i.e. `Users/yourname`). Now type `brew install rbenv` _*Note: This command also installs `ruby-build`, so you'll be ready to install other Ruby versions out of the box._ Once rbenv is done installing, type `rbenv init` to begin the shell integration setup.

##### For Windows and Linux Users

To install rbenv on your system, open up a new window in your terminal and run the `rbenv-installer` script below which can also be found at [this link](https://github.com/rbenv/rbenv-installer#rbenv-installer):

```bash
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash
```

It will either install rbenv on your system or update your pre-existing version of rbenv, located under `~/.rbenv`. Additionally, [ruby-build](https://github.com/rbenv/ruby-build) is also installed if rbenv install is not already available.

##### For All Users

Restart your terminal for the installation changes to take effect. Make sure your setup is correct by running the `rbenv-doctor` script below which can also be found at [this link](https://github.com/rbenv/rbenv-installer#rbenv-installer):

```bash
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
```

**NOW we install RUBY!** In your terminal, type `rbenv install 2.5.3` to download the version of Ruby you'll need to run BorrowBuddy.

#### PostgreSQL

The database for BorrowBuddy is PostgreSQL version 11.5. [Click this link](https://www.postgresql.org/download/) to visit PostgreSQL's official site and select your operating system in order to download the right package. There's one option available for Windows users. As a Mac user, I originally used Homebrew as my download option, but after trying Postgres.app, I found it to be much more simple and user-friendly. There are plenty of options for other server types, but I have no experience using any of them.

#### Bundler

### Installation

<!-- A step by step series of examples that tell you how to get a development env running

Say what the step will be

```
Give the example
```

And repeat

```
until finished
``` -->

## Usage

<!-- End with an example of getting some data out of the system or using it for a little demo -->

## Tests

<!-- Explain how to run the automated tests for this system -->

### End to End Tests

<!-- Explain what these tests test and why

```
Give an example
``` -->

### Coding Style Tests

<!-- Explain what these tests test and why

```
Give an example
``` -->

## Deployment

<!-- Add additional notes about how to deploy this on a live system -->

## Built With

<!-- * [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds -->

## Contributing

<!-- Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us. -->

## Versioning

<!-- We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). -->

## Authors

<!-- * **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project. -->

## Acknowledgments

<!-- * Hat tip to anyone whose code was used
* Inspiration
* etc
* Anything else that seems useful -->

## License

<!-- This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details -->
