# Opera-Libffmpeg
libffmpeg.so file for Chromium and Opera, Fix Opera browser video playback error on Linux.

<h1>Important</h1>
<p>Before proceeding into the method make sure you backup your original <b>libffmpeg.so</b> file, in case if something goes wrong you'll be able to get things back to normal.<br><b>Command for backing up:</b><br><b>$</b> sudo cp /usr/lib/x86_64-linux-gnu/opera/libffmpeg.so ~/<br><b>Command for recovery:</b><br><b>$</b> sudo cp ~/libffmpeg.so /usr/lib/x86_64-linux-gnu/opera/libffmpeg.so</p>
<h1>Easy Method</h1>
<h2>Commands</h2>
<p>
  <b>$</b> git clone https://github.com/Musaddiq-Sultan/Opera-Fix
  <br><b>$</b> cd Opera-Fix/
  <br><b>$</b> chmod a+x opera-fix.sh
  <br><b>$</b> ./opera-fix.sh
</p>

<h1>Custom Method</h1>
<h2>Commands</h2>
<p>
  <b>$</b> git clone https://github.com/Musaddiq-Sultan/Opera-Fix<br>(<i>Clone the repository</i>)
  <br><b>$</b> cd Opera-Fix/<br>(<i>Enter Opera-Fix folder</i>)
  <br><b>$</b> sudo cp libffmpeg.so /usr/lib/x86_64-linux-gnu/opera<br>(<i>Copy libffmpeg.so to /usr/lib/x86_64-linux-gnu/opera</i>)
</p>
