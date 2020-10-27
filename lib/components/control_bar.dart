import 'package:flutter/material.dart';
import 'package:monumentum/models/locale_model.dart';
import 'package:monumentum/types/event_handler.dart';
import 'package:provider/provider.dart';

class ControlBar extends StatelessWidget {
  ControlBar({
    @required this.onBegin,
    @required this.onEnd,
    @required this.onFinalize,
    @required this.isDayInProgress,
  });

  final bool isDayInProgress;
  final EventHandler onBegin;
  final EventHandler onEnd;
  final EventHandler onFinalize;

  @override
  Widget build(BuildContext context) => BottomAppBar(
    color: Colors.teal[100],
    child: _renderButtonList(
      timeButton: !isDayInProgress
        ? _getBeginButton()
        : _getEndButton(),
      finalizeButton: _getFinalizeButton(),
    )
  );

  Widget _getBeginButton() => _renderIconButton(
    tooltip: 'tooltip-button-begin',
    icon: Icon(Icons.play_arrow),
    onPressed: onBegin,
  );

  Widget _getEndButton() => _renderIconButton(
    tooltip: 'tooltip-button-end',
    icon: Icon(Icons.stop),
    onPressed: onEnd,
  );

  Widget _getFinalizeButton() => _renderIconButton(
    tooltip: 'tooltip-button-finalize',
    icon: Icon(Icons.check),
    onPressed: onFinalize
  );

  Widget _renderIconButton({ String tooltip, Icon icon, EventHandler onPressed }) => Consumer<LocaleModel>(
    builder: (context, locale, child) => IconButton(
      tooltip: locale.strings[tooltip],
      icon: icon,
      onPressed: onPressed,
    )
  );
}

Widget _renderButtonList({ Widget timeButton, Widget finalizeButton, }) => Row(
  children: [
    Spacer(flex: 2),
    timeButton,
    Spacer(flex: 1),
    finalizeButton,
    Spacer(flex: 2),
  ],
);
