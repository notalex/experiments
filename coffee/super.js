(function() {
  var Human, Person, person,
    __hasProp = Object.prototype.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  Human = (function() {

    function Human() {}

    Human.prototype.name = function() {
      return 'Marsh';
    };

    return Human;

  })();

  Person = (function(_super) {

    __extends(Person, _super);

    function Person() {
      Person.__super__.constructor.apply(this, arguments);
    }

    Person.prototype.name = function() {
      return 'Stan ' + Person.__super__.name.apply(this, arguments);
    };

    return Person;

  })(Human);

  person = new Person();

  console.log(person.name());

}).call(this);
