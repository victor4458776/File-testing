#Useful scripts to test files quickly
#Pytest
assert sum([1, 1, 1]) == 6, "Should be 6"
$ python -m venv venv
$ source venv/bin/activate
(venv) $ python -m pip install pytest
(venv) $ python -m unittest discover
(venv) $ pytest
(venv) $ pytest --durations=5
$ python3 -m nose2
$ python3 test.py
$ python3 -m unittest test
$ python3 -m unittest discover
$ python3 -m unittest discover -s tests -s tests -t src
$ python3 manage.py test
$ python3 -m unittest discover -s
test/integration
$ tox-quickstart
$ tox -r
$ tox -q
$ sudo flake8 test.py
$ flake8 --ignore E305 --exclude .git,__pycache__ --max-line-length=90
$ pip install black
$ black test.py
$ pip_install_pytest-benchmark
$ pip install bandit
$ bandit -r my_sum.py
