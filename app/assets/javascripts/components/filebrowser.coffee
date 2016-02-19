@Filebrowser = React.createClass
  getInitialState: ->
    pwd: @props.pwd
    files: @props.files
    dirs: @props.dirs
  getDefaultProps: ->
    pwd: ''
    files: []
    dirs: []
  render: ->
    React.DOM.div
      className: 'filebrowser'
      React.DOM.h2
        className: 'title'
        @state.pwd
      React.createElement Dirlist, data: @state.dirs, is_root_directory: @props.is_root_directory
      React.createElement Filelist, data: @state.files