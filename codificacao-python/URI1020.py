# -*- coding: utf-8 -*-
"""Untitled0.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1SrqoKxE2geLL9KeyTCkKucjLk2TngL8r
"""

# -*- coding: utf-8 -*-
dias = int(input())
anos = dias / 365
dias = dias % 365
meses = dias / 30
dias = dias % 30
print("%i ano(s)"% anos)
print("%i mes(es)"% meses)
print("%i dia(s)"% dias)