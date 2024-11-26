.class public Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;
.super Ljava/lang/Object;
.source "BluetoothRemoteControl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothRemoteControl"


# instance fields
.field private bluetoothLeService:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

.field private is_connected:Z

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final main_activity:Lnet/sourceforge/opencamera/MainActivity;

.field private final remoteControlCommandReceiver:Landroid/content/BroadcastReceiver;

.field private remoteDeviceAddress:Ljava/lang/String;

.field private remoteDeviceType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$1;-><init>(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)V

    iput-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 101
    new-instance v0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl$2;-><init>(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)V

    iput-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->remoteControlCommandReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/MainActivity;
    .locals 0

    .line 27
    iget-object p0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    return-object p0
.end method

.method static synthetic access$100(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;
    .locals 0

    .line 27
    iget-object p0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->bluetoothLeService:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    return-object p0
.end method

.method static synthetic access$102(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;)Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;
    .locals 0

    .line 27
    iput-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->bluetoothLeService:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    return-object p1
.end method

.method static synthetic access$200(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->remoteDeviceAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->remoteDeviceType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->is_connected:Z

    return p1
.end method

.method private static makeRemoteCommandIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 238
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "net.sourceforge.opencamera.Remotecontrol.ACTION_GATT_CONNECTED"

    .line 239
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.sourceforge.opencamera.Remotecontrol.ACTION_GATT_DISCONNECTED"

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.sourceforge.opencamera.Remotecontrol.ACTION_GATT_SERVICES_DISCOVERED"

    .line 241
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.sourceforge.opencamera.Remotecontrol.ACTION_DATA_AVAILABLE"

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.sourceforge.opencamera.Remotecontrol.COMMAND"

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.sourceforge.opencamera.Remotecontrol.SENSOR"

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public remoteConnected()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->is_connected:Z

    return v0
.end method

.method public remoteEnabled()Z
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 324
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_enable_remote"

    .line 325
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "preference_remote_type"

    const-string v4, "undefined"

    .line 326
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->remoteDeviceType:Ljava/lang/String;

    const-string v3, "preference_remote_device_name"

    .line 327
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->remoteDeviceAddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 329
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public startRemoteControl()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    return-void

    .line 258
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const-class v2, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 262
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->isAppPaused()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->remoteEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    iget-object v2, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    .line 265
    invoke-virtual {v1, v0, v2, v3}, Lnet/sourceforge/opencamera/MainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    iget-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->remoteControlCommandReceiver:Landroid/content/BroadcastReceiver;

    .line 271
    invoke-static {}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->makeRemoteCommandIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Lnet/sourceforge/opencamera/MainActivity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    iget-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->remoteControlCommandReceiver:Landroid/content/BroadcastReceiver;

    .line 276
    invoke-static {}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->makeRemoteCommandIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    iget-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->remoteControlCommandReceiver:Landroid/content/BroadcastReceiver;

    .line 284
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    iget-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 285
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->is_connected:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 287
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->updateRemoteConnectionIcon()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public stopRemoteControl()V
    .locals 3

    .line 299
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->remoteEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    iget-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->remoteControlCommandReceiver:Landroid/content/BroadcastReceiver;

    .line 302
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    iget-object v1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 303
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->is_connected:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 305
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->updateRemoteConnectionIcon()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothRemoteControl"

    const-string v2, "Remote Service was not running, that\'s strange"

    .line 308
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
