1. There are two (more in future) sub-apps in this app. Build a sub-app controller, and then make all controllers that 
   belong to the same sub-app extend it.  
   This way we can define some common behaviours for that app.
  
2. Currently the params passed in from views have the namespace as prefix, like `{ depot_product: { name: "iPhone" } }`. 
   That creates inconvenience in controller. Find a way to get around it.
  
3. \[DONE\] ~~Nullify the attribute if it's blank. This article has a good way: https://solidfoundationwebdev.com/blog/posts/make-values-nil-if-blank-data-normalization-in-rails~~
