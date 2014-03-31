jsonadditions
=============

JSON useful categories

```objc
NSArray *array = [NSArray arrayWithBundleJSONFilename:@"filename.json"];
NSDictionary *dict = [NSDictionary dictionaryWithBundleJSONFilename:@"filename.json"];

NSString *jsonString = array.jsonString;
NSString *jsonString = array.jsonStringPrettyPrinted;

NSString *jsonString = dict.jsonString;
NSString *jsonString = dict.jsonStringPrettyPrinted;
```
