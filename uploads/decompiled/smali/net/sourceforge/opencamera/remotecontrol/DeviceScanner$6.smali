.class Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6;
.super Ljava/lang/Object;
.source "DeviceScanner.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6;->this$0:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    iget-object p2, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6;->this$0:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;

    .line 530
    new-instance p3, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6$1;

    invoke-direct {p3, p0, p1}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6$1;-><init>(Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p2, p3}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
