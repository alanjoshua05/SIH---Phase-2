.class Lnet/sourceforge/opencamera/preview/Preview$DoubleTapListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/preview/Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/preview/Preview;


# direct methods
.method private constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$DoubleTapListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 864
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/preview/Preview$1;)V
    .locals 0

    .line 864
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview$DoubleTapListener;-><init>(Lnet/sourceforge/opencamera/preview/Preview;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$DoubleTapListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 889
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->onDoubleTap()Z

    move-result p1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$DoubleTapListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 875
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$800(Lnet/sourceforge/opencamera/preview/Preview;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$DoubleTapListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 877
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$900(Lnet/sourceforge/opencamera/preview/Preview;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview$DoubleTapListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 880
    invoke-static {v1, p1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$1000(Lnet/sourceforge/opencamera/preview/Preview;Landroid/view/MotionEvent;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
