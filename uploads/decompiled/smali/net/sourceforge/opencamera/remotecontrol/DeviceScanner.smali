.class public Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DeviceScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;,
        Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$ViewHolder;
    }
.end annotation


# static fields
.field private static final REQUEST_BLUETOOTHSCANCONNECT_PERMISSIONS:I = 0x3

.field private static final REQUEST_ENABLE_BT:I = 0x1

.field private static final REQUEST_LOCATION_PERMISSIONS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OC-BLEScanner"


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothHandler:Landroid/os/Handler;

.field private is_scanning:Z

.field private leDeviceListAdapter:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;

.field private final mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 527
    new-instance v0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$6;-><init>(Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;)V

    iput-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->startScanning()V

    return-void
.end method

.method static synthetic access$100(Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->scanLeDevice(Z)V

    return-void
.end method

.method static synthetic access$200(Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;)Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->leDeviceListAdapter:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;

    return-object p0
.end method

.method private askForDeviceScannerPermission()V
    .locals 6

    .line 204
    invoke-static {}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->useAndroid12BluetoothPermissions()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 205
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "android.permission.BLUETOOTH_CONNECT"

    .line 206
    invoke-static {p0, v4}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v2

    aput-object v4, v3, v1

    const/4 v0, 0x3

    .line 216
    invoke-static {p0, v3, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2

    .line 210
    :cond_1
    :goto_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->showRequestBluetoothScanConnectPermissionRationale()V

    goto :goto_2

    :cond_2
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 222
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    .line 223
    invoke-static {p0, v4}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    new-array v5, v3, [Ljava/lang/String;

    aput-object v0, v5, v2

    aput-object v4, v5, v1

    .line 233
    invoke-static {p0, v5, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2

    .line 227
    :cond_4
    :goto_1
    invoke-direct {p0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->showRequestLocationPermissionRationale()V

    :goto_2
    return-void
.end method

.method private checkBluetoothEnabled()V
    .locals 2

    .line 122
    invoke-static {}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->useAndroid12BluetoothPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 125
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OC-BLEScanner"

    const-string v1, "bluetooth connect permission not granted!"

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 130
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 136
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private scanLeDevice(Z)V
    .locals 3

    .line 409
    invoke-static {}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->useAndroid12BluetoothPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 412
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "OC-BLEScanner"

    const-string v0, "bluetooth scan permission not granted!"

    .line 413
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->bluetoothHandler:Landroid/os/Handler;

    .line 420
    new-instance v0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$5;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$5;-><init>(Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->is_scanning:Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 433
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->is_scanning:Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 437
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 439
    :goto_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->invalidateOptionsMenu()V

    return-void
.end method

.method private showRequestBluetoothScanConnectPermissionRationale()V
    .locals 4

    .line 243
    invoke-static {}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->useAndroid12BluetoothPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OC-BLEScanner"

    const-string v1, "shouldn\'t be requesting bluetooth scan/connect permissions!"

    .line 245
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.BLUETOOTH_SCAN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    aput-object v2, v0, v1

    .line 253
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1000dc

    .line 254
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1000d7

    .line 255
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    .line 256
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    .line 257
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$3;

    invoke-direct {v2, p0, v0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$3;-><init>(Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;[Ljava/lang/String;)V

    .line 258
    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showRequestLocationPermissionRationale()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    .line 280
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1000dc

    .line 281
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1000d9

    .line 282
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    .line 283
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    .line 284
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$4;

    invoke-direct {v2, p0, v0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$4;-><init>(Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;[Ljava/lang/String;)V

    .line 285
    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private startScanning()V
    .locals 4

    .line 150
    invoke-static {}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->useAndroid12BluetoothPermissions()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 151
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 153
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_2

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    goto :goto_1

    :cond_2
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 163
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 172
    invoke-direct {p0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->checkBluetoothEnabled()V

    .line 175
    :cond_4
    new-instance v2, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;

    invoke-direct {v2, p0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;-><init>(Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;)V

    iput-object v2, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->leDeviceListAdapter:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;

    const v2, 0x7f090091

    .line 177
    invoke-virtual {p0, v2}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iget-object v3, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->leDeviceListAdapter:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;

    .line 178
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz v0, :cond_5

    .line 181
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->scanLeDevice(Z)V

    goto :goto_3

    .line 184
    :cond_5
    invoke-direct {p0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->askForDeviceScannerPermission()V

    :goto_3
    return-void
.end method

.method static useAndroid12BluetoothPermissions()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 340
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->finish()V

    return-void

    .line 343
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .line 98
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onContentChanged()V

    const v0, 0x7f090091

    .line 100
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 101
    new-instance v1, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$2;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$2;-><init>(Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 58
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    .line 59
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->setContentView(I)V

    .line 60
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->bluetoothHandler:Landroid/os/Handler;

    .line 62
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.bluetooth_le"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const p1, 0x7f100038

    .line 63
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 64
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->finish()V

    :cond_0
    const-string p1, "bluetooth"

    .line 67
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/bluetooth/BluetoothManager;

    move-result-object p1

    .line 68
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez p1, :cond_1

    const p1, 0x7f10003a

    .line 71
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 72
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->finish()V

    return-void

    :cond_1
    const p1, 0x7f090006

    .line 76
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 77
    new-instance v0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$1;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$1;-><init>(Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "preference_remote_device_name"

    const-string v1, "none"

    .line 85
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f09005a

    .line 89
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->is_scanning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 377
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->scanLeDevice(Z)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->leDeviceListAdapter:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;

    .line 378
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;->clear()V

    .line 381
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->leDeviceListAdapter:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;

    .line 386
    invoke-virtual {p1, p3}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;->getDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 394
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 395
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string p3, "preference_remote_device_name"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 396
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    .line 397
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->scanLeDevice(Z)V

    .line 398
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->finish()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 350
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->is_scanning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 352
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->scanLeDevice(Z)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->leDeviceListAdapter:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;

    .line 353
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;->clear()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 300
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_2

    aget p1, p3, v1

    if-nez p1, :cond_2

    .line 321
    invoke-direct {p0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->checkBluetoothEnabled()V

    .line 322
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->scanLeDevice(Z)V

    goto :goto_0

    .line 304
    :cond_1
    array-length p1, p3

    if-lez p1, :cond_2

    aget p1, p3, v1

    if-nez p1, :cond_2

    .line 307
    invoke-direct {p0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->checkBluetoothEnabled()V

    .line 308
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->scanLeDevice(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 361
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->is_scanning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 365
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->scanLeDevice(Z)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->leDeviceListAdapter:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;

    .line 366
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$LeDeviceListAdapter;->clear()V

    :cond_0
    return-void
.end method
