### Getting started with Gitlab CI

[read on gitlab docs](https://docs.gitlab.com/ce/ci/quick_start)

GitLab offers a continuous integration service. If you add a .gitlab-ci.yml file to the root directory of your repository, and configure your GitLab project to use a [Runner](https://docs.gitlab.com/ce/ci/runners/README.html), then each commit or push, triggers your CI pipeline.

The .gitlab-ci.yml file tells the GitLab runner what to do. By default it runs a pipeline with three stages: build, test, and deploy. You don't need to use all three stages; stages with no jobs are simply ignored.

So in brief, the steps needed to have a working CI can be summed up to:

    1. Add .gitlab-ci.yml to the root directory of your repository
    2. Configure a Runner

#### Creating a `.gitlab-ci.yml` file

The `.gitlab-ci.yml` file is where you configure what CI does with your project. It lives in the root of your repository.

On any push to your repository, GitLab will look for the .gitlab-ci.yml file and start jobs on Runners according to the contents of the file, for that commit.

Because .gitlab-ci.yml is in the repository and is version controlled, old versions still build successfully, forks can easily make use of CI, branches can have different pipelines and jobs, and you have a single source of truth for CI. 

Example for one config file:

```yaml
before_script:
  - apt-get update -qq && apt-get install -y -qq sqlite3 libsqlite3-dev nodejs
  - ruby -v
  - which ruby
  - gem install bundler --no-ri --no-rdoc
  - bundle install --jobs $(nproc)  "${FLAGS[@]}"

rspec:
  script:
    - bundle exec rspec

rubocop:
  script:
    - bundle exec rubocop
```

The .gitlab-ci.yml file defines sets of jobs with constraints of how and when they should be run. The jobs are defined as top-level elements with a name (in our case `rspec` and `rubocop`) and always have to contain the script keyword. Jobs are used to create jobs, which are then picked by Runners and executed within the environment of the Runner.

### Configuring a Runner 

1. [Install it](https://docs.gitlab.com/runner/install/)
2. [Configure it](https://docs.gitlab.com/ce/ci/runners/README.html#registering-a-specific-runner)

### Only and Except:

https://docs.gitlab.com/ce/ci/yaml/README.html#only-and-except