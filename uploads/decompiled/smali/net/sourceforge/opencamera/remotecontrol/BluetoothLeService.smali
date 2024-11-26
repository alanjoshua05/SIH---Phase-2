.class public Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;
.super Landroid/app/Service;
.source "BluetoothLeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$LocalBinder;
    }
.end annotation


# static fields
.field public static final ACTION_DATA_AVAILABLE:Ljava/lang/String; = "net.sourceforge.opencamera.Remotecontrol.ACTION_DATA_AVAILABLE"

.field public static final ACTION_GATT_CONNECTED:Ljava/lang/String; = "net.sourceforge.opencamera.Remotecontrol.ACTION_GATT_CONNECTED"

.field public static final ACTION_GATT_DISCONNECTED:Ljava/lang/String; = "net.sourceforge.opencamera.Remotecontrol.ACTION_GATT_DISCONNECTED"

.field public static final ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String; = "net.sourceforge.opencamera.Remotecontrol.ACTION_GATT_SERVICES_DISCOVERED"

.field public static final ACTION_REMOTE_COMMAND:Ljava/lang/String; = "net.sourceforge.opencamera.Remotecontrol.COMMAND"

.field public static final ACTION_SENSOR_VALUE:Ljava/lang/String; = "net.sourceforge.opencamera.Remotecontrol.SENSOR"

.field public static final COMMAND_AFMF:I = 0x61

.field public static final COMMAND_DOWN:I = 0x50

.field public static final COMMAND_MENU:I = 0x30

.field public static final COMMAND_MODE:I = 0x10

.field public static final COMMAND_SHUTTER:I = 0x20

.field public static final COMMAND_UP:I = 0x40

.field public static final EXTRA_DATA:Ljava/lang/String; = "net.sourceforge.opencamera.Remotecontrol.EXTRA_DATA"

.field public static final SENSOR_DEPTH:Ljava/lang/String; = "net.sourceforge.opencamera.Remotecontrol.DEPTH"

.field public static final SENSOR_TEMPERATURE:Ljava/lang/String; = "net.sourceforge.opencamera.Remotecontrol.TEMPERATURE"

.field private static final TAG:Ljava/lang/String; = "BluetoothLeService"


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private final bluetoothHandler:Landroid/os/Handler;

.field private bluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private final charsToSubscribe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field private currentDepth:D

.field private currentTemp:D

.field private device_address:Ljava/lang/String;

.field private is_bound:Z

.field private final mBinder:Landroid/os/IBinder;

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private remote_device_type:Ljava/lang/String;

.field private final subscribed_characteristics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->subscribed_characteristics:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->charsToSubscribe:Ljava/util/List;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->currentTemp:D

    iput-wide v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->currentDepth:D

    .line 130
    new-instance v0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$2;-><init>(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;)V

    iput-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 349
    new-instance v0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$LocalBinder;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$LocalBinder;-><init>(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;)V

    iput-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->broadcastUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    return-void
.end method

