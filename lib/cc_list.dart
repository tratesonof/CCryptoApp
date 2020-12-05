import 'package:flutter/material.dart';
import 'package:flutter_app/cc_bloc.dart';
import 'package:flutter_app/description_screen.dart';
import 'package:flutter_app/state_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CCList extends StatefulWidget {
  static const snackBar = SnackBar(
    content: Text('Что-то пошло не так, попробуйте еще раз'),
  );

  @override
  _CCListState createState() => _CCListState();
}

class _CCListState extends State<CCList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CC Tracker')),
      body: BlocBuilder<CCBloc, ViewState>(
        builder: (_, state) {
          return state.map(
            content: (state) => CCDataList(state),
            loading: (state) =>
                const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}

class CCDataList extends StatelessWidget {
  const CCDataList(this.state);

  final ContentState state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: state.ccData.length,
      itemBuilder: (_, position) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: InkWell(
                child: ListTile(
                  title: Text(state.ccData[position].symbol),
                  subtitle: Text(state.ccData[position].name),
                  leading: CircleAvatar(
                      child: Text(state.ccData[position].rank.toString())),
                  trailing: Text(
                      '\$${double.parse(state.ccData[position].priceUsd).toStringAsFixed(3)}'),
                ),
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DescriptionScreen(state.ccData[position])),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
