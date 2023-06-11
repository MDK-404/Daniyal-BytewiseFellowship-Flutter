import 'package:finaltask/utils/colors.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mobileBackgroundColor,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16)
                  .copyWith(right: 0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1662010021854-e67c538ea7a9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=1000&q=60",
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'username',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )),
                  IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => Dialog(
                                  child: ListView(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 16,
                                      ),
                                      shrinkWrap: true,
                                      children: [
                                        'Delete',
                                      ].map((e) => InkWell(
                                            onTap: () {},
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 12,
                                                      horizontal: 16),
                                              child: Text(e),
                                            ),
                                      ),
                                      ).toList(),
                                  ),
                                ));
                      },
                      icon: const Icon(Icons.more_vert)
                  ),
                ],
              ),
          ),
          // Image Section
          SizedBox(
            height: MediaQuery.of(context).size.height*0.35,
            width: double.infinity,
            child: Image.network("https://images.unsplash.com/photo-1662010021854-e67c538ea7a9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=1000&q=60",
         fit: BoxFit.cover,
            )
          ),
          
          // Like Comment Section
          Row(
            children: [
              IconButton(onPressed:  (){}, icon: const Icon(
                Icons.favorite,
                color: Colors.red,
              )
              ),
              IconButton(onPressed:  (){}, icon: const Icon(
                Icons.comment_outlined,

              )
              ),
              IconButton(onPressed:  (){}, icon: const Icon(
                Icons.send,
              )
              ),
              IconButton(onPressed:  (){}, icon: const Icon(
                Icons.bookmark_border,
              )
              ),
            ],
          )
        ],
      ),
    );
  }
}
