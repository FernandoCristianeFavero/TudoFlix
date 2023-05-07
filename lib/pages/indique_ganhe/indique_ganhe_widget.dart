import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'indique_ganhe_model.dart';
export 'indique_ganhe_model.dart';

class IndiqueGanheWidget extends StatefulWidget {
  const IndiqueGanheWidget({Key? key}) : super(key: key);

  @override
  _IndiqueGanheWidgetState createState() => _IndiqueGanheWidgetState();
}

class _IndiqueGanheWidgetState extends State<IndiqueGanheWidget> {
  late IndiqueGanheModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndiqueGanheModel());

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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            'MinhaConta',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                              ),
                            },
                          );
                        },
                        child: Container(
                          width: 45.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).accent1,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.black,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/money.png',
                      width: 150.0,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 25.0, 15.0, 0.0),
                        child: Text(
                          'O programa de \"indique e ganhe\" é uma ótima oportunidade para ganhar dinheiro extra indicando amigos e conhecidos para conhecer nosso app. Funciona da seguinte forma: a cada indicação bem-sucedida, você ganha R\$ 5,00. Mas não para por aí, se o seu indicado renovar no mês seguinte, você ganha novamente!\n\nNo entanto, é importante lembrar que para ter direito à comissão, você deve estar em dia com o pagamento de seu acesso. Além disso, é fundamental que o seu indicado faça o pagamento de seu acesso dentro do prazo estabelecido para que a renovação seja considerada bem-sucedida.\n\nPortanto, se você deseja ganhar dinheiro extra indicando amigos e conhecidos para conhecer nosso app, fique atento às regras do programa de \"indique e ganhe\". Com um pouco de dedicação e atenção aos detalhes, você pode aumentar sua renda mensal sem sair de casa',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Switch(
                        value: _model.switchValue ??= false,
                        onChanged: (newValue) async {
                          setState(() => _model.switchValue = newValue!);
                        },
                        activeColor: FlutterFlowTheme.of(context).secondary,
                        inactiveTrackColor: FlutterFlowTheme.of(context).error,
                      ),
                      Text(
                        'Termos e condições',
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).info,
                              fontStyle: FontStyle.italic,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          if (_model.switchValue == true) {
                            final usuarioUpdateData1 = createUsuarioRecordData(
                              revenda: true,
                            );
                            await currentUserReference!
                                .update(usuarioUpdateData1);
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Indique e Ganhe'),
                                  content: Text(
                                      'Parabéns por fazer parte do programa de \"indique e ganhe\"! Você acaba de dar um grande passo para aumentar sua renda mensal e aproveitar uma ótima oportunidade de ganhar dinheiro extra sem sair de casa.  Agora é só começar a indicar e aproveitar essa oportunidade incrível! Parabéns novamente e sucesso em suas indicações!'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );

                            final usuarioUpdateData2 = createUsuarioRecordData(
                              codRevenda: random_data
                                  .randomInteger(10000, 99999)
                                  .toString(),
                            );
                            await currentUserReference!
                                .update(usuarioUpdateData2);

                            context.pushNamed(
                              'Afiliado',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                ),
                              },
                            );
                          } else {
                            var confirmDialogResponse = await showDialog<bool>(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Indique e Ganhe'),
                                      content: Text(
                                          'Você, precisa aceitar os termos e condições, para participar.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, false),
                                          child: Text('Cancelar'),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, true),
                                          child: Text('OK'),
                                        ),
                                      ],
                                    );
                                  },
                                ) ??
                                false;
                            if (confirmDialogResponse) {
                              context.pushNamed(
                                'IndiqueGanhe',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            } else {
                              context.pushNamed('MinhaConta');
                            }
                          }
                        },
                        text: 'Continuar',
                        options: FFButtonOptions(
                          width: 300.0,
                          height: 50.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
