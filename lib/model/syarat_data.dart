class SyaratBerkendaraData {
  String id;
  String title;
  String imageUrl;
  String content;
  String itemContent;

  SyaratBerkendaraData({
    this.id,
    this.title,
    this.imageUrl,
    this.content,
    this.itemContent,
  });

  SyaratBerkendaraData.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    imageUrl = json["image"];
    content = json["content"];
    itemContent = json["itemsContent"];
  }
}
