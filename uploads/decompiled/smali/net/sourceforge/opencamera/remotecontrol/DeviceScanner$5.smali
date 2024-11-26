.class Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$5;
.super Ljava/lang/Object;
.source "DeviceScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->scanLeDevice(Z)V
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$5;->this$0:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner$5;->this$0:Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;

    const/4 v1, 0x0

    .line 428
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;->access$100(Lnet/sourceforge/opencamera/remotecontrol/DeviceScanner;Z)V

    return-void
.end method
