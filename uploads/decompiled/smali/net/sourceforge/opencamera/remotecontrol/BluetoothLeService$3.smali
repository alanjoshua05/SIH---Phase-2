.class Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$3;
.super Ljava/lang/Object;
.source "BluetoothLeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->connect(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

.field final synthetic val$address:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$3;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    iput-object p2, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$3;->val$address:Ljava/lang/String;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$3;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    iget-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$3;->val$address:Ljava/lang/String;

    .line 461
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->connect(Ljava/lang/String;)Z

    return-void
.end method
