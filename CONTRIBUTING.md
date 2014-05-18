# Contributing to Exercism

## Goals

Exercism is an entirely open source project, and as such, we wish to have exemplary code, and we want to make it easy to contribute to the codebase.

### Exemplary Code

As Exercism grows up, the technologies that drive it will become more diverse. We'd like all parts of the exercism codebase to be something that people can point to and say "this is a great example of using X".

### Easy to Contribute

Contributing to Open Source can be very intimidating, and we want to lower the barrier to contributing in a number of ways.

First, by following known conventions. This will make it easier to jump into the codebase, and know where to look.

Second, by separating different things into different applications/repositories. Mostly we are separating things that change at different rates or for different reasons, or things that are in different programming languages.

Third, by providing setup scripts (and perhaps, later, a docker container with all the dependencies set up).

Most importantly, though, we want to be welcoming to newcomers. We're not going to mock you (we know what it's like to write code in a project that is unfamiliar). We will help you untangle pull requests if you get yourself up git creek. We will attempt to triage issues and describe them in such a way that it's easy to pick off a managable chunk of work to get started.

## Terminology

A **problem** refers to a README and test suite (with any supporting code) _in a particular language_.
An **exercise** refers to a problem solved by a particular user.
An exercise may have one or more **iterations**.

## From Prototype to v1.0

Exercism began as an experiment with exercises in a single language, and has grown into a prototype that includes exercises in 13 languages, and has more than 3000 people using it.

Almost every choice in the code base was made on a whim. As a result, the existing code base is extremely confusing, chaotic, and difficult to contribute to.

In order to turn Exercism into a real project, we will be re-implementing the core functionality with a complete separation between frontend and backend.

## Organization of Code

There are 5 main repositories that make up the exercism project:

* [Old Prototype - New Backend](https://github.com/exercism/exercism.io) - The existing prototype running in production (master branch), and the new backend that the Ember app talks to (api branch), written in Ruby
* [New Frontend](https://github.com/exercism/website) - The Ember front-end
* [CLI](https://github.com/exercism/cli) - The command-line client, written in Go
* [Problem API](https://github.com/exercism/x-api) - The API that delivers problems to the CLI, written in Ruby
* [Docs](https://github.com/exercism/docs) - The help site, a statically generated site using Lineman.js

The [Problem API](https://github.com/exercism/x-api) also includes a number of git submodules, containing:

1. The problems in each separate language, http://github.com/exercism/x`$LANGUAGE`
2. The (shared) metadata used to create the READMEs, [x-common](https://github.com/exercism/x-common)

Eventually, once we have a minimal v1.0 launched into production, we will rename the repositories so that everything makes sense.

