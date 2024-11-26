.class Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LeDeviceListAdapter"
.end annotation


# instance fields
.field private final mInflator:Landroid/view/LayoutInflater;

.field private final mLeDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;)V
    .locals 1

    iput-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;->this$0:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;

    .line 447
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    .line 449
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;->mInflator:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method addDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    .line 453
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    .line 454
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method clear()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    .line 463
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    .line 468
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getDevice(I)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    .line 459
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    .line 473
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;->mInflator:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0022

    const/4 v0, 0x0

    .line 485
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 486
    new-instance p3, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$ViewHolder;

    invoke-direct {p3}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$ViewHolder;-><init>()V

    const v0, 0x7f090061

    .line 487
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$ViewHolder;->deviceAddress:Landroid/widget/TextView;

    const v0, 0x7f090062

    .line 488
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$ViewHolder;->deviceName:Landroid/widget/TextView;

    .line 489
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$ViewHolder;

    .line 499
    :goto_0
    invoke-static {}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->useAndroid12BluetoothPermissions()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;->this$0:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    .line 502
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    .line 507
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_2

    const-string v0, "OC-BLEScanner"

    const-string v1, "bluetooth connect permission not granted!"

    .line 510
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p3, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$ViewHolder;->deviceName:Landroid/widget/TextView;

    const v1, 0x7f100364

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 514
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 515
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 516
    iget-object v1, p3, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$ViewHolder;->deviceName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 518
    :cond_3
    iget-object v0, p3, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$ViewHolder;->deviceName:Landroid/widget/TextView;

    const v1, 0x7f100363

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 521
    :goto_2
    iget-object p3, p3, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$ViewHolder;->deviceAddress:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
