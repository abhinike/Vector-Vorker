



import 'package:flutter/cupertino.dart';

import '../Model/Worker.dart';

class WorkerDataProvider extends ChangeNotifier{

   final List<Worker> _workers = [
     Worker("Adam", "https://images.unsplash.com/photo-1621905251918-48416bd8575a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80", "George", "9987858485", "adam11"),
     Worker("Max", "https://plus.unsplash.com/premium_photo-1663126925338-425ae633d5a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80", "Phillip", "9787858485", "Max09"),
     Worker("Carslen", "https://images.unsplash.com/photo-1646640381839-02748ae8ddf0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80", "Magnus", "7988804392", "MagCar5"),
   ];
  
  List<Worker> get workers => _workers;
  
  
  Future<List<Worker>> getAllWorkers() async {
    
    
    
    return _workers;
    
  }

  
  
  

  addWorker(Worker worker){
    _workers.add(worker);
    notifyListeners();
  }

  removeWorker(String username){
    final index = _workers.indexWhere((element) => element.username == username);
    _workers.removeAt(index);
    notifyListeners();
  }
  
  
}