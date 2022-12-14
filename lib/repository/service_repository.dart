import 'dart:developer';

import 'package:meta/meta.dart';
import '../data_provider/Service_data.dart';

class ServiceRepository {
  final ServiceDataProvider dataProvider;

  ServiceRepository({required this.dataProvider})
      : assert(dataProvider != null);

  Future<Service> createService(Service service) async {
    return await dataProvider.createService(service);
  }

  Future<List<Service>> getServices() async {
    print("This is the getService method");
    return await dataProvider.getServices();
  }

  Future<void> updateService(Service service) async {
    await dataProvider.updateService(service);
  }

  Future<void> deleteService(int  id) async {
    await dataProvider.deleteService(id);
  }
}