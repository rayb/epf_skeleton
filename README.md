# epf_skeleton

(epf_skeleton) is a simple nested parent/child client/server CRUD example illustrating best practice usage of epf as a replacement for ember-data. It has equivalent functionality to the ember_data_example github project, so it can serve as a side by side comparison of the epf-way vs the ember-data way.

Epf is a functional alternative to [ember-data](https://github.com/emberjs/data) and is used in production at [GroupTalent](https://grouptalent.com) with dozens of inter-related models.

Epf's greatest strength is robustness. It provides a truly viable data foundation for building real world inter-related model applications and it offers a relatively easy migration path for applications currently using ember-data.

See [ember-data](https://github.com/GroupTalent/epf) for more info.

(epf_skeleton) is a practical complement to the existing epf documentation. It primarily shows:
* how simple and solid epf makes handling parent/child relationships
* how to use and when to call session vs child session
* how to use child sessions in new and edit situations
* how to use a returned promise as an ember property update alternative
* how child sessions eliminate the need to handle deactivate events
* how clean (almost boilerplate) server controllers can be using epf
* how to load an array of models and update a list using epf

(epf_skeleton) also illustrates other useful ember techniques such as:
* how to toggle editing properties to offer an easy edit mode
* a simple selection highlighting technique for lists
* how to use outlets for in place editing
* how to integrate a bootstrap date picker and formatting for dates
* a practical way to organize/name files to support a growing app
* how to use ember views to encapsulate list elements
* using bootstrap grid to organize an app and its outlets
* shared template usage for new and edit fields



