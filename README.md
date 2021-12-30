## spacemail

spacemail is 2 postman collections and a simple GNU Parallel jobs list to run them in parallel. The goal of **spacemail** is to simply facilitate development of a **reporter of reporters**.

### Why?

Postman is great, but even with newman, it's not meant to load test. But what if you have few resources and are lazy? You're gonna wanna do more with those postman collections someone made. So you want to use newman to run them, and then use GNU Parallel to run newman in parallel. This is the necessary components to do that, so you can build that **reporter of reporters**.

To use this, you'll need some stuff:

```bash
npm install -g newman newman-reporter-json-summary

# if using Arch Linux, otherwise 'apt install' or whatever. Just get GNU Parallel
pacman -S parallel
```

To regenerate the test output that's already here (job\*.json)

```bash
parallel -j 2 < jobs
```

You can generate any number of jobs by using the following:
```bash
# create 20 jobs
./jobber.sh -c 20
```


The generated output follows the schema of the [**JSON Summary Newman Reporter**](https://github.com/spenceclark/newman-reporter-json-summary#readme)
