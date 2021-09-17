import platform
import sys
from setuptools import setup
from setuptools import Extension


py_major_version, py_minor_version, *_ = sys.version_info
if py_major_version >= 3 and platform.python_implementation() == 'CPython':
    try:
        import wheel.bdist_wheel
    except ImportError:
        command_class = {}
    else:
        class bdist_wheel(wheel.bdist_wheel.bdist_wheel):
            def finalize_options(self):
                self.py_limited_api = f'cp3{py_minor_version}'
                super().finalize_options()

        command_class = {'bdist_wheel': bdist_wheel}


setup(
    name='rename-exchange',
    version='1.0.0',
    ext_modules=[
        Extension(
            'rename_exchange', ['rename_exchange.c'],
            py_limited_api=True, define_macros=[('PY_LIMITED_API', None)],
        ),
    ],
    cmdclass=command_class,
)
