
abstract class CounterStates {}

class CounterInitialState extends CounterStates{

}

class ConterPlusState extends CounterStates
{
  final int counter;

  ConterPlusState(this.counter);
}

class ConterMinusState extends CounterStates
{
  final int counter;

  ConterMinusState(this.counter);

}