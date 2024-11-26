.class Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;
.super Ljava/util/TimerTask;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview;->videoRecordingStarted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryCheckVideoTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/preview/Preview;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6105
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6112
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$4000(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/IntentFilter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "level"

    const/4 v2, -0x1

    .line 6113
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "scale"

    .line 6114
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-double v1, v1

    int-to-double v3, v0

    .line 6115
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    const-wide v3, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v0, v1, v3

    if-gtz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6122
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 6123
    new-instance v1, Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask$1;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask$1;-><init>(Lnet/sourceforge/opencamera/preview/Preview$1BatteryCheckVideoTimerTask;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
