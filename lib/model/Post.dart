/// 自定义数据
class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
      title: "title1",
      author: "小强1",
      imageUrl:
          "https://api.i-top.cn/files/img/20191209/201912091602499591.jpg"),
  Post(
      title: "title2",
      author: "小强2",
      imageUrl:
          "https://api.i-top.cn/files/img/20191129/201911291153478523.jpg"),
  Post(
      title: "title3",
      author: "小强3",
      imageUrl:
          "https://api.i-top.cn/files/img/20191118/201911181557305061.png"),
];
