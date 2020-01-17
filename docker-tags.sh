#!/bin/bash
#credits: Peter Mortensen and Javier Buzzi
#https://stackoverflow.com/questions/24481564/how-can-i-find-a-docker-image-with-a-specific-tag-in-docker-registry-on-the-dock/48931329#48931329

name=$1
  # Initial URL
  url=https://registry.hub.docker.com/v2/repositories/library/$name/tags/?page_size=100
  (
    # Keep looping until the variable URL is empty
    while [ ! -z $url ]; do
      # Every iteration of the loop prints out a single dot to show progress as it got through all the pages (this is inline dot)
      >&2 echo -n "."
      # Curl the URL and pipe the output to Python. Python will parse the JSON and print the very first line as the next URL (it will leave it blank if there are no more pages)
      # then continue to loop over the results extracting only the name; all will be stored in a variable called content
      content=$(curl -s $url | python -c 'import sys, json; data = json.load(sys.stdin); print(data.get("next", "") or ""); print("\n".join([x["name"] for x in data["results"]]))')
      # Let's get the first line of content which contains the next URL for the loop to continue
      url=$(echo "$content" | head -n 1)
      # Print the content without the first line (yes +2 is counter intuitive)
      echo "$content" | tail -n +2
    done;
    # Finally break the line of dots
    >&2 echo
  ) | cut -d '-' -f 1 | sort --version-sort | uniq;
