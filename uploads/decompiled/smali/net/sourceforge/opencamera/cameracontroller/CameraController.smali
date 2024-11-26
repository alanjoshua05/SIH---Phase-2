.class public abstract Lnet/sourceforge/opencamera/cameracontroller/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController$SizeSorter;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController$RangeSorter;,
        Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;
    }
.end annotation


# static fields
.field public static final ANTIBANDING_DEFAULT:Ljava/lang/String; = "auto"

.field public static final COLOR_EFFECT_DEFAULT:Ljava/lang/String; = "none"

.field public static final EDGE_MODE_DEFAULT:Ljava/lang/String; = "default"

.field public static final EXPOSURE_TIME_DEFAULT:J = 0x1fca055L

.field public static final ISO_DEFAULT:Ljava/lang/String; = "auto"

.field public static final NOISE_REDUCTION_MODE_DEFAULT:Ljava/lang/String; = "default"

.field public static final N_IMAGES_NR_DARK:I = 0x8

.field public static final N_IMAGES_NR_DARK_LOW_LIGHT:I = 0xf

.field public static final SCENE_MODE_DEFAULT:Ljava/lang/String; = "auto"

.field private static final TAG:Ljava/lang/String; = "CameraController"

.field public static final WHITE_BALANCE_DEFAULT:Ljava/lang/String; = "auto"


# instance fields
.field private final cameraId:I

.field public volatile count_camera_parameters_exception:I

.field public volatile count_precapture_timeout:I

.field public volatile test_af_state_null_focus:I

.field public volatile test_capture_results:I

.field public volatile test_fake_flash_focus:I

.field public volatile test_fake_flash_photo:I

.field public volatile test_fake_flash_precapture:I

.field public volatile test_release_during_photo:Z

.field public volatile test_texture_view_buffer_h:I

.field public volatile test_texture_view_buffer_w:I

.field public volatile test_used_tonemap_curve:Z

.field public volatile test_wait_capture_result:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->cameraId:I

    return-void
.end method


# virtual methods
.method public abstract autoFocus(Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;Z)V
.end method

.method public abstract cancelAutoFocus()V
.end method

