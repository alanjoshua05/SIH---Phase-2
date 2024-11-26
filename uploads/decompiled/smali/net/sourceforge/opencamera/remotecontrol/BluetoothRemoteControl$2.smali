.class Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothRemoteControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 101
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-ge p1, v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 109
    invoke-static {v0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$000(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 110
    invoke-static {v1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$000(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v1

    const-string v2, "net.sourceforge.opencamera.Remotecontrol.ACTION_GATT_CONNECTED"

    .line 111
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 115
    invoke-static {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$100(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    move-result-object p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    invoke-static {p2}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$300(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->setRemoteDeviceType(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 116
    invoke-static {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$000(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object p1

    invoke-virtual {p1, v3}, Lnet/sourceforge/opencamera/MainActivity;->setBrightnessForCamera(Z)V

    goto/16 :goto_0

    :cond_1
    const-string v2, "net.sourceforge.opencamera.Remotecontrol.ACTION_GATT_DISCONNECTED"

    .line 118
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 121
    invoke-static {p1, v3}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$402(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;Z)Z

    .line 122
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object p1

    const-string p2, "-- \u00b0C"

    const-string v0, "-- m"

    invoke-virtual {p1, p2, v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->onExtraOSDValuesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->updateRemoteConnectionIcon()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 124
    invoke-static {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$000(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->setBrightnessToMinimumIfWanted()V

    .line 125
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->isExposureUIOpen()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 126
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->toggleExposureUI()V

    goto/16 :goto_0

    :cond_2
    const-string v2, "net.sourceforge.opencamera.Remotecontrol.ACTION_GATT_SERVICES_DISCOVERED"

    .line 128
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    const/4 p2, 0x1

    .line 134
    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$402(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;Z)Z

    .line 135
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->updateRemoteConnectionIcon()V

    goto/16 :goto_0

    :cond_3
    const-string v2, "net.sourceforge.opencamera.Remotecontrol.SENSOR"

    .line 137
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p1, "net.sourceforge.opencamera.Remotecontrol.TEMPERATURE"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 138
    invoke-virtual {p2, p1, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v3

    const-string p1, "net.sourceforge.opencamera.Remotecontrol.DEPTH"

    .line 139
    invoke-virtual {p2, p1, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide p1

    iget-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    invoke-static {v1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$000(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getWaterDensity()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v1

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    mul-double p1, p1, v1

    .line 140
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v1

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " \u00b0C"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " m"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->onExtraOSDValuesChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "net.sourceforge.opencamera.Remotecontrol.COMMAND"

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "net.sourceforge.opencamera.Remotecontrol.EXTRA_DATA"

    const/4 v0, -0x1

    .line 149
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x10

    if-eq p1, p2, :cond_e

    const/16 p2, 0x20

    if-eq p1, p2, :cond_d

    const/16 p2, 0x30

    if-eq p1, p2, :cond_a

    const/16 p2, 0x40

    const-string v0, "focus_mode_manual2"

    if-eq p1, p2, :cond_8

    const/16 p2, 0x50

    if-eq p1, p2, :cond_6

    const/16 p2, 0x61

    if-eq p1, p2, :cond_5

    goto/16 :goto_0

    .line 215
    :cond_5
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->togglePopupSettings()V

    goto/16 :goto_0

    .line 200
    :cond_6
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->processRemoteDownButton()Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 201
    invoke-static {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$000(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFocusValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    invoke-static {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$000(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFocusValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 202
    invoke-static {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$000(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object p1

    const/16 p2, 0x19

    invoke-virtual {p1, p2, v3}, Lnet/sourceforge/opencamera/MainActivity;->changeFocusDistance(IZ)V

    goto/16 :goto_0

    :cond_7
    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 206
    invoke-static {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$000(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->zoomOut()V

    goto/16 :goto_0

    .line 186
    :cond_8
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->processRemoteUpButton()Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 190
    invoke-static {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$000(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFocusValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    invoke-static {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$000(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFocusValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 191
    invoke-static {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$000(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object p1

    const/16 p2, -0x19

    invoke-virtual {p1, p2, v3}, Lnet/sourceforge/opencamera/MainActivity;->changeFocusDistance(IZ)V

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 195
    invoke-static {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$000(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->zoomIn()V

    goto :goto_0

    .line 173
    :cond_a
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->popupIsOpen()Z

    move-result p1

    if-nez p1, :cond_c

    .line 174
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->isExposureUIOpen()Z

    move-result p1

    if-nez p1, :cond_b

    .line 175
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->toggleExposureUI()V

    goto :goto_0

    .line 178
    :cond_b
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->commandMenuExposure()V

    goto :goto_0

    .line 182
    :cond_c
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->commandMenuPopup()V

    goto :goto_0

    :cond_d
    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 154
    invoke-static {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$000(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object p1

    invoke-virtual {p1, v3}, Lnet/sourceforge/opencamera/MainActivity;->takePicture(Z)V

    goto :goto_0

    .line 159
    :cond_e
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->popupIsOpen()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 160
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->togglePopupSettings()V

    goto :goto_0

    .line 162
    :cond_f
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->isExposureUIOpen()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 163
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->toggleExposureUI()V

    goto :goto_0

    :cond_10
    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 166
    invoke-static {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$000(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/MainActivity;->clickedSwitchVideo(Landroid/view/View;)V

    :cond_11
    :goto_0
    return-void
.end method
