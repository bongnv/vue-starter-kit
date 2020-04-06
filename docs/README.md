# vue-starter-kit

`vue-starter-kit` is a personal starter kit for working with vue. It's created via `vue-cli` with:

* vue-router
* vuex
* eslint & prettier
* sass
* vuetify

## Guide

### Codes Scaffolding
For speedy development, codes can be generated via `yarn new`. Some common options are supported at the moment:

#### Components
To generate a Vue Component:
```
yarn new component <component name>
```

#### Views
To generate a view:
```
yarn new view <view name>
```

#### Layouts
To generate a layout:
```
yarn new layout <layout name>
```

#### Utility Functions
To generate utility functions:
```
yarn new util <some function name>
```

#### Modules
To generate Vuex modules:
```
yarn new module <some module name>
```
The module need to be registered to Vuex store in `store/index.js`:
```
import sample from "./modules/sample";

Vue.use(Vuex);

export default new Vuex.Store({
  modules: {
    ...other modules
    sample,
  }
});
```