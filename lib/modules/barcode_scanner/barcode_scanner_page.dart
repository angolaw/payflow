import 'package:flutter/material.dart';
import 'package:payflow/modules/barcode_scanner/barcode_scanner_controller.dart';
import 'package:payflow/modules/barcode_scanner/barcode_scanner_status.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:payflow/shared/widgets/divider/divider.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';
import 'package:payflow/shared/widgets/set_labels_button/set_labels_buttons.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  final BarcodeScannerController controller = new BarcodeScannerController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getAvailableCameras();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return BottomSheetWidget(
    //   title: "Não foi possível identificar um código de barras",
    //   subtitle: "Tente novamente ou digite o código do boleto",
    //   primaryLabel: "Escanear novamente",
    //   primaryOnPressed: () {},
    //   secondaryLabel: "Digitar código",
    //   secondaryOnPressed: () {},
    // );
    return SafeArea(
      top: true,
      left: true,
      right: true,
      bottom: true,
      child: Stack(
        children: [
          //call camera
          ValueListenableBuilder<BarcodeScannerStatus>(
              valueListenable: controller.statusNotifier,
              builder: (_, status, __) {
                if (status.showCamera) {
                  return Container(
                    child: status.cameraController!.buildPreview(),
                  );
                } else {
                  return Container();
                }
              }),
          RotatedBox(
            quarterTurns: 1,
            child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  backgroundColor: Colors.black,
                  centerTitle: true,
                  title: Text(
                    "Escaneie o código de barras do boleto",
                    style: TextStyles.buttonBackground,
                  ),
                  leading: BackButton(
                    color: AppColors.background,
                  ),
                ),
                body: Column(children: [
                  Expanded(
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                ]),
                bottomNavigationBar: SetLabelsButton(
                  primaryLabel: "Inserir código do boleto",
                  primaryOnPressed: () {},
                  secondaryLabel: "Adicionar da galeria",
                  secondaryOnPressed: () {},
                )),
          ),
        ],
      ),
    );
  }
}
