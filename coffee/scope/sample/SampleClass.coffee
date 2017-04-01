class Classe
  constructor:->
    @publicVar='mi estas publiko'
    privateVar='mi djica lo nu do tavla lo prenu lo jbobau'

  @atFunction2Points: -> '@function:'
  @atFunctionEqual= -> '@function='
  function2Points: -> 'function:'
  functionEqual= -> 'function='

  publicFunction: ->
    console.log @publicVar
    # mi estas publiko

    # console.log privateVar
    # ReferenceError: privateVar is not defined

    # console.log @atFunction2Points()
    # TypeError: this.atFunction2Points is not a function

    # console.log @atFunctionEqual()
    #  TypeError: this.atFunctionEqual is not a function

    # console.log funtion2Points()
    # ReferenceError: funtion2Points is not defined

    console.log functionEqual()
    # function=




################################################

classe = new Classe()

console.log classe.publicVar
# mi estas publiko

# console.log classe.privateVar
# undefined

# console.log classe.atFunction2Points()
# TypeError: classe.atFunction2Points is not a function

# console.log classe.atFunctionEqual
# undefined

console.log classe.function2Points()
# function:

# console.log classe.functionEqual()
# TypeError: classe.functionEqual is not a function

classe.publicFunction()
