from setuptools import setup, Extension


setup(
    name='rename-exchange',
    version='1.0.0',
    ext_modules=[
        Extension('rename_exchange', ['rename_exchange.c']),
    ],
)