.method public captureResultAperture()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public captureResultExposureTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public captureResultFrameDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public captureResultHasAperture()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public captureResultHasExposureTime()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public captureResultHasFrameDuration()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public captureResultHasIso()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public captureResultHasWhiteBalanceTemperature()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public captureResultIsAEScanning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public captureResultIso()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public captureResultWhiteBalanceTemperature()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method checkModeIsSupported(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 718
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 725
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 728
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move-object p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 731
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 735
    :cond_1
    :goto_0
    new-instance p3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    invoke-direct {p3, p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object p3

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract clearFocusAndMetering()V
.end method

.method public abstract clearPreviewFpsRange()V
.end method

.method public abstract enableShutterSound(Z)V
.end method

.method public abstract focusIsContinuous()Z
.end method

.method public abstract focusIsVideo()Z
.end method

.method public abstract getAPI()Ljava/lang/String;
.end method

.method public abstract getAntiBanding()Ljava/lang/String;
.end method

.method public abstract getAutoExposureLock()Z
.end method

.method public abstract getAutoWhiteBalanceLock()Z
.end method

.method public abstract getBurstTotal()I
.end method

.method public abstract getBurstType()Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;
.end method

.method public abstract getCameraExtension()I
.end method

.method public abstract getCameraFeatures()Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;
        }
    .end annotation
.end method

.method public getCameraId()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->cameraId:I

    return v0
.end method

.method public abstract getCameraOrientation()I
.end method

.method public abstract getColorEffect()Ljava/lang/String;
.end method

.method public abstract getDisplayOrientation()I
.end method

.method public abstract getEdgeMode()Ljava/lang/String;
.end method

.method public abstract getExposureCompensation()I
.end method

.method public abstract getExposureTime()J
.end method

.method public abstract getFacing()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;
.end method

.method public abstract getFlashValue()Ljava/lang/String;
.end method

.method public abstract getFocusAreas()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFocusBracketingSourceDistance()F
.end method

.method public abstract getFocusBracketingTargetDistance()F
.end method

.method public abstract getFocusDistance()F
.end method

.method public abstract getFocusValue()Ljava/lang/String;
.end method

.method public abstract getISO()I
.end method

.method public abstract getISOKey()Ljava/lang/String;
.end method

.method public abstract getJpegQuality()I
.end method

.method public abstract getMeteringAreas()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNBurstTaken()I
.end method

.method public abstract getNoiseReductionMode()Ljava/lang/String;
.end method

.method public abstract getOpticalStabilization()Z
.end method

.method public abstract getParametersString()Ljava/lang/String;
.end method

.method public abstract getPictureSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;
.end method

.method public abstract getPreviewSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;
.end method

.method public abstract getSceneMode()Ljava/lang/String;
.end method

.method public abstract getSupportedPreviewFpsRange()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end method

.method public abstract getTonemapProfile()Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;
.end method

.method public getUseCamera2FakeFlash()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getVideoStabilization()Z
.end method

.method public abstract getWhiteBalance()Ljava/lang/String;
.end method

.method public abstract getWhiteBalanceTemperature()I
.end method

.method public abstract getZoom()I
.end method

.method public abstract initVideoRecorderPostPrepare(Landroid/media/MediaRecorder;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;
        }
    .end annotation
.end method

.method public abstract initVideoRecorderPrePrepare(Landroid/media/MediaRecorder;)V
.end method

.method public abstract isBurstOrExpo()Z
.end method

.method public abstract isCameraExtension()Z
.end method

.method public abstract isCapturingBurst()Z
.end method

.method public abstract isContinuousBurstInProgress()Z
.end method

.method public abstract isManualISO()Z
.end method

.method public needsFlash()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needsFrontScreenFlash()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onError()V
.end method

.method public abstract reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract removeLocationInfo()V
.end method

.method public resetCoverPreview()V
    .locals 0

    return-void
.end method

.method public abstract resetZoom()V
.end method

.method public abstract sceneModeAffectsFunctionality()Z
.end method

.method public abstract setAntiBanding(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
.end method

.method public abstract setAperture(F)V
.end method

.method public abstract setAutoExposureLock(Z)V
.end method

.method public abstract setAutoWhiteBalanceLock(Z)V
.end method

.method public abstract setBurstForNoiseReduction(ZZ)V
.end method

.method public abstract setBurstNImages(I)V
.end method

.method public abstract setBurstType(Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;)V
.end method

.method public abstract setCameraExtension(ZI)V
.end method

.method public abstract setCaptureFollowAutofocusHint(Z)V
.end method

.method public abstract setColorEffect(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
.end method

.method public abstract setContinuousFocusMoveCallback(Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;)V
.end method

.method public abstract setDisplayOrientation(I)V
.end method

.method public abstract setDummyCaptureHack(Z)V
.end method

.method public abstract setEdgeMode(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
.end method

.method public abstract setExpoBracketingNImages(I)V
.end method

.method public abstract setExpoBracketingStops(D)V
.end method

.method public abstract setExposureCompensation(I)Z
.end method

.method public abstract setExposureTime(J)Z
.end method

.method public abstract setFaceDetectionListener(Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;)V
.end method

.method public abstract setFlashValue(Ljava/lang/String;)V
.end method

.method public abstract setFocusAndMeteringArea(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Area;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setFocusBracketingAddInfinity(Z)V
.end method

.method public abstract setFocusBracketingNImages(I)V
.end method

.method public abstract setFocusBracketingSourceDistance(F)V
.end method

.method public abstract setFocusBracketingTargetDistance(F)V
.end method

.method public abstract setFocusDistance(F)Z
.end method

.method public abstract setFocusValue(Ljava/lang/String;)V
.end method

.method public abstract setISO(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
.end method

.method public abstract setISO(I)Z
.end method

.method public abstract setJpegQuality(I)V
.end method

.method public abstract setLocationInfo(Landroid/location/Location;)V
.end method

.method public abstract setManualISO(ZI)V
.end method

.method public abstract setNoiseReductionMode(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
.end method

.method public abstract setPictureSize(II)V
.end method

.method public abstract setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;
        }
    .end annotation
.end method

.method public abstract setPreviewFpsRange(II)V
.end method

.method public abstract setPreviewSize(II)V
.end method

.method public abstract setPreviewTexture(Landroid/view/TextureView;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;
        }
    .end annotation
.end method

.method public abstract setRaw(ZI)V
.end method

.method public abstract setRecordingHint(Z)V
.end method

.method public abstract setRotation(I)V
.end method

.method public abstract setSceneMode(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
.end method

.method public abstract setTonemapProfile(Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;FF)V
.end method

.method public setUseCamera2FakeFlash(Z)V
    .locals 0

    return-void
.end method

.method public abstract setUseExpoFastBurst(Z)V
.end method

.method public abstract setVideoHighSpeed(Z)V
.end method

.method public abstract setVideoStabilization(Z)V
.end method

.method public abstract setWhiteBalance(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;
.end method

.method public abstract setWhiteBalanceTemperature(I)Z
.end method

.method public abstract setZoom(I)V
.end method

.method public abstract setZoom(IF)V
.end method

.method public shouldCoverPreview()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract startFaceDetection()Z
.end method

.method public abstract startPreview()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;
        }
    .end annotation
.end method

.method public abstract stopContinuousBurst()V
.end method

.method public abstract stopFocusBracketingBurst()V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract supportsAutoFocus()Z
.end method

.method public abstract supportsMetering()Z
.end method

.method public abstract takePicture(Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V
.end method

.method public abstract unlock()V
.end method

.method public updatePreviewTexture()V
    .locals 0

    return-void
.end method
