.class public abstract Lnet/sourceforge/opencamera/preview/BasicApplicationInterface;
.super Ljava/lang/Object;
.source "BasicApplicationInterface.java"

# interfaces
.implements Lnet/sourceforge/opencamera/preview/ApplicationInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowZoom()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cameraClosed()V
    .locals 0

    return-void
.end method

.method public cameraInOperation(ZZ)V
    .locals 0

    return-void
.end method

.method public cameraSetup()V
    .locals 0

    return-void
.end method

.method public canTakeNewPhoto()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clearColorEffectPref()V
    .locals 0

    return-void
.end method

.method public clearExposureCompensationPref()V
    .locals 0

    return-void
.end method

.method public clearExposureTimePref()V
    .locals 0

    return-void
.end method

.method public clearISOPref()V
    .locals 0

    return-void
.end method

.method public clearSceneModePref()V
    .locals 0

    return-void
.end method

.method public clearWhiteBalancePref()V
    .locals 0

    return-void
.end method

.method public deleteUnusedVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getAntiBandingPref()Ljava/lang/String;
    .locals 1

    const-string v0, "auto"

    return-object v0
.end method

.method public getAperturePref()F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getBurstForNoiseReduction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBurstNImages()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getCalibratedLevelAngle()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCameraExtensionPref()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCameraIdPref()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCameraNoiseReductionModePref()Ljava/lang/String;
    .locals 1

    const-string v0, "default"

    return-object v0
.end method

.method public getCameraResolutionPref(Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;)Landroid/util/Pair;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getColorEffectPref()Ljava/lang/String;
    .locals 1

    const-string v0, "none"

    return-object v0
.end method

.method public getDisplayRotation(Z)I
    .locals 0

    .line 292
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/BasicApplicationInterface;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 293
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    return p1
.end method

.method public getDoubleTapCapturePref()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEdgeModePref()Ljava/lang/String;
    .locals 1

    const-string v0, "default"

    return-object v0
.end method

.method public getExpoBracketingNImagesPref()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getExpoBracketingStopsPref()D
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    return-wide v0
.end method

.method public getExposureCompensationPref()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExposureTimePref()J
    .locals 2

    const-wide/32 v0, 0x1fca055

    return-wide v0
.end method

.method public getFaceDetectionPref()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFlashPref()Ljava/lang/String;
    .locals 1

    const-string v0, "flash_off"

    return-object v0
.end method

.method public getFocusBracketingAddInfinityPref()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFocusBracketingNImagesPref()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getFocusDistancePref(Z)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getFocusPref(Z)Ljava/lang/String;
    .locals 0

    const-string p1, "focus_mode_continuous_picture"

    return-object p1
.end method

.method public getForce4KPref()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGeotaggingPref()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getISOPref()Ljava/lang/String;
    .locals 1

    const-string v0, "auto"

    return-object v0
.end method

.method public getImageQualityPref()I
    .locals 1

    const/16 v0, 0x5a

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLockOrientationPref()Ljava/lang/String;
    .locals 1

    const-string v0, "none"

    return-object v0
.end method

.method public getMaxRawImages()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getNRModePref()Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;
    .locals 1

    .line 353
    sget-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;->NRMODE_NORMAL:Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    return-object v0
.end method

.method public getPausePreviewPref()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreviewSizePref()Ljava/lang/String;
    .locals 1

    const-string v0, "preference_preview_size_wysiwyg"

    return-object v0
.end method

.method public getRawPref()Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;
    .locals 1

    .line 374
    sget-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;->RAWPREF_JPEG_ONLY:Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;

    return-object v0
.end method

.method public getRecordAudioChannelsPref()Ljava/lang/String;
    .locals 1

    const-string v0, "audio_default"

    return-object v0
.end method

.method public getRecordAudioPref()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getRecordAudioSourcePref()Ljava/lang/String;
    .locals 1

    const-string v0, "audio_src_camcorder"

    return-object v0
.end method

.method public getRecordVideoOutputFormatPref()Ljava/lang/String;
    .locals 1

    const-string v0, "preference_video_output_format_default"

    return-object v0
.end method

.method public getRepeatIntervalPref()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRepeatPref()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method public getRequireLocationPref()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSceneModePref()Ljava/lang/String;
    .locals 1

    const-string v0, "auto"

    return-object v0
.end method

.method public getShowToastsPref()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getShutterSoundPref()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getStartupFocusPref()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTimerPref()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTouchCapturePref()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoBitratePref()Ljava/lang/String;
    .locals 1

    const-string v0, "default"

    return-object v0
.end method

