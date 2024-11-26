.class Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2$1;
.super Ljava/util/TimerTask;
.source "BluetoothLeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;->attemptReconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2$1;->this$1:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;

    .line 176
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2$1;->this$1:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;

    .line 180
    iget-object v0, v0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    iget-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2$1;->this$1:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;

    iget-object v1, v1, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    invoke-static {v1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->access$600(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->connect(Ljava/lang/String;)Z

    return-void
.end method
