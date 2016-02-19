@Entry = React.createClass
  render: ->
    React.DOM.div
      className: ''
      if @props.is_directory == true
        React.DOM.p null,
          React.DOM.a {href: '/goto/' + @props.entry}, @props.entry
      else
        React.DOM.p null, @props.entry