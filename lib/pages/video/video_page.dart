import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_clone/data.dart';
import 'package:youtube_clone/pages/bottomNavigation/nav_page.dart';
import 'package:youtube_clone/widgets/widget.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  ScrollController? _scrollController;

  @override
  // ignore: must_call_super
  void initState() {
    // TODO: implement initState
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: CustomScrollView(
          controller: _scrollController,
          shrinkWrap: true,
          slivers: [
            SliverToBoxAdapter(
              child: Consumer(
                builder: (cotext, watch, _) {
                  final selectedVideo = watch(selectedvideoProvider).state;
                  return SafeArea(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.network(
                              selectedVideo!.thumbnailUrl,
                              height: 220.0,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.keyboard_arrow_down),
                            ),
                          ],
                        ),
                        const LinearProgressIndicator(
                          value: 0.8,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                        ),
                        VideoInfo(
                          video: selectedVideo,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final video = suggestedVideos[index];
                return VideoCard(
                  video: suggestedVideos[index],
                  hasPadding: true,
                  onTap: () => _scrollController!.animateTo(
                    0,
                    duration: Duration(
                      milliseconds: 200,
                    ),
                    curve: Curves.easeIn,
                  ),
                );
              }, childCount: suggestedVideos.length),
            )
          ],
        ),
      ),
    );
  }
}
