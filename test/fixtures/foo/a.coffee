#<< fixtures/foo/b

class app.foo.A extends app.foo.B
  bye: (name) ->
    try
      return super.bye(name)
    catch error
      return "ups"