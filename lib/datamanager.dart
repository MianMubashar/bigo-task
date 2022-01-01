class DataManager{
  int id;
  String price;
  String location;

  DataManagerForImage? dataManagerForImage;
  DataManager({required this.location,required this.price,required this.id});
  
  factory DataManager.fromJson(Map<String , dynamic> data){
    var img=data['image'];
    DataManagerForImage dataManagerForImage2=DataManagerForImage.fromJson(img);
    return DataManager(location: data['location'], price: data['price'], id: data['id']);
  }
}
class DataManagerForImage{
  int id;
  String name;
  DataManagerForImage({required this.id,required this.name});
  factory DataManagerForImage.fromJson(Map<String,dynamic> data){
    return DataManagerForImage(id: data['id'], name: data['name']);
  }
}