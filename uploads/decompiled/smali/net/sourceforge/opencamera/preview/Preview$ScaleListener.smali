.class Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/preview/Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field private has_multitouch_start_zoom_factor:Z

.field private multitouch_start_zoom_factor:I

.field final synthetic this$0:Lnet/sourceforge/opencamera/preview/Preview;


# direct methods
.method private constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 773
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->has_multitouch_start_zoom_factor:Z

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->multitouch_start_zoom_factor:I

    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/preview/Preview$1;)V
    .locals 0

    .line 773
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;-><init>(Lnet/sourceforge/opencamera/preview/Preview;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 779
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$200(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$300(Lnet/sourceforge/opencamera/preview/Preview;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    mul-float p1, p1, v0

    add-float/2addr p1, v1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 785
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->scaleZoom(F)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 792
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$300(Lnet/sourceforge/opencamera/preview/Preview;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$200(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->has_multitouch_start_zoom_factor:Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 794
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$200(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getZoom()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->multitouch_start_zoom_factor:I

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 795
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$402(Lnet/sourceforge/opencamera/preview/Preview;Z)Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 796
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$600(Lnet/sourceforge/opencamera/preview/Preview;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->multitouch_start_zoom_factor:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-static {p1, v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$502(Lnet/sourceforge/opencamera/preview/Preview;F)F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->has_multitouch_start_zoom_factor:Z

    iput p1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->multitouch_start_zoom_factor:I

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 801
    invoke-static {v1, p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$402(Lnet/sourceforge/opencamera/preview/Preview;Z)Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 802
    invoke-static {p1, v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$502(Lnet/sourceforge/opencamera/preview/Preview;F)F

    :goto_0
    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->has_multitouch_start_zoom_factor:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 811
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$300(Lnet/sourceforge/opencamera/preview/Preview;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$200(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$600(Lnet/sourceforge/opencamera/preview/Preview;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x64

    if-ge p1, v1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 814
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$600(Lnet/sourceforge/opencamera/preview/Preview;)Ljava/util/List;

    move-result-object p1

    iget v2, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->multitouch_start_zoom_factor:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 815
    invoke-static {v2}, Lnet/sourceforge/opencamera/preview/Preview;->access$200(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getZoom()I

    move-result v2

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 816
    invoke-static {v3}, Lnet/sourceforge/opencamera/preview/Preview;->access$600(Lnet/sourceforge/opencamera/preview/Preview;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x5a

    if-lt v2, v3, :cond_1

    const/16 v3, 0x6e

    if-gt v2, v3, :cond_1

    if-eq p1, v1, :cond_1

    if-eq v2, v1, :cond_1

    sub-int/2addr p1, v1

    sub-int/2addr v2, v1

    int-to-float v1, p1

    .line 824
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    int-to-float v3, v2

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 830
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$700(Lnet/sourceforge/opencamera/preview/Preview;)I

    move-result p1

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 831
    invoke-virtual {v1, p1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->zoomTo(IZ)V

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->has_multitouch_start_zoom_factor:Z

    iput v0, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->multitouch_start_zoom_factor:I

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 837
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$402(Lnet/sourceforge/opencamera/preview/Preview;Z)Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$ScaleListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 838
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$502(Lnet/sourceforge/opencamera/preview/Preview;F)F

    return-void
.end method
