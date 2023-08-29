import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_airbnb/structure/bloc/home_settings_bloc.dart';
import 'package:my_airbnb/ui/theme/app_theme.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeSettingsBloc, HomeSettingsState>(
      builder: (context, state) {
        return SizedBox(
          height: AppBar().preferredSize.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8),
                child: SizedBox(
                  width: AppBar().preferredSize.height - 8,
                  height: AppBar().preferredSize.height - 8,
                ),
              ),
              const Expanded(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Text(
                      'Flutter UI',
                      style: TextStyle(
                        fontSize: 22,
                        color: AppTheme.darkText,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 8),
                child: Container(
                  width: AppBar().preferredSize.height - 8,
                  height: AppBar().preferredSize.height - 8,
                  color: Colors.white,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius:
                          BorderRadius.circular(AppBar().preferredSize.height),
                      child: Icon(
                        state.multiple ? Icons.dashboard : Icons.view_agenda,
                        color: AppTheme.dark_grey,
                      ),
                      onTap: () {
                        // setState(() {
                        //   multiple = !multiple;
                        // });
                        BlocProvider.of<HomeSettingsBloc>(context)
                            .add(ChangeMultipleHomeEvent());
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
