from setuptools import setup
from setuptools.command.install import install
import subprocess
import os

PACKAGES=[]
# """matplotlib==3.1.3
# networkx==2.4
# numpy==1.18.1
# pandas==0.24.2
# scikit-learn==0.22.1
# scipy==1.4.1
# pydot==1.4.1
# graphviz==0.13.2
# umap-learn==0.4.1
# grakel==0.1b7"""

with open('README.md','r', encoding='utf-8') as f:
      long_description = f.read()

setup(name='dgm',
      version='0.1',
      description='',
      url='https://github.com/jlevy44/dgm',
      author='',
      author_email='',
      license='MIT',
      scripts=[],
      long_description=long_description,
      long_description_content_type='text/markdown',
      packages=['dgm'],
      install_requires=PACKAGES)
