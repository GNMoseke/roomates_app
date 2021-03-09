class Task
{
  String _name;
  bool _complete = false;

  Task(this._name);

  getName() => this._name;
  setName(name) => this._name = name;

  isComplete() => this._complete;
  setComplete(complete) => this._complete = complete;
}