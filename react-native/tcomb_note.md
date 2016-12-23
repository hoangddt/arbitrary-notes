## Tcomb form

The onChange handler has the following signature:
(raw: any, path: Array<string | number>) => void

You can get access to a field with the getComponent(path) API:
// give focus to the name textbox
this.refs.form.getComponent('name').refs.input.focus();