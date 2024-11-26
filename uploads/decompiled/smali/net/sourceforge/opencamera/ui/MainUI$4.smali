.class Lnet/sourceforge/opencamera/ui/MainUI$4;
.super Ljava/lang/Object;
.source "MainUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/MainUI;->showGUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/ui/MainUI;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/MainUI;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1453
    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getGyroSensor()Lnet/sourceforge/opencamera/GyroSensor;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/GyroSensor;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v4, 0x8

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1454
    invoke-static {v4}, Lnet/sourceforge/opencamera/ui/MainUI;->access$200(Lnet/sourceforge/opencamera/ui/MainUI;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    invoke-static {v4}, Lnet/sourceforge/opencamera/ui/MainUI;->access$300(Lnet/sourceforge/opencamera/ui/MainUI;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    if-eqz v1, :cond_3

    :cond_2
    const/16 v1, 0x8

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1455
    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->access$200(Lnet/sourceforge/opencamera/ui/MainUI;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget-object v5, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1456
    invoke-static {v5}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v5

    const v6, 0x7f0900d4

    invoke-virtual {v5, v6}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1457
    invoke-static {v6}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v6

    const v7, 0x7f0900d5

    invoke-virtual {v6, v7}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1458
    invoke-static {v7}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v7

    const v8, 0x7f0900d6

    invoke-virtual {v7, v8}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1459
    invoke-static {v8}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v8

    const v9, 0x7f09006b

    invoke-virtual {v8, v9}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1460
    invoke-static {v9}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v9

    const v10, 0x7f09006d

    invoke-virtual {v9, v10}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1461
    invoke-static {v10}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v10

    const v11, 0x7f0900fd

    invoke-virtual {v10, v11}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iget-object v11, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1462
    invoke-static {v11}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v11

    const v12, 0x7f09005e

    invoke-virtual {v11, v12}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iget-object v12, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1463
    invoke-static {v12}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v12

    const v13, 0x7f0900d1

    invoke-virtual {v12, v13}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iget-object v13, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1464
    invoke-static {v13}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v13

    const v14, 0x7f0900eb

    invoke-virtual {v13, v14}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    iget-object v14, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1465
    invoke-static {v14}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v14

    const v15, 0x7f0900ce

    invoke-virtual {v14, v15}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iget-object v15, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1466
    invoke-static {v15}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v15

    const v3, 0x7f090078

    invoke-virtual {v15, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v15, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1467
    invoke-static {v15}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v15

    const v2, 0x7f090045

    invoke-virtual {v15, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v15, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1468
    invoke-static {v15}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v15

    move-object/from16 v16, v2

    const v2, 0x7f09005d

    invoke-virtual {v15, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v15, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1469
    invoke-static {v15}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v15

    move-object/from16 v17, v2

    const v2, 0x7f090073

    invoke-virtual {v15, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v15, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1470
    invoke-static {v15}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v15

    move-object/from16 v18, v2

    const v2, 0x7f090044

    invoke-virtual {v15, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v15, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1471
    invoke-static {v15}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v15

    move-object/from16 v19, v2

    const v2, 0x7f0900a7

    invoke-virtual {v15, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v15, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1472
    invoke-static {v15}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraControllerManager()Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getNumberOfCameras()I

    move-result v15

    move-object/from16 v20, v2

    const/4 v2, 0x1

    if-le v15, v2, :cond_4

    .line 1473
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1474
    invoke-static {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->showSwitchMultiCamIcon()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1475
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1476
    :cond_5
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1477
    invoke-static {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->supportsExposureButton()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1478
    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1479
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->showExposureLockIcon()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1480
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1481
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->showWhiteBalanceLockIcon()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1482
    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1483
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->showCycleRawIcon()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1484
    invoke-virtual {v11, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1485
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->showStoreLocationIcon()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1486
    invoke-virtual {v12, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1487
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->showTextStampIcon()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1488
    invoke-virtual {v13, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1489
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->showStampIcon()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1490
    invoke-virtual {v14, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1491
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->showFocusPeakingIcon()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1492
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1493
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->showAutoLevelIcon()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v2, v16

    .line 1494
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1495
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->showCycleFlashIcon()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v2, v17

    .line 1496
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1497
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->showFaceDetectionIcon()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v2, v18

    .line 1498
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1499
    invoke-static {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->hasAudioControl()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v2, v19

    .line 1500
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1501
    invoke-static {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->access$200(Lnet/sourceforge/opencamera/ui/MainUI;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    invoke-static {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->access$300(Lnet/sourceforge/opencamera/ui/MainUI;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_12
    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1502
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->closePopup()V

    :cond_13
    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1505
    invoke-static {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v2

    const v3, 0x7f09008c

    invoke-virtual {v2, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1506
    invoke-static {v3}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MainActivity;->getBluetoothRemoteControl()Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->remoteConnected()Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x0

    .line 1509
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_14
    const/16 v3, 0x8

    .line 1513
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1515
    invoke-static {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->supportsFlash()Z

    move-result v2

    if-eqz v2, :cond_15

    move v4, v1

    :cond_15
    move-object/from16 v1, v20

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1517
    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->access$200(Lnet/sourceforge/opencamera/ui/MainUI;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->access$300(Lnet/sourceforge/opencamera/ui/MainUI;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI$4;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1518
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->layoutUI()V

    :cond_16
    return-void
.end method
