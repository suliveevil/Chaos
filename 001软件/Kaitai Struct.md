---
title: "Kaitai Struct"
author: 
categories: 
date: 2022-10-09 23:00:15 +0800
tags: 
excerpt: 
---


[Kaitai Struct](http://kaitai.io/): declarative binary format parsing language

## What is Kaitai Struct?

Kaitai Struct is a declarative language used to describe various binary data structures, laid out in files or in memory: i.e. binary file formats, network stream packet formats, etc.

The main idea is that a particular format is described in Kaitai Struct language (`.ksy` file) and then can be compiled with `ksc` into source files in one of the supported programming languages. These modules will include a generated code for a parser that can read the described data structure from a file or stream and give access to it in a nice, easy-to-comprehend [[API]].



