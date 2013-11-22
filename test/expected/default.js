var fixtures = {'foo':{}};

(function() {
  var _ref,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  app.foo.B = (function() {
    function B() {}

    B.prototype.bye = function(name) {
      return "bye " + name;
    };

    return B;

  })();

  app.Foo = (function() {
    function Foo() {}

    Foo.prototype.hello = function(name) {
      return "hello " + name;
    };

    return Foo;

  })();

  app.foo.A = (function(_super) {
    __extends(A, _super);

    function A() {
      _ref = A.__super__.constructor.apply(this, arguments);
      return _ref;
    }

    A.prototype.bye = function(name) {
      var error;
      try {
        return A.__super__.bye.apply(this, arguments).bye(name);
      } catch (_error) {
        error = _error;
        return "ups";
      }
    };

    return A;

  })(app.foo.B);

}).call(this);
