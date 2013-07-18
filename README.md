# epf_skeleton

**epf_skeleton** is a simple nested parent/child client/server CRUD example illustrating best practice usage of epf as a replacement for ember-data. It has equivalent functionality to the [ember_data_example](https://github.com/dgeb/ember_data_example), so it can serve as a side by side comparison of the epf way vs the ember-data way.

Epf is a functional alternative to [ember-data](https://github.com/emberjs/data) and is used in production at [GroupTalent](https://grouptalent.com) with dozens of inter-related models. It's greatest strength is robustness. It provides a truly viable data foundation for building real world inter-related model applications and it offers a relatively easy migration path for applications currently using ember-data. See [epf](https://github.com/GroupTalent/epf) for more info.

## Getting Started

By default edit mode is turned off and you can only add new objects. Turn it on by clicking the edit icon on the right side of the Foos Header.

### The Epf way

**epf_skeleton** is a practical complement to the existing epf documentation. It primarily shows:
* how simple and solid epf makes handling parent/child relationships
* how to use and when to call session vs child session
* how to use child sessions in new and edit situations
* how to use a returned promise as an ember property update alternative
* how child sessions eliminate the need to handle deactivate events
* how clean server controllers can be using epf
* how to load an array of models and update a list using epf

### Other useful ember technique examples

* a simple toggling edit mode  (foos.hbs, foo_in_list.hbs )
* one list selection highlighting technique (FoosController, FooIndexRoute)
* integrating a bootstrap date picker (BarsNewController)
* simple property based date formatting (foo.coffee)
* using ember views to encapsulate a group of list elements (FooInListView, foo_in_list.hbs)
* using renderTemplate to explicitly place an template (BarIndexRoute)
* shared template usage for new and edit fields  (foo.index.hbs)
* setting a temp variable to use after 'then' call (FoosNewController)
* using needs: to access data another controller (FoosNewController)
* using outlets for in-place editing
* using bootstrap grid to organize app layout with nested elements
* a file naming organizing structure to support an expandable app

## Gotchas For ember-data converters
* The store.coffee file has been removed because it isn't needed by Epf
* There is no rollback function - the same functionality is provided by child sessions
* List functions that don't refer to inter-related models need an explicit pushObject
* Instead of ember-data's find method you can use session.query

#### For example: Epf uses:
```
  @session.query App.Foo
```
#### while ember-data uses:
```
  App.Foo.find()
```





