#! /bin/sh

echo "tapad versions"

echo "----------"
echo "\$PATH"
echo $PATH

echo "----------"
echo "python -V"
python -V

echo "----------"
echo "pip -V"
pip -V

echo "----------"
echo "pip list"
pip list

echo "----------"
echo "aws --version"
aws --version

echo "----------"
echo "ansible --version"
ansible --version

echo "----------"
echo "terraform version"
terraform version

echo "----------"
echo "packer version"
packer version

