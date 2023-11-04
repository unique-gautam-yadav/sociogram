import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/users.dart';

class PostCard extends StatefulWidget {
  const PostCard({
    super.key,
    required this.m,
  });

  final PostModel m;

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  // ValueListenable expandListener = ValueListenable();
  ValueNotifier<bool> expandListener = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 30),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor.withOpacity(.4),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              widget.m.image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 70,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.heart_fill,
                    color: Colors.orange.shade700,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.chat_bubble_2,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                    size: 30,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.bookmark_fill),
                )
              ],
            ),
          ),
          ValueListenableBuilder<bool>(
              valueListenable: expandListener,
              builder: (context, value, _) {
                return GestureDetector(
                  onTap: widget.m.caption.length > 50
                      ? () {
                          expandListener.value = !value;
                          debugPrint("Hello THere");
                          debugPrint(
                              "${widget.m.caption.length > 50}  && $value");
                        }
                      : null,
                  child: Text.rich(
                    TextSpan(
                      text: widget.m.user.userName,
                      children: [
                        TextSpan(
                          text: widget.m.caption.length > 50 && !value
                              ? " ${widget.m.caption.substring(0, 50)}"
                              : " ${widget.m.caption}",
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        widget.m.caption.length > 50
                            ? TextSpan(
                                text: value ? "" : " ...more",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w200,
                                ),
                              )
                            : const TextSpan(),
                      ],
                      style: const TextStyle(fontWeight: FontWeight.w900),
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }

  @override
  void dispose() {
    expandListener.dispose();
    super.dispose();
  }
}
