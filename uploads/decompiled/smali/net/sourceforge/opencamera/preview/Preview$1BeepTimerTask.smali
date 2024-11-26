.class Lnet/sourceforge/opencamera/preview/Preview$1BeepTimerTask;
.super Ljava/util/TimerTask;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview;->takePictureOnTimer(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BeepTimerTask"
.end annotation


# instance fields
.field private remaining_time:J

.field final synthetic this$0:Lnet/sourceforge/opencamera/preview/Preview;

.field final synthetic val$timer_delay:J


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$1BeepTimerTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    iput-wide p2, p0, Lnet/sourceforge/opencamera/preview/Preview$1BeepTimerTask;->val$timer_delay:J

    .line 5458
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-wide p2, p0, Lnet/sourceforge/opencamera/preview/Preview$1BeepTimerTask;->remaining_time:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1BeepTimerTask;->remaining_time:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1BeepTimerTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5462
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    move-result-object v0

    iget-wide v1, p0, Lnet/sourceforge/opencamera/preview/Preview$1BeepTimerTask;->remaining_time:J

    invoke-interface {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->timerBeep(J)V

    :cond_0
    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1BeepTimerTask;->remaining_time:J

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1BeepTimerTask;->remaining_time:J

    return-void
.end method
