import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/practice_example/custom_dialog.dart';
import 'package:flutter_practice/top_widgets/adaptive_widget.dart';
import 'package:flutter_practice/top_widgets/animated_cross_fade.dart';
import 'package:flutter_practice/top_widgets/bottom_navbar.dart';
import 'package:flutter_practice/top_widgets/bottom_sheet.dart';
import 'package:flutter_practice/top_widgets/checkbox_listTile.dart';
import 'package:flutter_practice/top_widgets/choice_chip.dart';
import 'package:flutter_practice/top_widgets/date_picker.dart';
import 'package:flutter_practice/top_widgets/disable_backbutton.dart';
import 'package:flutter_practice/top_widgets/expanded_widget.dart';
import 'package:flutter_practice/top_widgets/expansion_tilelist.dart';
import 'package:flutter_practice/top_widgets/fittedbox_widget.dart';
import 'package:flutter_practice/top_widgets/flexible_widget.dart';
import 'package:flutter_practice/top_widgets/future_builder.dart';
import 'package:flutter_practice/top_widgets/drawer_widget.dart';
import 'package:flutter_practice/top_widgets/gesture_detector.dart';
import 'package:flutter_practice/top_widgets/hero_widget.dart';
import 'package:flutter_practice/top_widgets/indexed_stack.dart';
import 'package:flutter_practice/top_widgets/inkwell_widget.dart';
import 'package:flutter_practice/top_widgets/interactive_viewer.dart';
import 'package:flutter_practice/top_widgets/option_menu.dart';
import 'package:flutter_practice/top_widgets/page_view.dart';
import 'package:flutter_practice/top_widgets/range_slider.dart';
import 'package:flutter_practice/top_widgets/search_bar.dart';
import 'package:flutter_practice/top_widgets/selectable_text.dart';
import 'package:flutter_practice/top_widgets/sliverapp_bar.dart';
import 'package:flutter_practice/top_widgets/stepper_widget.dart';
import 'package:flutter_practice/top_widgets/stream_builder.dart';
import 'package:flutter_practice/top_widgets/time_picker.dart';
import 'package:flutter_practice/top_widgets/visibility.dart';
import 'package:flutter_practice/top_widgets/wrap_widget.dart';

class TopWidgetMain extends StatelessWidget {
  const TopWidgetMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Top widgets!"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(builder: (_) => const MyStepper()))),
                  child: const Text('Stepper')),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) => const MyFittedBox()))),
                  child: const Text('FittedBox')),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) => const MySearchBar()))),
                  child: const Text('SearchBar')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) => const MyAdaptiveWidget()))),
                  child: const Text('Adaptivewidget')),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) => const MyHeroWidget()))),
                  child: const Text('Herowidget')),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) => const MyStreamBuilder()))),
                  child: const Text('StreamBuilder')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) => const MyChoiceChip()))),
                  child: const Text('ChoiceChip')),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(builder: (_) => const MySliver()))),
                  child: const Text('SliverappBar')),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context)
                      .push(CupertinoPageRoute(builder: (_) => MyWrapper()))),
                  child: const Text('Wrapwidget')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(builder: (_) => const MyList()))),
                  child: const Text('ExpansionTile')),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) => const MyTimePicker()))),
                  child: const Text('Timepicker')),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(builder: (_) => MyDatePicker()))),
                  child: const Text('DatePicker')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) => const MyOptionMenu()))),
                  child: const Text('OptionMenu')),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) => const MyRangeSlider()))),
                  child: const Text('Range Slider')),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(builder: (_) => MyVisibility()))),
                  child: const Text('Visibility')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) => const MyBottomNavBar()))),
                  child: const Text('Bottom navbar')),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) => const MyPageView()))),
                  child: const Text('Pageview')),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(builder: (_) => MyBottomSheet()))),
                  child: const Text('BottomSheet')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) => const MyAnimation()))),
                  child: const Text('Fade Animation')),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) => const MyExpanded()))),
                  child: const Text('Expanded')),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(builder: (_) => MyFlexbile()))),
                  child: const Text('Flexible')),
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [ 
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) => const BackButtonDisabled()))),
                  child: const Text('BackButtonDisable')),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) => const MyFutureBuilder()))),
                  child: const Text('FutureBuilder')),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(builder: (_) => MyDrawer()))),
                  child: const Text('Drawer')),
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [ 
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) => const DialogExample()))),
                  child: const Text('Alert Dialog')),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) => const MyGestureDetector()))),
                  child: const Text('Gesture Detector')),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(builder: (_) => MyInkWell()))),
                  child: const Text('InkWell')),
            ],
          ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [ 
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) => const MyInteractiveViewer()))),
                  child: const Text('InteractiveViewer')),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) => const MyCheckBoxListTile()))),
                  child: const Text('CheckBoxListTile')),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(builder: (_) => MySelectableText()))),
                  child: const Text('SelectableText')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  style:
                  ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) =>  CustomNavigationBarDemo()))),
                  child: const Text('Index Stack')),
              ElevatedButton(
                  style:
                  ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (_) => const MyCheckBoxListTile()))),
                  child: const Text('MenuWidget')),
              ElevatedButton(
                  style:
                  ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (() => Navigator.of(context).push(
                      CupertinoPageRoute(builder: (_) => MySelectableText()))),
                  child: const Text('')),
            ],
          ),
        ],
      ),
    );
  }
}
