var fixtures = {
  foo: {}
};

(function() {
  var t, o = {}.hasOwnProperty, r = function(t, r) {
    function n() {
      this.constructor = t;
    }
    for (var e in r) o.call(r, e) && (t[e] = r[e]);
    return n.prototype = r.prototype, t.prototype = new n(), t.__super__ = r.prototype, 
    t;
  };
  app.foo.B = function() {
    function t() {}
    return t.prototype.bye = function(t) {
      return "bye " + t;
    }, t;
  }(), app.Foo = function() {
    function t() {}
    return t.prototype.hello = function(t) {
      return "hello " + t;
    }, t;
  }(), app.foo.A = function(o) {
    function n() {
      return t = n.__super__.constructor.apply(this, arguments);
    }
    return r(n, o), n.prototype.bye = function(t) {
      var o;
      try {
        return n.__super__.bye.apply(this, arguments).bye(t);
      } catch (r) {
        return o = r, "ups";
      }
    }, n;
  }(app.foo.B);
}).call(this);