import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reproduzir_filme_model.dart';
export 'reproduzir_filme_model.dart';

class ReproduzirFilmeWidget extends StatefulWidget {
  const ReproduzirFilmeWidget({Key? key}) : super(key: key);

  @override
  _ReproduzirFilmeWidgetState createState() => _ReproduzirFilmeWidgetState();
}

class _ReproduzirFilmeWidgetState extends State<ReproduzirFilmeWidget> {
  late ReproduzirFilmeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReproduzirFilmeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowVideoPlayer(
                path: 'http://bgp.cdnr1.xyz:80/movie/cXHMKw/4ZNpy5/288049.mp4',
                videoType: VideoType.network,
                autoPlay: true,
                looping: true,
                showControls: true,
                allowFullScreen: true,
                allowPlaybackSpeedMenu: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
