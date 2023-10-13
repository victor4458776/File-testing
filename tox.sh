Tox is available on PyPI as a package to install via pip:

$ pip install tox
#Now that you have Tox installed, it needs to be configured.

#Configuring Tox for Your Dependencies 
#Tox is configured via a configuration file in your project directory. 
#The Tox configuration file contains the following:

#The command to run in order to execute tests
#Any additional packages required before executing
#The target Python versions to test against
#Instead of having to learn the Tox configuration syntax, you can get a head start by running the quickstart application:

$ tox-quickstart
#The Tox configuration tool will ask you those questions and create a file similar to the following in tox.ini:

#[tox]
#envlist = py27, py36

#[testenv]
#deps =

#commands =
#python -m unittest discover
#Before you can run Tox, it requires that you have a setup.py file in your application folder containing the steps to install your package. If you don’t have one, you can follow this guide on how to create a setup.py before you continue.
#Alternatively, if your project is not for distribution on PyPI, you can skip this requirement by adding the following line in the tox.ini file under the [tox] heading:

[tox]
envlist = py27, py36
skipsdist=True
#If you don’t create a setup.py, and your application has some dependencies from PyPI, you’ll need to specify those on a number of lines under the [testenv] section. For example, Django would require the following:

[testenv]
deps = django
#Once you have completed that stage, you’re ready to run the tests.
#You can now execute Tox, and it will create two virtual environments: 
#one for Python 2.7 and one for Python 3.6. The Tox directory is called .tox/. Within the .tox/ directory, 
#Tox will execute python -m unittest discover against each virtual environment.
#You can run this process by calling Tox at the command line:

$ tox
Tox will output the results of your tests against each environment. The first time it runs, Tox takes a little bit of time to create the virtual environments, but once it has, the second execution will be a lot faster.

#Executing Tox
#There are some additional command line options that are great to remember.
#Run only a single environment, such as Python 3.6:

$ tox -e py36
Recreate the virtual environments, in case your dependencies have changed or site-packages is corrupt:

$ tox -r
#Run Tox with less verbose output:

$ tox -q
#Running Tox with more verbose output:

$ tox -v
#More information on Tox can be found at the Tox Documentation Website.

#Automating the Execution of Your Tests
#There are some tools for executing tests automatically when you make changes and commit them to a source-control repository like Git. 
#Automated testing tools are often known as CI/CD tools, which stands for “Continuous Integration/Continuous Deployment.” 


Travis CI is one of many available CI (Continuous Integration) services available.

Travis CI works nicely with Python, and now that you’ve created all these tests, you can automate the execution of them in the cloud! Travis CI is free for any open-source projects on GitHub and GitLab and is available for a charge for private projects.

To get started, login to the website and authenticate with your GitHub or GitLab credentials. Then create a file called .travis.yml with the following contents:

language: python
python:
  - "2.7"
  - "3.7"
install:
  - pip install -r requirements.txt
script:
  - python -m unittest discover
This configuration instructs Travis CI to:

Test against Python 2.7 and 3.7 (You can replace those versions with any you choose.)
Install all the packages you list in requirements.txt (You should remove this section if you don’t have any dependencies.)
Run python -m unittest discover to run the tests
