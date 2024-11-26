.class Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask$1;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask$1;->this$1:Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask;

    .line 6078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask$1;->this$1:Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask;

    .line 6082
    iget-object v0, v0, Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$200(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask$1;->this$1:Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask;

    iget-object v0, v0, Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$3800(Lnet/sourceforge/opencamera/preview/Preview;)Ljava/util/TimerTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask$1;->this$1:Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask;

    .line 6083
    iget-object v0, v0, Lnet/sourceforge/opencamera/preview/Preview$1FlashVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$3900(Lnet/sourceforge/opencamera/preview/Preview;)V

    :cond_0
    return-void
.end method