.method static synthetic access$200(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 37
    iget-object p0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic access$302(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;D)D
    .locals 0

    .line 37
    iput-wide p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->currentDepth:D

    return-wide p1
.end method

.method static synthetic access$402(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;D)D
    .locals 0

    .line 37
    iput-wide p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->currentTemp:D

    return-wide p1
.end method

.method static synthetic access$500(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->is_bound:Z

    return p0
.end method

.method static synthetic access$600(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->device_address:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->subscribeToServices()V

    return-void
.end method

.method static synthetic access$800(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method static synthetic access$900(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->charsToSubscribe:Ljava/util/List;

    return-object p0
.end method

.method private broadcastUpdate(Ljava/lang/String;)V
    .locals 1

    .line 257
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6

    .line 262
    invoke-static {p2}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/util/UUID;

    move-result-object p1

    .line 267
    sget-object v0, Lnet/sourceforge/opencamera/remotecontrol/KrakenGattAttributes;->KRAKEN_BUTTONS_CHARACTERISTIC:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/16 p1, 0x11

    .line 270
    invoke-static {p2, p1, v1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothGattCharacteristic;II)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x20

    const/4 v0, -0x1

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    const/16 p2, 0x10

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0x30

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/16 p2, 0x61

    if-ne p1, p2, :cond_3

    goto :goto_1

    :cond_3
    const/16 p2, 0x60

    if-ne p1, p2, :cond_4

    goto :goto_0

    :cond_4
    const/16 p2, 0x40

    if-ne p1, p2, :cond_5

    goto :goto_1

    :cond_5
    const/16 p2, 0x50

    if-ne p1, p2, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-le p2, v0, :cond_9

    .line 309
    new-instance p1, Landroid/content/Intent;

    const-string v0, "net.sourceforge.opencamera.Remotecontrol.COMMAND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "net.sourceforge.opencamera.Remotecontrol.EXTRA_DATA"

    .line 310
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 314
    :cond_7
    sget-object v0, Lnet/sourceforge/opencamera/remotecontrol/KrakenGattAttributes;->KRAKEN_SENSORS_CHARACTERISTIC:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x2

    const/16 v0, 0x12

    .line 323
    invoke-static {p2, v0, p1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothGattCharacteristic;II)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v2, p1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    .line 324
    invoke-static {p2, v0, v1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothGattCharacteristic;II)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v4

    iget-wide v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->currentTemp:D

    cmpl-double v4, v2, v0

    if-nez v4, :cond_8

    iget-wide v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->currentDepth:D

    cmpl-double v4, p1, v0

    if-nez v4, :cond_8

    return-void

    :cond_8
    iput-wide p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->currentDepth:D

    iput-wide v2, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->currentTemp:D

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.sourceforge.opencamera.Remotecontrol.SENSOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "net.sourceforge.opencamera.Remotecontrol.TEMPERATURE"

    .line 336
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "net.sourceforge.opencamera.Remotecontrol.DEPTH"

    .line 337
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private close()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    return-void

    .line 484
    :cond_0
    invoke-static {}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->useAndroid12BluetoothPermissions()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 485
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BluetoothLeService"

    const-string v1, "bluetooth scan permission not granted!"

    .line 486
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 491
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/bluetooth/BluetoothGatt;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method

.method private getSupportedGattServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 533
    :cond_0
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothGatt;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1

    return-void

    .line 508
    :cond_1
    invoke-static {}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->useAndroid12BluetoothPermissions()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 509
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "BluetoothLeService"

    const-string p2, "bluetooth scan permission not granted!"

    .line 510
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 515
    :cond_2
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 516
    invoke-static {v1, p1, p2}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->subscribed_characteristics:Ljava/util/HashMap;

    .line 518
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->subscribed_characteristics:Ljava/util/HashMap;

    .line 521
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    :goto_0
    sget-object p2, Lnet/sourceforge/opencamera/remotecontrol/KrakenGattAttributes;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    .line 525
    invoke-static {}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m()[B

    move-result-object p2

    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothGattDescriptor;[B)Z

    iget-object p2, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 526
    invoke-static {p2, p1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;)Z

    return-void
.end method

.method private subscribeToServices()V
    .locals 5

    .line 227
    invoke-direct {p0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->getSupportedGattServices()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->remote_device_type:Ljava/lang/String;

    .line 232
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "preference_remote_type_kraken"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0000"

    .line 237
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 234
    :cond_1
    invoke-static {}, Lnet/sourceforge/opencamera/remotecontrol/KrakenGattAttributes;->getDesiredCharacteristics()Ljava/util/List;

    move-result-object v1

    .line 241
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 243
    invoke-static {v2}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothGattService;)Ljava/util/List;

    move-result-object v2

    .line 244
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 245
    invoke-static {v3}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/util/UUID;

    move-result-object v4

    .line 246
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->charsToSubscribe:Ljava/util/List;

    .line 249
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->charsToSubscribe:Ljava/util/List;

    const/4 v1, 0x0

    .line 253
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    return-void
.end method

.method private triggerScan()V
    .locals 4

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->is_bound:Z

    const-string v1, "BluetoothLeService"

    if-nez v0, :cond_0

    const-string v0, "triggerScan shouldn\'t be called when service not bound"

    .line 95
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 100
    :cond_0
    invoke-static {}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->useAndroid12BluetoothPermissions()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 101
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "bluetooth scan permission not granted!"

    .line 102
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothHandler:Landroid/os/Handler;

    .line 108
    new-instance v1, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$1;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$1;-><init>(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    .line 121
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->is_bound:Z

    const-string v2, "BluetoothLeService"

    if-nez v0, :cond_2

    const-string p1, "connect shouldn\'t be called when service not bound"

    .line 415
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 420
    :cond_2
    invoke-static {}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->useAndroid12BluetoothPermissions()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 421
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "bluetooth scan permission not granted!"

    .line 422
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->device_address:Ljava/lang/String;

    .line 446
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_4

    .line 447
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothGatt;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 448
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/bluetooth/BluetoothGatt;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    :cond_4
    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 452
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_5

    .line 456
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 457
    new-instance v2, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$3;

    invoke-direct {v2, p0, p1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$3;-><init>(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;Ljava/lang/String;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    .line 471
    :cond_5
    invoke-direct {p0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->triggerScan()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v2, 0x1

    .line 473
    invoke-static {v0, p0, v2, v1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iput-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->device_address:Ljava/lang/String;

    return v2
.end method

.method public initialize()Z
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->is_bound:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    const/4 v2, 0x0

    const-string v3, "BluetoothLeService"

    if-nez v1, :cond_0

    const-string v1, "bluetooth"

    .line 379
    invoke-virtual {p0, v1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/bluetooth/BluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v1, :cond_0

    const-string v0, "Unable to initialize BluetoothManager."

    .line 381
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 386
    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    const-string v0, "Unable to obtain a BluetoothAdapter."

    .line 388
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->is_bound:Z

    .line 363
    invoke-direct {p0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->close()V

    .line 364
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public setRemoteDeviceType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;->remote_device_type:Ljava/lang/String;

    return-void
.end method
