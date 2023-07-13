part of 'picking_bloc.dart';

@immutable
abstract class PickingEvent {}

class PickingItemInitial extends PickingEvent{
  PickingItemInitial();
}
class PickingItemAdd extends PickingEvent{
  final String id;
  final String storeId;
  PickingItemAdd(this.id,this.storeId);
}
class PickingItemDelete extends PickingEvent{
  final CartonModel cartonObj;
  PickingItemDelete(this.cartonObj);
}
class PickingItemSubmit extends PickingEvent{
  final List<CartonModel> validatedCartonsList;
  final String userId;
  final Warehouse warehouse;
  PickingItemSubmit(this.validatedCartonsList,this.userId,this.warehouse);
}

class PickingItemEnteredId extends PickingEvent{
  String bolCartonId;
  PickingItemEnteredId(this.bolCartonId);
}
class PickingItemResetFailureState extends PickingEvent{
  PickingItemResetFailureState();
}
class PickingItemResetAllState extends PickingEvent{
  PickingItemResetAllState();
}