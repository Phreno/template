class Singleton
  constructor:()->

    # -------------------
    # Store the reference
    # -------------------
    @instance=null

  # --------------------
  # Update the reference
  # --------------------
  init = ()->

    # Private methods and variables

    # Public object
    {

    }

  # -------------------------------------
  # Provide the instance of the singleton
  # -------------------------------------
  {
    getInstance: ()->
      instance = init() if !instance?
      return instance
  }
)
module.exports=singleton
