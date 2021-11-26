require "rubypython"

RubyPython.start

# Simple examples
RubyPython::Python.PyRun_SimpleString <<-PYTHON
def func():
    print("example")
PYTHON

RubyPython::Python.PyRun_SimpleString <<-PYTHON
def func2(val):
    print('Value {}'.format(val))
PYTHON

# Run functions
main = RubyPython.import("__main__")
main.func()
main.func2("Something")

# Import package
sys = RubyPython.import("sys")
sys.path.append(".")

RubyPython.stop
