# golden-ami
golden-ami using Packer

* Packer is tool provided by hashicorp, used to package the machine images programatically

***How to use***
- build.sh file to build the image
    - Arguments to be used for script to be executed
        ```
        region=$1
        app=$2
        version=$3
        ```

* Make sure you have packer installed on your system and aws access configured 

* execute shell script like this
```sh build.sh <region> <appname> <version>```


