.class Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BluetoothLeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    .line 130
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method attemptReconnect()V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    .line 168
    invoke-static {v0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->access$500(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BluetoothLeService"

    const-string v1, "don\'t attempt to reconnect when service not bound"

    .line 172
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 176
    new-instance v1, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2$1;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2$1;-><init>(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    const-string v0, "net.sourceforge.opencamera.Remotecontrol.ACTION_DATA_AVAILABLE"

    .line 208
    invoke-static {p1, v0, p2}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->access$800(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    if-nez p3, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    const-string p3, "net.sourceforge.opencamera.Remotecontrol.ACTION_DATA_AVAILABLE"

    .line 200
    invoke-static {p1, p3, p2}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->access$800(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_0
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    const/4 p1, 0x2

    if-ne p3, p1, :cond_1

    const-string p1, "net.sourceforge.opencamera.Remotecontrol.ACTION_GATT_CONNECTED"

    iget-object p2, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    .line 136
    invoke-static {p2, p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->access$100(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->useAndroid12BluetoothPermissions()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    const-string p2, "android.permission.BLUETOOTH_CONNECT"

    .line 144
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BluetoothLeService"

    const-string p2, "bluetooth scan permission not granted!"

    .line 145
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    .line 151
    invoke-static {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->access$200(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothGatt;)Z

    :goto_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    const-wide/high16 p2, -0x4010000000000000L    # -1.0

    .line 154
    invoke-static {p1, p2, p3}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->access$302(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;D)D

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    .line 155
    invoke-static {p1, p2, p3}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->access$402(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;D)D

    goto :goto_1

    :cond_1
    if-nez p3, :cond_2

    const-string p1, "net.sourceforge.opencamera.Remotecontrol.ACTION_GATT_DISCONNECTED"

    iget-object p2, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    .line 162
    invoke-static {p2, p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->access$100(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;->attemptReconnect()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    .line 215
    invoke-static {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->access$900(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    .line 216
    invoke-static {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->access$900(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;)Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->access$1000(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    :cond_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    const-string p2, "net.sourceforge.opencamera.Remotecontrol.ACTION_GATT_SERVICES_DISCOVERED"

    .line 188
    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->access$100(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    .line 189
    invoke-static {p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->access$700(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;)V

    :cond_0
    return-void
.end method
