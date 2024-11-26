.class public final synthetic Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/util/Rational;)F
    .locals 0

    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/util/SizeF;)F
    .locals 0

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/hardware/camera2/params/MeteringRectangle;)I
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/renderscript/Element;)I
    .locals 0

    invoke-virtual {p0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/util/Size;)I
    .locals 0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/view/WindowInsets;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/hardware/camera2/params/StreamConfigurationMap;Ljava/lang/Class;Landroid/util/Size;)J
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(Ljava/lang/Class;Landroid/util/Size;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic m(Landroid/os/StatFs;)J
    .locals 2

    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m(Landroid/system/StructStatVfs;)J
    .locals 2

    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_bavail:J

    return-wide v0
.end method

.method public static bridge synthetic m(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static bridge synthetic m()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/hardware/display/DisplayManager;
    .locals 0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;
    .locals 0

    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(IIII)Landroid/media/ImageReader;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/SoundPool$Builder;I)Landroid/media/SoundPool$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/SoundPool$Builder;Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/SoundPool$Builder;)Landroid/media/SoundPool;
    .locals 0

    invoke-virtual {p0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    invoke-static {p0, p1}, Landroid/provider/MediaStore;->getMediaUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/renderscript/Element;)Landroid/renderscript/Element$DataType;
    .locals 0

    invoke-virtual {p0}, Landroid/renderscript/Element;->getDataType()Landroid/renderscript/Element$DataType;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/renderscript/Script$LaunchOptions;II)Landroid/renderscript/Script$LaunchOptions;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/renderscript/Script$LaunchOptions;->setX(II)Landroid/renderscript/Script$LaunchOptions;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/renderscript/Type;->createXY(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;
    .locals 0

    invoke-static {p0}, Landroid/system/Os;->fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/String;I)Landroid/text/Spanned;
    .locals 0

    invoke-static {p0, p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/util/Rational;
    .locals 0

    check-cast p0, Landroid/util/Rational;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/hardware/camera2/CameraExtensionCharacteristics;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getSupportedExtensions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/hardware/camera2/CameraExtensionCharacteristics;II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getExtensionSupportedSizes(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/hardware/camera2/CameraExtensionCharacteristics;ILjava/lang/Class;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getExtensionSupportedSizes(ILjava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()V
    .locals 0

    invoke-static {}, Landroid/renderscript/RenderScript;->releaseAllContexts()V

    return-void
.end method

.method public static bridge synthetic m(Landroid/app/KeyguardManager;Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/hardware/Camera;Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/hardware/camera2/CameraAccessException;)V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return-void
.end method

.method public static bridge synthetic m(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    return-void
.end method

.method public static bridge synthetic m(Landroid/hardware/display/DisplayManager;Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/hardware/display/DisplayManager;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/ImageReader;)V
    .locals 0

    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/ImageReader;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaActionSound;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaActionSound;->load(I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/View;Landroid/view/View$OnApplyWindowInsetsListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/Window;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    return-void
.end method

.method public static bridge synthetic m(Lnet/sourceforge/opencamera/MainActivity;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/MainActivity;->setRecentsScreenshotEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic m(Lnet/sourceforge/opencamera/MyTileService;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/MyTileService;->startActivityAndCollapse(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static bridge synthetic m(Lnet/sourceforge/opencamera/MyTileService;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/MyTileService;->startActivityAndCollapse(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic m(Lnet/sourceforge/opencamera/MyTileServiceFrontCamera;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/MyTileServiceFrontCamera;->startActivityAndCollapse(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static bridge synthetic m(Lnet/sourceforge/opencamera/MyTileServiceFrontCamera;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/MyTileServiceFrontCamera;->startActivityAndCollapse(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic m(Lnet/sourceforge/opencamera/MyTileServiceVideo;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/MyTileServiceVideo;->startActivityAndCollapse(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static bridge synthetic m(Lnet/sourceforge/opencamera/MyTileServiceVideo;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/MyTileServiceVideo;->startActivityAndCollapse(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/app/KeyguardManager;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/hardware/Camera$CameraInfo;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z

    return p0
.end method

.method public static bridge synthetic m(Landroid/hardware/Camera;Z)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/util/Size;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Lnet/sourceforge/opencamera/MainActivity;)Z
    .locals 0

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->isDestroyed()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/hardware/camera2/params/StreamConfigurationMap;)[Landroid/util/Range;
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRanges()[Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/util/Size;)[Landroid/util/Range;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/hardware/camera2/params/StreamConfigurationMap;)[Landroid/util/Size;
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/hardware/camera2/params/StreamConfigurationMap;I)[Landroid/util/Size;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/hardware/camera2/params/StreamConfigurationMap;Ljava/lang/Class;)[Landroid/util/Size;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/util/SizeF;)F
    .locals 0

    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Landroid/util/Size;)I
    .locals 0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Landroid/view/WindowInsets;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Landroid/os/StatFs;)J
    .locals 2

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m$1(Landroid/system/StructStatVfs;)J
    .locals 2

    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_bsize:J

    return-wide v0
.end method

.method public static bridge synthetic m$1()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->TONEMAP_MAX_CURVE_POINTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static bridge synthetic m$1()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0
.end method

.method public static bridge synthetic m$1(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/renderscript/Script$LaunchOptions;II)Landroid/renderscript/Script$LaunchOptions;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/renderscript/Script$LaunchOptions;->setY(II)Landroid/renderscript/Script$LaunchOptions;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Lnet/sourceforge/opencamera/MainActivity;)Z
    .locals 0

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity;->isInMultiWindowMode()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Landroid/hardware/camera2/params/StreamConfigurationMap;I)[Landroid/util/Size;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$10()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static bridge synthetic m$11()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static bridge synthetic m$12()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static bridge synthetic m$13()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static bridge synthetic m$14()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static bridge synthetic m$15()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static bridge synthetic m$16()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static bridge synthetic m$17()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static bridge synthetic m$2(Landroid/view/WindowInsets;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$2()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static bridge synthetic m$2()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0
.end method

.method public static bridge synthetic m$3()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static bridge synthetic m$3()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0
.end method

.method public static bridge synthetic m$4()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static bridge synthetic m$5()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static bridge synthetic m$6()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static bridge synthetic m$7()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static bridge synthetic m$8()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->EDGE_AVAILABLE_EDGE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static bridge synthetic m$9()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method
