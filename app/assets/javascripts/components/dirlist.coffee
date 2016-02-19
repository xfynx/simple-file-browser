@Dirlist = React.createClass
  getInitialState: ->
    entries: @props.data
  getDefaultProps: ->
    entries: []
  render: ->
    React.DOM.div
      className: 'dirlist'
      React.DOM.h2
        className: 'title'
      React.DOM.div
        className: ''
        React.DOM.div null
          if @props.is_root_directory == false
            React.DOM.b
              className: ''
              React.DOM.a({href: '/goto/↑'}, '..')
          for entry in @state.entries
            React.createElement Entry, key: entry, entry: entry, is_directory: true