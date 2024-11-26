.class Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask;
.super Ljava/util/TimerTask;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview;->videoRecordingStarted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlashVideoTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/preview/Preview;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6073
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6077
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 6078
    new-instance v1, Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask$1;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask$1;-><init>(Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
