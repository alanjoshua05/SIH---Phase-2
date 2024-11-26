.class Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$3;
.super Ljava/lang/Object;
.source "DeviceScanner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->showRequestBluetoothScanConnectPermissionRationale()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;

.field final synthetic val$permissions_f:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$3;->this$0:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;

    iput-object p2, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$3;->val$permissions_f:[Ljava/lang/String;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$3;->this$0:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$3;->val$permissions_f:[Ljava/lang/String;

    const/4 v1, 0x3

    .line 262
    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
