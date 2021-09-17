from setuptools import setup, Extension


setup(
    name='rename-exchange',
    version='0.0.1',
    ext_modules=[
        Extension('rename_exchange', ['rename_exchange.c']),
    ],
)
