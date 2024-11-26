.class public Lnet/sourceforge/opencamera/MyApplicationInterface;
.super Lnet/sourceforge/opencamera/preview/BasicApplicationInterface;
.source "MyApplicationInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;,
        Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;,
        Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;,
        Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;,
        Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MyApplicationInterface"

.field private static final aperture_default:F = -1.0f

.field private static final cameraId_default:I = 0x0

.field public static final max_panorama_pics_c:I = 0xa

.field private static final nr_mode_default:Ljava/lang/String; = "preference_nr_mode_normal"

.field private static final panorama_pics_per_screen:F = 3.33333f


# instance fields
.field private aperture:F

.field private cameraId:I

.field private final drawPreview:Lnet/sourceforge/opencamera/ui/DrawPreview;

.field private final gyroSensor:Lnet/sourceforge/opencamera/GyroSensor;

.field private has_set_cameraId:Z

.field private final imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

.field private final last_images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;",
            ">;"
        }
    .end annotation
.end field

.field private last_images_type:Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;

.field private last_video_file:Ljava/io/File;

.field private last_video_file_uri:Landroid/net/Uri;

.field private final locationSupplier:Lnet/sourceforge/opencamera/LocationSupplier;

.field private final main_activity:Lnet/sourceforge/opencamera/MainActivity;

.field private n_capture_images:I

.field private n_capture_images_raw:I

.field private n_panorama_pics:I

.field private nr_mode:Ljava/lang/String;

.field private panorama_dir_left_to_right:Z

.field private panorama_pic_accepted:Z

.field private final photo_delete_toast:Lnet/sourceforge/opencamera/ToastBoxer;

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final storageUtils:Lnet/sourceforge/opencamera/StorageUtils;

.field private final subtitleVideoTimer:Ljava/util/Timer;

.field private subtitleVideoTimerTask:Ljava/util/TimerTask;

.field public test_available_memory:J

.field public volatile test_max_mp:I

.field public volatile test_n_videos_scanned:I

.field public test_set_available_memory:Z

.field private final text_bounds:Landroid/graphics/Rect;

.field private used_front_screen_flash:Z

.field private zoom_factor:I


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;Landroid/os/Bundle;)V
    .locals 6

    .line 164
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/BasicApplicationInterface;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->n_capture_images:I

    iput v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->n_capture_images_raw:I

    iput v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->n_panorama_pics:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->panorama_dir_left_to_right:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_video_file:Ljava/io/File;

    iput-object v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_video_file_uri:Landroid/net/Uri;

    .line 101
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->subtitleVideoTimer:Ljava/util/Timer;

    .line 104
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    .line 115
    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;->FILE:Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;

    iput-object v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_images_type:Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;

    .line 145
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_images:Ljava/util/List;

    .line 147
    new-instance v2, Lnet/sourceforge/opencamera/ToastBoxer;

    invoke-direct {v2}, Lnet/sourceforge/opencamera/ToastBoxer;-><init>()V

    iput-object v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->photo_delete_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    iput v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->cameraId:I

    const-string v2, "preference_nr_mode_normal"

    iput-object v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->nr_mode:Ljava/lang/String;

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->aperture:F

    const/4 v4, -0x1

    iput v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->zoom_factor:I

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->test_set_available_memory:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->test_available_memory:J

    iput-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 171
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 172
    new-instance v4, Lnet/sourceforge/opencamera/LocationSupplier;

    invoke-direct {v4, p1}, Lnet/sourceforge/opencamera/LocationSupplier;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->locationSupplier:Lnet/sourceforge/opencamera/LocationSupplier;

    .line 175
    new-instance v4, Lnet/sourceforge/opencamera/GyroSensor;

    invoke-direct {v4, p1}, Lnet/sourceforge/opencamera/GyroSensor;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->gyroSensor:Lnet/sourceforge/opencamera/GyroSensor;

    .line 176
    new-instance v4, Lnet/sourceforge/opencamera/StorageUtils;

    invoke-direct {v4, p1, p0}, Lnet/sourceforge/opencamera/StorageUtils;-><init>(Landroid/content/Context;Lnet/sourceforge/opencamera/MyApplicationInterface;)V

    iput-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->storageUtils:Lnet/sourceforge/opencamera/StorageUtils;

    .line 179
    new-instance v4, Lnet/sourceforge/opencamera/ui/DrawPreview;

    invoke-direct {v4, p1, p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;-><init>(Lnet/sourceforge/opencamera/MainActivity;Lnet/sourceforge/opencamera/MyApplicationInterface;)V

    iput-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawPreview:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 181
    new-instance v4, Lnet/sourceforge/opencamera/ImageSaver;

    invoke-direct {v4, p1}, Lnet/sourceforge/opencamera/ImageSaver;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    iput-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

    .line 182
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/ImageSaver;->start()V

    .line 184
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->reset(Z)V

    if-eqz p2, :cond_0

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->has_set_cameraId:Z

    const-string p1, "cameraId"

    .line 190
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->cameraId:I

    const-string p1, "nr_mode"

    .line 193
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->nr_mode:Ljava/lang/String;

    const-string p1, "aperture"

    .line 196
    invoke-virtual {p2, p1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->aperture:F

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/MyApplicationInterface;)Lnet/sourceforge/opencamera/GyroSensor;
    .locals 0

    .line 62
    iget-object p0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->gyroSensor:Lnet/sourceforge/opencamera/GyroSensor;

    return-object p0
.end method

.method static synthetic access$100(Lnet/sourceforge/opencamera/MyApplicationInterface;)I
    .locals 0

    .line 62
    iget p0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->n_panorama_pics:I

    return p0
.end method

.method static synthetic access$202(Lnet/sourceforge/opencamera/MyApplicationInterface;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->panorama_dir_left_to_right:Z

    return p1
.end method

.method static synthetic access$300(Lnet/sourceforge/opencamera/MyApplicationInterface;)Lnet/sourceforge/opencamera/MainActivity;
    .locals 0

    .line 62
    iget-object p0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    return-object p0
.end method

.method static synthetic access$400(Lnet/sourceforge/opencamera/MyApplicationInterface;)Ljava/io/File;
    .locals 0

    .line 62
    iget-object p0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_video_file:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$500(Lnet/sourceforge/opencamera/MyApplicationInterface;)Landroid/net/Uri;
    .locals 0

    .line 62
    iget-object p0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_video_file_uri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$600(Lnet/sourceforge/opencamera/MyApplicationInterface;)Lnet/sourceforge/opencamera/StorageUtils;
    .locals 0

    .line 62
    iget-object p0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->storageUtils:Lnet/sourceforge/opencamera/StorageUtils;

    return-object p0
.end method

.method private broadcastVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->storageUtils:Lnet/sourceforge/opencamera/StorageUtils;

    .line 2537
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/StorageUtils;->clearLastMediaScanned()V

    .line 2538
    sget-object v3, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->MEDIASTORE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    const/4 v10, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    if-eqz v9, :cond_2

    iget-object v2, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->storageUtils:Lnet/sourceforge/opencamera/StorageUtils;

    .line 2545
    invoke-virtual {v2, v9, v4, v10}, Lnet/sourceforge/opencamera/StorageUtils;->announceUri(Landroid/net/Uri;ZZ)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->storageUtils:Lnet/sourceforge/opencamera/StorageUtils;

    const/4 v3, 0x0

    .line 2548
    invoke-virtual {v2, v9, v4, v4, v3}, Lnet/sourceforge/opencamera/StorageUtils;->setLastMediaScanned(Landroid/net/Uri;ZZLandroid/net/Uri;)V

    :goto_0
    const/4 v4, 0x1

    goto :goto_1

    .line 2553
    :cond_0
    sget-object v3, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->FILE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    if-ne v1, v3, :cond_1

    if-eqz v2, :cond_2

    .line 2555
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->storageUtils:Lnet/sourceforge/opencamera/StorageUtils;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 2556
    invoke-virtual/range {v11 .. v17}, Lnet/sourceforge/opencamera/StorageUtils;->broadcastFile(Ljava/io/File;ZZZZLandroid/net/Uri;)V

    goto :goto_0

    :cond_1
    if-eqz v9, :cond_2

    iget-object v2, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->storageUtils:Lnet/sourceforge/opencamera/StorageUtils;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p2

    .line 2563
    invoke-virtual/range {v2 .. v8}, Lnet/sourceforge/opencamera/StorageUtils;->broadcastUri(Landroid/net/Uri;ZZZZZ)V

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    iget v2, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->test_n_videos_scanned:I

    add-int/2addr v2, v10

    iput v2, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->test_n_videos_scanned:I

    .line 2573
    :cond_3
    sget-object v2, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->MEDIASTORE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    if-ne v1, v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isVideoCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2574
    invoke-virtual {v0, v9}, Lnet/sourceforge/opencamera/MyApplicationInterface;->finishVideoIntent(Landroid/net/Uri;)V

    :cond_4
    return v4
.end method

.method public static choosePanoramaResolution(Ljava/util/List;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;)",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;"
        }
    .end annotation

    .line 510
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x820

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    .line 511
    iget v6, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    if-gt v6, v4, :cond_0

    .line 512
    iget v4, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    int-to-double v6, v4

    iget v4, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    int-to-double v8, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    const-wide v8, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double/2addr v6, v8

    .line 513
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v4, v6, v8

    if-gez v4, :cond_0

    if-eqz v1, :cond_1

    .line 514
    iget v4, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v6, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    if-le v4, v6, :cond_0

    :cond_1
    move-object v2, v3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    return-object v2

    .line 525
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    .line 526
    iget v6, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    if-gt v6, v4, :cond_4

    if-eqz v1, :cond_5

    .line 527
    iget v6, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v7, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    if-le v6, v7, :cond_4

    :cond_5
    move-object v2, v3

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    return-object v2

    .line 537
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    if-eqz v1, :cond_9

    .line 538
    iget v3, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v4, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    if-ge v3, v4, :cond_8

    :cond_9
    move-object v2, v0

    const/4 v1, 0x1

    goto :goto_2

    :cond_a
    return-object v2
.end method

.method private clearPanoramaPoint()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->gyroSensor:Lnet/sourceforge/opencamera/GyroSensor;

    .line 2018
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/GyroSensor;->clearTarget()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawPreview:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 2019
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->clearGyroDirectionMarker()V

    return-void
.end method

.method private completeVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;)V
    .locals 2

    .line 2519
    sget-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->MEDIASTORE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    if-ne p1, v0, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    .line 2521
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x0

    .line 2522
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_pending"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2523
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private forceSuffix(Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;)Z
    .locals 1

    .line 3254
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FocusBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FastBurst:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3256
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3257
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->isCapturingBurst()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private getImageFormatPref()Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_image_format"

    const-string v2, "preference_image_format_jpeg"

    .line 1730
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "preference_image_format_png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "preference_image_format_webp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1736
    sget-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->STD:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    return-object v0

    .line 1732
    :cond_0
    sget-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->WEBP:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    return-object v0

    .line 1734
    :cond_1
    sget-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->PNG:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    return-object v0
.end method

.method static getPanoramaPicsPerScreen()F
    .locals 1

    const v0, 0x40555547

    return v0
.end method

.method private getRemoveDeviceExifPref()Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_remove_device_exif"

    const-string v2, "preference_remove_device_exif_off"

    .line 1211
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "preference_remove_device_exif_on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "preference_remove_device_exif_keep_datetime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1217
    sget-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->OFF:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    return-object v0

    .line 1215
    :cond_0
    sget-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->KEEP_DATETIME:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    return-object v0

    .line 1213
    :cond_1
    sget-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->ON:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    return-object v0
.end method

.method private getSaveImageQualityPref()I
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_quality"

    const-string v2, "90"

    .line 610
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x5a

    .line 620
    :goto_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isRawOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x46

    .line 625
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getStampDateFormatPref()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_stamp_dateformat"

    const-string v2, "preference_stamp_dateformat_default"

    .line 1284
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStampFontColor()I
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_stamp_font_color"

    const-string v2, "#ffffff"

    .line 3086
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3087
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getStampGPSFormatPref()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_stamp_gpsformat"

    const-string v2, "preference_stamp_gpsformat_default"

    .line 1292
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStampTimeFormatPref()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_stamp_timeformat"

    const-string v2, "preference_stamp_timeformat_default"

    .line 1288
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTextStampFontSizePref()I
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_stamp_fontsize"

    const-string v2, "12"

    .line 1309
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1313
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0xc

    :goto_0
    return v0
.end method

