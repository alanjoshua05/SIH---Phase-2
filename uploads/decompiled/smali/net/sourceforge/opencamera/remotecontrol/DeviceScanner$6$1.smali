.class Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6$1;
.super Ljava/lang/Object;
.source "DeviceScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6$1;->this$1:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6;

    iput-object p2, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6$1;->this$1:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6;

    .line 533
    iget-object v0, v0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6;->this$0:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;

    invoke-static {v0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->access$200(Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;)Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;->addDevice(Landroid/bluetooth/BluetoothDevice;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6$1;->this$1:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6;

    .line 534
    iget-object v0, v0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6;->this$0:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;

    invoke-static {v0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->access$200(Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;)Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;->notifyDataSetChanged()V

    return-void
.end method
