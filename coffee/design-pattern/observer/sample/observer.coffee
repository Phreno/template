class ObserverList
  constructor:()->
    @list=[]

class Subject
  constructor: ()->
    @observers=new ObserverList()

  addObserver:(observer)->
    @observers.list.push observer

  notify:(context)->
    console.log "subject: Observers, I'm asking you to say my name !"
    console.log ""
    @observers.list.forEach((observer)-> observer.update context)

class HelloObserver
  constructor:(@name="hello")->
  update:(context)-> console.log "#{@name}: Hello #{context.name}"

class DummyObserver
  constructor:(@name="dummy")->
  update:(context)-> console.log "#{@name}: Hum... something happened?"

class RecruitObserver
  constructor:(@name="recruit")->
  update:(context)->
    console.log "#{@name}: Sir ! Your name is #{context.name} ! Sir !"

## Routine

subject = new Subject()
context = { name: "Heisenberg" }
subject.addObserver new HelloObserver()
subject.addObserver new DummyObserver()
subject.addObserver new RecruitObserver()
subject.notify context
