.class Lnet/sourceforge/opencamera/preview/Preview$1TakePictureTimerTask;
.super Ljava/util/TimerTask;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview;->takePictureOnTimer(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TakePictureTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/preview/Preview;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$1TakePictureTimerTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5429
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1TakePictureTimerTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5431
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$3200(Lnet/sourceforge/opencamera/preview/Preview;)Ljava/util/TimerTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1TakePictureTimerTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5432
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$3200(Lnet/sourceforge/opencamera/preview/Preview;)Ljava/util/TimerTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1TakePictureTimerTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 v1, 0x0

    .line 5433
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$3202(Lnet/sourceforge/opencamera/preview/Preview;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1TakePictureTimerTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5435
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 5436
    new-instance v1, Lnet/sourceforge/opencamera/preview/Preview$1TakePictureTimerTask$1;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/preview/Preview$1TakePictureTimerTask$1;-><init>(Lnet/sourceforge/opencamera/preview/Preview$1TakePictureTimerTask;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
