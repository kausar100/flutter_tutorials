import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Person {
  String name = "";
  String age = "";

  Person({required this.name, required this.age});
}

class SlidableTest extends StatefulWidget {
  const SlidableTest({super.key});

  @override
  State<SlidableTest> createState() => _SlidableTestState();
}

class _SlidableTestState extends State<SlidableTest> {
  List<Person> people = [];

  @override
  void initState() {
    super.initState();
    people = List.generate(20,
        (index) => Person(name: "person ${index + 1}", age: "${index * 2}"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RawAutocomplete Form2'),
      ),
      body: SlidableAutoCloseBehavior(
        closeWhenOpened: true, //other open previous closed
        child: ListView.builder(
          itemCount: people.length,
          itemBuilder: (context, index) {
            return Slidable(
              key: ValueKey(people[index].name),
              startActionPane: ActionPane(
                motion: const ScrollMotion(),
                dismissible: DismissiblePane(onDismissed: () {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(const SnackBar(content: Text("Delete")));
                }),
                children: [
                  SlidableAction(
                    onPressed: (_) {
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(const SnackBar(content: Text("Delete")));
                    },
                    backgroundColor: const Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
                  SlidableAction(
                    onPressed: (_) {
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(const SnackBar(content: Text("Share")));
                    },
                    backgroundColor: const Color(0xFF21B7CA),
                    foregroundColor: Colors.white,
                    icon: Icons.share,
                    label: 'Share',
                  ),
                ],
              ),
              endActionPane: ActionPane(
                motion: const StretchMotion(),
                children: [
                  SlidableAction(
                    // An action can be bigger than the others.
                    flex: 2,
                    onPressed: (_) {
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                            const SnackBar(content: Text("Archive")));
                    },
                    backgroundColor: const Color(0xFF7BC043),
                    foregroundColor: Colors.white,
                    icon: Icons.archive,
                    label: 'Archive',
                  ),
                  SlidableAction(
                    onPressed: (_) {
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(const SnackBar(content: Text("Save")));
                    },
                    backgroundColor: const Color(0xFF0392CF),
                    foregroundColor: Colors.white,
                    icon: Icons.save,
                    label: 'Save',
                  ),
                ],
              ),
              child: Builder(
                builder: (BuildContext ctx) => ListTile(
                  onTap: () {
                    final slide = Slidable.of(ctx);
                    if(slide!=null){
                      final isClosed =
                          slide.actionPaneType.value == ActionPaneType.none;
                      if (isClosed) {
                        slide.openStartActionPane();
                      }
                    }

                  },
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  title: Text(people[index].name),
                  trailing: Text(people[index].age),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
