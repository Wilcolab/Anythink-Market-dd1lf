# Welcome to the Anythink Market repo

To start the app use Docker. It will start both frontend and backend, including all the relevant dependencies, and the db.

Please find more info about each part in the relevant Readme file ([frontend](frontend/readme.md) and [backend](backend/README.md)).

## Development

When implementing a new feature or fixing a bug, please create a new pull request against `main` from a feature/bug branch and add `@vanessa-cooper` as reviewer.

## First setup

1. First, [clone the repo](https://github.com/ObelusFamily/Anythink-Market-dd1lf){:target="_blank"}
2. Install Docker - [instructions](https://docs.docker.com/get-docker/){:target="_blank"}
3. Verify docker is ready running the following commands in your terminal: `docker -v` and `docker-compose -v`
    - If you've installed Docker desktop, ensure it is started
4. Run `docker-compose up` from the project root directory to load Anythink's backend and frontend
    - If Docker is working correctly, the backend should be running and able to connect to your local database
5. Verify backend is running by pointing your brower to [http://localhost:3000/api/ping](http://localhost:3000/api/ping){:target="_blank"}
    - The backend is up and running if you see a JSON response similar to:
    ```
    {
      "msg": "Pong! Seems like Everythink is working, great job!"
    }
    ```
6. Verify the frontend is running and connected to the backend by opening the user registration page and creating a test user
    - [link to user registration page](http://localhost:3001/register){:target="_blank"}

That's it! It looks like your environment is ready!
