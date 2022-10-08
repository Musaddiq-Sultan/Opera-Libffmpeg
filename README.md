# Opera-Libffmpeg
<strong>libffmpeg.so</strong> file for Chromium and Opera, Fix Opera browser video playback error in <strong>Linux</strong>.

<h1>Important</h1>
<p>Before proceeding into the method make sure you backup your original <strong>libffmpeg.so</strong> file, in case if something goes wrong you'll be able to get things back to normal.<br><b>Command for backing up:</b><br><b>$</b> <code>sudo cp /usr/lib/x86_64-linux-gnu/opera/libffmpeg.so ~/</code><br><b>Command for recovery:</b><br><b>$</b> <code>sudo cp ~/libffmpeg.so /usr/lib/x86_64-linux-gnu/opera/libffmpeg.so</code></p>
<h1>Easy Method</h1>
<h2>Commands</h2>
<p>
  <b>$</b> <code>git clone https://github.com/Musaddiq-Sultan/Opera-Fix</code>
  <br><b>$</b> <code>cd Opera-Fix/</code>
  <br><b>$</b> <code>./opera-fix</code>
</p>

<h1>Custom Method</h1>
<h2>Commands</h2>
<p>
  <b>$</b> <code>git clone https://github.com/Musaddiq-Sultan/Opera-Fix</code><br>(<i>Clone the repository</i>)
  <br><b>$</b> <code>cd Opera-Fix/</code><br>(<i>Enter Opera-Fix directory</i>)
  <br><b>$</b> <code>sudo cp libffmpeg.so /usr/lib/x86_64-linux-gnu/opera/</code><br>(<i>Copy libffmpeg.so to /usr/lib/x86_64-linux-gnu/opera/</i>)
</p>
