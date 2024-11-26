.class Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask$1;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask$1;->this$1:Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;

    .line 6123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask$1;->this$1:Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;

    .line 6127
    iget-object v0, v0, Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$200(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask$1;->this$1:Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;

    iget-object v0, v0, Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$4100(Lnet/sourceforge/opencamera/preview/Preview;)Ljava/util/TimerTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask$1;->this$1:Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;

    .line 6128
    iget-object v0, v0, Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->stopVideo(Z)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask$1;->this$1:Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;

    .line 6129
    iget-object v0, v0, Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10036f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask$1;->this$1:Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;

    .line 6130
    iget-object v1, v1, Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