.method public getVideoCaptureRateFactor()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getVideoFPSPref()Ljava/lang/String;
    .locals 1

    const-string v0, "default"

    return-object v0
.end method

.method public getVideoFlashPref()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoLogProfileStrength()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoLowPowerCheckPref()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getVideoMaxDurationPref()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideoMaxFileSizePref()Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMaxFileSize;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/preview/ApplicationInterface$NoFreeStorageException;
        }
    .end annotation

    .line 174
    new-instance v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMaxFileSize;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMaxFileSize;-><init>()V

    const-wide/16 v1, 0x0

    .line 175
    iput-wide v1, v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMaxFileSize;->max_filesize:J

    const/4 v1, 0x1

    .line 176
    iput-boolean v1, v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMaxFileSize;->auto_restart:Z

    return-object v0
.end method

.method public getVideoProfileGamma()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoQualityPref()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getVideoRestartTimesPref()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoStabilizationPref()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoTonemapProfile()Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;
    .locals 1

    .line 149
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_OFF:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    return-object v0
.end method

.method public getWhiteBalancePref()Ljava/lang/String;
    .locals 1

    const-string v0, "auto"

    return-object v0
.end method

.method public getWhiteBalanceTemperaturePref()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getZoomPref()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public hasPausedPreview(Z)V
    .locals 0

    return-void
.end method

.method public imageQueueWouldBlock(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isCameraBurstPref()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCameraExtensionPref()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isExpoBracketingPref()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFocusBracketingPref()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPreviewInBackground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTestAlwaysFocus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVideoPref()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public multitouchZoom(I)V
    .locals 0

    return-void
.end method

.method public onBurstPictureTaken(Ljava/util/List;Ljava/util/Date;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/Date;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onCameraError()V
    .locals 0

    return-void
.end method

.method public onCaptureStarted()V
    .locals 0

    return-void
.end method

.method public onContinuousFocusMove(Z)V
    .locals 0

    return-void
.end method

.method public onDrawPreview(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public onExtensionProgress(I)V
    .locals 0

    return-void
.end method

.method public onFailedCreateVideoFileError()V
    .locals 0

    return-void
.end method

.method public onFailedReconnectError()V
    .locals 0

    return-void
.end method

.method public onFailedStartPreview()V
    .locals 0

    return-void
.end method

.method public onPhotoError()V
    .locals 0

    return-void
.end method

.method public onPictureCompleted()V
    .locals 0

    return-void
.end method

.method public onRawBurstPictureTaken(Ljava/util/List;Ljava/util/Date;)Z
    .locals 0
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

    const/4 p1, 0x0

    return p1
.end method

.method public onRawPictureTaken(Lnet/sourceforge/opencamera/cameracontroller/RawImage;Ljava/util/Date;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onVideoError(II)V
    .locals 0

    return-void
.end method

.method public onVideoInfo(II)V
    .locals 0

    return-void
.end method

.method public onVideoRecordStartError(Lnet/sourceforge/opencamera/preview/VideoProfile;)V
    .locals 0

    return-void
.end method

.method public onVideoRecordStopError(Lnet/sourceforge/opencamera/preview/VideoProfile;)V
    .locals 0

    return-void
.end method

.method public requestTakePhoto()V
    .locals 0

    return-void
.end method

.method public restartedVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCameraIdPref(I)V
    .locals 0

    return-void
.end method

.method public setCameraResolutionPref(II)V
    .locals 0

    return-void
.end method

.method public setColorEffectPref(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setExposureCompensationPref(I)V
    .locals 0

    return-void
.end method

.method public setExposureTimePref(J)V
    .locals 0

    return-void
.end method

.method public setFlashPref(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setFocusDistancePref(FZ)V
    .locals 0

    return-void
.end method

.method public setFocusPref(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setISOPref(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSceneModePref(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVideoPref(Z)V
    .locals 0

    return-void
.end method

.method public setVideoQualityPref(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setWhiteBalancePref(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setWhiteBalanceTemperaturePref(I)V
    .locals 0

    return-void
.end method

.method public setZoomPref(I)V
    .locals 0

    return-void
.end method

.method public startedVideo()V
    .locals 0

    return-void
.end method

.method public startingVideo()V
    .locals 0

    return-void
.end method

.method public stoppedVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public stoppingVideo()V
    .locals 0

    return-void
.end method

.method public timerBeep(J)V
    .locals 0

    return-void
.end method

.method public touchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public turnFrontScreenFlashOn()V
    .locals 0

    return-void
.end method

.method public useCamera2DummyCaptureHack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public useCamera2FakeFlash()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public useCamera2FastBurst()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public usePhotoVideoRecording()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
