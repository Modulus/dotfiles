#!/bin/bash
echo "This will install helm 3 sidelong helm 2, do you want to continue? [Yes/No]"
read cont

if [ $(echo "$cont" | tr "[:upper:]" "[:lower:]") == "yes" ]; then
	echo "Running install script"
	checksum_url="https://get.helm.sh/helm-v3.0.0-darwin-amd64.tar.gz.sha256"
	helm_url="https://get.helm.sh/helm-v3.0.0-darwin-amd64.tar.gz"
	echo "Dowloading checksum from: $checksum_url"
	curl -LO $checksum_url
	echo "Downloading tar.gz archive from: $helm_url"
	curl -LO $helm_url

	unzip_folder="darwin-amd64"

#	IFS='/' read -ra parts <<< "$helm_url"
	helm_file_name=$(echo $helm_url | cut -d/ -f 4)

	actual_checksum=$(shasum -a 256 $helm_file_name)
	echo "Validating checksum for: $helm_file_name"
	echo "Checksum is: $actual_checksum"

	checksum_file=$(echo $checksum_url | cut -d/ -f 4)
	echo "Checksum file: $checksum_file"

	expected_checksum=$(cat $checksum_file)
	
	echo "Expected checksum is: $expected_checksum"

	echo "$actual_checksum == $expected_checksum"
	if [[ $actual_checksum == *"$expected_checksum"* ]]; then
		echo "Valid checksums, unpacking and linking"
		tar -xvzf $helm_file_name
		chmod +x "$unzip_folder/helm"
		cp "$unzip_folder/helm" ~/bin/helm3/helm
		ln -sf ~/bin/helm3/helm /usr/local/bin/helm3
	
	else
		echo "Failed checksum verification aborting!"
		exit 1
	fi	

#	echo "Checking shasum of file: ${filename[-1]}"

#	actual_checksum=$(cat )

else
	echo "Exiting"
	exit 0
fi
