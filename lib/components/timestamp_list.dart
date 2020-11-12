import 'package:flutter/material.dart';
import 'package:monumentum/models/history_model.dart';
import 'package:monumentum/types/timestamp.dart';
import 'package:monumentum/components/timestamp_tile.dart';
import 'package:provider/provider.dart';

class TimestampList extends StatelessWidget {
  @override Widget build(BuildContext context) => Consumer<HistoryModel>(
    builder: (context, history, child) => _getListView(
      timestamps: history.timestamps
    )
  );

  Widget _getListView({ List<Timestamp> timestamps }) => ListView.builder(
    itemCount: timestamps.length,
    itemBuilder: (context, index) => TimestampTile(
      timestamp: timestamps[index],
    ),
  );
}
