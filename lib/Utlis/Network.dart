class Url {
 static String baseURL = "http://35.73.30.144:2008/api/v1";
 static String CreateProduct = "$baseURL/CreateProduct";
 static String readProduct = '$baseURL/ReadProduct';
 static String UpdateProduct(String id)=> "$baseURL/UpdateProduct/${id}";
 static String deleteProduct (String id)=> "$baseURL/DeleteProduct/${id}";
}


