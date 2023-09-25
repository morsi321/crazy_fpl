import 'package:crazy_fpl/core/widget/background_image.dart';
import 'package:crazy_fpl/feauters/main%20screen/presentation/view%20model/org_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widget/dailog_error.dart';
import '../../../../../core/widget/dailog_loading.dart';

class MainScreenViewBody extends StatefulWidget {
  const MainScreenViewBody({super.key});

  @override
  State<MainScreenViewBody> createState() => _MainScreenViewBodyState();
}

class _MainScreenViewBodyState extends State<MainScreenViewBody> {
  @override
  void initState() {
    context.read<OrgCubit>().getAllOrgs();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final orgCubit = context.read<OrgCubit>();
    return BackgroundImage(
      child: BlocConsumer<OrgCubit, OrgState>(
        builder: (context, state) {
          if (state is GetAllOrgsLoading) {
            return const Center(
              child: LoadingWidget(),
            );
          }

          return ListView(
              children: orgCubit.widgetsOrg.isNotEmpty
                  ? orgCubit.widgetsOrg
                  : const [
                      SizedBox()
                    ]);
        },
        listener: (BuildContext context, OrgState state) {
          if (state is FailureGetAllOrgs) {
            dialogCustom(context, "حدث خطاء غير متوقع برجاء محاولة مره اخري",
                () => orgCubit.getAllOrgs());
          }
        },
      ),
    );
  }
}
