.class public Lnet/sourceforge/opencamera/preview/CanvasView;
.super Landroid/view/View;
.source "CanvasView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CanvasView"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final measure_spec:[I

.field private final preview:Lnet/sourceforge/opencamera/preview/Preview;

.field private final tick:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/CanvasView;->measure_spec:[I

    .line 22
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/CanvasView;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lnet/sourceforge/opencamera/preview/CanvasView;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 35
    new-instance p1, Lnet/sourceforge/opencamera/preview/CanvasView$1;

    invoke-direct {p1, p0, p2}, Lnet/sourceforge/opencamera/preview/CanvasView$1;-><init>(Lnet/sourceforge/opencamera/preview/CanvasView;Lnet/sourceforge/opencamera/preview/Preview;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/CanvasView;->tick:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/preview/CanvasView;)Landroid/os/Handler;
    .locals 0

    .line 17
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/CanvasView;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/CanvasView;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 50
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/CanvasView;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/CanvasView;->measure_spec:[I

    .line 57
    invoke-virtual {v0, v1, p1, p2}, Lnet/sourceforge/opencamera/preview/Preview;->getMeasureSpec([III)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/CanvasView;->measure_spec:[I

    const/4 p2, 0x0

    .line 58
    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-super {p0, p2, p1}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method onPause()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/CanvasView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/CanvasView;->tick:Ljava/lang/Runnable;

    .line 64
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method onResume()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/CanvasView;->tick:Ljava/lang/Runnable;

    .line 70
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
