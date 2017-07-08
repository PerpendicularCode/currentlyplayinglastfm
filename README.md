# currentlyplayinglastfm
Bash script to show the currently playing track in a console terminal from last.fm

This assumes you have already got a Last.FM account, and have setup Spotify and/or any other music player you are using to scrobble to Last.FM.

## Use

Get Last.FM API Key

1. Log in to Last.FM and go here:
    https://www.last.fm/api/account/create

You don't need to fill in the Callback URL field. Put application homepage as your website if you have one. Write down the API key that is generated.

2. Install pq and curl

Make sure pq and curl are running in a bash shell, e.g.
<pre>sudo apt-get install pq curl</pre>

3. Edit your ~/.bashrc or otherwise make sure the following variables are set prior to running the script:

<pre>export LASTFM_API_KEY="your key you generated earlier"
export LASTFM_USER="your username"</pre>

4. Source ~/.bashrc or otherwise make sure those variables are set!
<pre>. ~/.bashrc</pre>

5. Clone this repo and run the script:

<pre>git clone git@github.com:/wordswords/currentlyplayinglastfm
cd currentlyplayinglastfm
./getstatus.sh</pre>
    
