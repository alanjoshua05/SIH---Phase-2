.class Lnet/sourceforge/opencamera/MainActivity$38;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity;->setManualFocusSeekbar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private has_saved_zoom:Z

.field private saved_zoom_factor:I

.field final synthetic this$0:Lnet/sourceforge/opencamera/MainActivity;

.field final synthetic val$focusSeekBar:Landroid/widget/SeekBar;

.field final synthetic val$is_target_distance:Z


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;Landroid/widget/SeekBar;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$38;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    iput-object p2, p0, Lnet/sourceforge/opencamera/MainActivity$38;->val$focusSeekBar:Landroid/widget/SeekBar;

    iput-boolean p3, p0, Lnet/sourceforge/opencamera/MainActivity$38;->val$is_target_distance:Z

    .line 5740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    int-to-double p1, p2

    iget-object p3, p0, Lnet/sourceforge/opencamera/MainActivity$38;->val$focusSeekBar:Landroid/widget/SeekBar;

    .line 5746
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMax()I

    move-result p3

    int-to-double v0, p3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    .line 5747
    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/ui/ManualSeekbars;->seekbarScaling(D)D

    move-result-wide p1

    iget-object p3, p0, Lnet/sourceforge/opencamera/MainActivity$38;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5748
    invoke-static {p3}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p3

    invoke-virtual {p3}, Lnet/sourceforge/opencamera/preview/Preview;->getMinimumFocusDistance()F

    move-result p3

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    double-to-float p1, p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/MainActivity$38;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5749
    invoke-static {p2}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p2

    iget-boolean p3, p0, Lnet/sourceforge/opencamera/MainActivity$38;->val$is_target_distance:Z

    invoke-virtual {p2, p1, p3}, Lnet/sourceforge/opencamera/preview/Preview;->setFocusDistance(FZ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/MainActivity$38;->has_saved_zoom:Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$38;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5757
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->supportsZoom()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$38;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5758
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$2200(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getFocusAssistPref()I

    move-result p1

    if-lez p1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$38;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5759
    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity$38;->has_saved_zoom:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$38;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5761
    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getZoom()I

    move-result v0

    iput v0, p0, Lnet/sourceforge/opencamera/MainActivity$38;->saved_zoom_factor:I

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$38;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5764
    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->getScaledZoomFactor(F)I

    move-result p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$38;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5765
    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setZoom(I)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/MainActivity$38;->has_saved_zoom:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$38;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5774
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$38;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5777
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object p1

    iget v0, p0, Lnet/sourceforge/opencamera/MainActivity$38;->saved_zoom_factor:I

    invoke-virtual {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setZoom(I)V

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$38;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5779
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity$38;->val$is_target_distance:Z

    invoke-virtual {p1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->stoppedSettingFocusDistance(Z)V

    return-void
.end method
