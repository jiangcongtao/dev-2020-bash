#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# output of all script command displays on console and log to file bash.log
exec &> >(tee bash.log)

ls -la

git version