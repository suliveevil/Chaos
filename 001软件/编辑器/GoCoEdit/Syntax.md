# GoCoEdit Syntax

json 类文件，扩展名：gcemode


```json
{
  "extends" : "javascript",
  "ext" : ["jsx","myextension"],
  "tokenizer": [
    {
      "state": "start",
      "parse": [
        "token": "comment",
        "regex": "\\/\\*",
        "stateAfterMatch": "comment"
      ]
    },
    {
      "state": "comment",
      "parse": [
      ...
      ]
    }
  ],
  "dash_docsets": "jsx,myextension",
  "symbol_search": {
    "regex": [
      "^function.*"
    ]
  }
}
```


## name/extends

## ext

## dash_docsets

## tokenizer

### state

### parse

#### token

#### regex


## 参考

https://gocoedit.app/docs/custommodes