



[al3rez/ch](https://github.com/al3rez/ch): Super fast [[Alfred Workflow]] to search through [[Google Chrome]] history 🕵️‍♀️

```shell
cp -f ~/Library/Application\ Support/Google/Chrome/Default/History /tmp/ch
sqlite3 /tmp/ch "select json_object('items', json_group_array(json_object('quicklookurl', url, 'uid', title, 'title', title, 'arg', url))) as json_result from (SELECT url, title, visit_count FROM urls WHERE title LIKE '%{query}%' ORDER BY visit_count)"

```

## Misc

[[sh - Safari History Fuzzy Search]]



[tru2dagame/alfred-switch-chrome-profiles](https://github.com/tru2dagame/alfred-switch-chrome-profiles): Alfred workflow - use Apple Script to open Chrome browser profiles without opening a new window every time.






