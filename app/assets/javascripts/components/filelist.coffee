@Filelist = React.createClass
  getInitialState: ->
    entries: @props.data
  getDefaultProps: ->
    entries: []
  render: ->
    React.DOM.div
      className: 'filelist'
      React.DOM.h2
        className: 'title'
      React.DOM.div
        className: ''
        React.DOM.div null,
          for entry in @state.entries
            React.createElement Entry, key: entry, entry: entry, is_directory: false