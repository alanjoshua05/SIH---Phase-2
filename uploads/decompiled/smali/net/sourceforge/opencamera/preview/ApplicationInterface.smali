.class public interface abstract Lnet/sourceforge/opencamera/preview/ApplicationInterface;
.super Ljava/lang/Object;
.source "ApplicationInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;,
        Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;,
        Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;,
        Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;,
        Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMaxFileSize;,
        Lnet/sourceforge/opencamera/preview/ApplicationInterface$NoFreeStorageException;
    }
.end annotation


# virtual methods
.method public abstract allowZoom()Z
.end method

.method public abstract cameraClosed()V
.end method

.method public abstract cameraInOperation(ZZ)V
.end method

.method public abstract cameraSetup()V
.end method

.method public abstract canTakeNewPhoto()Z
.end method

.method public abstract clearColorEffectPref()V
.end method

.method public abstract clearExposureCompensationPref()V
.end method

.method public abstract clearExposureTimePref()V
.end method

.method public abstract clearISOPref()V
.end method

.method public abstract clearSceneModePref()V
.end method

.method public abstract clearWhiteBalancePref()V
.end method

.method public abstract createOutputVideoFile(Ljava/lang/String;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createOutputVideoMediaStore(Ljava/lang/String;)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createOutputVideoMethod()Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;
.end method

.method public abstract createOutputVideoSAF(Ljava/lang/String;)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createOutputVideoUri()Landroid/net/Uri;
.end method

.method public abstract deleteUnusedVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract getAntiBandingPref()Ljava/lang/String;
.end method

.method public abstract getAperturePref()F
.end method

.method public abstract getBurstForNoiseReduction()Z
.end method

.method public abstract getBurstNImages()I
.end method

.method public abstract getCalibratedLevelAngle()D
.end method

.method public abstract getCameraExtensionPref()I
.end method

.method public abstract getCameraIdPref()I
.end method

.method public abstract getCameraNoiseReductionModePref()Ljava/lang/String;
.end method

.method public abstract getCameraResolutionPref(Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getColorEffectPref()Ljava/lang/String;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDisplayRotation(Z)I
.end method

.method public abstract getDoubleTapCapturePref()Z
.end method

.method public abstract getEdgeModePref()Ljava/lang/String;
.end method

.method public abstract getExpoBracketingNImagesPref()I
.end method

.method public abstract getExpoBracketingStopsPref()D
.end method

.method public abstract getExposureCompensationPref()I
.end method

.method public abstract getExposureTimePref()J
.end method

.method public abstract getFaceDetectionPref()Z
.end method

.method public abstract getFlashPref()Ljava/lang/String;
.end method

.method public abstract getFocusBracketingAddInfinityPref()Z
.end method

.method public abstract getFocusBracketingNImagesPref()I
.end method

.method public abstract getFocusDistancePref(Z)F
.end method

.method public abstract getFocusPref(Z)Ljava/lang/String;
.end method

.method public abstract getForce4KPref()Z
.end method

.method public abstract getGeotaggingPref()Z
.end method

.method public abstract getISOPref()Ljava/lang/String;
.end method

.method public abstract getImageQualityPref()I
.end method

.method public abstract getLocation()Landroid/location/Location;
.end method

.method public abstract getLockOrientationPref()Ljava/lang/String;
.end method

.method public abstract getMaxRawImages()I
.end method

.method public abstract getNRModePref()Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;
.end method

.method public abstract getPausePreviewPref()Z
.end method

.method public abstract getPreviewSizePref()Ljava/lang/String;
.end method

.method public abstract getRawPref()Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;
.end method

.method public abstract getRecordAudioChannelsPref()Ljava/lang/String;
.end method

.method public abstract getRecordAudioPref()Z
.end method

.method public abstract getRecordAudioSourcePref()Ljava/lang/String;
.end method

.method public abstract getRecordVideoOutputFormatPref()Ljava/lang/String;
.end method

.method public abstract getRepeatIntervalPref()J
.end method

.method public abstract getRepeatPref()Ljava/lang/String;
.end method

.method public abstract getRequireLocationPref()Z
.end method

.method public abstract getSceneModePref()Ljava/lang/String;
.end method

.method public abstract getShowToastsPref()Z
.end method

.method public abstract getShutterSoundPref()Z
.end method

.method public abstract getStartupFocusPref()Z
.end method

.method public abstract getTimerPref()J
.end method

.method public abstract getTouchCapturePref()Z
.end method

.method public abstract getVideoBitratePref()Ljava/lang/String;
.end method

.method public abstract getVideoCaptureRateFactor()F
.end method

.method public abstract getVideoFPSPref()Ljava/lang/String;
.end method

.method public abstract getVideoFlashPref()Z
.end method

.method public abstract getVideoLogProfileStrength()F
.end method

.method public abstract getVideoLowPowerCheckPref()Z
.end method

.method public abstract getVideoMaxDurationPref()J
.end method

.method public abstract getVideoMaxFileSizePref()Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMaxFileSize;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/preview/ApplicationInterface$NoFreeStorageException;
        }
    .end annotation
.end method

.method public abstract getVideoProfileGamma()F
.end method

.method public abstract getVideoQualityPref()Ljava/lang/String;
.end method

.method public abstract getVideoRestartTimesPref()I
.end method

.method public abstract getVideoStabilizationPref()Z
.end method

.method public abstract getVideoTonemapProfile()Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;
.end method

.method public abstract getWhiteBalancePref()Ljava/lang/String;
.end method

.method public abstract getWhiteBalanceTemperaturePref()I
.end method

.method public abstract getZoomPref()I
.end method

.method public abstract hasPausedPreview(Z)V
.end method

.method public abstract imageQueueWouldBlock(II)Z
.end method

.method public abstract isCameraBurstPref()Z
.end method

.method public abstract isCameraExtensionPref()Z
.end method

.method public abstract isExpoBracketingPref()Z
.end method

.method public abstract isFocusBracketingPref()Z
.end method

.method public abstract isPreviewInBackground()Z
.end method

.method public abstract isTestAlwaysFocus()Z
.end method

.method public abstract isVideoPref()Z
.end method

.method public abstract multitouchZoom(I)V
.end method

.method public abstract needsStoragePermission()Z
.end method

.method public abstract onBurstPictureTaken(Ljava/util/List;Ljava/util/Date;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/Date;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract onCameraError()V
.end method

.method public abstract onCaptureStarted()V
.end method

.method public abstract onContinuousFocusMove(Z)V
.end method

.method public abstract onDrawPreview(Landroid/graphics/Canvas;)V
.end method

.method public abstract onExtensionProgress(I)V
.end method

.method public abstract onFailedCreateVideoFileError()V
.end method

.method public abstract onFailedReconnectError()V
.end method

.method public abstract onFailedStartPreview()V
.end method

.method public abstract onPhotoError()V
.end method

.method public abstract onPictureCompleted()V
.end method

.method public abstract onPictureTaken([BLjava/util/Date;)Z
.end method

.method public abstract onRawBurstPictureTaken(Ljava/util/List;Ljava/util/Date;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/RawImage;",
            ">;",
            "Ljava/util/Date;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract onRawPictureTaken(Lnet/sourceforge/opencamera/cameracontroller/RawImage;Ljava/util/Date;)Z
.end method

.method public abstract onVideoError(II)V
.end method

.method public abstract onVideoInfo(II)V
.end method

.method public abstract onVideoRecordStartError(Lnet/sourceforge/opencamera/preview/VideoProfile;)V
.end method

.method public abstract onVideoRecordStopError(Lnet/sourceforge/opencamera/preview/VideoProfile;)V
.end method

.method public abstract requestCameraPermission()V
.end method

.method public abstract requestRecordAudioPermission()V
.end method

.method public abstract requestStoragePermission()V
.end method

.method public abstract requestTakePhoto()V
.end method

.method public abstract restartedVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract setCameraIdPref(I)V
.end method

.method public abstract setCameraResolutionPref(II)V
.end method

.method public abstract setColorEffectPref(Ljava/lang/String;)V
.end method

.method public abstract setExposureCompensationPref(I)V
.end method

.method public abstract setExposureTimePref(J)V
.end method

.method public abstract setFlashPref(Ljava/lang/String;)V
.end method

.method public abstract setFocusDistancePref(FZ)V
.end method

.method public abstract setFocusPref(Ljava/lang/String;Z)V
.end method

.method public abstract setISOPref(Ljava/lang/String;)V
.end method

.method public abstract setSceneModePref(Ljava/lang/String;)V
.end method

.method public abstract setVideoPref(Z)V
.end method

.method public abstract setVideoQualityPref(Ljava/lang/String;)V
.end method

.method public abstract setWhiteBalancePref(Ljava/lang/String;)V
.end method

.method public abstract setWhiteBalanceTemperaturePref(I)V
.end method

.method public abstract setZoomPref(I)V
.end method

.method public abstract startedVideo()V
.end method

.method public abstract startingVideo()V
.end method

.method public abstract stoppedVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract stoppingVideo()V
.end method

.method public abstract timerBeep(J)V
.end method

.method public abstract touchEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract turnFrontScreenFlashOn()V
.end method

.method public abstract useCamera2()Z
.end method

.method public abstract useCamera2DummyCaptureHack()Z
.end method

.method public abstract useCamera2FakeFlash()Z
.end method

.method public abstract useCamera2FastBurst()Z
.end method

.method public abstract usePhotoVideoRecording()Z
.end method
