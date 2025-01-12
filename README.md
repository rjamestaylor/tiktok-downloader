# tiktok-downloader
Download videos listed in Tiktok user data file

This is made for MacOS users, which I am. 

## Step 1: Initiate Request to Download TikTok data

Specify "json" when prompted, not TXT:

![CleanShot 2025-01-11 at 19 30 05@2x](https://github.com/user-attachments/assets/16b93120-3627-46c9-ba1a-f6320aee843e)


## Step 2: Download the JSON

Once the download is ready, you can request the download:

![CleanShot 2025-01-11 at 19 08 19@2x](https://github.com/user-attachments/assets/668ca0ed-7437-404b-9268-fd68d3d9cb8c)


Choose "json" option and download to a place you'll remember, like:
`~/Downloads/user_data_tiktok.json`

## Step 3: Create a directory with private and public sub directories

`mkdir ~/tiktoks && mkdir -p ~/tiktoks/{public,private} && cd ~/tiktoks`

## Step 4: Copy dltt.sh script

If you haven't cloned this repo, grab the `dltt.sh` script and copy it to your Mac.

## Step 5: Execute the script and let it run

`sh ./dltt.sh`



