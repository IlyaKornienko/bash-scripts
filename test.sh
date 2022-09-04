#!/bin/bash

echo "Clean cahe yum:"
yum clean all
echo "Done"

echo "Update all packages"
yum update -y
echo "Done"
