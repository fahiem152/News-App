import 'package:flutter/material.dart';
import 'package:news_app/common/style.dart';
import 'package:news_app/data/model/article.dart';
import 'package:news_app/ui/detail_page.dart';

class CardArticle extends StatelessWidget {
  const CardArticle({super.key, required this.article});
  final Article article;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: primaryColor,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        leading: Hero(
          tag: article.urlToImage!,
          child: Image.network(
            article.urlToImage!,
            width: 100,
          ),
        ),
        title: Text(
          article.title,
        ),
        subtitle: Text(article.author ?? ""),
        onTap: () => Navigator.pushNamed(
          context,
          ArticleDetailPage.routeName,
          arguments: article,
        ),
      ),
    );
  }
}
