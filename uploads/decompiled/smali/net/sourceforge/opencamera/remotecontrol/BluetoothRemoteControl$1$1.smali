.class Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1$1;
.super Ljava/lang/Object;
.source "BluetoothRemoteControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1$1;->this$1:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1$1;->this$1:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1;

    .line 88
    iget-object v0, v0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    invoke-static {v0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$100(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1$1;->this$1:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1;

    iget-object v1, v1, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    invoke-static {v1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->access$200(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->connect(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
