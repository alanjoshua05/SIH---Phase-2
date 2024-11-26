.class Lnet/sourceforge/opencamera/ui/MainUI$3;
.super Ljava/lang/Object;
.source "MainUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/MainUI;->setImmersiveMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/ui/MainUI;

.field final synthetic val$immersive_mode:Z


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/MainUI;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    iput-boolean p2, p0, Lnet/sourceforge/opencamera/ui/MainUI$3;->val$immersive_mode:Z

    .line 1320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1322
    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-boolean v2, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->val$immersive_mode:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1329
    invoke-static {v4}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v4

    const v5, 0x7f0900d4

    invoke-virtual {v4, v5}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1330
    invoke-static {v5}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v5

    const v6, 0x7f0900d5

    invoke-virtual {v5, v6}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1331
    invoke-static {v6}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v6

    const v7, 0x7f0900d6

    invoke-virtual {v6, v7}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1332
    invoke-static {v7}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v7

    const v8, 0x7f09006b

    invoke-virtual {v7, v8}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1333
    invoke-static {v8}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v8

    const v9, 0x7f09006d

    invoke-virtual {v8, v9}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1334
    invoke-static {v9}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v9

    const v10, 0x7f0900fd

    invoke-virtual {v9, v10}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1335
    invoke-static {v10}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v10

    const v11, 0x7f09005e

    invoke-virtual {v10, v11}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iget-object v11, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1336
    invoke-static {v11}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v11

    const v12, 0x7f0900d1

    invoke-virtual {v11, v12}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iget-object v12, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1337
    invoke-static {v12}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v12

    const v13, 0x7f0900eb

    invoke-virtual {v12, v13}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iget-object v13, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1338
    invoke-static {v13}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v13

    const v14, 0x7f0900ce

    invoke-virtual {v13, v14}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    iget-object v14, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1339
    invoke-static {v14}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v14

    const v15, 0x7f090078

    invoke-virtual {v14, v15}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iget-object v15, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1340
    invoke-static {v15}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v15

    const v3, 0x7f090045

    invoke-virtual {v15, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v15, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1341
    invoke-static {v15}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v15

    move-object/from16 v16, v1

    const v1, 0x7f09005d

    invoke-virtual {v15, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v15, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1342
    invoke-static {v15}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v15

    move-object/from16 v17, v1

    const v1, 0x7f090073

    invoke-virtual {v15, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v15, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1343
    invoke-static {v15}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v15

    move-object/from16 v18, v1

    const v1, 0x7f090044

    invoke-virtual {v15, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v15, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1344
    invoke-static {v15}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v15

    move-object/from16 v19, v1

    const v1, 0x7f0900a7

    invoke-virtual {v15, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v15, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1345
    invoke-static {v15}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v15

    move-object/from16 v20, v1

    const v1, 0x7f09007c

    invoke-virtual {v15, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v15, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1346
    invoke-static {v15}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v15

    move-object/from16 v21, v1

    const v1, 0x7f0900c1

    invoke-virtual {v15, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v15, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1347
    invoke-static {v15}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v15

    move-object/from16 v22, v1

    const v1, 0x7f090104

    invoke-virtual {v15, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v15, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1348
    invoke-static {v15}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v15

    move-object/from16 v23, v1

    const v1, 0x7f090105

    invoke-virtual {v15, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v15, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1349
    invoke-static {v15}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v15

    move-object/from16 v24, v1

    const v1, 0x7f090079

    invoke-virtual {v15, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v15, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1350
    invoke-static {v15}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v15

    move-object/from16 v25, v1

    const v1, 0x7f090077

    invoke-virtual {v15, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v15, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1351
    invoke-static {v15}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraControllerManager()Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getNumberOfCameras()I

    move-result v15

    move-object/from16 v26, v1

    const/4 v1, 0x1

    if-le v15, v1, :cond_1

    .line 1352
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1353
    invoke-static {v4}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MainActivity;->showSwitchMultiCamIcon()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1354
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1355
    :cond_2
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1356
    invoke-static {v4}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MainActivity;->supportsExposureButton()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1357
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1358
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/ui/MainUI;->showExposureLockIcon()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1359
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1360
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/ui/MainUI;->showWhiteBalanceLockIcon()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1361
    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1362
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/ui/MainUI;->showCycleRawIcon()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1363
    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1364
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/ui/MainUI;->showStoreLocationIcon()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1365
    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1366
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/ui/MainUI;->showTextStampIcon()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1367
    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1368
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/ui/MainUI;->showStampIcon()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1369
    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1370
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/ui/MainUI;->showFocusPeakingIcon()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1371
    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1372
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/ui/MainUI;->showAutoLevelIcon()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1373
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1374
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/ui/MainUI;->showCycleFlashIcon()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v3, v17

    .line 1375
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1376
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/ui/MainUI;->showFaceDetectionIcon()Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v3, v18

    .line 1377
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1378
    invoke-static {v3}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MainActivity;->hasAudioControl()Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v3, v19

    .line 1379
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    move-object/from16 v3, v20

    .line 1380
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v3, v21

    .line 1381
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v3, v22

    .line 1382
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1386
    invoke-static {v3}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->supportsZoom()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "preference_show_zoom_controls"

    move-object/from16 v4, v16

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v3, v23

    .line 1387
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_f
    move-object/from16 v4, v16

    :cond_10
    :goto_1
    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1389
    invoke-static {v3}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->supportsZoom()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "preference_show_zoom_slider_controls"

    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v3, v24

    .line 1390
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1392
    invoke-static {v3}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lnet/sourceforge/opencamera/MainActivity;->showManualFocusSeekbar(Z)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v3, v25

    .line 1393
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1394
    invoke-static {v3}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnet/sourceforge/opencamera/MainActivity;->showManualFocusSeekbar(Z)Z

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v3, v26

    .line 1395
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    const-string v3, "preference_immersive_mode"

    const-string v5, "immersive_mode_low_profile"

    .line 1396
    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "immersive_mode_everything"

    .line 1397
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "preference_show_take_photo"

    .line 1398
    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1399
    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v1

    const v3, 0x7f0900e5

    invoke-virtual {v1, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1400
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_15

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1402
    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecording()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1403
    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v1

    const v3, 0x7f0900a6

    invoke-virtual {v1, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1404
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1406
    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->supportsPhotoVideoRecording()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->usePhotoVideoRecording()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecording()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1407
    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v1

    const v3, 0x7f0900e6

    invoke-virtual {v1, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1408
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1410
    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getGyroSensor()Lnet/sourceforge/opencamera/GyroSensor;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/GyroSensor;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1411
    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v1

    const v3, 0x7f09004e

    invoke-virtual {v1, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1412
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->val$immersive_mode:Z

    if-nez v1, :cond_18

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI$3;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 1417
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->showGUI()V

    :cond_18
    return-void
.end method
