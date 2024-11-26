.class Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraController2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCaptureCallback"
.end annotation


# instance fields
.field private last_af_state:I

.field private last_process_frame_number:J

.field final synthetic this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;


# direct methods
.method private constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    .locals 2

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8166
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->last_process_frame_number:J

    const/4 p1, -0x1

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->last_af_state:I

    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;)V
    .locals 0

    .line 8166
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V

    return-void
.end method

.method static synthetic access$12900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;)V
    .locals 0

    .line 8166
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->callCheckImagesCompleted()V

    return-void
.end method

.method static synthetic access$13000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 8166
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->updateCachedCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method private callCheckImagesCompleted()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 9000
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 9001
    new-instance v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback$1;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback$1;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getRequestTagType(Landroid/hardware/camera2/CaptureRequest;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;
    .locals 0

    .line 8171
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 8174
    :cond_0
    check-cast p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;

    .line 8175
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;->access$13200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;

    move-result-object p1

    return-object p1
.end method

.method private handleCaptureBurstInProgress(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 8910
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->handleRawCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method private handleCaptureCompleted(Landroid/hardware/camera2/CaptureResult;)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8918
    iget v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_capture_results:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_capture_results:I

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    const/4 v1, 0x0

    .line 8919
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$12802(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    .line 8921
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->handleRawCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8929
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8930
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$3()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8933
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    move-result-object p1

    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8934
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8937
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    move-result-object v0

    const-string v2, "flash_off"

    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8940
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8943
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8951
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8953
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8955
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8956
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    move-result-object p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z

    :cond_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8958
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$3()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8960
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$12100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 8968
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8969
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$16400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    move-result-object p1

    invoke-interface {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;->onError()V

    :cond_2
    :goto_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8972
    invoke-static {p1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8974
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    move-result-object p1

    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_FOCUS:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8977
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    move-result-object p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$10600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :try_start_2
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8979
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$12100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 8987
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    .line 8991
    :cond_3
    :goto_2
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->callCheckImagesCompleted()V

    return-void
.end method

.method private handleContinuousFocusMove(Landroid/hardware/camera2/CaptureResult;)V
    .locals 3

    .line 8659
    invoke-static {}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$5()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 8660
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->last_af_state:I

    if-eq v1, v2, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8663
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8664
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;->onContinuousFocusMove(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->last_af_state:I

    if-ne v1, v0, :cond_1

    .line 8667
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->last_af_state:I

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8670
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8671
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;->onContinuousFocusMove(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleFaceDetection(Landroid/hardware/camera2/CaptureResult;)V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8850
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$15900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8851
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$10()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 8852
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8853
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$16000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/graphics/Rect;

    move-result-object v0

    .line 8854
    invoke-static {}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$3()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v1

    invoke-static {p1, v1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/Face;

    if-eqz p1, :cond_2

    .line 8856
    array-length v1, p1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$16100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8860
    array-length v2, p1

    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$16102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I

    .line 8861
    array-length v1, p1

    new-array v1, v1, [Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    const/4 v2, 0x0

    .line 8862
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8863
    aget-object v4, p1, v2

    invoke-static {v3, v0, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$16200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/graphics/Rect;Landroid/hardware/camera2/params/Face;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8865
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$15900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;->onFaceDetection([Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private handleRawCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8876
    iget-boolean v0, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_wait_capture_result:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1f4

    .line 8890
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8893
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8897
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$16300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8898
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$16300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->setCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    :cond_1
    return-void
.end method

.method private handleStateChange(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 8346
    invoke-static {}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$5()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 8368
    invoke-static {}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$1()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v3

    invoke-static {v0, v3}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8385
    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    cmp-long v9, v3, v7

    if-eqz v9, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v9, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v9}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    add-long/2addr v9, v11

    cmp-long v11, v3, v9

    if-lez v11, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x0

    if-eqz v2, :cond_1

    .line 8388
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v5, :cond_1

    if-nez v3, :cond_1

    iget-object v11, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8391
    invoke-static {v11, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14002(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    goto :goto_2

    :cond_1
    iget-object v11, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8396
    invoke-static {v11, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14002(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    iget-object v11, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8397
    invoke-static {v11}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v11, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-virtual {v11}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->focusIsContinuous()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8398
    invoke-static {v11}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v11

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$7()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v12

    invoke-static {v11, v12}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_5

    .line 8399
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v9, :cond_5

    if-eqz v2, :cond_3

    .line 8403
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v11, v9, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v4, :cond_3

    :cond_2
    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    if-nez v2, :cond_4

    iget-object v12, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8415
    iget v13, v12, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_af_state_null_focus:I

    add-int/2addr v13, v5

    iput v13, v12, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_af_state_null_focus:I

    :cond_4
    iget-object v12, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8417
    invoke-static {v12}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;

    move-result-object v12

    invoke-interface {v12, v11}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;->onAutoFocus(Z)V

    iget-object v11, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8418
    invoke-static {v11, v10}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;

    iget-object v11, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8419
    invoke-static {v11, v7, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13902(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;J)J

    iget-object v11, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8420
    invoke-static {v11, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    :cond_5
    :goto_2
    iget-object v11, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8434
    invoke-static {v11}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    if-eqz v11, :cond_6

    iget-object v11, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v11}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    move-object/from16 v12, p1

    if-ne v11, v12, :cond_6

    iget-object v11, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8437
    invoke-static {v11, v10}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    :cond_6
    iget-object v11, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8440
    invoke-static {v11}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v11

    if-nez v11, :cond_7

    goto/16 :goto_8

    :cond_7
    iget-object v11, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8443
    invoke-static {v11}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v5, :cond_10

    if-nez v2, :cond_9

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8448
    iget v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_af_state_null_focus:I

    add-int/2addr v2, v5

    iput v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_af_state_null_focus:I

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8449
    invoke-static {v0, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8450
    invoke-static {v0, v7, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;J)J

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8451
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8452
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;

    move-result-object v0

    invoke-interface {v0, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;->onAutoFocus(Z)V

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8453
    invoke-static {v0, v10}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;

    :cond_8
    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8455
    invoke-static {v0, v7, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13902(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;J)J

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8456
    invoke-static {v0, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    goto/16 :goto_8

    .line 8458
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v11, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->last_af_state:I

    if-ne v0, v11, :cond_a

    if-eqz v3, :cond_1d

    :cond_a
    if-nez v3, :cond_b

    .line 8460
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v9, :cond_b

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v12, :cond_1d

    .line 8463
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v9, :cond_d

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_c

    goto :goto_3

    :cond_c
    const/4 v5, 0x0

    :cond_d
    :goto_3
    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8471
    invoke-static {v0, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8472
    invoke-static {v0, v7, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;J)J

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8473
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8474
    invoke-static {v0, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8475
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8485
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8486
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    move-result-object v0

    const-string v3, "flash_off"

    invoke-static {v0, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8487
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    move-result-object v0

    iget-object v3, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    invoke-static {v0, v3, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z

    :try_start_0
    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8489
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 8497
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :goto_4
    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8501
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    move-result-object v0

    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8502
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    move-result-object v0

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-static {v0, v2, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z

    :try_start_1
    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8504
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$12100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 8512
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :cond_e
    :goto_5
    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8520
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8521
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;

    move-result-object v0

    invoke-interface {v0, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;->onAutoFocus(Z)V

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8522
    invoke-static {v0, v10}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;

    :cond_f
    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8524
    invoke-static {v0, v7, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13902(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;J)J

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8525
    invoke-static {v0, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    goto/16 :goto_8

    :cond_10
    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8529
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v2

    const-wide/16 v13, 0x7d0

    const/4 v3, 0x3

    const-string v11, "CameraController2"

    if-ne v2, v4, :cond_13

    if-eqz v0, :cond_12

    .line 8538
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v12, :cond_11

    goto :goto_6

    :cond_11
    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8548
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-eqz v0, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v0, v6, v13

    if-lez v0, :cond_1d

    const-string v0, "precapture start timeout"

    .line 8551
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8552
    iget v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->count_precapture_timeout:I

    add-int/2addr v2, v5

    iput v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->count_precapture_timeout:I

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8553
    invoke-static {v0, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;J)J

    goto/16 :goto_8

    :cond_12
    :goto_6
    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8545
    invoke-static {v0, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;J)J

    goto/16 :goto_8

    :cond_13
    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8557
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v2

    const-wide/16 v15, 0xbb8

    if-ne v2, v3, :cond_16

    if-eqz v0, :cond_15

    .line 8566
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v12, :cond_14

    goto :goto_7

    :cond_14
    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8574
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)J

    move-result-wide v2

    cmp-long v0, v2, v7

    if-eqz v0, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)J

    move-result-wide v9

    sub-long/2addr v2, v9

    cmp-long v0, v2, v15

    if-lez v0, :cond_1d

    const-string v0, "precapture done timeout"

    .line 8577
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8578
    iget v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->count_precapture_timeout:I

    add-int/2addr v2, v5

    iput v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->count_precapture_timeout:I

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8579
    invoke-static {v0, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8580
    invoke-static {v0, v7, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;J)J

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8581
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V

    goto/16 :goto_8

    :cond_15
    :goto_7
    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8570
    invoke-static {v0, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8571
    invoke-static {v0, v7, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;J)J

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8572
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V

    goto/16 :goto_8

    :cond_16
    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8584
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v2

    if-ne v2, v9, :cond_1a

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8593
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest;

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8598
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    if-nez v2, :cond_18

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_18

    :cond_17
    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8602
    invoke-static {v0, v12}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;J)J

    goto/16 :goto_8

    :cond_18
    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8605
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    if-nez v0, :cond_19

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)J

    move-result-wide v2

    cmp-long v0, v2, v7

    if-eqz v0, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)J

    move-result-wide v15

    sub-long/2addr v2, v15

    const-wide/16 v15, 0x64

    cmp-long v0, v2, v15

    if-lez v0, :cond_19

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8614
    invoke-static {v0, v12}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;J)J

    goto/16 :goto_8

    :cond_19
    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8617
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)J

    move-result-wide v2

    cmp-long v0, v2, v7

    if-eqz v0, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)J

    move-result-wide v6

    sub-long/2addr v2, v6

    cmp-long v0, v2, v13

    if-lez v0, :cond_1d

    const-string v0, "fake precapture start timeout"

    .line 8620
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8621
    iget v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->count_precapture_timeout:I

    add-int/2addr v2, v5

    iput v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->count_precapture_timeout:I

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8622
    invoke-static {v0, v12}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8623
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;J)J

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8624
    invoke-static {v0, v10}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    goto :goto_8

    :cond_1a
    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8627
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v2

    if-ne v2, v12, :cond_1d

    iget-object v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8638
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_1c

    :cond_1b
    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8642
    invoke-static {v0, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8643
    invoke-static {v0, v7, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;J)J

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8644
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V

    goto :goto_8

    :cond_1c
    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8646
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)J

    move-result-wide v2

    cmp-long v0, v2, v7

    if-eqz v0, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)J

    move-result-wide v9

    sub-long/2addr v2, v9

    cmp-long v0, v2, v15

    if-lez v0, :cond_1d

    const-string v0, "fake precapture done timeout"

    .line 8649
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8650
    iget v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->count_precapture_timeout:I

    add-int/2addr v2, v5

    iput v2, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->count_precapture_timeout:I

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8651
    invoke-static {v0, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8652
    invoke-static {v0, v7, v8}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;J)J

    iget-object v0, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8653
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V

    :cond_1d
    :goto_8
    return-void
.end method

.method private process(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 5

    .line 8681
    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureResult;)J

    move-result-wide v0

    iget-wide v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->last_process_frame_number:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 8690
    :cond_0
    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureResult;)J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->last_process_frame_number:J

    .line 8692
    invoke-direct {p0, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->updateCachedAECaptureStatus(Landroid/hardware/camera2/CaptureResult;)V

    .line 8694
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->handleStateChange(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 8696
    invoke-direct {p0, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->handleContinuousFocusMove(Landroid/hardware/camera2/CaptureResult;)V

    .line 8698
    invoke-static {}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$5()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p1

    invoke-static {p2, p1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 8699
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->last_af_state:I

    if-eq p2, v0, :cond_1

    .line 8702
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->last_af_state:I

    :cond_1
    return-void
.end method

.method private processCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 9022
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$12700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    const/4 v1, 0x1

    .line 9023
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$12702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    .line 9028
    :cond_0
    invoke-direct {p0, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->updateCachedCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 9029
    invoke-direct {p0, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->handleFaceDetection(Landroid/hardware/camera2/CaptureResult;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 9031
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$16600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$16700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9034
    invoke-static {}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$4()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    invoke-static {p2, v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 9041
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    const/4 v1, 0x0

    .line 9042
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$16602(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    const/4 v1, 0x0

    .line 9043
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$16702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 9045
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$12100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9053
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    .line 9078
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->getRequestTagType(Landroid/hardware/camera2/CaptureRequest;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;

    move-result-object p1

    .line 9079
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;->CAPTURE:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;

    if-ne p1, v0, :cond_2

    .line 9080
    invoke-direct {p0, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->handleCaptureCompleted(Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_1

    .line 9082
    :cond_2
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;->CAPTURE_BURST_IN_PROGRESS:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;

    if-ne p1, v0, :cond_3

    .line 9083
    invoke-direct {p0, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->handleCaptureBurstInProgress(Landroid/hardware/camera2/CaptureResult;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateCachedAECaptureStatus(Landroid/hardware/camera2/CaptureResult;)V
    .locals 5

    .line 8274
    invoke-static {}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$1()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 8293
    invoke-static {}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$2()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v1

    invoke-static {p1, v1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8307
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    const/4 v1, 0x0

    .line 8311
    invoke-static {p1, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13602(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8312
    invoke-static {p1, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8314
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8318
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13602(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8320
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8321
    invoke-static {p1, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8325
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8326
    invoke-static {p1, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 8332
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_5

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8335
    invoke-static {p1, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13802(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8340
    invoke-static {p1, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$13802(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    :goto_1
    return-void
.end method

.method private updateCachedCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 9

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8713
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$12800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8718
    :cond_0
    invoke-static {}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$6()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8719
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14902(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8720
    invoke-static {}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$6()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v3

    invoke-static {p1, v3}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$15002(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8754
    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$14902(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8757
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$12800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 8760
    :cond_2
    invoke-static {}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8761
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$15102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8762
    invoke-static {}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v3

    invoke-static {p1, v3}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$15202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;J)J

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8773
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)J

    move-result-wide v3

    const-wide/32 v5, 0xbebc200

    const-wide/32 v7, 0x4f790d5

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8774
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    move-result-object v3

    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$7600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$15202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;J)J

    :cond_3
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8776
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$15200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_5

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8778
    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$15102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8782
    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$15102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    :cond_5
    :goto_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8785
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$12800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 8788
    :cond_6
    invoke-static {}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$7()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8789
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$15302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8790
    invoke-static {}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$7()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v3

    invoke-static {p1, v3}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$15402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;J)J

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8793
    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$15302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    :goto_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8817
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$12800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    .line 8820
    :cond_8
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8821
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$15502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8822
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v2

    invoke-static {p1, v2}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$15602(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;F)F

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8828
    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$15502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    .line 8831
    :goto_3
    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$1()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/RggbChannelVector;

    move-result-object p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8832
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$12800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    if-eqz p1, :cond_b

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8836
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$15702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8837
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$15802(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/params/RggbChannelVector;)Landroid/hardware/camera2/params/RggbChannelVector;

    :cond_b
    :goto_4
    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 0

    .line 8182
    invoke-super/range {p0 .. p5}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 8266
    invoke-direct {p0, p2, p3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->process(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 8267
    invoke-direct {p0, p2, p3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->processCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 8268
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    .line 8193
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 8243
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 0

    .line 8202
    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 0

    .line 8212
    invoke-super {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 8231
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method
