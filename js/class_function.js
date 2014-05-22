var Parrent;
Parrent = (function() {
  var temp;
  temp = function(name) {
    this.parent_name = name;
    return this;
  };

  temp.prototype.with_prefix = function(suffix) {
    return this.parent_name + suffix
  };

  return temp;
})();

par = new Parrent('fater')

console.log(par.with_prefix('_name'));
console.log(par.with_prefix('_class'));
console.log(par.with_prefix('_tag'));

