.class public Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$LocalBinder;
.super Landroid/os/Binder;
.source "BluetoothLeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;


# direct methods
.method public constructor <init>(Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$LocalBinder;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    .line 343
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService$LocalBinder;->this$0:Lnet/sourceforge/opencamera/remotecontrol/BluetoothLeService;

    return-object v0
.end method
