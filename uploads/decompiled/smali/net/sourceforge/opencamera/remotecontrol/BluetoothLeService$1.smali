.class Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$1;
.super Ljava/lang/Object;
.source "BluetoothLeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->triggerScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$1;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 112
    invoke-static {}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->useAndroid12BluetoothPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$1;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    .line 113
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothLeService"

    const-string v1, "bluetooth scan permission not granted!"

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$1;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    .line 118
    invoke-static {v0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->access$000(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    return-void
.end method