.method private getUnitsDistancePref()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_units_distance"

    const-string v2, "preference_units_distance_m"

    .line 1300
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVideoRestartMaxFileSizeUserPref()Z
    .locals 3

    .line 997
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1000
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.sizeLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_video_restart_max_filesize"

    const/4 v2, 0x1

    .line 1006
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getVideoSubtitlePref(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;)Ljava/lang/String;
    .locals 2

    .line 1332
    sget-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->MEDIASTORE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    const-string v1, "preference_video_subtitle_no"

    if-ne p1, v0, :cond_0

    invoke-static {}, Lnet/sourceforge/opencamera/MyApplicationInterface;->mediastoreSupportsVideoSubtitles()Z

    move-result p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "preference_video_subtitle"

    .line 1335
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static mediastoreSupportsVideoSubtitles()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private saveImage(ZLjava/util/List;Ljava/util/Date;)Z
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/Date;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3273
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3275
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isImageCaptureIntent()Z

    move-result v8

    const/16 v44, 0x0

    if-eqz v8, :cond_0

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3280
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "output"

    .line 3282
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, v44

    :goto_0
    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3288
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->usingCamera2API()Z

    move-result v10

    .line 3289
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isCameraExtensionPref()Z

    move-result v11

    .line 3290
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getImageFormatPref()Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    move-result-object v12

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "preference_comment_ypr"

    const/4 v15, 0x0

    .line 3291
    invoke-interface {v1, v2, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v14, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3292
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->hasLevelAngle()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3293
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->hasPitchAngle()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3294
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->hasGeoDirection()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v45, 0x1

    goto :goto_1

    :cond_1
    const/16 v45, 0x0

    .line 3301
    :goto_1
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getSaveImageQualityPref()I

    move-result v13

    .line 3304
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getAutoStabilisePref()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->hasLevelAngleStable()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v16, 0x1

    goto :goto_2

    :cond_2
    const/16 v16, 0x0

    :goto_2
    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3305
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->hasLevelAngle()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getLevelAngle()D

    move-result-wide v4

    goto :goto_3

    :cond_3
    move-wide v4, v2

    :goto_3
    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3306
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->hasPitchAngle()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getPitchAngle()D

    move-result-wide v6

    move-wide/from16 v42, v6

    goto :goto_4

    :cond_4
    move-wide/from16 v42, v2

    :goto_4
    if-eqz v16, :cond_5

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3307
    iget-boolean v1, v1, Lnet/sourceforge/opencamera/MainActivity;->test_have_angle:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3308
    iget v1, v1, Lnet/sourceforge/opencamera/MainActivity;->test_angle:F

    float-to-double v4, v1

    :cond_5
    if-eqz v16, :cond_6

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3309
    iget-boolean v1, v1, Lnet/sourceforge/opencamera/MainActivity;->test_low_memory:Z

    if-eqz v1, :cond_6

    const-wide v4, 0x4046800000000000L    # 45.0

    :cond_6
    move-wide/from16 v17, v4

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3312
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getFacing()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object v1

    sget-object v4, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_FRONT:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    if-ne v1, v4, :cond_7

    const/16 v19, 0x1

    goto :goto_5

    :cond_7
    const/16 v19, 0x0

    :goto_5
    if-eqz v19, :cond_8

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "preference_front_camera_mirror"

    const-string v5, "preference_front_camera_mirror_no"

    .line 3313
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "preference_front_camera_mirror_photo"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v20, 0x1

    goto :goto_6

    :cond_8
    const/16 v20, 0x0

    .line 3314
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStampPref()Ljava/lang/String;

    move-result-object v26

    .line 3315
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getTextStampPref()Ljava/lang/String;

    move-result-object v27

    .line 3316
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getTextStampFontSizePref()I

    move-result v28

    .line 3317
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStampFontColor()I

    move-result v29

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "preference_stamp_style"

    const-string v5, "preference_stamp_style_shadowed"

    .line 3318
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 3319
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStampDateFormatPref()Ljava/lang/String;

    move-result-object v31

    .line 3320
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStampTimeFormatPref()Ljava/lang/String;

    move-result-object v32

    .line 3321
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStampGPSFormatPref()Ljava/lang/String;

    move-result-object v33

    .line 3323
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getUnitsDistancePref()Ljava/lang/String;

    move-result-object v34

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "preference_panorama_crop"

    const-string v5, "preference_panorama_crop_on"

    .line 3324
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    .line 3325
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getRemoveDeviceExifPref()Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    move-result-object v36

    .line 3326
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getGeotaggingPref()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_9

    const/16 v37, 0x1

    goto :goto_7

    :cond_9
    const/16 v37, 0x0

    :goto_7
    if-eqz v37, :cond_a

    .line 3327
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getLocation()Landroid/location/Location;

    move-result-object v1

    move-object/from16 v38, v1

    goto :goto_8

    :cond_a
    move-object/from16 v38, v44

    :goto_8
    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3328
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->hasGeoDirection()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getGeodirectionPref()Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v39, 0x1

    goto :goto_9

    :cond_b
    const/16 v39, 0x0

    :goto_9
    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3329
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->hasGeoDirection()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getGeoDirection()D

    move-result-wide v1

    move-wide/from16 v40, v1

    goto :goto_a

    :cond_c
    move-wide/from16 v40, v2

    :goto_a
    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "preference_exif_artist"

    const-string v3, ""

    .line 3330
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "preference_exif_copyright"

    .line 3331
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3336
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v1

    const/16 v2, 0x320

    const-wide/32 v3, 0x1fca055

    if-eqz v1, :cond_f

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3337
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->captureResultHasIso()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3338
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->captureResultIso()I

    move-result v2

    :cond_d
    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3342
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->captureResultHasExposureTime()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3343
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->captureResultExposureTime()J

    move-result-wide v3

    :cond_e
    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3348
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getZoomRatio()F

    move-result v1

    move/from16 v25, v1

    move/from16 v22, v2

    move-wide/from16 v23, v3

    goto :goto_b

    :cond_f
    const/high16 v1, 0x3f800000    # 1.0f

    move-wide/from16 v23, v3

    const/16 v22, 0x320

    const/high16 v25, 0x3f800000    # 1.0f

    .line 3351
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getThumbnailAnimationPref()Z

    move-result v1

    .line 3353
    invoke-direct {v0, v8}, Lnet/sourceforge/opencamera/MyApplicationInterface;->saveInBackground(Z)Z

    move-result v2

    iget-object v3, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "preference_ghost_image"

    const-string v5, "preference_ghost_image_off"

    .line 3355
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3358
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPausePreviewPref()Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "preference_ghost_image_last"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    if-nez v1, :cond_10

    const/16 v1, 0x10

    const/16 v48, 0x10

    goto :goto_c

    :cond_10
    const/4 v1, 0x4

    const/16 v48, 0x4

    goto :goto_c

    :cond_11
    const/16 v48, 0x1

    .line 3372
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v1

    iget-object v3, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3373
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 3377
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Standard:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    :cond_12
    move-object v7, v1

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3380
    iget-boolean v1, v1, Lnet/sourceforge/opencamera/MainActivity;->is_test:Z

    if-nez v1, :cond_13

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v7, v1, :cond_13

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->gyroSensor:Lnet/sourceforge/opencamera/GyroSensor;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/GyroSensor;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->gyroSensor:Lnet/sourceforge/opencamera/GyroSensor;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/GyroSensor;->hasTarget()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->gyroSensor:Lnet/sourceforge/opencamera/GyroSensor;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/GyroSensor;->isTargetAchieved()Z

    move-result v1

    if-nez v1, :cond_13

    iput-boolean v15, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->panorama_pic_accepted:Z

    goto/16 :goto_1a

    .line 3387
    :cond_13
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->NoiseReduction:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v7, v1, :cond_1d

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v7, v1, :cond_14

    goto/16 :goto_13

    .line 3460
    :cond_14
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->DRO:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v7, v1, :cond_17

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v7, v1, :cond_15

    goto :goto_d

    .line 3462
    :cond_15
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Night:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v7, v1, :cond_16

    .line 3463
    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->X_NIGHT:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    goto :goto_e

    .line 3465
    :cond_16
    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->NORMAL:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    goto :goto_e

    .line 3461
    :cond_17
    :goto_d
    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->HDR:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    :goto_e
    move-object v3, v1

    .line 3466
    invoke-direct {v0, v7}, Lnet/sourceforge/opencamera/MyApplicationInterface;->forceSuffix(Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;)Z

    move-result v4

    .line 3468
    sget-object v1, Lnet/sourceforge/opencamera/HDRProcessor;->default_tonemapping_algorithm_c:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    iget-object v5, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "preference_hdr_tonemapping"

    const-string v7, "preference_hdr_tonemapping_default"

    .line 3470
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3471
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v21, -0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_f

    :sswitch_0
    const-string v6, "preference_hdr_tonemapping_exponential"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    goto :goto_f

    :cond_18
    const/16 v21, 0x3

    goto :goto_f

    :sswitch_1
    const-string v6, "preference_hdr_tonemapping_clamp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    goto :goto_f

    :cond_19
    const/16 v21, 0x2

    goto :goto_f

    :sswitch_2
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    goto :goto_f

    :cond_1a
    const/16 v21, 0x1

    goto :goto_f

    :sswitch_3
    const-string v6, "preference_hdr_tonemapping_aces"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    goto :goto_f

    :cond_1b
    const/16 v21, 0x0

    :goto_f
    packed-switch v21, :pswitch_data_0

    .line 3485
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unhandled case for tonemapping: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MyApplicationInterface"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 3476
    :pswitch_0
    sget-object v1, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->TONEMAPALGORITHM_EXPONENTIAL:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    goto :goto_10

    .line 3473
    :pswitch_1
    sget-object v1, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->TONEMAPALGORITHM_CLAMP:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    :goto_10
    move-object/from16 v21, v1

    goto :goto_11

    .line 3479
    :pswitch_2
    sget-object v1, Lnet/sourceforge/opencamera/HDRProcessor;->default_tonemapping_algorithm_c:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    goto :goto_10

    .line 3482
    :pswitch_3
    sget-object v1, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->TONEMAPALGORITHM_ACES:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    goto :goto_10

    :goto_11
    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "preference_hdr_contrast_enhancement"

    const-string v6, "preference_hdr_contrast_enhancement_smart"

    .line 3489
    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

    if-eqz v4, :cond_1c

    iget v5, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->n_capture_images:I

    sub-int/2addr v5, v14

    goto :goto_12

    :cond_1c
    const/4 v5, 0x0

    :goto_12
    const/16 v35, 0x0

    move/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v14, v16

    move-wide/from16 v15, v17

    move/from16 v17, v19

    move/from16 v18, v20

    move-object/from16 v19, p3

    move-object/from16 v20, v21

    move-object/from16 v21, v44

    move/from16 v44, v45

    move-object/from16 v45, v46

    move-object/from16 v46, v47

    move/from16 v47, v48

    .line 3491
    invoke-virtual/range {v1 .. v47}, Lnet/sourceforge/opencamera/ImageSaver;->saveImageJpeg(ZLnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;ZIZLjava/util/List;ZLandroid/net/Uri;ZZLnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;IZDZZLjava/util/Date;Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;Ljava/lang/String;IJFLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;ZLandroid/location/Location;ZDDZLjava/lang/String;Ljava/lang/String;I)Z

    move-result v14

    goto/16 :goto_1a

    .line 3389
    :cond_1d
    :goto_13
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v7, v1, :cond_1e

    iput-boolean v14, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->panorama_pic_accepted:Z

    iget v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->n_panorama_pics:I

    if-nez v1, :cond_28

    goto :goto_14

    :cond_1e
    iget v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->n_capture_images:I

    if-ne v1, v14, :cond_28

    .line 3396
    :goto_14
    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->SAVEBASE_NONE:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    .line 3397
    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->NoiseReduction:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v7, v2, :cond_21

    iget-object v2, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "preference_nr_save"

    const-string v4, "preference_nr_save_no"

    .line 3398
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3399
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "preference_nr_save_all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    const-string v3, "preference_nr_save_single"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_15

    .line 3401
    :cond_1f
    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->SAVEBASE_FIRST:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    goto :goto_15

    .line 3404
    :cond_20
    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->SAVEBASE_ALL:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    goto :goto_15

    .line 3408
    :cond_21
    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v7, v2, :cond_24

    iget-object v2, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "preference_panorama_save"

    const-string v4, "preference_panorama_save_no"

    .line 3409
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3410
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "preference_panorama_save_all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "preference_panorama_save_all_plus_debug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_15

    .line 3415
    :cond_22
    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->SAVEBASE_ALL_PLUS_DEBUG:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    goto :goto_15

    .line 3412
    :cond_23
    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->SAVEBASE_ALL:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    :cond_24
    :goto_15
    move-object v4, v1

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

    const/4 v2, 0x1

    .line 3421
    sget-object v3, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->NoiseReduction:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v7, v3, :cond_25

    sget-object v3, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->AVERAGE:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    goto :goto_16

    :cond_25
    sget-object v3, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->PANORAMA:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    :goto_16
    sget-object v5, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v7, v5, :cond_26

    const/16 v21, 0x1

    goto :goto_17

    :cond_26
    const/16 v21, 0x0

    :goto_17
    move v5, v8

    move-object v6, v9

    move-object v9, v7

    move v7, v10

    move v8, v11

    move-object v11, v9

    move-object v9, v12

    move v10, v13

    move-object v12, v11

    move/from16 v11, v16

    move-object/from16 v49, v12

    move-wide/from16 v12, v17

    const/16 v50, 0x1

    move/from16 v14, v21

    move/from16 v15, v19

    move/from16 v16, v20

    move-object/from16 v17, p3

    move/from16 v18, v22

    move-wide/from16 v19, v23

    move/from16 v21, v25

    move-object/from16 v22, v26

    move-object/from16 v23, v27

    move/from16 v24, v28

    move/from16 v25, v29

    move-object/from16 v26, v30

    move-object/from16 v27, v31

    move-object/from16 v28, v32

    move-object/from16 v29, v33

    move-object/from16 v30, v34

    move/from16 v31, v35

    move-object/from16 v32, v36

    move/from16 v33, v37

    move-object/from16 v34, v38

    move/from16 v35, v39

    move-wide/from16 v36, v40

    move-wide/from16 v38, v42

    move/from16 v40, v45

    move-object/from16 v41, v46

    move-object/from16 v42, v47

    move/from16 v43, v48

    .line 3420
    invoke-virtual/range {v1 .. v43}, Lnet/sourceforge/opencamera/ImageSaver;->startImageBatch(ZLnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;ZLandroid/net/Uri;ZZLnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;IZDZZZLjava/util/Date;IJFLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;ZLandroid/location/Location;ZDDZLjava/lang/String;Ljava/lang/String;I)V

    .line 3443
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-object/from16 v2, v49

    if-ne v2, v1, :cond_27

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

    .line 3444
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ImageSaver;->getImageBatchRequest()Lnet/sourceforge/opencamera/ImageSaver$Request;

    move-result-object v1

    iget-object v3, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lnet/sourceforge/opencamera/preview/Preview;->getViewAngleX(Z)F

    move-result v3

    iput v3, v1, Lnet/sourceforge/opencamera/ImageSaver$Request;->camera_view_angle_x:F

    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

    .line 3445
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ImageSaver;->getImageBatchRequest()Lnet/sourceforge/opencamera/ImageSaver$Request;

    move-result-object v1

    iget-object v3, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v3

    invoke-virtual {v3, v4}, Lnet/sourceforge/opencamera/preview/Preview;->getViewAngleY(Z)F

    move-result v3

    iput v3, v1, Lnet/sourceforge/opencamera/ImageSaver$Request;->camera_view_angle_y:F

    goto :goto_18

    :cond_27
    const/4 v4, 0x0

    goto :goto_18

    :cond_28
    move-object v2, v7

    const/4 v4, 0x0

    const/16 v50, 0x1

    .line 3450
    :goto_18
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v2, v1, :cond_29

    const/16 v1, 0x9

    new-array v1, v1, [F

    iget-object v2, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->gyroSensor:Lnet/sourceforge/opencamera/GyroSensor;

    .line 3452
    invoke-virtual {v2, v1}, Lnet/sourceforge/opencamera/GyroSensor;->getRotationMatrix([F)V

    goto :goto_19

    :cond_29
    move-object/from16 v1, v44

    :goto_19
    iget-object v2, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

    move-object/from16 v3, p2

    .line 3455
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v2, v3, v1}, Lnet/sourceforge/opencamera/ImageSaver;->addImageBatch([B[F)V

    const/4 v14, 0x1

    :goto_1a
    return v14

    nop

    :sswitch_data_0
    .sparse-switch
        -0x46ecc960 -> :sswitch_3
        0x505d5f1 -> :sswitch_2
        0x6973d46b -> :sswitch_1
        0x725090f5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private saveInBackground(Z)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3223
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPausePreviewPref()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private setNextPanoramaPoint(FFF)V
    .locals 8

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->gyroSensor:Lnet/sourceforge/opencamera/GyroSensor;

    const v4, 0x3c8efa35

    const v5, 0x3d0ef859

    const v6, 0x3f490fdb

    .line 1976
    new-instance v7, Lnet/sourceforge/opencamera/MyApplicationInterface$1;

    invoke-direct {v7, p0}, Lnet/sourceforge/opencamera/MyApplicationInterface$1;-><init>(Lnet/sourceforge/opencamera/MyApplicationInterface;)V

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lnet/sourceforge/opencamera/GyroSensor;->setTarget(FFFFFFLnet/sourceforge/opencamera/GyroSensor$TargetCallback;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawPreview:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 2012
    invoke-virtual {v0, p1, p2, p3}, Lnet/sourceforge/opencamera/ui/DrawPreview;->setGyroDirectionMarker(FFF)V

    return-void
.end method

.method private setNextPanoramaPoint(Z)V
    .locals 6

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1937
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->getViewAngleY(Z)F

    move-result v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->n_panorama_pics:I

    add-int/2addr p1, v1

    iput p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->n_panorama_pics:I

    :cond_0
    iget p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->n_panorama_pics:I

    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

    .line 1945
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->finishPanorama()V

    return-void

    :cond_1
    float-to-double v2, v0

    .line 1948
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float p1, v2

    iget v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->n_panorama_pics:I

    int-to-float v2, v0

    mul-float p1, p1, v2

    if-le v0, v1, :cond_2

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->panorama_dir_left_to_right:Z

    if-nez v0, :cond_2

    neg-float p1, p1

    :cond_2
    const v0, 0x40555547

    div-float v2, p1, v0

    float-to-double v2, v2

    .line 1952
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 1953
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    neg-double v2, v2

    double-to-float v2, v2

    const/4 v3, 0x0

    .line 1954
    invoke-direct {p0, v4, v3, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->setNextPanoramaPoint(FFF)V

    iget v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->n_panorama_pics:I

    if-ne v2, v1, :cond_3

    neg-float p1, p1

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 1959
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float p1, v4

    .line 1960
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v0, v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->gyroSensor:Lnet/sourceforge/opencamera/GyroSensor;

    .line 1961
    invoke-virtual {v1, p1, v3, v0}, Lnet/sourceforge/opencamera/GyroSensor;->addTarget(FFF)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawPreview:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 1962
    invoke-virtual {v1, p1, v3, v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->addGyroDirectionMarker(FFF)V

    :cond_3
    return-void
.end method

.method private startVideoSubtitlesTask(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;)V
    .locals 14

    .line 2049
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStampDateFormatPref()Ljava/lang/String;

    move-result-object v2

    .line 2050
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStampTimeFormatPref()Ljava/lang/String;

    move-result-object v3

    .line 2051
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStampGPSFormatPref()Ljava/lang/String;

    move-result-object v6

    .line 2052
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getUnitsDistancePref()Ljava/lang/String;

    move-result-object v7

    .line 2054
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getGeotaggingPref()Z

    move-result v4

    .line 2055
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getGeodirectionPref()Z

    move-result v5

    iget-object v9, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->subtitleVideoTimer:Ljava/util/Timer;

    .line 2323
    new-instance v10, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;

    move-object v0, v10

    move-object v1, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;-><init>(Lnet/sourceforge/opencamera/MyApplicationInterface;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;)V

    iput-object v10, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->subtitleVideoTimerTask:Ljava/util/TimerTask;

    const-wide/16 v0, 0x0

    const-wide/16 v12, 0x3e8

    move-object v8, v9

    move-object v9, v10

    move-wide v10, v0

    invoke-virtual/range {v8 .. v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private trashImage(Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v1, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3711
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v4

    .line 3712
    sget-object v5, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;->SAF:Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;

    const/4 v6, 0x1

    const v7, 0x7f1000df

    const/4 v8, 0x0

    if-ne v0, v5, :cond_2

    if-eqz v2, :cond_2

    iget-object v0, v1, Lnet/sourceforge/opencamera/MyApplicationInterface;->storageUtils:Lnet/sourceforge/opencamera/StorageUtils;

    const/4 v3, 0x0

    .line 3715
    invoke-virtual {v0, v2, v3}, Lnet/sourceforge/opencamera/StorageUtils;->getFileFromDocumentUriSAF(Landroid/net/Uri;Z)Ljava/io/File;

    move-result-object v10

    :try_start_0
    iget-object v0, v1, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3717
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 3725
    invoke-virtual {v4, v8, v7, v6}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;IZ)V

    :cond_1
    if-eqz v10, :cond_6

    iget-object v9, v1, Lnet/sourceforge/opencamera/MyApplicationInterface;->storageUtils:Lnet/sourceforge/opencamera/StorageUtils;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 3728
    invoke-virtual/range {v9 .. v15}, Lnet/sourceforge/opencamera/StorageUtils;->broadcastFile(Ljava/io/File;ZZZZLandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3737
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3740
    :cond_2
    sget-object v5, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;->MEDIASTORE:Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;

    if-ne v0, v5, :cond_3

    if-eqz v2, :cond_3

    iget-object v0, v1, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3743
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v2, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6

    if-eqz p4, :cond_6

    iget-object v0, v1, Lnet/sourceforge/opencamera/MyApplicationInterface;->photo_delete_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    .line 3745
    invoke-virtual {v4, v0, v7, v6}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;IZ)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_6

    .line 3751
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3752
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    iget-object v0, v1, Lnet/sourceforge/opencamera/MyApplicationInterface;->photo_delete_toast:Lnet/sourceforge/opencamera/ToastBoxer;

    .line 3760
    invoke-virtual {v4, v0, v7, v6}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;IZ)V

    :cond_5
    iget-object v8, v1, Lnet/sourceforge/opencamera/MyApplicationInterface;->storageUtils:Lnet/sourceforge/opencamera/StorageUtils;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 3761
    invoke-virtual/range {v8 .. v14}, Lnet/sourceforge/opencamera/StorageUtils;->broadcastFile(Ljava/io/File;ZZZZLandroid/net/Uri;)V

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method addLastImage(Ljava/io/File;Z)V
    .locals 1

    .line 3637
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;->FILE:Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;

    iput-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_images_type:Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;

    .line 3638
    new-instance v0, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;-><init>(Ljava/lang/String;Z)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_images:Ljava/util/List;

    .line 3639
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addLastImageMediaStore(Landroid/net/Uri;Z)V
    .locals 1

    .line 3657
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;->MEDIASTORE:Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;

    iput-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_images_type:Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;

    .line 3658
    new-instance v0, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;

    invoke-direct {v0, p1, p2}, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;-><init>(Landroid/net/Uri;Z)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_images:Ljava/util/List;

    .line 3659
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addLastImageSAF(Landroid/net/Uri;Z)V
    .locals 1

    .line 3647
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;->SAF:Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;

    iput-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_images_type:Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;

    .line 3648
    new-instance v0, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;

    invoke-direct {v0, p1, p2}, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;-><init>(Landroid/net/Uri;Z)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_images:Ljava/util/List;

    .line 3649
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allowZoom()Z
    .locals 3

    .line 1846
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 1850
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isCameraExtensionPref()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getCameraExtensionPref()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->supportsZoomForCameraExtension(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public cameraClosed()V
    .locals 1

    const/4 v0, 0x1

    .line 2826
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->stopPanorama(Z)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2827
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->closeExposureUI()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2828
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->destroyPopup()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawPreview:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 2829
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->clearContinuousFocusMove()V

    return-void
.end method

.method public cameraInOperation(ZZ)V
    .locals 2

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->used_front_screen_flash:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v1, 0x0

    .line 2734
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->setBrightnessForCamera(Z)V

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->used_front_screen_flash:Z

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawPreview:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 2737
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->cameraInOperation(Z)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2738
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, p2}, Lnet/sourceforge/opencamera/ui/MainUI;->showGUI(ZZ)V

    return-void
.end method

.method public cameraSetup()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1867
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->cameraSetup()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawPreview:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 1868
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->clearContinuousFocusMove()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawPreview:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 1872
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->updateSettings()V

    return-void
.end method

.method public canTakeNewPhoto()Z
    .locals 9

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1356
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1364
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsExpoBracketing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isExpoBracketingPref()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1365
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getExpoBracketingNImagesPref()I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1367
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsFocusBracketing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isFocusBracketingPref()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1373
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsBurst()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isCameraBurstPref()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1374
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getBurstForNoiseReduction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1375
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getNRModePref()Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    move-result-object v0

    sget-object v4, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;->NRMODE_LOW_LIGHT:Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    if-ne v0, v4, :cond_3

    const/16 v0, 0xf

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    goto :goto_1

    .line 1383
    :cond_4
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getBurstNImages()I

    move-result v0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1387
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/preview/Preview;->supportsRaw()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getRawPref()Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;

    move-result-object v4

    sget-object v5, Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;->RAWPREF_JPEG_DNG:Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;

    if-ne v4, v5, :cond_6

    move v4, v0

    goto :goto_2

    :cond_6
    move v4, v0

    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

    .line 1398
    invoke-virtual {v5, v0, v4}, Lnet/sourceforge/opencamera/ImageSaver;->computePhotoCost(II)I

    move-result v5

    iget-object v6, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

    .line 1399
    invoke-virtual {v6, v5}, Lnet/sourceforge/opencamera/ImageSaver;->queueWouldBlock(I)Z

    move-result v6

    if-eqz v6, :cond_7

    return v3

    :cond_7
    iget-object v6, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

    .line 1406
    invoke-virtual {v6}, Lnet/sourceforge/opencamera/ImageSaver;->getNImagesToSave()I

    move-result v6

    .line 1407
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v7

    .line 1408
    sget-object v8, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FastBurst:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v7, v8, :cond_8

    sget-object v8, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v7, v8, :cond_9

    :cond_8
    if-lez v6, :cond_9

    return v3

    .line 1416
    :cond_9
    sget-object v8, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->NoiseReduction:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v7, v8, :cond_a

    mul-int/lit8 v7, v5, 0x2

    if-lt v6, v7, :cond_a

    return v3

    :cond_a
    if-le v4, v2, :cond_b

    mul-int/lit8 v4, v5, 0x3

    if-lt v6, v4, :cond_b

    return v3

    :cond_b
    if-lez v0, :cond_c

    mul-int/lit8 v0, v5, 0x3

    if-lt v6, v0, :cond_c

    return v3

    :cond_c
    mul-int/lit8 v5, v5, 0x5

    if-lt v6, v5, :cond_e

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1442
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->supportsNoiseReduction()Z

    move-result v0

    if-eqz v0, :cond_d

    if-gt v6, v1, :cond_d

    goto :goto_3

    :cond_d
    return v3

    :cond_e
    :goto_3
    return v2
.end method

.method public clearColorEffectPref()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2951
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_color_effect"

    .line 2952
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2953
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearExposureCompensationPref()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3000
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_exposure"

    .line 3001
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3002
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearExposureTimePref()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3073
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_exposure_time"

    .line 3074
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3075
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearISOPref()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2986
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_iso"

    .line 2987
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2988
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method clearLastImages()V
    .locals 1

    .line 3665
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;->FILE:Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;

    iput-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_images_type:Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_images:Ljava/util/List;

    .line 3666
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawPreview:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 3667
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->clearLastImage()V

    return-void
.end method

.method public clearSceneModePref()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2937
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_scene_mode"

    .line 2938
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2939
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearWhiteBalancePref()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2965
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_white_balance"

    .line 2966
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2967
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public createOutputVideoFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->storageUtils:Lnet/sourceforge/opencamera/StorageUtils;

    .line 326
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x2

    const-string v3, ""

    invoke-virtual {v0, v2, v3, p1, v1}, Lnet/sourceforge/opencamera/StorageUtils;->createOutputMediaFile(ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_video_file:Ljava/io/File;

    return-object p1
.end method

.method public createOutputVideoMediaStore(Ljava/lang/String;)Landroid/net/Uri;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const-string v0, "external_primary"

    .line 339
    invoke-static {v0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 340
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 341
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->storageUtils:Lnet/sourceforge/opencamera/StorageUtils;

    const/4 v4, 0x2

    const-string v5, ""

    const/4 v6, 0x0

    .line 342
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v3 .. v8}, Lnet/sourceforge/opencamera/StorageUtils;->createMediaFilename(ILjava/lang/String;ILjava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_display_name"

    .line 345
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->storageUtils:Lnet/sourceforge/opencamera/StorageUtils;

    .line 346
    invoke-virtual {v3, p1}, Lnet/sourceforge/opencamera/StorageUtils;->getVideoMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "mime_type"

    .line 349
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->storageUtils:Lnet/sourceforge/opencamera/StorageUtils;

    .line 351
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveRelativeFolder()Ljava/lang/String;

    move-result-object p1

    const-string v1, "relative_path"

    .line 354
    invoke-virtual {v2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 355
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "is_pending"

    invoke-virtual {v2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    :try_start_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 359
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_video_file_uri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    return-object p1

    .line 378
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :catch_0
    move-exception p1

    .line 374
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 375
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :catch_1
    move-exception p1

    .line 367
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 368
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public createOutputVideoMethod()Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;
    .locals 2

    .line 289
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 292
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "output"

    .line 294
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 298
    sget-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->URI:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    return-object v0

    .line 304
    :cond_0
    invoke-static {}, Lnet/sourceforge/opencamera/MainActivity;->useScopedStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    sget-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->MEDIASTORE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    return-object v0

    .line 310
    :cond_1
    sget-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->FILE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    return-object v0

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->storageUtils:Lnet/sourceforge/opencamera/StorageUtils;

    .line 313
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/StorageUtils;->isUsingSAF()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 314
    sget-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->SAF:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    return-object v0

    .line 316
    :cond_3
    invoke-static {}, Lnet/sourceforge/opencamera/MainActivity;->useScopedStorage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 317
    sget-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->MEDIASTORE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    return-object v0

    .line 320
    :cond_4
    sget-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->FILE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    return-object v0
.end method

.method public createOutputVideoSAF(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->storageUtils:Lnet/sourceforge/opencamera/StorageUtils;

    .line 332
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x2

    const-string v3, ""

    invoke-virtual {v0, v2, v3, p1, v1}, Lnet/sourceforge/opencamera/StorageUtils;->createOutputMediaFileSAF(ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_video_file_uri:Landroid/net/Uri;

    return-object p1
.end method

.method public createOutputVideoUri()Landroid/net/Uri;
    .locals 2

    .line 386
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 389
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "output"

    .line 391
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_0

    return-object v0

    .line 399
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public deleteUnusedVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 2599
    sget-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->FILE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 2600
    sget-object p1, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;->FILE:Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;

    invoke-direct {p0, p1, p2, p3, v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->trashImage(Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2602
    :cond_0
    sget-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->SAF:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    if-ne p1, v0, :cond_1

    .line 2603
    sget-object p1, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;->SAF:Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;

    invoke-direct {p0, p1, p2, p3, v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->trashImage(Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2605
    :cond_1
    sget-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->MEDIASTORE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    if-ne p1, v0, :cond_2

    .line 2606
    sget-object p1, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;->MEDIASTORE:Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;

    invoke-direct {p0, p1, p2, p3, v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->trashImage(Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;Landroid/net/Uri;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIII)I
    .locals 9

    .line 3124
    sget-object v8, Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;->ALIGNMENT_BOTTOM:Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIIILnet/sourceforge/opencamera/MyApplicationInterface$Alignment;)I

    move-result v0

    return v0
.end method

.method public drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIIILnet/sourceforge/opencamera/MyApplicationInterface$Alignment;)I
    .locals 11

    const/4 v9, 0x0

    .line 3128
    sget-object v10, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_OUTLINE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIIILnet/sourceforge/opencamera/MyApplicationInterface$Alignment;Ljava/lang/String;Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;)I

    move-result v0

    return v0
.end method

.method public drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIIILnet/sourceforge/opencamera/MyApplicationInterface$Alignment;Ljava/lang/String;Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;)I
    .locals 12

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p10

    .line 3132
    invoke-virtual/range {v0 .. v11}, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIIILnet/sourceforge/opencamera/MyApplicationInterface$Alignment;Ljava/lang/String;Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIIILnet/sourceforge/opencamera/MyApplicationInterface$Alignment;Ljava/lang/String;Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;Landroid/graphics/Rect;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    .line 3136
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 3137
    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3138
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v11, 0x40

    .line 3139
    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v9, :cond_0

    iget-object v7, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    .line 3141
    invoke-virtual {v7, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    if-eqz v7, :cond_1

    .line 3146
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v12

    iget-object v13, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v7, v9, v12, v13}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v12, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    .line 3147
    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    iget-object v13, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    .line 3149
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    iget-object v14, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v9, v13, v14}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    if-eqz v7, :cond_2

    iget-object v7, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    .line 3151
    iget v9, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v12

    iput v9, v7, Landroid/graphics/Rect;->bottom:I

    :cond_2
    :goto_1
    const/high16 v7, 0x40000000    # 2.0f

    mul-float v9, v10, v7

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v9, v12

    float-to-int v9, v9

    .line 3155
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v13

    sget-object v14, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-eq v13, v14, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v13

    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne v13, v14, :cond_5

    .line 3156
    :cond_3
    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    .line 3159
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v14

    sget-object v15, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne v14, v15, :cond_4

    div-float/2addr v13, v7

    :cond_4
    iget-object v7, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    .line 3161
    iget v14, v7, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    sub-float/2addr v14, v13

    float-to-int v14, v14

    iput v14, v7, Landroid/graphics/Rect;->left:I

    iget-object v7, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    .line 3162
    iget v14, v7, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    sub-float/2addr v14, v13

    float-to-int v13, v14

    iput v13, v7, Landroid/graphics/Rect;->right:I

    :cond_5
    iget-object v7, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    .line 3166
    iget v13, v7, Landroid/graphics/Rect;->left:I

    sub-int v14, v5, v9

    add-int/2addr v13, v14

    iput v13, v7, Landroid/graphics/Rect;->left:I

    iget-object v7, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    .line 3167
    iget v13, v7, Landroid/graphics/Rect;->right:I

    add-int v14, v5, v9

    add-int/2addr v13, v14

    iput v13, v7, Landroid/graphics/Rect;->right:I

    iget-object v7, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    .line 3169
    iget v7, v7, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    add-int/2addr v7, v9

    add-int/lit8 v7, v7, -0x1

    .line 3170
    sget-object v13, Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;->ALIGNMENT_TOP:Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;

    if-ne v6, v13, :cond_6

    iget-object v6, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    .line 3171
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v13, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v13

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v6, v9

    iget-object v9, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    add-int/lit8 v13, p7, -0x1

    .line 3172
    iput v13, v9, Landroid/graphics/Rect;->top:I

    iget-object v9, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    .line 3173
    iget v13, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v6

    iput v13, v9, Landroid/graphics/Rect;->bottom:I

    add-int v6, p7, v7

    goto :goto_2

    .line 3176
    :cond_6
    sget-object v13, Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;->ALIGNMENT_CENTRE:Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;

    if-ne v6, v13, :cond_7

    iget-object v6, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    .line 3177
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v13, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v13

    mul-int/lit8 v13, v9, 0x2

    add-int/2addr v6, v13

    iget-object v13, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    add-int/lit8 v14, p7, -0x1

    .line 3179
    iget v15, v13, Landroid/graphics/Rect;->top:I

    add-int v15, v15, p7

    sub-int/2addr v15, v9

    add-int/2addr v14, v15

    int-to-double v14, v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v16

    double-to-int v9, v14

    iput v9, v13, Landroid/graphics/Rect;->top:I

    iget-object v9, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    .line 3180
    iget v13, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v6

    iput v13, v9, Landroid/graphics/Rect;->bottom:I

    int-to-double v6, v7

    .line 3181
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v16

    double-to-int v6, v6

    add-int v6, p7, v6

    goto :goto_2

    :cond_7
    iget-object v6, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    .line 3184
    iget v7, v6, Landroid/graphics/Rect;->top:I

    sub-int v13, p7, v9

    add-int/2addr v7, v13

    iput v7, v6, Landroid/graphics/Rect;->top:I

    iget-object v6, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    .line 3185
    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    add-int v9, p7, v9

    add-int/2addr v7, v9

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v6, p7

    .line 3187
    :goto_2
    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_BACKGROUND:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    if-ne v8, v7, :cond_8

    .line 3188
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3189
    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v7, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    .line 3190
    invoke-virtual {v1, v7, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 v7, 0xff

    .line 3191
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_8
    move/from16 v7, p4

    .line 3193
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 3194
    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_OUTLINE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    if-ne v8, v7, :cond_9

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v10, v10, v7

    add-float/2addr v10, v12

    .line 3197
    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/4 v9, 0x0

    .line 3198
    invoke-virtual {v2, v7, v9, v9, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_9
    int-to-float v4, v5

    int-to-float v5, v6

    .line 3200
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3201
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_OUTLINE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    if-ne v8, v1, :cond_a

    .line 3202
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->clearShadowLayer()V

    :cond_a
    iget-object v1, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    .line 3214
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v0, Lnet/sourceforge/opencamera/MyApplicationInterface;->text_bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    return v1
.end method

.method finishPanorama()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

    .line 1903
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ImageSaver;->getImageBatchRequest()Lnet/sourceforge/opencamera/ImageSaver$Request;

    move-result-object v0

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->panorama_dir_left_to_right:Z

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->panorama_dir_left_to_right:Z

    const/4 v0, 0x0

    .line 1905
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->stopPanorama(Z)V

    .line 1907
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isImageCaptureIntent()Z

    move-result v0

    .line 1908
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->saveInBackground(Z)Z

    move-result v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

    .line 1909
    invoke-virtual {v1, v0}, Lnet/sourceforge/opencamera/ImageSaver;->finishImageBatch(Z)V

    return-void
.end method

.method finishVideoIntent(Landroid/net/Uri;)V
    .locals 2

    .line 2585
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2586
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v1, -0x1

    .line 2587
    invoke-virtual {p1, v1, v0}, Lnet/sourceforge/opencamera/MainActivity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2588
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->finish()V

    return-void
.end method

.method public fpsIsHighSpeed()Z
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 666
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getVideoFPSPref()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->fpsIsHighSpeed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAntiBandingPref()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_antibanding"

    const-string v2, "auto"

    .line 467
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAperturePref()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->aperture:F

    return v0
.end method

.method public getAutoStabilisePref()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_auto_stabilise"

    const/4 v2, 0x0

    .line 1256
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1257
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->supportsAutoStabilise()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public getBurstForNoiseReduction()Z
    .locals 2

    .line 1542
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    .line 1543
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->NoiseReduction:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBurstNImages()I
    .locals 3

    .line 1522
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    .line 1523
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FastBurst:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_fast_burst_n_images"

    const-string v2, "5"

    .line 1524
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1527
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1532
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getCalibratedLevelAngle()D
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_calibrate_level_angle"

    const/4 v2, 0x0

    .line 1347
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public getCameraExtensionPref()I
    .locals 3

    .line 1577
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    .line 1578
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Auto:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 1581
    :cond_0
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    return v0

    .line 1584
    :cond_1
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Night:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x4

    return v0

    .line 1587
    :cond_2
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Bokeh:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x2

    return v0

    .line 1590
    :cond_3
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Beauty:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    return v2
.end method

.method public getCameraIdPref()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->cameraId:I

    return v0
.end method

.method public getCameraNoiseReductionModePref()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_noise_reduction_mode"

    const-string v2, "default"

    .line 477
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraResolutionPref(Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;)Landroid/util/Pair;
    .locals 6
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

    .line 548
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    .line 549
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 550
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    invoke-virtual {p1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedPictureSizes(Z)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->choosePanoramaResolution(Ljava/util/List;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object p1

    .line 551
    new-instance v0, Landroid/util/Pair;

    iget v1, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p1, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    iget v3, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->cameraId:I

    .line 554
    invoke-static {v3}, Lnet/sourceforge/opencamera/PreferenceKeys;->getResolutionPreferenceKey(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 558
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_2

    const/16 v3, 0x20

    .line 560
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    goto :goto_0

    .line 566
    :cond_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v3, v4

    .line 567
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 573
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 576
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 579
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    :goto_0
    const/4 v3, 0x0

    .line 588
    :goto_1
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->NoiseReduction:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v0, v1, :cond_3

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_4

    .line 591
    :cond_3
    iput-boolean v4, p1, Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;->has_max_mp:Z

    const v0, 0x112a880

    .line 592
    iput v0, p1, Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;->max_mp:I

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 594
    iget-boolean v0, v0, Lnet/sourceforge/opencamera/MainActivity;->is_test:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->test_max_mp:I

    if-eqz v0, :cond_4

    iget v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->test_max_mp:I

    .line 595
    iput v0, p1, Lnet/sourceforge/opencamera/preview/ApplicationInterface$CameraResolutionConstraints;->max_mp:I

    :cond_4
    return-object v3
.end method

.method public getColorEffectPref()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_color_effect"

    const-string v2, "none"

    .line 452
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    return-object v0
.end method

.method public getDisplayRotation(Z)I
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1473
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/MainActivity;->getDisplayRotation(Z)I

    move-result p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_rotate_preview"

    const-string v2, "0"

    .line 1475
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "180"

    .line 1478
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    :cond_4
    :goto_0
    return p1
.end method

.method public getDoubleTapCapturePref()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_touch_capture"

    const-string v2, "none"

    .line 1121
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "double"

    .line 1122
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawPreview:Lnet/sourceforge/opencamera/ui/DrawPreview;

    return-object v0
.end method

.method public getEdgeModePref()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_edge_mode"

    const-string v2, "default"

    .line 472
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpoBracketingNImagesPref()I
    .locals 4

    .line 1610
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    .line 1611
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const/4 v2, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_expo_bracketing_n_images"

    const-string v3, "3"

    .line 1616
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1618
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v2
.end method

.method public getExpoBracketingStopsPref()D
    .locals 5

    .line 1636
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    .line 1637
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_expo_bracketing_stops"

    const-string v4, "2"

    .line 1642
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1644
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-wide v2
.end method

.method public getExposureCompensationPref()I
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_exposure"

    const-string v2, "0"

    .line 487
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getExposureTimePref()J
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_exposure_time"

    const-wide/32 v2, 0x1fca055

    .line 1494
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFaceDetectionPref()Z
    .locals 3

    .line 655
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isCameraExtensionPref()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "preference_face_detection"

    .line 659
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFlashPref()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->cameraId:I

    .line 409
    invoke-static {v1}, Lnet/sourceforge/opencamera/PreferenceKeys;->getFlashPreferenceKey(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFocusAssistPref()I
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_focus_assist"

    const-string v2, "0"

    .line 422
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 425
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 430
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_0

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 433
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecording()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_1
    return v1
.end method

.method public getFocusBracketingAddInfinityPref()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_focus_bracketing_add_infinity"

    const/4 v2, 0x0

    .line 1678
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFocusBracketingNImagesPref()I
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_focus_bracketing_n_images"

    const-string v2, "3"

    .line 1662
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1664
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public getFocusDistancePref(Z)F
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    const-string p1, "preference_focus_bracketing_target_distance"

    goto :goto_0

    :cond_0
    const-string p1, "preference_focus_distance"

    :goto_0
    const/4 v1, 0x0

    .line 1499
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getFocusPeakingPref()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_focus_peaking"

    const-string v2, "preference_focus_peaking_off"

    .line 1251
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1252
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->supportsPreviewBitmaps()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFocusPref(Z)Ljava/lang/String;
    .locals 2

    .line 414
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FocusBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "focus_mode_manual2"

    return-object p1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->cameraId:I

    .line 418
    invoke-static {v1, p1}, Lnet/sourceforge/opencamera/PreferenceKeys;->getFocusPreferenceKey(IZ)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getForce4KPref()Z
    .locals 3

    iget v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->cameraId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "preference_force_video_4k"

    .line 708
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->supportsForceVideo4K()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method getGeodirectionPref()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_gps_direction"

    const/4 v2, 0x0

    .line 1232
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getGeotaggingPref()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_location"

    const/4 v2, 0x0

    .line 1223
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getGhostImageAlpha()I
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ghost_image_alpha"

    const-string v2, "50"

    .line 1264
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1267
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1272
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/16 v0, 0x32

    :goto_0
    int-to-float v0, v0

    const v1, 0x40233333    # 2.55f

    mul-float v0, v0, v1

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getGyroSensor()Lnet/sourceforge/opencamera/GyroSensor;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->gyroSensor:Lnet/sourceforge/opencamera/GyroSensor;

    return-object v0
.end method

.method public getHDRProcessor()Lnet/sourceforge/opencamera/HDRProcessor;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

    .line 3822
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ImageSaver;->getHDRProcessor()Lnet/sourceforge/opencamera/HDRProcessor;

    move-result-object v0

    return-object v0
.end method

.method public getISOPref()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_iso"

    const-string v2, "auto"

    .line 482
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageQualityPref()I
    .locals 3

    .line 637
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 638
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v1

    const/16 v2, 0x64

    if-eqz v1, :cond_0

    goto :goto_0

    .line 640
    :cond_0
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->DRO:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_1

    return v2

    .line 642
    :cond_1
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_2

    return v2

    .line 644
    :cond_2
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->NoiseReduction:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_3

    return v2

    .line 647
    :cond_3
    :goto_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getImageFormatPref()Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->STD:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    if-eq v0, v1, :cond_4

    return v2

    .line 650
    :cond_4
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getSaveImageQualityPref()I

    move-result v0

    return v0
.end method

.method public getImageSaver()Lnet/sourceforge/opencamera/ImageSaver;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->locationSupplier:Lnet/sourceforge/opencamera/LocationSupplier;

    .line 276
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/LocationSupplier;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getLocation(Lnet/sourceforge/opencamera/LocationSupplier$LocationInfo;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->locationSupplier:Lnet/sourceforge/opencamera/LocationSupplier;

    .line 284
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/LocationSupplier;->getLocation(Lnet/sourceforge/opencamera/LocationSupplier$LocationInfo;)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method getLocationSupplier()Lnet/sourceforge/opencamera/LocationSupplier;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->locationSupplier:Lnet/sourceforge/opencamera/LocationSupplier;

    return-object v0
.end method

.method public getLockOrientationPref()Ljava/lang/String;
    .locals 3

    .line 1108
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_0

    const-string v0, "portrait"

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_lock_orientation"

    const-string v2, "none"

    .line 1110
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxRawImages()I
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

    .line 1813
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ImageSaver;->getMaxDNG()I

    move-result v0

    return v0
.end method

.method public getNRMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->nr_mode:Ljava/lang/String;

    return-object v0
.end method

.method public getNRModePref()Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->nr_mode:Ljava/lang/String;

    .line 1561
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "preference_nr_mode_low_light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1565
    sget-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;->NRMODE_NORMAL:Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    return-object v0

    .line 1563
    :cond_0
    sget-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;->NRMODE_LOW_LIGHT:Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    return-object v0
.end method

.method public getPanoramaProcessor()Lnet/sourceforge/opencamera/PanoramaProcessor;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

    .line 3826
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ImageSaver;->getPanoramaProcessor()Lnet/sourceforge/opencamera/PanoramaProcessor;

    move-result-object v0

    return-object v0
.end method

.method public getPausePreviewPref()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1127
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecording()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1131
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->lastContinuousFastBurst()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1138
    :cond_1
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "preference_pause_preview"

    .line 1142
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_photo_mode"

    const-string v2, "preference_photo_mode_std"

    .line 1687
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "preference_photo_mode_dro"

    .line 1690
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1691
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->supportsDRO()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1692
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->DRO:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    return-object v0

    :cond_0
    const-string v1, "preference_photo_mode_hdr"

    .line 1693
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1694
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->supportsHDR()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1695
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    return-object v0

    :cond_1
    const-string v1, "preference_photo_mode_expo_bracketing"

    .line 1696
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1697
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->supportsExpoBracketing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1698
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ExpoBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    return-object v0

    :cond_2
    const-string v1, "preference_photo_mode_focus_bracketing"

    .line 1699
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1700
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->supportsFocusBracketing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1701
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FocusBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    return-object v0

    :cond_3
    const-string v1, "preference_photo_mode_fast_burst"

    .line 1702
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1703
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->supportsFastBurst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1704
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FastBurst:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    return-object v0

    :cond_4
    const-string v1, "preference_photo_mode_noise_reduction"

    .line 1705
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1706
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->supportsNoiseReduction()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1707
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->NoiseReduction:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    return-object v0

    :cond_5
    const-string v1, "preference_photo_mode_panorama"

    .line 1708
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1709
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->supportsPanorama()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1710
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    return-object v0

    :cond_6
    const-string v1, "preference_photo_mode_x_auto"

    .line 1711
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1712
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->supportsCameraExtension(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1713
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Auto:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    return-object v0

    :cond_7
    const-string v1, "preference_photo_mode_x_hdr"

    .line 1714
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1715
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->supportsCameraExtension(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1716
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    return-object v0

    :cond_8
    const-string v1, "preference_photo_mode_x_night"

    .line 1717
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1718
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->supportsCameraExtension(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1719
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Night:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    return-object v0

    :cond_9
    const-string v1, "preference_photo_mode_x_bokeh"

    .line 1720
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1721
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->supportsCameraExtension(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1722
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Bokeh:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    return-object v0

    :cond_a
    const-string v1, "preference_photo_mode_x_beauty"

    .line 1723
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1724
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->supportsCameraExtension(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1725
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Beauty:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    return-object v0

    .line 1726
    :cond_b
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Standard:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    return-object v0
.end method

.method public getPreviewSizePref()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_preview_size"

    const-string v2, "preference_preview_size_wysiwyg"

    .line 1103
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawPref()Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;
    .locals 3

    .line 1779
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    .line 1780
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isRawAllowed(Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_raw"

    const-string v2, "preference_raw_no"

    .line 1781
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "preference_raw_only"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "preference_raw_yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1784
    :cond_0
    sget-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;->RAWPREF_JPEG_DNG:Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;

    return-object v0

    .line 1787
    :cond_1
    :goto_0
    sget-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;->RAWPREF_JPEG_ONLY:Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;

    return-object v0
.end method

.method public getRecordAudioChannelsPref()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_record_audio_channels"

    const-string v2, "audio_default"

    .line 1242
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordAudioPref()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_record_audio"

    const/4 v2, 0x1

    .line 1237
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRecordAudioSourcePref()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_record_audio_src"

    const-string v2, "audio_src_camcorder"

    .line 1247
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordVideoOutputFormatPref()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_video_output_format"

    const-string v2, "preference_video_output_format_default"

    .line 713
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatIntervalPref()J
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_burst_interval"

    const-string v2, "0"

    .line 1193
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1196
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1204
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getRepeatPref()Ljava/lang/String;
    .locals 3

    .line 1186
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const-string v2, "1"

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_burst_mode"

    .line 1188
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequireLocationPref()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_require_location"

    const/4 v2, 0x0

    .line 1228
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSceneModePref()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_scene_mode"

    const-string v2, "auto"

    .line 447
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowToastsPref()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_show_toasts"

    const/4 v2, 0x1

    .line 1147
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShutterSoundPref()Z
    .locals 3

    .line 1156
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_shutter_sound"

    const/4 v2, 0x1

    .line 1158
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getStampPref()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_stamp"

    const-string v2, "preference_stamp_no"

    .line 1280
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartupFocusPref()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_startup_focus"

    const/4 v2, 0x1

    .line 1163
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->storageUtils:Lnet/sourceforge/opencamera/StorageUtils;

    return-object v0
.end method

.method public getSupportedVideoCaptureRates()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 796
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 797
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->supportsVideoHighSpeed()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 801
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoQualityHander()Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    move-result-object v1

    const/16 v2, 0xf0

    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->videoSupportsFrameRateHighSpeed(I)Z

    move-result v1

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x3f000000    # 0.5f

    if-nez v1, :cond_4

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 802
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoQualityHander()Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->videoSupportsFrameRate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 807
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoQualityHander()Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    move-result-object v1

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->videoSupportsFrameRateHighSpeed(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 808
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoQualityHander()Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->videoSupportsFrameRate(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 812
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoQualityHander()Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->videoSupportsFrameRateHighSpeed(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 813
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoQualityHander()Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->videoSupportsFrameRate(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 814
    :cond_2
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 809
    :cond_3
    :goto_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    :goto_1
    const/high16 v1, 0x3e000000    # 0.125f

    .line 803
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 817
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_6

    const/high16 v1, 0x40000000    # 2.0f

    .line 821
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x40400000    # 3.0f

    .line 822
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x40800000    # 4.0f

    .line 823
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x40a00000    # 5.0f

    .line 824
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x41200000    # 10.0f

    .line 825
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x41a00000    # 20.0f

    .line 826
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x41f00000    # 30.0f

    .line 827
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x42700000    # 60.0f

    .line 828
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x42f00000    # 120.0f

    .line 829
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x43700000    # 240.0f

    .line 830
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method public getTextStampPref()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_textstamp"

    const-string v2, ""

    .line 1304
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailAnimationPref()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_thumbnail_animation"

    const/4 v2, 0x1

    .line 1151
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTimerPref()J
    .locals 5

    .line 1168
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_timer"

    const-string v4, "0"

    .line 1170
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1173
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v2, v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1178
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-wide v2
.end method

.method public getTouchCapturePref()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_touch_capture"

    const-string v2, "none"

    .line 1115
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "single"

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getVideoBitratePref()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_video_bitrate"

    const-string v2, "default"

    .line 718
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCaptureRateFactor()F
    .locals 8

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 766
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraId()I

    move-result v1

    invoke-static {v1}, Lnet/sourceforge/opencamera/PreferenceKeys;->getVideoCaptureRatePreferenceKey(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sub-float v1, v0, v2

    .line 769
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v3, v1

    const-wide v5, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v1, v3, v5

    if-lez v1, :cond_2

    .line 773
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getSupportedVideoCaptureRates()Ljava/util/List;

    move-result-object v1

    .line 777
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float v3, v0, v3

    .line 778
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    cmpg-double v7, v3, v5

    if-gez v7, :cond_0

    goto :goto_0

    .line 784
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "stored capture_rate_factor: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " not supported"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyApplicationInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v0

    :goto_1
    return v2
.end method

.method public getVideoFPSPref()Ljava/lang/String;
    .locals 6

    .line 724
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isVideoCaptureIntent()Z

    move-result v0

    const-string v1, "default"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 727
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 728
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    return-object v1

    .line 737
    :cond_1
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getVideoCaptureRateFactor()F

    move-result v0

    const v2, 0x3f7fff58    # 0.99999f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_6

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    float-to-double v4, v0

    .line 741
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v0, v2

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 744
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoQualityHander()Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->videoSupportsFrameRateHighSpeed(I)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_5

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 745
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoQualityHander()Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->videoSupportsFrameRate(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0xf0

    if-ge v0, v2, :cond_4

    mul-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 753
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoQualityHander()Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->videoSupportsFrameRateHighSpeed(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 754
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoQualityHander()Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->videoSupportsFrameRate(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 755
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v0, "MyApplicationInterface"

    const-string v2, "can\'t find valid fps for slow motion"

    .line 758
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 746
    :cond_5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    iget v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->cameraId:I

    .line 761
    invoke-static {v2}, Lnet/sourceforge/opencamera/PreferenceKeys;->getVideoFPSPreferenceKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoFlashPref()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_video_flash"

    const/4 v2, 0x0

    .line 1093
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVideoLogProfileStrength()F
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_video_log"

    const-string v2, "off"

    .line 866
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 868
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "extra_strong"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "fine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "low"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "strong"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "medium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/high16 v0, 0x43fa0000    # 500.0f

    return v0

    :pswitch_1
    const/high16 v0, 0x41200000    # 10.0f

    return v0

    :pswitch_2
    const/high16 v0, 0x42000000    # 32.0f

    return v0

    :pswitch_3
    const/high16 v0, 0x43600000    # 224.0f

    return v0

    :pswitch_4
    const/high16 v0, 0x42c80000    # 100.0f

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x4041708b -> :sswitch_4
        -0x352a8969 -> :sswitch_3
        0x1a354 -> :sswitch_2
        0x2ff5ba -> :sswitch_1
        0x54a22da6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVideoLowPowerCheckPref()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_video_low_power_check"

    const/4 v2, 0x1

    .line 1098
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVideoMaxDurationPref()J
    .locals 5

    .line 923
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isVideoCaptureIntent()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 926
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 927
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v3, v0

    mul-long v3, v3, v1

    return-wide v3

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "preference_video_max_duration"

    const-string v4, "0"

    .line 934
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 937
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v3, v0

    mul-long v3, v3, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 942
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const-wide/16 v3, 0x0

    :goto_0
    return-wide v3
.end method

.method public getVideoMaxFileSizePref()Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMaxFileSize;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/preview/ApplicationInterface$NoFreeStorageException;
        }
    .end annotation

    .line 1013
    new-instance v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMaxFileSize;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMaxFileSize;-><init>()V

    .line 1014
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getVideoMaxFileSizeUserPref()J

    move-result-wide v1

    iput-wide v1, v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMaxFileSize;->max_filesize:J

    .line 1015
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getVideoRestartMaxFileSizeUserPref()Z

    move-result v1

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMaxFileSize;->auto_restart:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->storageUtils:Lnet/sourceforge/opencamera/StorageUtils;

    .line 1024
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/StorageUtils;->isUsingSAF()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->storageUtils:Lnet/sourceforge/opencamera/StorageUtils;

    .line 1028
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveLocation()Ljava/lang/String;

    move-result-object v1

    .line 1032
    invoke-static {v1}, Lnet/sourceforge/opencamera/StorageUtils;->saveFolderIsFull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1037
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 1040
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->storageUtils:Lnet/sourceforge/opencamera/StorageUtils;

    .line 1050
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/StorageUtils;->freeMemory()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_5

    const-wide/32 v5, 0x100000

    mul-long v1, v1, v5

    const-wide/32 v5, 0x2faf080

    sub-long/2addr v1, v5

    iget-boolean v5, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->test_set_available_memory:Z

    if-eqz v5, :cond_2

    iget-wide v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->test_available_memory:J

    :cond_2
    const-wide/32 v5, 0x1312d00

    cmp-long v7, v1, v5

    if-lez v7, :cond_4

    .line 1069
    iget-wide v5, v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMaxFileSize;->max_filesize:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_3

    iget-wide v3, v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMaxFileSize;->max_filesize:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_5

    .line 1070
    :cond_3
    iput-wide v1, v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMaxFileSize;->max_filesize:J

    goto :goto_1

    .line 1079
    :cond_4
    new-instance v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NoFreeStorageException;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NoFreeStorageException;-><init>()V

    throw v0

    :cond_5
    :goto_1
    return-object v0
.end method

.method getVideoMaxFileSizeUserPref()J
    .locals 5

    .line 968
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isVideoCaptureIntent()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 971
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "android.intent.extra.sizeLimit"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 972
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "preference_video_max_filesize"

    const-string v4, "0"

    .line 979
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 982
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 987
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-wide v1
.end method

.method public getVideoProfileGamma()F
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_video_profile_gamma"

    const-string v2, "2.2"

    .line 906
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 909
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 916
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVideoQualityPref()Ljava/lang/String;
    .locals 4

    .line 671
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 674
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 675
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v3, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 679
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoQualityHander()Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getSupportedVideoQuality()Ljava/util/List;

    move-result-object v3

    if-nez v0, :cond_1

    .line 684
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 690
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->cameraId:I

    .line 698
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->fpsIsHighSpeed()Z

    move-result v2

    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/PreferenceKeys;->getVideoQualityPreferenceKey(IZ)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoRestartTimesPref()I
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_video_restart"

    const-string v2, "0"

    .line 950
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 953
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 958
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVideoStabilizationPref()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_video_stabilization"

    const/4 v2, 0x0

    .line 703
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVideoTonemapProfile()Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_video_log"

    const-string v2, "off"

    .line 837
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 839
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "extra_strong"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "jtlog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "gamma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "srgb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x8

    goto :goto_0

    :sswitch_4
    const-string v1, "fine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_6
    const-string v1, "low"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_7
    const-string v1, "strong"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_8
    const-string v1, "rec709"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_9
    const-string v1, "medium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_a
    const-string v1, "jtlog2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_b
    const-string v1, "jtvideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 861
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_OFF:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    return-object v0

    .line 857
    :pswitch_0
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_JTLOG:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    return-object v0

    .line 853
    :pswitch_1
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_GAMMA:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    return-object v0

    .line 845
    :pswitch_2
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_SRGB:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    return-object v0

    .line 841
    :pswitch_3
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_OFF:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    return-object v0

    .line 843
    :pswitch_4
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_REC709:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    return-object v0

    .line 851
    :pswitch_5
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_LOG:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    return-object v0

    .line 859
    :pswitch_6
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_JTLOG2:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    return-object v0

    .line 855
    :pswitch_7
    sget-object v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;->TONEMAPPROFILE_JTVIDEO:Lnet/sourceforge/opencamera/cameracontroller/CameraController$TonemapProfile;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4c093a8f -> :sswitch_b
        -0x4488e248 -> :sswitch_a
        -0x4041708b -> :sswitch_9
        -0x37ba6e10 -> :sswitch_8
        -0x352a8969 -> :sswitch_7
        0x1a354 -> :sswitch_6
        0x1ad6f -> :sswitch_5
        0x2ff5ba -> :sswitch_4
        0x35ff7a -> :sswitch_3
        0x5d933a7 -> :sswitch_2
        0x60c19ba -> :sswitch_1
        0x54a22da6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getWhiteBalancePref()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_white_balance"

    const-string v2, "auto"

    .line 457
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteBalanceTemperaturePref()I
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_white_balance_temperature"

    const/16 v2, 0x1388

    .line 462
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getZoomPref()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->zoom_factor:I

    return v0
.end method

.method public hasPausedPreview(Z)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900c2

    .line 2714
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f0900f3

    .line 2715
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2717
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2718
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v0, 0x1

    .line 2719
    invoke-virtual {p1, v0}, Lnet/sourceforge/opencamera/MainActivity;->enablePausePreviewOnBackPressedCallback(Z)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2722
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2723
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2724
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->clearLastImages()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2725
    invoke-virtual {p1, v2}, Lnet/sourceforge/opencamera/MainActivity;->enablePausePreviewOnBackPressedCallback(Z)V

    :goto_0
    return-void
.end method

.method hasSetCameraId()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->has_set_cameraId:Z

    return v0
.end method

.method hasThumbnailAnimation()Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawPreview:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 3818
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->hasThumbnailAnimation()Z

    move-result v0

    return v0
.end method

.method public imageQueueWouldBlock(II)Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

    .line 1460
    invoke-virtual {v0, p1, p2}, Lnet/sourceforge/opencamera/ImageSaver;->queueWouldBlock(II)Z

    move-result p1

    return p1
.end method

.method public isCameraBurstPref()Z
    .locals 2

    .line 1516
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    .line 1517
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FastBurst:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->NoiseReduction:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isCameraExtensionPref()Z
    .locals 2

    .line 1570
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    .line 1571
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Auto:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Night:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Bokeh:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Beauty:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isExpoBracketingPref()Z
    .locals 2

    .line 1504
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    .line 1505
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ExpoBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFocusBracketingPref()Z
    .locals 2

    .line 1510
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    .line 1511
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FocusBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isImageCaptureIntent()Z
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3230
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    .line 3231
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPreviewInBackground()Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1841
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->isCameraInBackground()Z

    move-result v0

    return v0
.end method

.method public isRawAllowed(Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;)Z
    .locals 4

    .line 1745
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isImageCaptureIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1747
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1750
    :cond_1
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Standard:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const/4 v2, 0x1

    if-eq p1, v0, :cond_8

    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->DRO:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 1753
    :cond_2
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ExpoBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const-string v3, "preference_raw_expo_bracketing"

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 1754
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1755
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->supportsBurstRaw()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 1757
    :cond_4
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "preference_hdr_save_expo"

    .line 1759
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 1760
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1761
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->supportsBurstRaw()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    .line 1763
    :cond_6
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FocusBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "preference_raw_focus_bracketing"

    .line 1764
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1765
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->supportsBurstRaw()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1

    :cond_8
    :goto_0
    return v2
.end method

.method public isRawOnly()Z
    .locals 1

    .line 1793
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    .line 1794
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isRawOnly(Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;)Z

    move-result v0

    return v0
.end method

.method isRawOnly(Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;)Z
    .locals 2

    .line 1801
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isRawAllowed(Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "preference_raw"

    const-string v1, "preference_raw_no"

    .line 1803
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "preference_raw_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isTestAlwaysFocus()Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1862
    iget-boolean v0, v0, Lnet/sourceforge/opencamera/MainActivity;->is_test:Z

    return v0
.end method

.method isVideoCaptureIntent()Z
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3241
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    .line 3242
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVideoPref()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "is_video"

    const/4 v2, 0x0

    .line 442
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public multitouchZoom(I)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2865
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/ui/MainUI;->setSeekbarZoom(I)V

    return-void
.end method

.method public needsStoragePermission()Z
    .locals 1

    .line 3045
    invoke-static {}, Lnet/sourceforge/opencamera/MainActivity;->useScopedStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onBurstPictureTaken(Ljava/util/List;Ljava/util/Date;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/Date;",
            ")Z"
        }
    .end annotation

    .line 3553
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3554
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3558
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Standard:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 3560
    :cond_0
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_hdr_save_expo"

    const/4 v2, 0x0

    .line 3563
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3567
    invoke-direct {p0, v0, p1, p2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->saveImage(ZLjava/util/List;Ljava/util/Date;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 3576
    invoke-direct {p0, v0, p1, p2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->saveImage(ZLjava/util/List;Ljava/util/Date;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public onCameraError()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2642
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f10003f

    invoke-virtual {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    return-void
.end method

.method public onCaptureStarted()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->n_capture_images:I

    iput v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->n_capture_images_raw:I

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawPreview:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 2756
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->onCaptureStarted()V

    .line 2758
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Night:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2759
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    const v1, 0x7f1001e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;IZ)V

    :cond_0
    return-void
.end method

.method public onContinuousFocusMove(Z)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawPreview:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 1879
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->onContinuousFocusMove(Z)V

    return-void
.end method

.method onDestroy()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawPreview:Lnet/sourceforge/opencamera/ui/DrawPreview;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->onDestroy()V

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ImageSaver;->onDestroy()V

    :cond_1
    return-void
.end method

.method public onDrawPreview(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3105
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->isCameraInBackground()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawPreview:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 3107
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->onDrawPreview(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onExtensionProgress(I)V
    .locals 3

    .line 2816
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Night:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_0

    .line 2817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2819
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;Z)V

    return-void
.end method

.method public onFailedCreateVideoFileError()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2707
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f100097

    invoke-virtual {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    return-void
.end method

.method public onFailedReconnectError()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2700
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f100093

    invoke-virtual {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    return-void
.end method

.method public onFailedStartPreview()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2636
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f100099

    invoke-virtual {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v1, 0x0

    .line 2637
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->enablePausePreviewOnBackPressedCallback(Z)V

    return-void
.end method

.method public onPhotoError()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2647
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f10009a

    invoke-virtual {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    return-void
.end method

.method public onPictureCompleted()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2769
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->clearActiveFakeToast()V

    .line 2771
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2772
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2776
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Standard:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 2778
    :cond_0
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->NoiseReduction:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2779
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isImageCaptureIntent()Z

    move-result v0

    .line 2780
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->saveInBackground(Z)Z

    move-result v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

    .line 2781
    invoke-virtual {v1, v0}, Lnet/sourceforge/opencamera/ImageSaver;->finishImageBatch(Z)V

    goto :goto_0

    .line 2783
    :cond_1
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->gyroSensor:Lnet/sourceforge/opencamera/GyroSensor;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/GyroSensor;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->panorama_pic_accepted:Z

    if-eqz v0, :cond_2

    .line 2787
    invoke-direct {p0, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->setNextPanoramaPoint(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 2792
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->setNextPanoramaPoint(Z)V

    goto :goto_0

    .line 2795
    :cond_3
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FocusBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_4

    .line 2798
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getShutterSoundPref()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2801
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2803
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_4
    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawPreview:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 2810
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/ui/DrawPreview;->cameraInOperation(Z)V

    return-void
.end method

.method public onPictureTaken([BLjava/util/Date;)Z
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->n_capture_images:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->n_capture_images:I

    .line 3536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3537
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 3539
    invoke-direct {p0, p1, v0, p2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->saveImage(ZLjava/util/List;Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public onRawBurstPictureTaken(Ljava/util/List;Ljava/util/Date;)Z
    .locals 8
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

    .line 3617
    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 v0, 0x0

    .line 3619
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->saveInBackground(Z)Z

    move-result v7

    const/4 v1, 0x1

    .line 3623
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

    const/4 v3, 0x1

    .line 3624
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lnet/sourceforge/opencamera/cameracontroller/RawImage;

    move v2, v7

    move v4, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/opencamera/ImageSaver;->saveImageRaw(ZZILnet/sourceforge/opencamera/cameracontroller/RawImage;Ljava/util/Date;)Z

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public onRawPictureTaken(Lnet/sourceforge/opencamera/cameracontroller/RawImage;Ljava/util/Date;)Z
    .locals 7

    .line 3585
    invoke-static {}, Ljava/lang/System;->gc()V

    iget v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->n_capture_images_raw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->n_capture_images_raw:I

    const/4 v0, 0x0

    .line 3591
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->saveInBackground(Z)Z

    move-result v2

    .line 3593
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v1

    iget-object v3, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3594
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3599
    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Standard:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 3601
    :cond_0
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->forceSuffix(Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->n_capture_images_raw:I

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

    move-object v5, p1

    move-object v6, p2

    .line 3606
    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/opencamera/ImageSaver;->saveImageRaw(ZZILnet/sourceforge/opencamera/cameracontroller/RawImage;Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "cameraId"

    iget v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->cameraId:I

    .line 214
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "nr_mode"

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->nr_mode:Ljava/lang/String;

    .line 217
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "aperture"

    iget v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->aperture:F

    .line 220
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public onVideoError(II)V
    .locals 3

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const v0, 0x7f100367

    goto :goto_0

    :cond_0
    const v0, 0x7f100368

    :goto_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2661
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    .line 2664
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2665
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "last_video_error"

    .line 2666
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2667
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onVideoInfo(II)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x7f10036b

    if-lt v0, v1, :cond_0

    const/16 v0, 0x323

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2618
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;IZ)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x321

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2624
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;IZ)V

    .line 2628
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "info_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2629
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "last_video_error"

    .line 2630
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2631
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onVideoRecordStartError(Lnet/sourceforge/opencamera/preview/VideoProfile;)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2675
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->getErrorFeatures(Lnet/sourceforge/opencamera/preview/VideoProfile;)Ljava/lang/String;

    move-result-object p1

    .line 2676
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10034b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1000cd

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2680
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100094

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2682
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoRecordStopError(Lnet/sourceforge/opencamera/preview/VideoProfile;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2690
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->getErrorFeatures(Lnet/sourceforge/opencamera/preview/VideoProfile;)Ljava/lang/String;

    move-result-object p1

    .line 2691
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10036c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2692
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000cd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2695
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;)V

    return-void
.end method

.method public requestCameraPermission()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3038
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPermissionHandler()Lnet/sourceforge/opencamera/PermissionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/PermissionHandler;->requestCameraPermission()V

    return-void
.end method

.method public requestRecordAudioPermission()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3061
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPermissionHandler()Lnet/sourceforge/opencamera/PermissionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/PermissionHandler;->requestRecordAudioPermission()V

    return-void
.end method

.method public requestStoragePermission()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3054
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPermissionHandler()Lnet/sourceforge/opencamera/PermissionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/PermissionHandler;->requestStoragePermission()V

    return-void
.end method

.method public requestTakePhoto()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v1, 0x0

    .line 2872
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->takePicture(Z)V

    return-void
.end method

.method reset(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->aperture:F

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->zoom_factor:I

    return-void
.end method

.method public restartedVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 2499
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->completeVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;)V

    .line 2500
    invoke-direct {p0, p1, p2, p3}, Lnet/sourceforge/opencamera/MyApplicationInterface;->broadcastVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;)Z

    iget-object p2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->subtitleVideoTimerTask:Ljava/util/TimerTask;

    if-eqz p2, :cond_0

    .line 2504
    invoke-virtual {p2}, Ljava/util/TimerTask;->cancel()Z

    const/4 p2, 0x0

    iput-object p2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->subtitleVideoTimerTask:Ljava/util/TimerTask;

    .line 2509
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->startVideoSubtitlesTask(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;)V

    :cond_0
    return-void
.end method

.method scannedFile(Ljava/io/File;Landroid/net/Uri;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_images:Ljava/util/List;

    .line 3803
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_images:Ljava/util/List;

    .line 3804
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;

    .line 3807
    iget-object v2, v1, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;->uri:Landroid/net/Uri;

    if-nez v2, :cond_0

    iget-object v2, v1, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3810
    iput-object p2, v1, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;->uri:Landroid/net/Uri;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAperture(F)V
    .locals 0

    iput p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->aperture:F

    return-void
.end method

.method public setCameraIdPref(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->has_set_cameraId:Z

    iput p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->cameraId:I

    return-void
.end method

.method public setCameraResolutionPref(II)V
    .locals 2

    .line 3007
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v0, v1, :cond_0

    return-void

    .line 3011
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3015
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->cameraId:I

    .line 3016
    invoke-static {v0}, Lnet/sourceforge/opencamera/PreferenceKeys;->getResolutionPreferenceKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3017
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setColorEffectPref(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2944
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_color_effect"

    .line 2945
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2946
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setExposureCompensationPref(I)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2993
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2994
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "preference_exposure"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2995
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setExposureTimePref(J)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3066
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_exposure_time"

    .line 3067
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3068
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setFlashPref(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2907
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->cameraId:I

    .line 2908
    invoke-static {v1}, Lnet/sourceforge/opencamera/PreferenceKeys;->getFlashPreferenceKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2909
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setFocusDistancePref(FZ)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3080
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string p2, "preference_focus_bracketing_target_distance"

    goto :goto_0

    :cond_0
    const-string p2, "preference_focus_distance"

    .line 3081
    :goto_0
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 3082
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setFocusPref(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2914
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->cameraId:I

    .line 2915
    invoke-static {v1, p2}, Lnet/sourceforge/opencamera/PreferenceKeys;->getFocusPreferenceKey(IZ)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2916
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 p2, 0x0

    .line 2918
    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/MainActivity;->setManualFocusSeekBarVisibility(Z)V

    return-void
.end method

.method public setISOPref(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2979
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_iso"

    .line 2980
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2981
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setNRMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->nr_mode:Ljava/lang/String;

    return-void
.end method

.method public setSceneModePref(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2930
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_scene_mode"

    .line 2931
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2932
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setVideoPref(Z)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2923
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_video"

    .line 2924
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2925
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setVideoQualityPref(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3022
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->cameraId:I

    .line 3023
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->fpsIsHighSpeed()Z

    move-result v2

    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/PreferenceKeys;->getVideoQualityPreferenceKey(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3024
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setWhiteBalancePref(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2958
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_white_balance"

    .line 2959
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2960
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setWhiteBalanceTemperaturePref(I)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2972
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_white_balance_temperature"

    .line 2973
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2974
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setZoomPref(I)V
    .locals 0

    iput p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->zoom_factor:I

    return-void
.end method

.method shareLastImage()V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3673
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    .line 3674
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->isPreviewPaused()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_images:Ljava/util/List;

    .line 3676
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-nez v1, :cond_1

    iget-object v3, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_images:Ljava/util/List;

    .line 3677
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;

    .line 3678
    iget-boolean v4, v3, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;->share:Z

    if-eqz v4, :cond_0

    move-object v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    .line 3684
    iget-object v1, v1, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;->uri:Landroid/net/Uri;

    if-nez v1, :cond_2

    const-string v0, "MyApplicationInterface"

    const-string v1, "can\'t share last image as don\'t yet have uri"

    .line 3690
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3694
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "image/jpeg"

    .line 3695
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.STREAM"

    .line 3696
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const-string v3, "Photo"

    .line 3697
    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 3701
    :cond_3
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->clearLastImages()V

    .line 3702
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->startCameraPreview()V

    :cond_4
    :goto_1
    return-void
.end method

.method startPanorama()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->gyroSensor:Lnet/sourceforge/opencamera/GyroSensor;

    .line 1885
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/GyroSensor;->startRecording()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->n_panorama_pics:I

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->panorama_pic_accepted:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->panorama_dir_left_to_right:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1890
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->setTakePhotoIcon()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f09004e

    .line 1891
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1892
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1893
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->closeExposureUI()V

    return-void
.end method

.method public startedVideo()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2331
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->inImmersiveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->usingKitKatImmersiveModeEverything()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900a6

    .line 2332
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2333
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2335
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->setPauseVideoContentDescription()V

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2337
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsPhotoVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->usePhotoVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2338
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->inImmersiveMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->usingKitKatImmersiveModeEverything()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900e6

    .line 2339
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2340
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2343
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->isExposureUIOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2348
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->setupExposureUI()V

    .line 2350
    :cond_5
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->createOutputVideoMethod()Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    move-result-object v0

    .line 2351
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getVideoSubtitlePref(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "preference_video_subtitle_yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2352
    sget-object v1, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->URI:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    if-eq v0, v1, :cond_6

    .line 2353
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->startVideoSubtitlesTask(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;)V

    :cond_6
    return-void
.end method

.method public startingVideo()V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_lock_video"

    const/4 v2, 0x0

    .line 2037
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2038
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->lockScreen()V

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2040
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->stopAudioListeners()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900e5

    .line 2041
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0800c4

    .line 2042
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2043
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100355

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2044
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2045
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->destroyPopup()V

    return-void
.end method

.method stopPanorama(Z)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->gyroSensor:Lnet/sourceforge/opencamera/GyroSensor;

    .line 1918
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/GyroSensor;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->gyroSensor:Lnet/sourceforge/opencamera/GyroSensor;

    .line 1923
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/GyroSensor;->stopRecording()V

    .line 1924
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->clearPanoramaPoint()V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->imageSaver:Lnet/sourceforge/opencamera/ImageSaver;

    .line 1926
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ImageSaver;->flushImageBatch()V

    :cond_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1928
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->setTakePhotoIcon()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v0, 0x7f09004e

    .line 1929
    invoke-virtual {p1, v0}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    .line 1930
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1931
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->showGUI()V

    return-void
.end method

.method public stoppedVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900a6

    .line 2376
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 2377
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f0900e6

    .line 2378
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2379
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2380
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->setPauseVideoContentDescription()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2381
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->destroyPopup()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2382
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->isExposureUIOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2387
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->setupExposureUI()V

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->subtitleVideoTimerTask:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2390
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->subtitleVideoTimerTask:Ljava/util/TimerTask;

    .line 2394
    :cond_1
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->completeVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;)V

    .line 2395
    invoke-direct {p0, p1, p2, p3}, Lnet/sourceforge/opencamera/MyApplicationInterface;->broadcastVideo(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 2399
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isVideoCaptureIntent()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_2

    .line 2400
    sget-object p3, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->FILE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    if-ne p1, p3, :cond_2

    goto/16 :goto_b

    :cond_2
    if-eqz v0, :cond_4

    .line 2411
    sget-object p3, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->SAF:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    if-eq p1, p3, :cond_3

    sget-object p3, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->MEDIASTORE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    if-ne p1, p3, :cond_4

    .line 2412
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2413
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_4
    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    if-eqz v0, :cond_5

    const/4 p2, -0x1

    goto :goto_0

    :cond_5
    const/4 p2, 0x0

    .line 2418
    :goto_0
    invoke-virtual {p1, p2, v1}, Lnet/sourceforge/opencamera/MainActivity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2419
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->finish()V

    goto/16 :goto_b

    :cond_6
    if-eqz v0, :cond_b

    .line 2424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2427
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2429
    :try_start_0
    sget-object v2, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->FILE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    if-ne p1, v2, :cond_7

    .line 2430
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2431
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    move-object p1, v1

    goto :goto_1

    .line 2434
    :cond_7
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "r"

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2435
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    :goto_1
    const-wide/16 p2, -0x1

    .line 2437
    invoke-virtual {v0, p2, p3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2446
    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    nop

    :goto_2
    if-eqz p1, :cond_8

    .line 2453
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception p1

    .line 2457
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_0
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto/16 :goto_8

    :catch_2
    move-exception p2

    goto :goto_3

    :catch_3
    move-exception p2

    :goto_3
    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_4
    move-exception p1

    goto :goto_4

    :catch_5
    move-exception p1

    :goto_4
    move-object p2, v1

    :goto_5
    :try_start_4
    const-string p3, "MyApplicationInterface"

    const-string v2, "failed to find thumbnail"

    .line 2441
    invoke-static {p3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2446
    :try_start_5
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_6

    :catch_6
    nop

    :goto_6
    if-eqz p2, :cond_8

    .line 2453
    :try_start_6
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_8
    :goto_7
    if-eqz v1, :cond_b

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const p2, 0x7f09007c

    .line 2461
    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 2462
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 2463
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 2466
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getWidth()I

    move-result v0

    if-le p2, v0, :cond_9

    .line 2467
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getWidth()I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    mul-float p2, p2, p1

    .line 2468
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p3, p3

    mul-float p1, p1, p3

    .line 2469
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 p3, 0x1

    .line 2472
    invoke-static {v1, p2, p1, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, v1, :cond_9

    .line 2475
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v1, p1

    :cond_9
    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2480
    new-instance p2, Lnet/sourceforge/opencamera/MyApplicationInterface$2;

    invoke-direct {p2, p0, v1}, Lnet/sourceforge/opencamera/MyApplicationInterface$2;-><init>(Lnet/sourceforge/opencamera/MyApplicationInterface;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_b

    :catchall_2
    move-exception p1

    move-object v1, p2

    .line 2446
    :goto_8
    :try_start_7
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_9

    :catch_7
    nop

    :goto_9
    if-eqz v1, :cond_a

    .line 2453
    :try_start_8
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_a

    :catch_8
    move-exception p2

    .line 2457
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 2459
    :cond_a
    :goto_a
    throw p1

    :cond_b
    :goto_b
    return-void
.end method

.method public stoppingVideo()V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2361
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->unlockScreen()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900e5

    .line 2362
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0800c5

    .line 2363
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2364
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100351

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2365
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method switchToCamera(Z)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2881
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraControllerManager()Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getNumberOfCameras()I

    move-result v0

    if-eqz p1, :cond_0

    .line 2882
    sget-object p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_FRONT:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_BACK:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2884
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraControllerManager()Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getFacing(I)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 2887
    invoke-virtual {p0, v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->setCameraIdPref(I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public timerBeep(J)V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_timer_beep"

    const/4 v2, 0x1

    .line 2848
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-wide/16 v3, 0x3e8

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    cmp-long v0, p1, v3

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2852
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getSoundPoolManager()Lnet/sourceforge/opencamera/SoundPoolManager;

    move-result-object v0

    if-eqz v2, :cond_1

    const v2, 0x7f0f0001

    goto :goto_1

    :cond_1
    const/high16 v2, 0x7f0f0000

    :goto_1
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/SoundPoolManager;->playSound(I)V

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "preference_timer_speak"

    .line 2854
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2857
    div-long/2addr p1, v3

    long-to-int p2, p1

    const/16 p1, 0x3c

    if-gt p2, p1, :cond_3

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2859
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/MainActivity;->speak(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public touchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2028
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->closeExposureUI()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2029
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->closePopup()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2030
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->usingKitKatImmersiveMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v0, 0x0

    .line 2031
    invoke-virtual {p1, v0}, Lnet/sourceforge/opencamera/MainActivity;->setImmersiveMode(Z)V

    :cond_0
    return-void
.end method

.method trashLastImage()V
    .locals 6

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3769
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    .line 3770
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->isPreviewPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_images:Ljava/util/List;

    .line 3771
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_images:Ljava/util/List;

    .line 3772
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;

    iget-object v3, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->last_images_type:Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;

    .line 3773
    iget-object v4, v2, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;->uri:Landroid/net/Uri;

    iget-object v2, v2, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;->name:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v2, v5}, Lnet/sourceforge/opencamera/MyApplicationInterface;->trashImage(Lnet/sourceforge/opencamera/MyApplicationInterface$LastImagesType;Landroid/net/Uri;Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3775
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->clearLastImages()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawPreview:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 3776
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->clearGhostImage()V

    .line 3777
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->startCameraPreview()V

    .line 3783
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 3784
    new-instance v1, Lnet/sourceforge/opencamera/MyApplicationInterface$3;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/MyApplicationInterface$3;-><init>(Lnet/sourceforge/opencamera/MyApplicationInterface;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public turnFrontScreenFlashOn()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->used_front_screen_flash:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2746
    invoke-virtual {v1, v0}, Lnet/sourceforge/opencamera/MainActivity;->setBrightnessForCamera(Z)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawPreview:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 2747
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->turnFrontScreenFlashOn()V

    return-void
.end method

.method updateThumbnail(Landroid/graphics/Bitmap;Z)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2835
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/MainActivity;->updateGalleryIcon(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawPreview:Lnet/sourceforge/opencamera/ui/DrawPreview;

    const/4 v1, 0x1

    .line 2836
    invoke-virtual {v0, p1, p2, v1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->updateThumbnail(Landroid/graphics/Bitmap;ZZ)V

    if-nez p2, :cond_0

    .line 2837
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPausePreviewPref()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawPreview:Lnet/sourceforge/opencamera/ui/DrawPreview;

    .line 2838
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->showLastImage()V

    :cond_0
    return-void
.end method

.method public useCamera2()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 261
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->supportsCamera2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_camera_api"

    const-string v2, "preference_camera_api_old"

    .line 262
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "preference_camera_api_camera2"

    .line 263
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public useCamera2DummyCaptureHack()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_camera2_dummy_capture_hack"

    const/4 v2, 0x0

    .line 1823
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public useCamera2FakeFlash()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_camera2_fake_flash"

    const/4 v2, 0x0

    .line 1818
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public useCamera2FastBurst()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_camera2_fast_burst"

    const/4 v2, 0x1

    .line 1828
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public usePhotoVideoRecording()Z
    .locals 3

    .line 1834
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->useCamera2()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "preference_camera2_photo_video_recording"

    .line 1836
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
