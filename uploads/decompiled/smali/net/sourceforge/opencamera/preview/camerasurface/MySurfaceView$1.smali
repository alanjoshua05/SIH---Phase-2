.class Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView$1;
.super Ljava/lang/Object;
.source "MySurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;-><init>(Landroid/content/Context;Lnet/sourceforge/opencamera/preview/Preview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;

.field final synthetic val$preview:Lnet/sourceforge/opencamera/preview/Preview;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView$1;->this$0:Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;

    iput-object p2, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView$1;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView$1;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 v1, 0x1

    .line 49
    iput-boolean v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->test_ticker_called:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView$1;->this$0:Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;

    .line 50
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;->invalidate()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView$1;->this$0:Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;

    .line 51
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;->access$000(Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView$1;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getFrameRate()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
