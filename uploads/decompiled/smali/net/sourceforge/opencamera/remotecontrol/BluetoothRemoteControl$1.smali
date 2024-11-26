.class Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1;
.super Ljava/lang/Object;
.source "BluetoothRemoteControl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    iput-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 52
    invoke-static {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$000(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->isAppPaused()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 63
    check-cast p2, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$LocalBinder;

    invoke-virtual {p2}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$LocalBinder;->getService()Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$102(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;)Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 64
    invoke-static {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$100(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->initialize()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "BluetoothRemoteControl"

    const-string p2, "Unable to initialize Bluetooth"

    .line 65
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 66
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->stopRemoteControl()V

    :cond_2
    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    .line 69
    invoke-static {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$100(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    move-result-object p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    invoke-static {p2}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$200(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->connect(Ljava/lang/String;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 83
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 84
    new-instance v0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1$1;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1$1;-><init>(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
