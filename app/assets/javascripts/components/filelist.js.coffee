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
        'File list'
      React.DOM.div
        className: ''
        React.DOM.p null,
          for entry in @state.entries
            React.createElement Entry, key: entry, entry: entry