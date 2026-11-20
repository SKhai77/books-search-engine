# MERN: Books Search Engine

## User Story

```md
AS AN avid reader
I WANT to search for new books to read
SO THAT I can keep a list of books to purchase
```

## Acceptance Criteria

```md
GIVEN a book search engine
WHEN I load the search engine
THEN I am presented with a menu with the options Search for Books and Login/Signup and an input field to search for books and a submit button
WHEN I click on the Search for Books menu option
THEN I am presented with an input field to search for books and a submit button
WHEN I am not logged in and enter a search term in the input field and click the submit button
THEN I am presented with several search results, each featuring a book’s title, author, description, image, and a link to that book on the Google Books site
WHEN I click on the Login/Signup menu option
THEN a modal appears on the screen with a toggle between the option to log in or sign up
WHEN the toggle is set to Signup
THEN I am presented with three inputs for a username, an email address, and a password, and a signup button
WHEN the toggle is set to Login
THEN I am presented with two inputs for an email address and a password and login button
WHEN I enter a valid email address and create a password and click on the signup button
THEN my user account is created and I am logged in to the site
WHEN I enter my account’s email address and password and click on the login button
THEN I the modal closes and I am logged in to the site
WHEN I am logged in to the site
THEN the menu options change to Search for Books, an option to see my saved books, and Logout
WHEN I am logged in and enter a search term in the input field and click the submit button
THEN I am presented with several search results, each featuring a book’s title, author, description, image, and a link to that book on the Google Books site and a button to save a book to my account
WHEN I click on the Save button on a book
THEN that book’s information is saved to my account
WHEN I click on the option to see my saved books
THEN I am presented with all of the books I have saved to my account, each featuring the book’s title, author, description, image, and a link to that book on the Google Books site and a button to remove a book from my account
WHEN I click on the Remove button on a book
THEN that book is deleted from my saved books list
WHEN I click on the Logout button
THEN I am logged out of the site and presented with a menu with the options Search for Books and Login/Signup and an input field to search for books and a submit button
```

## Table of Contents

- [Description](#description)
- [Technologies](#technologies)
- [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)
- [Screenshots](#screenshots)

## Description

Today's modern websites are driven by data and user demands. The ability to personalize user data is crucial in the current and future web development landscape. As user demands evolve, applications must adapt and become more performant. 
Therefore, to keep up with the current demands, some existing fully function applications need to implement the technologies for it. In the same way, the goal of this project is to work on the starter code with a fully functioning Google Books API search engine built with a RESTful API, and refactor it to be a GraphQL API built with Apollo Server. The app was built using the MERN stack with a React front end, MongoDB database, and Node.js/Express.js server and API. It's already set up to allow users to save book searches to the back end.


## Technologies

- Apollo/client/server
- bcryptjs
- Express.js
- GraphQL
- Heroku
- JavaScript
- JSON Web Tokens
- Mongoose ODM
- Node.js
- NoSQL/ MongoDB
- React
- React Bootstrap
- React Router
- Vite

## Installation

1. Clone the repository and open the project root in VS Code.
2. Install the root, server, and client dependencies:

```powershell
npm install
```

## Configuration

### Database

Choose one database option.

#### Option A: local MongoDB

Start MongoDB on your own computer. If no `MONGODB_URI` is configured, the server connects to:

```text
mongodb://127.0.0.1:27017/booksearchDB
```

`127.0.0.1` means the developer's own computer. This is not a shared database and requires MongoDB to be installed and running locally.

#### Option B: MongoDB Atlas

For a shared or deployed database, copy `server/.env.example` to `server/.env`, then replace the placeholder with your Atlas connection string:

```env
MONGODB_URI=mongodb+srv://<username>:<password>@<cluster-host>/booksearchDB?retryWrites=true&w=majority
```

Allow your IP address in MongoDB Atlas Network Access. The server loads `server/.env` automatically. Never commit `server/.env` or an Atlas password to Git.

### Google Books API

Copy `client/.env.example` to `client/.env.local` for Google Books searches:

```text
client/.env.local
```

Add your Google Books API key:

```env
VITE_GOOGLE_BOOKS_API_KEY=your_google_books_api_key
```

Create the key in Google Cloud, enable the Books API, and restrict the key to the Books API and the appropriate app URLs. For local development, allow `http://localhost:3000/*`. The `.env.local` file is ignored by Git and must not be committed.

## Usage

Start the complete local development environment from the repository root:

```powershell
npm run develop
```

This command starts:

- the Vite React client at `http://localhost:3000`;
- the Express/Apollo GraphQL API at `http://localhost:3001/graphql`.

Before starting, the command stops stale local processes using ports 3000 and 3001. Do not separately run `npm start`, `npm run watch`, or `npm run dev` in another terminal while `npm run develop` is running.

To create a production client build, run:

```powershell
npm run build
```

After changing either environment file, stop and restart `npm run develop` so the new values are loaded.

### Application behavior

- Enter a book title, author, or keyword before selecting **Submit Search**. The search button remains disabled until text is entered.
- Google Books API errors, including quota or API-key errors, are displayed in the application.
- Create an account or log in to save books, view saved books, and remove saved books.
- Authentication uses JWTs that expire after two hours. Users with an expired session must log in again.
- Passwords are hashed with `bcryptjs` before they are stored in MongoDB.

Then, test all the functions and features:

```md
- Create an account
- Login:
  - Search books
  - Save books
  - View saved books
  - Delete saved books
```

- The application is deployed on Heroku. Visit the live website by [clicking here](https://skhai77-books-search-engine-20032e3d896f.herokuapp.com/).

## Screenshots

The following image shows the book search results with a "`Save this Book!`" button on each book:

![Search Books Screenshot](./client/src/assets/screenshots/search-books.png)

The following image shows the "`Save this Book!`" button is clicked for saving books as the button is changed to `This book has already been saved!`:

![Save Books Screenshot](./client/src/assets/screenshots/save-books.png)

The following image shows the view of saved books under "`See Your Books`" menu:

![View Saved Books Screenshot](./client/src/assets/screenshots/view-saved-books.png)
