Parrent = (->
  temp = (name) ->
    @name = name
    this

  temp.prototype.getName = ->
    @name

  temp.prototype.with_prefix = (suffix) ->
    @name + suffix

  temp
)()

par = new Parrent('fater')

console.log par.getName()

#console.log(par.with_prefix('_name'))
#console.log(par.with_prefix('_class'))
#console.log(par.with_prefix('_tag'))

