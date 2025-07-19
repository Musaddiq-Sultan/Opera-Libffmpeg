# Opera-Libffmpeg

**libffmpeg.so** file for Chromium and Opera. Fixes Opera browser video playback error on **Linux**.

## Important

~~Before proceeding into the method, make sure you backup your original `libffmpeg.so` file. In case something goes wrong, you'll be able to get things back to normal.~~

**Note:** The script now automatically creates a backup and restores it when reversing changes.

## Easy Method

### Commands

```bash
git clone https://github.com/Musaddiq-Sultan/Opera-Fix
```
```bash
cd Opera-Fix/
```
```bash
bash opera-fix.sh
```

## Custom Method

### Commands
Clone the repository
```bash
git clone https://github.com/Musaddiq-Sultan/Opera-Fix
```
Enter Opera-Fix directory
```bash
cd Opera-Fix/
```
Copy libffmpeg.so to Opera directory
```bash
sudo cp libffmpeg.so /usr/lib/x86_64-linux-gnu/opera/
```
