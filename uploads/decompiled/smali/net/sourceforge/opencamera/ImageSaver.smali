.class public Lnet/sourceforge/opencamera/ImageSaver;
.super Ljava/lang/Thread;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/ImageSaver$Request;,
        Lnet/sourceforge/opencamera/ImageSaver$LoadBitmapThread;,
        Lnet/sourceforge/opencamera/ImageSaver$GyroDebugInfo;,
        Lnet/sourceforge/opencamera/ImageSaver$PostProcessBitmapResult;,
        Lnet/sourceforge/opencamera/ImageSaver$ExifInterfaceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageSaver"

.field private static final gyro_info_camera_view_angle_x_tag:Ljava/lang/String; = "camera_view_angle_x"

.field private static final gyro_info_camera_view_angle_y_tag:Ljava/lang/String; = "camera_view_angle_y"

.field private static final gyro_info_doc_tag:Ljava/lang/String; = "open_camera_gyro_info"

.field private static final gyro_info_image_tag:Ljava/lang/String; = "image"

.field private static final gyro_info_panorama_pics_per_screen_tag:Ljava/lang/String; = "panorama_pics_per_screen"

.field private static final gyro_info_vector_right_type:Ljava/lang/String; = "X"

.field private static final gyro_info_vector_screen_type:Ljava/lang/String; = "Z"

.field private static final gyro_info_vector_tag:Ljava/lang/String; = "vector"

.field private static final gyro_info_vector_up_type:Ljava/lang/String; = "Y"

.field static final hdr_suffix:Ljava/lang/String; = "_HDR"

.field static final nr_suffix:Ljava/lang/String; = "_NR"

.field static final pano_suffix:Ljava/lang/String; = "_PANO"

.field private static final queue_cost_dng_c:I = 0x6

.field private static final queue_cost_jpeg_c:I = 0x1

.field public static volatile test_small_queue_size:Z


# instance fields
.field private app_is_paused:Z

.field private final hdrProcessor:Lnet/sourceforge/opencamera/HDRProcessor;

.field private final main_activity:Lnet/sourceforge/opencamera/MainActivity;

.field private n_images_to_save:I

.field private n_real_images_to_save:I

.field private final p:Landroid/graphics/Paint;

.field private final panoramaProcessor:Lnet/sourceforge/opencamera/PanoramaProcessor;

.field private pending_image_average_request:Lnet/sourceforge/opencamera/ImageSaver$Request;

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lnet/sourceforge/opencamera/ImageSaver$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final queue_capacity:I

.field public volatile test_queue_blocked:Z

.field public volatile test_slow_saving:Z


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 4

    const-string v0, "ImageSaver"

    .line 302
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    iput v1, p0, Lnet/sourceforge/opencamera/ImageSaver;->n_images_to_save:I

    iput v1, p0, Lnet/sourceforge/opencamera/ImageSaver;->n_real_images_to_save:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ImageSaver;->app_is_paused:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lnet/sourceforge/opencamera/ImageSaver;->pending_image_average_request:Lnet/sourceforge/opencamera/ImageSaver$Request;

    iput-object p1, p0, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const-string v2, "activity"

    .line 307
    invoke-virtual {p1, v2}, Lnet/sourceforge/opencamera/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 308
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v2

    invoke-static {v2}, Lnet/sourceforge/opencamera/ImageSaver;->computeQueueSize(I)I

    move-result v2

    iput v2, p0, Lnet/sourceforge/opencamera/ImageSaver;->queue_capacity:I

    .line 309
    new-instance v3, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v3, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v3, p0, Lnet/sourceforge/opencamera/ImageSaver;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 311
    new-instance v2, Lnet/sourceforge/opencamera/HDRProcessor;

    iget-boolean v3, p1, Lnet/sourceforge/opencamera/MainActivity;->is_test:Z

    invoke-direct {v2, p1, v3}, Lnet/sourceforge/opencamera/HDRProcessor;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lnet/sourceforge/opencamera/ImageSaver;->hdrProcessor:Lnet/sourceforge/opencamera/HDRProcessor;

    .line 312
    new-instance v3, Lnet/sourceforge/opencamera/PanoramaProcessor;

    invoke-direct {v3, p1, v2}, Lnet/sourceforge/opencamera/PanoramaProcessor;-><init>(Landroid/content/Context;Lnet/sourceforge/opencamera/HDRProcessor;)V

    iput-object v3, p0, Lnet/sourceforge/opencamera/ImageSaver;->panoramaProcessor:Lnet/sourceforge/opencamera/PanoramaProcessor;

    .line 314
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/ImageSaver;)Lnet/sourceforge/opencamera/MainActivity;
    .locals 0

    .line 62
    iget-object p0, p0, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    return-object p0
.end method

.method private addDateTimeExif(Landroidx/exifinterface/media/ExifInterface;Ljava/util/Date;)V
    .locals 4

    const-string v0, "DateTime"

    .line 4030
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4034
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy:MM:dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4035
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4036
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 4040
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DateTimeOriginal"

    .line 4042
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DateTimeDigitized"

    .line 4043
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 4048
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "XXX"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4049
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4050
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "OffsetTime"

    .line 4053
    invoke-virtual {p1, v0, p2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OffsetTimeOriginal"

    .line 4054
    invoke-virtual {p1, v0, p2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OffsetTimeDigitized"

    .line 4055
    invoke-virtual {p1, v0, p2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addDummyRequest()V
    .locals 50

    .line 1001
    new-instance v15, Lnet/sourceforge/opencamera/ImageSaver$Request;

    move-object v0, v15

    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->DUMMY:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->NORMAL:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->SAVEBASE_NONE:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->STD:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v49, v15

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    sget-object v21, Lnet/sourceforge/opencamera/HDRProcessor;->default_tonemapping_algorithm_c:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    sget-object v37, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->OFF:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x1

    invoke-direct/range {v0 .. v48}, Lnet/sourceforge/opencamera/ImageSaver$Request;-><init>(Lnet/sourceforge/opencamera/ImageSaver$Request$Type;Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;ZILnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;Ljava/util/List;Lnet/sourceforge/opencamera/cameracontroller/RawImage;ZLandroid/net/Uri;ZZLnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;IZDLjava/util/List;ZZLjava/util/Date;Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;Ljava/lang/String;IJFLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;ZLandroid/location/Location;ZDDZLjava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v49

    .line 1029
    invoke-direct {v1, v2, v0}, Lnet/sourceforge/opencamera/ImageSaver;->addRequest(Lnet/sourceforge/opencamera/ImageSaver$Request;I)V

    return-void
.end method

.method private addRequest(Lnet/sourceforge/opencamera/ImageSaver$Request;I)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 943
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Lnet/sourceforge/opencamera/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ImageSaver"

    const-string p2, "application is destroyed, image lost!"

    .line 947
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 957
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v3, p0, Lnet/sourceforge/opencamera/ImageSaver;->n_images_to_save:I

    add-int/2addr v3, v2

    iput v3, p0, Lnet/sourceforge/opencamera/ImageSaver;->n_images_to_save:I

    .line 962
    iget-object v3, p1, Lnet/sourceforge/opencamera/ImageSaver$Request;->type:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    sget-object v4, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->DUMMY:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    if-eq v3, v4, :cond_1

    iget-object v3, p1, Lnet/sourceforge/opencamera/ImageSaver$Request;->type:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    sget-object v4, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->ON_DESTROY:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    if-eq v3, v4, :cond_1

    iget v3, p0, Lnet/sourceforge/opencamera/ImageSaver;->n_real_images_to_save:I

    add-int/2addr v3, v2

    iput v3, p0, Lnet/sourceforge/opencamera/ImageSaver;->n_real_images_to_save:I

    :cond_1
    iget-object v3, p0, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 965
    new-instance v4, Lnet/sourceforge/opencamera/ImageSaver$2;

    invoke-direct {v4, p0}, Lnet/sourceforge/opencamera/ImageSaver$2;-><init>(Lnet/sourceforge/opencamera/ImageSaver;)V

    invoke-virtual {v3, v4}, Lnet/sourceforge/opencamera/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 970
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lnet/sourceforge/opencamera/ImageSaver;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 971
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    add-int/2addr v3, v2

    iget v4, p0, Lnet/sourceforge/opencamera/ImageSaver;->queue_capacity:I

    if-le v3, v4, :cond_2

    const-string v3, "ImageSaver"

    .line 972
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImageSaver thread is going to block, queue already full: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lnet/sourceforge/opencamera/ImageSaver;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/ImageSaver;->test_queue_blocked:Z

    :cond_2
    iget-object v3, p0, Lnet/sourceforge/opencamera/ImageSaver;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 976
    invoke-interface {v3, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 970
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    .line 987
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_3
    if-lez p2, :cond_4

    :goto_1
    add-int/lit8 p1, p2, -0x1

    if-ge v0, p1, :cond_4

    .line 995
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ImageSaver;->addDummyRequest()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private autoStabilise([BLandroid/graphics/Bitmap;DZ)Landroid/graphics/Bitmap;
    .locals 25

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    :goto_0
    const-wide v3, -0x3fa9800000000000L    # -90.0

    const-wide v5, 0x4066800000000000L    # 180.0

    cmpg-double v7, v1, v3

    if-gez v7, :cond_0

    add-double/2addr v1, v5

    goto :goto_0

    :cond_0
    :goto_1
    const-wide v3, 0x4056800000000000L    # 90.0

    cmpl-double v7, v1, v3

    if-lez v7, :cond_1

    sub-double/2addr v1, v5

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    if-nez p2, :cond_2

    move-object/from16 v4, p1

    .line 2022
    invoke-direct {v0, v4, v3}, Lnet/sourceforge/opencamera/ImageSaver;->loadBitmapWithRotation([BZ)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v5, v0, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2024
    invoke-virtual {v5}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x7f10008d

    invoke-virtual {v5, v6, v7}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    .line 2025
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_2

    :cond_2
    move-object/from16 v4, p2

    :cond_3
    :goto_2
    if-eqz v4, :cond_b

    .line 2029
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 2030
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 2043
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 2044
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    int-to-double v5, v11

    .line 2046
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v5

    int-to-double v9, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v17, v17, v9

    add-double v7, v7, v17

    .line 2047
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v17

    add-double/2addr v5, v9

    mul-int v9, v11, v12

    int-to-float v10, v9

    move-object/from16 p1, v4

    mul-double v3, v7, v5

    double-to-float v3, v3

    div-float/2addr v10, v3

    float-to-double v3, v10

    .line 2051
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, v0, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2052
    iget-boolean v4, v4, Lnet/sourceforge/opencamera/MainActivity;->test_low_memory:Z

    if-eqz v4, :cond_5

    const/16 v4, 0x1d4c

    if-lt v9, v4, :cond_4

    const/high16 v4, 0x3fc00000    # 1.5f

    goto :goto_3

    :cond_4
    const/high16 v4, 0x40000000    # 2.0f

    :goto_3
    mul-float v3, v3, v4

    .line 2068
    :cond_5
    invoke-virtual {v13, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    float-to-double v9, v3

    .line 2069
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v17, v7, v9

    .line 2070
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v19, v5, v9

    int-to-float v4, v11

    mul-float v4, v4, v3

    float-to-int v4, v4

    int-to-float v5, v12

    mul-float v5, v5, v3

    float-to-int v3, v5

    if-eqz p5, :cond_6

    neg-double v1, v1

    double-to-float v1, v1

    .line 2078
    invoke-virtual {v13, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_4

    :cond_6
    double-to-float v1, v1

    .line 2081
    invoke-virtual {v13, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    :goto_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p1

    .line 2083
    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v2, p1

    if-eq v1, v2, :cond_7

    .line 2086
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    :cond_7
    move-object v1, v2

    .line 2089
    :goto_5
    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 v2, 0x2

    new-array v5, v2, [I

    .line 2096
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move-object v14, v5

    move/from16 v21, v4

    move/from16 v22, v3

    invoke-static/range {v14 .. v24}, Lnet/sourceforge/opencamera/ImageSaver;->autoStabiliseCrop([IDDDIIII)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    aget v3, v5, v3

    aget v5, v5, v4

    .line 2099
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v3

    div-int/2addr v6, v2

    .line 2100
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v7, v5

    div-int/2addr v7, v2

    .line 2104
    invoke-static {v1, v6, v7, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v2, v1, :cond_8

    .line 2106
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v1, v2

    .line 2109
    :cond_8
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2117
    :cond_9
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2118
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2119
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_6

    :cond_a
    move-object v4, v1

    goto :goto_6

    :cond_b
    move-object v2, v4

    :goto_6
    return-object v4
.end method

.method public static autoStabiliseCrop([IDDDIIII)Z
    .locals 16

    const/4 v0, 0x0

    .line 1951
    aput v0, p0, v0

    const/4 v1, 0x1

    .line 1952
    aput v0, p0, v1

    .line 1954
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    .line 1955
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    div-double v6, p5, p3

    add-double/2addr v6, v2

    div-double v8, p3, p5

    add-double/2addr v8, v2

    const-wide v10, 0x3d06849b86a12b9bL    # 1.0E-14

    cmpg-double v12, v6, v10

    if-gez v12, :cond_0

    goto :goto_2

    :cond_0
    cmpg-double v12, v8, v10

    if-gez v12, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v10, p8

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 1967
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v12

    mul-double v10, v10, v4

    mul-double v10, v10, v2

    add-double v10, p5, v10

    mul-double v14, p3, v2

    sub-double/2addr v10, v14

    div-double/2addr v10, v6

    double-to-int v6, v10

    int-to-double v10, v6

    .line 1968
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, p5

    div-double v10, v10, p3

    double-to-int v7, v10

    move/from16 v10, p7

    int-to-double v10, v10

    .line 1969
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v12

    mul-double v10, v10, v4

    mul-double v10, v10, v2

    add-double v4, p3, v10

    mul-double v2, v2, p5

    sub-double/2addr v4, v2

    div-double/2addr v4, v8

    double-to-int v2, v4

    int-to-double v3, v2

    .line 1970
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, p3

    div-double v3, v3, p5

    double-to-int v3, v3

    if-ge v3, v6, :cond_2

    move v7, v2

    move v6, v3

    :cond_2
    if-gtz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    move/from16 v2, p9

    if-le v6, v2, :cond_4

    move v6, v2

    :cond_4
    :goto_0
    if-gtz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    move/from16 v2, p10

    if-le v7, v2, :cond_6

    move v7, v2

    .line 1993
    :cond_6
    :goto_1
    aput v6, p0, v0

    .line 1994
    aput v7, p0, v1

    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method private broadcastSAFFile(Landroid/net/Uri;ZZZ)V
    .locals 8

    iget-object v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2943
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 2944
    invoke-virtual/range {v1 .. v7}, Lnet/sourceforge/opencamera/StorageUtils;->broadcastUri(Landroid/net/Uri;ZZZZZ)V

    return-void
.end method

.method public static computeQueueSize(I)I
    .locals 1

    sget-boolean v0, Lnet/sourceforge/opencamera/ImageSaver;->test_small_queue_size:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    const/16 v0, 0x200

    if-lt p0, v0, :cond_1

    const/16 p0, 0x22

    goto :goto_0

    :cond_1
    const/16 v0, 0x100

    if-lt p0, v0, :cond_2

    const/16 p0, 0xc

    goto :goto_0

    :cond_2
    const/16 v0, 0x80

    if-lt p0, v0, :cond_3

    const/16 p0, 0x8

    goto :goto_0

    :cond_3
    const/4 p0, 0x6

    :goto_0
    return p0
.end method

.method public static computeRequestCost(ZI)I
    .locals 0

    if-eqz p0, :cond_0

    mul-int/lit8 p1, p1, 0x6

    :cond_0
    return p1
.end method

.method private createExifInterface(Ljava/io/File;Landroid/net/Uri;)Lnet/sourceforge/opencamera/ImageSaver$ExifInterfaceHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3868
    new-instance p2, Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3873
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "rw"

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3875
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    .line 3876
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v0, p2}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 3879
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to create ParcelFileDescriptor for saveUri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ImageSaver"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object p2, v0

    move-object v0, p1

    .line 3882
    :goto_1
    new-instance p1, Lnet/sourceforge/opencamera/ImageSaver$ExifInterfaceHolder;

    invoke-direct {p1, v0, p2}, Lnet/sourceforge/opencamera/ImageSaver$ExifInterfaceHolder;-><init>(Landroid/os/ParcelFileDescriptor;Landroidx/exifinterface/media/ExifInterface;)V

    return-object p1
.end method

.method private fixGPSTimestamp(Landroidx/exifinterface/media/ExifInterface;Ljava/util/Date;)V
    .locals 5

    .line 4076
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    .line 4077
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4078
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 4080
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4081
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4082
    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "GPSDateStamp"

    .line 4088
    invoke-virtual {p1, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSTimeStamp"

    .line 4089
    invoke-virtual {p1, v0, p2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getHDRAlpha(Ljava/lang/String;JI)F
    .locals 3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_2

    .line 1205
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p3

    const v1, -0x2659202e

    const/4 v2, 0x3

    if-eq p3, v1, :cond_3

    const v1, -0x39c1174

    if-eq p3, v1, :cond_2

    const v1, 0x735e03a6

    if-eq p3, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p3, "preference_hdr_contrast_enhancement_smart"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_2
    const-string p3, "preference_hdr_contrast_enhancement_off"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string p3, "preference_hdr_contrast_enhancement_always"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const-wide/32 v0, 0x1029fa0

    cmp-long p0, p1, v0

    if-gez p0, :cond_6

    :cond_5
    :goto_2
    const/high16 p0, 0x3f000000    # 0.5f

    goto :goto_3

    :cond_6
    const/4 p0, 0x0

    :goto_3
    return p0
.end method

.method private hasCustomExif(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3998
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 4000
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private loadBitmap([BZI)Landroid/graphics/Bitmap;
    .locals 1

    .line 1084
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1087
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 1088
    invoke-direct {p0, v0, p3}, Lnet/sourceforge/opencamera/ImageSaver;->setBitmapOptionsSampleSize(Landroid/graphics/BitmapFactory$Options;I)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x13

    if-gt p2, p3, :cond_0

    const/4 p2, 0x1

    .line 1091
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    :cond_0
    const/4 p2, 0x0

    .line 1093
    array-length p3, p1

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p2, "ImageSaver"

    const-string p3, "failed to decode bitmap"

    .line 1095
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method

.method private loadBitmapWithRotation([BZ)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 3808
    invoke-direct {p0, p1, p2, v0}, Lnet/sourceforge/opencamera/ImageSaver;->loadBitmap([BZI)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3813
    invoke-direct {p0, p2, p1}, Lnet/sourceforge/opencamera/ImageSaver;->rotateForExif(Landroid/graphics/Bitmap;[B)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private loadBitmaps(Ljava/util/List;II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;II)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1124
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 1125
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 1126
    invoke-direct {p0, v0, p3}, Lnet/sourceforge/opencamera/ImageSaver;->setBitmapOptionsSampleSize(Landroid/graphics/BitmapFactory$Options;I)V

    .line 1127
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x0

    .line 1128
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 1129
    invoke-direct {p0, v2, p3}, Lnet/sourceforge/opencamera/ImageSaver;->setBitmapOptionsSampleSize(Landroid/graphics/BitmapFactory$Options;I)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-gt p3, v4, :cond_0

    .line 1132
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1133
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1135
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Lnet/sourceforge/opencamera/ImageSaver$LoadBitmapThread;

    const/4 v4, 0x0

    .line 1136
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1137
    new-instance v5, Lnet/sourceforge/opencamera/ImageSaver$LoadBitmapThread;

    if-ne v4, p2, :cond_1

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, v2

    :goto_1
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {v5, v6, v7}, Lnet/sourceforge/opencamera/ImageSaver$LoadBitmapThread;-><init>(Landroid/graphics/BitmapFactory$Options;[B)V

    aput-object v5, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 1142
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 1143
    aget-object v0, p3, p2

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ImageSaver$LoadBitmapThread;->start()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    .line 1150
    :goto_3
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 1151
    aget-object v0, p3, p2

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ImageSaver$LoadBitmapThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :catch_0
    move-exception p2

    .line 1157
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 v1, 0x0

    .line 1163
    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 1164
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    if-eqz v1, :cond_6

    .line 1165
    aget-object v2, p3, v0

    iget-object v2, v2, Lnet/sourceforge/opencamera/ImageSaver$LoadBitmapThread;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    .line 1167
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "failed to decode bitmap in thread: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ImageSaver"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1174
    :cond_5
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    if-nez v1, :cond_9

    .line 1180
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge v3, v0, :cond_8

    .line 1181
    aget-object v0, p3, v3

    iget-object v0, v0, Lnet/sourceforge/opencamera/ImageSaver$LoadBitmapThread;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 1182
    aget-object v0, p3, v3

    iget-object v0, v0, Lnet/sourceforge/opencamera/ImageSaver$LoadBitmapThread;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1183
    aget-object v0, p3, v3

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$LoadBitmapThread;->bitmap:Landroid/graphics/Bitmap;

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1186
    :cond_8
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 1187
    invoke-static {}, Ljava/lang/System;->gc()V

    return-object v1

    :cond_9
    return-object p2
.end method

.method private mirrorImage([BLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 2139
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/ImageSaver;->loadBitmapWithRotation([BZ)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2142
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_0
    if-eqz p2, :cond_1

    .line 2146
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2147
    invoke-virtual {v5, p1, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2148
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2149
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p2

    .line 2150
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p2, :cond_1

    .line 2153
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    move-object p2, p1

    :cond_1
    return-object p2
.end method

.method private modifyExif(Landroidx/exifinterface/media/ExifInterface;Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;ZZZLjava/util/Date;ZLandroid/location/Location;ZDLjava/lang/String;Ljava/lang/String;DDZ)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p6

    move/from16 v4, p7

    move/from16 v5, p9

    move-wide/from16 v6, p10

    .line 3940
    invoke-direct {p0, p1, v5, v6, v7}, Lnet/sourceforge/opencamera/ImageSaver;->setGPSDirectionExif(Landroidx/exifinterface/media/ExifInterface;ZD)V

    if-eqz p18, :cond_1

    .line 3942
    invoke-static/range {p10 .. p11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v5, v5

    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_0

    const/high16 v6, 0x43b40000    # 360.0f

    add-float/2addr v5, v6

    .line 3949
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ASCII\u0000\u0000\u0000Yaw:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",Pitch:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p16

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ",Roll:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p14

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UserComment"

    invoke-virtual {p1, v6, v5}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object/from16 v5, p12

    move-object/from16 v6, p13

    .line 3953
    invoke-direct {p0, p1, v5, v6}, Lnet/sourceforge/opencamera/ImageSaver;->setCustomExif(Landroidx/exifinterface/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    const-string v5, "GPSLatitude"

    .line 3955
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface;->hasAttribute(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface;->hasAttribute(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    move-object/from16 v5, p8

    .line 3961
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface;->setGpsInfo(Landroid/location/Location;)V

    :cond_3
    if-eqz p5, :cond_5

    .line 3965
    sget-object v4, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->OFF:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    if-eq v2, v4, :cond_4

    sget-object v4, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->KEEP_DATETIME:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    if-ne v2, v4, :cond_6

    .line 3966
    :cond_4
    invoke-direct {p0, p1, p6}, Lnet/sourceforge/opencamera/ImageSaver;->addDateTimeExif(Landroidx/exifinterface/media/ExifInterface;Ljava/util/Date;)V

    goto :goto_0

    :cond_5
    move v2, p3

    move v5, p4

    .line 3969
    invoke-direct {p0, p3, p4, v4}, Lnet/sourceforge/opencamera/ImageSaver;->needGPSExifFix(ZZZ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3971
    invoke-direct {p0, p1, p6}, Lnet/sourceforge/opencamera/ImageSaver;->fixGPSTimestamp(Landroidx/exifinterface/media/ExifInterface;Ljava/util/Date;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private needGPSExifFix(ZZZ)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private postProcessBitmap(Lnet/sourceforge/opencamera/ImageSaver$Request;[BLandroid/graphics/Bitmap;Z)Lnet/sourceforge/opencamera/ImageSaver$PostProcessBitmapResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 2424
    invoke-direct {p0, p3, p2}, Lnet/sourceforge/opencamera/ImageSaver;->rotateForExif(Landroid/graphics/Bitmap;[B)Landroid/graphics/Bitmap;

    move-result-object p3

    :cond_0
    move-object v2, p3

    .line 2428
    iget-boolean p3, p1, Lnet/sourceforge/opencamera/ImageSaver$Request;->do_auto_stabilise:Z

    if-eqz p3, :cond_1

    .line 2429
    iget-wide v3, p1, Lnet/sourceforge/opencamera/ImageSaver$Request;->level_angle:D

    iget-boolean v5, p1, Lnet/sourceforge/opencamera/ImageSaver$Request;->is_front_facing:Z

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/opencamera/ImageSaver;->autoStabilise([BLandroid/graphics/Bitmap;DZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2434
    :cond_1
    iget-boolean p3, p1, Lnet/sourceforge/opencamera/ImageSaver$Request;->mirror:Z

    if-eqz p3, :cond_2

    .line 2435
    invoke-direct {p0, p2, v2}, Lnet/sourceforge/opencamera/ImageSaver;->mirrorImage([BLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2437
    :cond_2
    iget-object p3, p1, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_format:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    sget-object p4, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->STD:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    const/4 v0, 0x1

    if-eq p3, p4, :cond_4

    if-nez v2, :cond_4

    .line 2440
    invoke-direct {p0, p2, v0}, Lnet/sourceforge/opencamera/ImageSaver;->loadBitmapWithRotation([BZ)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 2443
    :cond_3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2444
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 2447
    :cond_4
    :goto_0
    iget-object p3, p1, Lnet/sourceforge/opencamera/ImageSaver$Request;->remove_device_exif:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    sget-object p4, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->OFF:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    if-eq p3, p4, :cond_6

    if-nez v2, :cond_6

    .line 2452
    invoke-direct {p0, p2, v0}, Lnet/sourceforge/opencamera/ImageSaver;->loadBitmapWithRotation([BZ)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 2455
    :cond_5
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2456
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 2459
    :cond_6
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lnet/sourceforge/opencamera/ImageSaver;->stampImage(Lnet/sourceforge/opencamera/ImageSaver$Request;[BLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2463
    new-instance p2, Lnet/sourceforge/opencamera/ImageSaver$PostProcessBitmapResult;

    invoke-direct {p2, p1}, Lnet/sourceforge/opencamera/ImageSaver$PostProcessBitmapResult;-><init>(Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public static readGyroDebugXml(Ljava/io/InputStream;Lnet/sourceforge/opencamera/ImageSaver$GyroDebugInfo;)Z
    .locals 13

    const/4 v0, 0x0

    .line 1312
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 1313
    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    .line 1314
    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1315
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const-string v3, "open_camera_gyro_info"

    const/4 v4, 0x2

    .line 1317
    invoke-interface {v1, v4, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v3, v2

    .line 1320
    :cond_0
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_e

    .line 1321
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "image"

    const v8, 0x5faa95b

    const/4 v9, 0x3

    if-eq v5, v4, :cond_3

    if-eq v5, v9, :cond_1

    goto :goto_1

    .line 1364
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1370
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    if-eq v6, v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 1323
    :cond_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1328
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x30e61ebd    # -2.5816768E9f

    const/4 v12, -0x1

    if-eq v10, v11, :cond_5

    if-eq v10, v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    const-string v7, "vector"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v5, -0x1

    :goto_3
    if-eqz v5, :cond_d

    if-eq v5, v6, :cond_7

    goto :goto_1

    :cond_7
    const-string v5, "ImageSaver"

    if-nez v3, :cond_8

    :try_start_2
    const-string p1, "vector tag outside of image tag"

    .line 1334
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1386
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 1389
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return v0

    :cond_8
    :try_start_4
    const-string v7, "type"

    .line 1337
    invoke-interface {v1, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "x"

    .line 1338
    invoke-interface {v1, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "y"

    .line 1339
    invoke-interface {v1, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "z"

    .line 1340
    invoke-interface {v1, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-array v9, v9, [F

    .line 1342
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v9, v0

    .line 1343
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v9, v6

    .line 1344
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v9, v4

    .line 1345
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    const-string v8, "Z"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v12, 0x2

    goto :goto_5

    :pswitch_1
    const-string v8, "Y"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v12, 0x1

    goto :goto_5

    :pswitch_2
    const-string v8, "X"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v12, 0x0

    :cond_9
    :goto_5
    if-eqz v12, :cond_c

    if-eq v12, v6, :cond_b

    if-eq v12, v4, :cond_a

    .line 1356
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown type in vector tag: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1386
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    :catch_1
    move-exception p0

    .line 1389
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_6
    return v0

    .line 1353
    :cond_a
    :try_start_6
    iput-object v9, v3, Lnet/sourceforge/opencamera/ImageSaver$GyroDebugInfo$GyroImageDebugInfo;->vectorScreen:[F

    goto/16 :goto_1

    .line 1350
    :cond_b
    iput-object v9, v3, Lnet/sourceforge/opencamera/ImageSaver$GyroDebugInfo$GyroImageDebugInfo;->vectorUp:[F

    goto/16 :goto_1

    .line 1347
    :cond_c
    iput-object v9, v3, Lnet/sourceforge/opencamera/ImageSaver$GyroDebugInfo$GyroImageDebugInfo;->vectorRight:[F

    goto/16 :goto_1

    .line 1330
    :cond_d
    iget-object v3, p1, Lnet/sourceforge/opencamera/ImageSaver$GyroDebugInfo;->image_info:Ljava/util/List;

    new-instance v5, Lnet/sourceforge/opencamera/ImageSaver$GyroDebugInfo$GyroImageDebugInfo;

    invoke-direct {v5}, Lnet/sourceforge/opencamera/ImageSaver$GyroDebugInfo$GyroImageDebugInfo;-><init>()V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v3, v5

    goto/16 :goto_1

    .line 1386
    :cond_e
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_7

    :catch_2
    move-exception p0

    .line 1389
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    return v6

    :catchall_0
    move-exception p1

    goto :goto_9

    :catch_3
    move-exception p1

    .line 1381
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1386
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    .line 1389
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_8
    return v0

    .line 1386
    :goto_9
    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_a

    :catch_5
    move-exception p0

    .line 1389
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1391
    :goto_a
    goto :goto_c

    :goto_b
    throw p1

    :goto_c
    goto :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removeExifTags(Landroidx/exifinterface/media/ExifInterface;Lnet/sourceforge/opencamera/ImageSaver$Request;)V
    .locals 3

    .line 3323
    iget-object v0, p2, Lnet/sourceforge/opencamera/ImageSaver$Request;->remove_device_exif:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->OFF:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    if-eq v0, v1, :cond_7

    const-string v0, "FNumber"

    const/4 v1, 0x0

    .line 3326
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ExposureTime"

    .line 3327
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Flash"

    .line 3328
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FocalLength"

    .line 3329
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ImageWidth"

    .line 3330
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ImageLength"

    .line 3331
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ISOSpeedRatings"

    .line 3333
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PhotographicSensitivity"

    .line 3334
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Make"

    .line 3335
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Model"

    .line 3336
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WhiteBalance"

    .line 3337
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ApertureValue"

    .line 3338
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BrightnessValue"

    .line 3339
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CFAPattern"

    .line 3340
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ColorSpace"

    .line 3341
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ComponentsConfiguration"

    .line 3342
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CompressedBitsPerPixel"

    .line 3343
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Compression"

    .line 3344
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Contrast"

    .line 3345
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DeviceSettingDescription"

    .line 3346
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DigitalZoomRatio"

    .line 3347
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ExposureBiasValue"

    .line 3348
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ExposureIndex"

    .line 3349
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ExposureMode"

    .line 3350
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ExposureProgram"

    .line 3351
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FlashEnergy"

    .line 3352
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FocalLengthIn35mmFilm"

    .line 3353
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FocalPlaneResolutionUnit"

    .line 3354
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FocalPlaneXResolution"

    .line 3355
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FocalPlaneYResolution"

    .line 3356
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GainControl"

    .line 3357
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSAreaInformation"

    .line 3358
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSDestBearing"

    .line 3359
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSDestBearingRef"

    .line 3360
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSDestDistance"

    .line 3361
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSDestDistanceRef"

    .line 3362
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSDestLatitude"

    .line 3363
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSDestLatitudeRef"

    .line 3364
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSDestLongitude"

    .line 3365
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSDestLongitudeRef"

    .line 3366
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSDifferential"

    .line 3367
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSDOP"

    .line 3368
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3369
    iget-boolean v0, p2, Lnet/sourceforge/opencamera/ImageSaver$Request;->store_geo_direction:Z

    if-nez v0, :cond_0

    const-string v0, "GPSImgDirection"

    .line 3370
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSImgDirectionRef"

    .line 3371
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "GPSMapDatum"

    .line 3373
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSMeasureMode"

    .line 3374
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSSatellites"

    .line 3375
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSStatus"

    .line 3376
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSTrack"

    .line 3377
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSTrackRef"

    .line 3378
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSVersionID"

    .line 3379
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ImageDescription"

    .line 3380
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ImageUniqueID"

    .line 3381
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "InteroperabilityIndex"

    .line 3382
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "JPEGInterchangeFormat"

    .line 3383
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "JPEGInterchangeFormatLength"

    .line 3384
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LightSource"

    .line 3385
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MakerNote"

    .line 3386
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MaxApertureValue"

    .line 3387
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MeteringMode"

    .line 3388
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OECF"

    .line 3389
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PhotometricInterpretation"

    .line 3390
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PixelXDimension"

    .line 3391
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PixelYDimension"

    .line 3392
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PlanarConfiguration"

    .line 3393
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PrimaryChromaticities"

    .line 3394
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ReferenceBlackWhite"

    .line 3395
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ResolutionUnit"

    .line 3396
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RowsPerStrip"

    .line 3397
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SamplesPerPixel"

    .line 3398
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Saturation"

    .line 3399
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SceneCaptureType"

    .line 3400
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SceneType"

    .line 3401
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SensingMethod"

    .line 3402
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Sharpness"

    .line 3403
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ShutterSpeedValue"

    .line 3404
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Software"

    .line 3405
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SpatialFrequencyResponse"

    .line 3406
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SpectralSensitivity"

    .line 3407
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StripByteCounts"

    .line 3408
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StripOffsets"

    .line 3409
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SubjectArea"

    .line 3410
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SubjectDistance"

    .line 3411
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SubjectDistanceRange"

    .line 3412
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SubjectLocation"

    .line 3413
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ThumbnailImageWidth"

    .line 3414
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ThumbnailImageLength"

    .line 3415
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TransferFunction"

    .line 3416
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3417
    iget-boolean v0, p2, Lnet/sourceforge/opencamera/ImageSaver$Request;->store_ypr:Z

    if-nez v0, :cond_1

    const-string v0, "UserComment"

    .line 3418
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "WhitePoint"

    .line 3420
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "XResolution"

    .line 3421
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "YCbCrCoefficients"

    .line 3422
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "YCbCrPositioning"

    .line 3423
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "YCbCrSubSampling"

    .line 3424
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "YResolution"

    .line 3425
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3426
    iget-object v0, p2, Lnet/sourceforge/opencamera/ImageSaver$Request;->custom_tag_artist:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lnet/sourceforge/opencamera/ImageSaver$Request;->custom_tag_artist:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    const-string v0, "Artist"

    .line 3427
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3429
    :cond_3
    iget-object v0, p2, Lnet/sourceforge/opencamera/ImageSaver$Request;->custom_tag_copyright:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lnet/sourceforge/opencamera/ImageSaver$Request;->custom_tag_copyright:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_4
    const-string v0, "Copyright"

    .line 3430
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "BitsPerSample"

    .line 3433
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ExifVersion"

    .line 3434
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FlashpixVersion"

    .line 3435
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Gamma"

    .line 3436
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RelatedSoundFile"

    .line 3437
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SensitivityType"

    .line 3438
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StandardOutputSensitivity"

    .line 3439
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RecommendedExposureIndex"

    .line 3440
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ISOSpeed"

    .line 3441
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ISOSpeedLatitudeyyy"

    .line 3442
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ISOSpeedLatitudezzz"

    .line 3443
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FileSource"

    .line 3444
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CustomRendered"

    .line 3445
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CameraOwnerName"

    .line 3446
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BodySerialNumber"

    .line 3447
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LensSpecification"

    .line 3448
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LensMake"

    .line 3449
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LensModel"

    .line 3450
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LensSerialNumber"

    .line 3451
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSHPositioningError"

    .line 3452
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DNGVersion"

    .line 3453
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DefaultCropSize"

    .line 3454
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ThumbnailImage"

    .line 3455
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PreviewImageStart"

    .line 3456
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PreviewImageLength"

    .line 3457
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AspectFrame"

    .line 3458
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SensorBottomBorder"

    .line 3459
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SensorLeftBorder"

    .line 3460
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SensorRightBorder"

    .line 3461
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SensorTopBorder"

    .line 3462
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ISO"

    .line 3463
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "JpgFromRaw"

    .line 3464
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Xmp"

    .line 3465
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NewSubfileType"

    .line 3466
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SubfileType"

    .line 3467
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3469
    iget-object v0, p2, Lnet/sourceforge/opencamera/ImageSaver$Request;->remove_device_exif:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->KEEP_DATETIME:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    if-eq v0, v2, :cond_6

    const-string v0, "DateTime"

    .line 3472
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DateTimeOriginal"

    .line 3473
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DateTimeDigitized"

    .line 3474
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SubSecTime"

    .line 3475
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SubSecTimeOriginal"

    .line 3476
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SubSecTimeDigitized"

    .line 3477
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OffsetTime"

    .line 3478
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OffsetTimeOriginal"

    .line 3479
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OffsetTimeDigitized"

    .line 3480
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3483
    :cond_6
    iget-boolean p2, p2, Lnet/sourceforge/opencamera/ImageSaver$Request;->store_location:Z

    if-nez p2, :cond_7

    const-string p2, "GPSProcessingMethod"

    .line 3486
    invoke-virtual {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "GPSLatitude"

    .line 3487
    invoke-virtual {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "GPSLatitudeRef"

    .line 3488
    invoke-virtual {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "GPSLongitude"

    .line 3489
    invoke-virtual {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "GPSLongitudeRef"

    .line 3490
    invoke-virtual {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "GPSAltitude"

    .line 3491
    invoke-virtual {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "GPSAltitudeRef"

    .line 3492
    invoke-virtual {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "GPSDateStamp"

    .line 3493
    invoke-virtual {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "GPSTimeStamp"

    .line 3494
    invoke-virtual {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "GPSSpeed"

    .line 3495
    invoke-virtual {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "GPSSpeedRef"

    .line 3496
    invoke-virtual {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private rotateForExif(Landroid/graphics/Bitmap;[B)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3729
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3730
    :try_start_1
    new-instance p2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {p2, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string v0, "Orientation"

    const/4 v2, 0x0

    .line 3732
    invoke-virtual {p2, v0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x3

    const/4 v3, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x6

    if-eq p2, v0, :cond_2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x10e

    const/16 p2, 0x10e

    goto :goto_0

    :cond_2
    const/16 v2, 0x5a

    const/16 p2, 0x5a

    goto :goto_0

    :cond_3
    const/16 v2, 0xb4

    const/16 p2, 0xb4

    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    .line 3768
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    .line 3769
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v0, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-virtual {v8, p2, v0, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3770
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eq p2, p1, :cond_4

    .line 3772
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, p2

    .line 3791
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    .line 3794
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_5

    :catch_1
    move-exception p2

    move-object v0, v1

    goto :goto_2

    :catch_2
    move-exception p2

    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p2

    .line 3786
    :goto_2
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_5

    .line 3791
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_4
    move-exception p2

    .line 3780
    :goto_3
    :try_start_5
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_5

    .line 3791
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_5
    :goto_4
    return-object p1

    :goto_5
    if-eqz v0, :cond_6

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception p2

    .line 3794
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 3797
    :cond_6
    :goto_6
    throw p1
.end method

.method private saveBaseImages(Lnet/sourceforge/opencamera/ImageSaver$Request;Ljava/lang/String;)V
    .locals 9

    .line 1910
    iget-boolean v0, p1, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_capture_intent:Z

    if-nez v0, :cond_3

    iget-object v0, p1, Lnet/sourceforge/opencamera/ImageSaver$Request;->save_base:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->SAVEBASE_NONE:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    if-eq v0, v1, :cond_3

    .line 1915
    iget-object v0, p1, Lnet/sourceforge/opencamera/ImageSaver$Request;->process_type:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->PANORAMA:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1919
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ImageSaver$Request;->copy()Lnet/sourceforge/opencamera/ImageSaver$Request;

    move-result-object p1

    .line 1920
    sget-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->PNG:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    iput-object v0, p1, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_format:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    const-string v0, "preference_stamp_no"

    .line 1921
    iput-object v0, p1, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_stamp:Ljava/lang/String;

    const-string v0, ""

    .line 1922
    iput-object v0, p1, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_textstamp:Ljava/lang/String;

    .line 1923
    iput-boolean v2, p1, Lnet/sourceforge/opencamera/ImageSaver$Request;->do_auto_stabilise:Z

    .line 1924
    iput-boolean v2, p1, Lnet/sourceforge/opencamera/ImageSaver$Request;->mirror:Z

    goto :goto_0

    .line 1926
    :cond_0
    iget-object v0, p1, Lnet/sourceforge/opencamera/ImageSaver$Request;->process_type:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->AVERAGE:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    if-ne v0, v1, :cond_1

    .line 1928
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ImageSaver$Request;->copy()Lnet/sourceforge/opencamera/ImageSaver$Request;

    move-result-object p1

    const/16 v0, 0x64

    .line 1929
    iput v0, p1, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_quality:I

    :cond_1
    :goto_0
    move-object v4, p1

    .line 1933
    iget-object p1, v4, Lnet/sourceforge/opencamera/ImageSaver$Request;->save_base:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    sget-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->SAVEBASE_FIRST:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    if-ne p1, v0, :cond_2

    const/4 v2, 0x1

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lnet/sourceforge/opencamera/ImageSaver;->saveImages(Lnet/sourceforge/opencamera/ImageSaver$Request;Ljava/lang/String;ZZZ)Z

    :cond_3
    return-void
.end method

.method private saveImage(ZZLnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;ZIZLjava/util/List;Lnet/sourceforge/opencamera/cameracontroller/RawImage;ZLandroid/net/Uri;ZZLnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;IZDZZLjava/util/Date;Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;Ljava/lang/String;IJFLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;ZLandroid/location/Location;ZDDZLjava/lang/String;Ljava/lang/String;I)Z
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;",
            "ZIZ",
            "Ljava/util/List<",
            "[B>;",
            "Lnet/sourceforge/opencamera/cameracontroller/RawImage;",
            "Z",
            "Landroid/net/Uri;",
            "ZZ",
            "Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;",
            "IZDZZ",
            "Ljava/util/Date;",
            "Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;",
            "Ljava/lang/String;",
            "IJF",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;",
            "Z",
            "Landroid/location/Location;",
            "ZDDZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 887
    new-instance v15, Lnet/sourceforge/opencamera/ImageSaver$Request;

    if-eqz v1, :cond_0

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->RAW:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    goto :goto_0

    :cond_0
    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->JPEG:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    :goto_0
    move-object v3, v2

    if-eqz p6, :cond_1

    .line 891
    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->SAVEBASE_ALL:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    goto :goto_1

    :cond_1
    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->SAVEBASE_NONE:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    :goto_1
    move-object v7, v2

    const/16 v19, 0x0

    move-object v2, v15

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object v0, v15

    move/from16 v15, p14

    move/from16 v16, p15

    move-wide/from16 v17, p16

    move/from16 v20, p18

    move/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    move-object/from16 v24, p22

    move/from16 v25, p23

    move-wide/from16 v26, p24

    move/from16 v28, p26

    move-object/from16 v29, p27

    move-object/from16 v30, p28

    move/from16 v31, p29

    move/from16 v32, p30

    move-object/from16 v33, p31

    move-object/from16 v34, p32

    move-object/from16 v35, p33

    move-object/from16 v36, p34

    move-object/from16 v37, p35

    move/from16 v38, p36

    move-object/from16 v39, p37

    move/from16 v40, p38

    move-object/from16 v41, p39

    move/from16 v42, p40

    move-wide/from16 v43, p41

    move-wide/from16 v45, p43

    move/from16 v47, p45

    move-object/from16 v48, p46

    move-object/from16 v49, p47

    move/from16 v50, p48

    invoke-direct/range {v2 .. v50}, Lnet/sourceforge/opencamera/ImageSaver$Request;-><init>(Lnet/sourceforge/opencamera/ImageSaver$Request$Type;Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;ZILnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;Ljava/util/List;Lnet/sourceforge/opencamera/cameracontroller/RawImage;ZLandroid/net/Uri;ZZLnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;IZDLjava/util/List;ZZLjava/util/Date;Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;Ljava/lang/String;IJFLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;ZLandroid/location/Location;ZDDZLjava/lang/String;Ljava/lang/String;I)V

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    .line 918
    :cond_2
    iget-object v3, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    invoke-static {v1, v3}, Lnet/sourceforge/opencamera/ImageSaver;->computeRequestCost(ZI)I

    move-result v1

    move-object v3, v0

    move-object/from16 v0, p0

    .line 919
    invoke-direct {v0, v3, v1}, Lnet/sourceforge/opencamera/ImageSaver;->addRequest(Lnet/sourceforge/opencamera/ImageSaver$Request;I)V

    goto :goto_3

    :cond_3
    move-object v3, v0

    move-object/from16 v0, p0

    .line 924
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ImageSaver;->waitUntilDone()V

    if-eqz v1, :cond_4

    .line 926
    invoke-direct {v0, v3}, Lnet/sourceforge/opencamera/ImageSaver;->saveImageNowRaw(Lnet/sourceforge/opencamera/ImageSaver$Request;)Z

    move-result v2

    goto :goto_3

    .line 929
    :cond_4
    invoke-direct {v0, v3}, Lnet/sourceforge/opencamera/ImageSaver;->saveImageNow(Lnet/sourceforge/opencamera/ImageSaver$Request;)Z

    move-result v2

    :goto_3
    return v2
.end method

.method private saveImageNow(Lnet/sourceforge/opencamera/ImageSaver$Request;)Z
    .locals 32

    move-object/from16 v10, p0

    move-object/from16 v2, p1

    .line 1401
    iget-object v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->type:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->JPEG:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    if-ne v0, v1, :cond_1b

    .line 1407
    iget-object v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 1415
    iget-object v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->process_type:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->AVERAGE:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    const/4 v3, -0x1

    const/16 v5, 0x15

    const-string v6, "_"

    const/4 v7, 0x0

    const-string v8, "ImageSaver"

    const/4 v9, 0x1

    const/4 v11, 0x0

    if-ne v0, v1, :cond_7

    .line 1419
    invoke-direct {v10, v2, v6}, Lnet/sourceforge/opencamera/ImageSaver;->saveBaseImages(Lnet/sourceforge/opencamera/ImageSaver$Request;Ljava/lang/String;)V

    iget-object v0, v10, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1420
    invoke-virtual {v0, v9}, Lnet/sourceforge/opencamera/MainActivity;->savingImage(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_6

    .line 1455
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, v10, Lnet/sourceforge/opencamera/ImageSaver;->hdrProcessor:Lnet/sourceforge/opencamera/HDRProcessor;

    .line 1458
    iget v1, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->iso:I

    iget-wide v5, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->exposure_time:J

    invoke-virtual {v0, v1, v5, v6}, Lnet/sourceforge/opencamera/HDRProcessor;->getAvgSampleSize(IJ)I

    move-result v0

    .line 1466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1476
    iget-object v1, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x4

    .line 1477
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1482
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v1, :cond_0

    .line 1484
    iget-object v12, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1486
    :cond_0
    invoke-direct {v10, v6, v3, v0}, Lnet/sourceforge/opencamera/ImageSaver;->loadBitmaps(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    .line 1489
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Landroid/graphics/Bitmap;

    .line 1490
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Landroid/graphics/Bitmap;

    .line 1499
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1500
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/high16 v15, 0x3f800000    # 1.0f

    .line 1502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v12, v10, Lnet/sourceforge/opencamera/ImageSaver;->hdrProcessor:Lnet/sourceforge/opencamera/HDRProcessor;

    .line 1503
    iget v4, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->iso:I

    move/from16 v26, v6

    iget-wide v5, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->exposure_time:J

    iget v3, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->zoom_factor:F

    move/from16 v16, v4

    move-wide/from16 v17, v5

    move/from16 v19, v3

    invoke-virtual/range {v12 .. v19}, Lnet/sourceforge/opencamera/HDRProcessor;->processAvg(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FIJF)Lnet/sourceforge/opencamera/HDRProcessor$AvgData;

    move-result-object v3

    if-eqz v1, :cond_1

    .line 1505
    invoke-interface {v1, v11, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1506
    invoke-interface {v1, v9, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v4, 0x2

    .line 1512
    :goto_1
    iget-object v5, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 1516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1522
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1526
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v19, v5

    const/4 v6, 0x4

    goto :goto_3

    .line 1529
    :cond_2
    iget-object v5, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    const/4 v6, 0x4

    .line 1530
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1535
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v12, v4

    :goto_2
    add-int v13, v4, v5

    if-ge v12, v13, :cond_3

    .line 1537
    iget-object v13, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, -0x1

    .line 1539
    invoke-direct {v10, v9, v5, v0}, Lnet/sourceforge/opencamera/ImageSaver;->loadBitmaps(Ljava/util/List;II)Ljava/util/List;

    move-result-object v9

    .line 1540
    invoke-interface {v1, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1543
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v19, v5

    :goto_3
    int-to-float v5, v4

    .line 1553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v15, v10, Lnet/sourceforge/opencamera/ImageSaver;->hdrProcessor:Lnet/sourceforge/opencamera/HDRProcessor;

    .line 1554
    iget v9, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->iso:I

    iget-wide v12, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->exposure_time:J

    iget v14, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->zoom_factor:F

    move-object/from16 v16, v3

    move/from16 v17, v26

    move/from16 v18, v8

    move/from16 v20, v5

    move/from16 v21, v9

    move-wide/from16 v22, v12

    move/from16 v24, v14

    invoke-virtual/range {v15 .. v24}, Lnet/sourceforge/opencamera/HDRProcessor;->updateAvg(Lnet/sourceforge/opencamera/HDRProcessor$AvgData;IILandroid/graphics/Bitmap;FIJF)V

    if-eqz v1, :cond_4

    .line 1557
    invoke-interface {v1, v4, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1564
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v15, v10, Lnet/sourceforge/opencamera/ImageSaver;->hdrProcessor:Lnet/sourceforge/opencamera/HDRProcessor;

    .line 1565
    iget v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->iso:I

    iget-wide v4, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->exposure_time:J

    move-object/from16 v16, v3

    move/from16 v17, v26

    move/from16 v18, v8

    move/from16 v19, v0

    move-wide/from16 v20, v4

    invoke-virtual/range {v15 .. v21}, Lnet/sourceforge/opencamera/HDRProcessor;->avgBrighten(Lnet/sourceforge/opencamera/HDRProcessor$AvgData;IIIJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1569
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->destroy()V
    :try_end_0
    .catch Lnet/sourceforge/opencamera/HDRProcessorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1588
    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v1, v10, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1589
    invoke-virtual {v1, v11}, Lnet/sourceforge/opencamera/MainActivity;->savingImage(Z)V

    .line 1593
    iget-object v1, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [B

    const-string v5, "_NR"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v9}, Lnet/sourceforge/opencamera/ImageSaver;->saveSingleImageNow(Lnet/sourceforge/opencamera/ImageSaver$Request;[BLandroid/graphics/Bitmap;Ljava/lang/String;ZZZZ)Z

    move-result v1

    .line 1596
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1597
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_a

    :catch_0
    move-exception v0

    .line 1577
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/HDRProcessorException;->printStackTrace()V

    .line 1578
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    const-string v0, "shouldn\'t have offered NoiseReduction as an option if not on Android 5"

    .line 1582
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 1599
    :cond_7
    iget-object v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->process_type:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->HDR:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    if-ne v0, v1, :cond_f

    .line 1602
    iget-object v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v9, :cond_9

    iget-object v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    goto :goto_4

    .line 1606
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 1609
    :cond_9
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1610
    iget-object v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v9, :cond_a

    .line 1614
    invoke-direct {v10, v2, v6}, Lnet/sourceforge/opencamera/ImageSaver;->saveBaseImages(Lnet/sourceforge/opencamera/ImageSaver$Request;Ljava/lang/String;)V

    :cond_a
    iget-object v0, v10, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1623
    invoke-virtual {v0, v9}, Lnet/sourceforge/opencamera/MainActivity;->savingImage(Z)V

    .line 1628
    iget-object v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v9

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 1631
    iget-object v1, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-direct {v10, v1, v0, v9}, Lnet/sourceforge/opencamera/ImageSaver;->loadBitmaps(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_b

    iget-object v0, v10, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1635
    invoke-virtual {v0, v11}, Lnet/sourceforge/opencamera/MainActivity;->savingImage(Z)V

    return v11

    .line 1641
    :cond_b
    iget-object v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_hdr_contrast_enhancement:Ljava/lang/String;

    iget-wide v3, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->exposure_time:J

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v0, v3, v4, v6}, Lnet/sourceforge/opencamera/ImageSaver;->getHDRAlpha(Ljava/lang/String;JI)F

    move-result v27

    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_d

    iget-object v0, v10, Lnet/sourceforge/opencamera/ImageSaver;->hdrProcessor:Lnet/sourceforge/opencamera/HDRProcessor;

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v28, 0x4

    const/16 v29, 0x1

    .line 1646
    iget-object v3, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_hdr_tonemapping_algorithm:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    sget-object v31, Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;->DROALGORITHM_GAINGAMMA:Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;

    move-object/from16 v21, v0

    move-object/from16 v22, v1

    move-object/from16 v30, v3

    invoke-virtual/range {v21 .. v31}, Lnet/sourceforge/opencamera/HDRProcessor;->processHDR(Ljava/util/List;ZLandroid/graphics/Bitmap;ZLnet/sourceforge/opencamera/HDRProcessor$SortCallback;FIZLnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;)V
    :try_end_1
    .catch Lnet/sourceforge/opencamera/HDRProcessorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1675
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1678
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1679
    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v1, v10, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1680
    invoke-virtual {v1, v11}, Lnet/sourceforge/opencamera/MainActivity;->savingImage(Z)V

    .line 1684
    iget-object v1, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v9

    const/4 v3, 0x2

    div-int/2addr v1, v3

    .line 1687
    iget-object v3, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v9, :cond_c

    const-string v3, "_DRO"

    goto :goto_5

    :cond_c
    const-string v3, "_HDR"

    :goto_5
    move-object v5, v3

    .line 1688
    iget-object v3, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [B

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v9}, Lnet/sourceforge/opencamera/ImageSaver;->saveSingleImageNow(Lnet/sourceforge/opencamera/ImageSaver$Request;[BLandroid/graphics/Bitmap;Ljava/lang/String;ZZZZ)Z

    move-result v1

    .line 1694
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1695
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_a

    :cond_d
    :try_start_2
    const-string v0, "shouldn\'t have offered HDR as an option if not on Android 5"

    .line 1649
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_2
    .catch Lnet/sourceforge/opencamera/HDRProcessorException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 1654
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HDRProcessorException from processHDR: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/HDRProcessorException;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/HDRProcessorException;->printStackTrace()V

    .line 1656
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/HDRProcessorException;->getCode()I

    move-result v0

    if-ne v0, v9, :cond_e

    iget-object v0, v10, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1658
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    const v2, 0x7f100091

    invoke-virtual {v0, v7, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    const-string v0, "UNEQUAL_SIZES"

    .line 1659
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1661
    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v0, v10, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1662
    invoke-virtual {v0, v11}, Lnet/sourceforge/opencamera/MainActivity;->savingImage(Z)V

    return v11

    .line 1667
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 1697
    :cond_f
    iget-object v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->process_type:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->PANORAMA:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    if-ne v0, v1, :cond_19

    .line 1702
    iget-boolean v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_capture_intent:Z

    if-nez v0, :cond_12

    iget-object v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->save_base:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->SAVEBASE_ALL_PLUS_DEBUG:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    if-ne v0, v1, :cond_12

    .line 1727
    :try_start_3
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1729
    invoke-direct {v10, v0, v2}, Lnet/sourceforge/opencamera/ImageSaver;->writeGyroDebugXml(Ljava/io/Writer;Lnet/sourceforge/opencamera/ImageSaver$Request;)V

    iget-object v1, v10, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1731
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v1

    iget-object v3, v10, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1747
    invoke-virtual {v3, v7}, Lnet/sourceforge/opencamera/MainActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    const/4 v14, 0x4

    const-string v15, ""

    const-string v16, "xml"

    iget-object v3, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->current_date:Ljava/util/Date;

    move-object v12, v1

    move-object/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Lnet/sourceforge/opencamera/StorageUtils;->createOutputMediaFile(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/io/File;

    move-result-object v13

    if-eqz v13, :cond_10

    .line 1754
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    goto :goto_6

    :cond_10
    iget-object v3, v10, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1756
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1760
    :goto_6
    :try_start_4
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1763
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    if-eqz v13, :cond_11

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v1

    .line 1767
    invoke-virtual/range {v12 .. v18}, Lnet/sourceforge/opencamera/StorageUtils;->broadcastFile(Ljava/io/File;ZZZZLandroid/net/Uri;)V

    goto :goto_7

    .line 1770
    :cond_11
    invoke-direct {v10, v7, v11, v11, v11}, Lnet/sourceforge/opencamera/ImageSaver;->broadcastSAFFile(Landroid/net/Uri;ZZZ)V

    goto :goto_7

    :catchall_0
    move-exception v0

    .line 1763
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 1764
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    const-string v1, "failed to write gyro text file"

    .line 1774
    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1783
    :cond_12
    :goto_7
    invoke-direct {v10, v2, v6}, Lnet/sourceforge/opencamera/ImageSaver;->saveBaseImages(Lnet/sourceforge/opencamera/ImageSaver$Request;Ljava/lang/String;)V

    iget-object v0, v10, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1785
    invoke-virtual {v0, v9}, Lnet/sourceforge/opencamera/MainActivity;->savingImage(Z)V

    .line 1787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1791
    iget-boolean v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->panorama_dir_left_to_right:Z

    if-nez v0, :cond_13

    .line 1792
    iget-object v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1794
    iget-object v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->gyro_rotation_matrix:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1797
    :cond_13
    iget-object v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    const/4 v1, -0x1

    invoke-direct {v10, v0, v1, v9}, Lnet/sourceforge/opencamera/ImageSaver;->loadBitmaps(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_14

    iget-object v0, v10, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1801
    invoke-virtual {v0, v11}, Lnet/sourceforge/opencamera/MainActivity;->savingImage(Z)V

    return v11

    :cond_14
    const/4 v0, 0x0

    .line 1809
    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_15

    .line 1810
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 1811
    iget-object v4, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-direct {v10, v3, v4}, Lnet/sourceforge/opencamera/ImageSaver;->rotateForExif(Landroid/graphics/Bitmap;[B)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1812
    invoke-interface {v1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_15
    :try_start_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_16

    iget-object v0, v10, Lnet/sourceforge/opencamera/ImageSaver;->panoramaProcessor:Lnet/sourceforge/opencamera/PanoramaProcessor;

    .line 1821
    invoke-static {}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPanoramaPicsPerScreen()F

    move-result v3

    iget v4, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->camera_view_angle_y:F

    iget-boolean v5, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->panorama_crop:Z

    invoke-virtual {v0, v1, v3, v4, v5}, Lnet/sourceforge/opencamera/PanoramaProcessor;->panorama(Ljava/util/List;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_6
    .catch Lnet/sourceforge/opencamera/PanoramaProcessorException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1849
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1850
    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v1, v10, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1852
    invoke-virtual {v1, v11}, Lnet/sourceforge/opencamera/MainActivity;->savingImage(Z)V

    .line 1856
    iget-object v1, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [B

    const-string v5, "_PANO"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v9}, Lnet/sourceforge/opencamera/ImageSaver;->saveSingleImageNow(Lnet/sourceforge/opencamera/ImageSaver$Request;[BLandroid/graphics/Bitmap;Ljava/lang/String;ZZZZ)Z

    move-result v1

    .line 1859
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1860
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_a

    :cond_16
    :try_start_7
    const-string v0, "shouldn\'t have offered panorama as an option if not on Android 5"

    .line 1824
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_7
    .catch Lnet/sourceforge/opencamera/PanoramaProcessorException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception v0

    .line 1829
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PanoramaProcessorException from panorama: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/PanoramaProcessorException;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/PanoramaProcessorException;->printStackTrace()V

    .line 1831
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/PanoramaProcessorException;->getCode()I

    move-result v2

    if-eq v2, v9, :cond_18

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/PanoramaProcessorException;->getCode()I

    move-result v2

    if-ne v2, v9, :cond_17

    goto :goto_9

    .line 1841
    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_18
    :goto_9
    iget-object v2, v10, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1832
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v2

    const v3, 0x7f100092

    invoke-virtual {v2, v7, v3}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    .line 1833
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "panorama failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/PanoramaProcessorException;->getCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1835
    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v0, v10, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1836
    invoke-virtual {v0, v11}, Lnet/sourceforge/opencamera/MainActivity;->savingImage(Z)V

    return v11

    :cond_19
    const-string v3, "_"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1866
    invoke-direct/range {v1 .. v6}, Lnet/sourceforge/opencamera/ImageSaver;->saveImages(Lnet/sourceforge/opencamera/ImageSaver$Request;Ljava/lang/String;ZZZ)Z

    move-result v1

    :goto_a
    return v1

    .line 1411
    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 1405
    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method

.method private saveImageNowRaw(Lnet/sourceforge/opencamera/ImageSaver$Request;)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "_"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    return v5

    :cond_0
    iget-object v3, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3544
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v3

    iget-object v4, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v13, 0x1

    .line 3547
    invoke-virtual {v4, v13}, Lnet/sourceforge/opencamera/MainActivity;->savingImage(Z)V

    .line 3550
    iget-object v4, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->raw_image:Lnet/sourceforge/opencamera/cameracontroller/RawImage;

    .line 3558
    :try_start_0
    iget-boolean v6, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->force_suffix:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->suffix_offset:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    move-object v8, v2

    .line 3559
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/StorageUtils;->isUsingSAF()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v12, "is_pending"

    const-string v6, "dng"

    const/16 v11, 0x1d

    if-eqz v2, :cond_2

    .line 3560
    :try_start_1
    iget-object v2, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->current_date:Ljava/util/Date;

    invoke-virtual {v3, v13, v8, v6, v2}, Lnet/sourceforge/opencamera/StorageUtils;->createOutputMediaFileSAF(ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v15, 0x1d

    goto/16 :goto_2

    .line 3566
    :cond_2
    invoke-static {}, Lnet/sourceforge/opencamera/MainActivity;->useScopedStorage()Z

    move-result v2

    if-eqz v2, :cond_6

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v11, :cond_3

    const-string v2, "external_primary"

    .line 3569
    invoke-static {v2}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 3570
    :cond_3
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3571
    :goto_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const/4 v7, 0x1

    const/4 v9, 0x0

    const-string v16, ".dng"

    .line 3572
    iget-object v6, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->current_date:Ljava/util/Date;

    move-object/from16 v17, v6

    move-object v6, v3

    move-object v14, v10

    move-object/from16 v10, v16

    const/16 v15, 0x1d

    move-object/from16 v11, v17

    invoke-virtual/range {v6 .. v11}, Lnet/sourceforge/opencamera/StorageUtils;->createMediaFilename(ILjava/lang/String;ILjava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_display_name"

    .line 3573
    invoke-virtual {v14, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "mime_type"

    const-string v7, "image/dng"

    .line 3574
    invoke-virtual {v14, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v15, :cond_4

    const-string v6, "relative_path"

    .line 3576
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveRelativeFolder()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3577
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_4
    :try_start_2
    iget-object v6, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3584
    invoke-virtual {v6}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_5

    move-object v10, v14

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_2

    .line 3602
    :cond_5
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    .line 3596
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 3597
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :catch_1
    move-exception v0

    .line 3590
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 3591
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_6
    const/16 v15, 0x1d

    .line 3605
    iget-object v2, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->current_date:Ljava/util/Date;

    invoke-virtual {v3, v13, v8, v6, v2}, Lnet/sourceforge/opencamera/StorageUtils;->createOutputMediaFile(ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/io/File;

    move-result-object v2

    move-object v7, v2

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_2
    if-eqz v7, :cond_7

    .line 3611
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    goto :goto_3

    :cond_7
    iget-object v8, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3614
    invoke-virtual {v8}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v8
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3616
    :goto_3
    :try_start_4
    invoke-virtual {v4, v8}, Lnet/sourceforge/opencamera/cameracontroller/RawImage;->writeImage(Ljava/io/OutputStream;)V

    .line 3617
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/cameracontroller/RawImage;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 3619
    :try_start_5
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v4, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3627
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v4

    .line 3628
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isRawOnly()Z

    move-result v11

    if-nez v2, :cond_8

    .line 3632
    invoke-virtual {v4, v7, v11}, Lnet/sourceforge/opencamera/MyApplicationInterface;->addLastImage(Ljava/io/File;Z)V

    goto :goto_4

    .line 3634
    :cond_8
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/StorageUtils;->isUsingSAF()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3635
    invoke-virtual {v4, v2, v11}, Lnet/sourceforge/opencamera/MyApplicationInterface;->addLastImageSAF(Landroid/net/Uri;Z)V

    goto :goto_4

    :cond_9
    if-eqz v6, :cond_a

    .line 3638
    invoke-virtual {v4, v2, v11}, Lnet/sourceforge/opencamera/MyApplicationInterface;->addLastImageMediaStore(Landroid/net/Uri;Z)V

    :cond_a
    :goto_4
    if-eqz v11, :cond_b

    .line 3644
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/StorageUtils;->clearLastMediaScanned()V

    .line 3648
    :cond_b
    iget-object v4, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->remove_device_exif:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    sget-object v8, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->OFF:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    if-eq v4, v8, :cond_c

    iget-object v0, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->remove_device_exif:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    sget-object v4, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->KEEP_DATETIME:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    if-eq v0, v4, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    :goto_5
    if-nez v2, :cond_d

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v6, v3

    move v10, v11

    move v11, v0

    .line 3651
    invoke-virtual/range {v6 .. v12}, Lnet/sourceforge/opencamera/StorageUtils;->broadcastFile(Ljava/io/File;ZZZZLandroid/net/Uri;)V

    goto/16 :goto_f

    :cond_d
    if-eqz v6, :cond_f

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v15, :cond_e

    .line 3655
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 3656
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3657
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v10, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3665
    :cond_e
    invoke-virtual {v3, v2, v13, v5}, Lnet/sourceforge/opencamera/StorageUtils;->announceUri(Landroid/net/Uri;ZZ)V

    if-eqz v11, :cond_12

    .line 3669
    invoke-virtual {v3, v2, v13, v0, v2}, Lnet/sourceforge/opencamera/StorageUtils;->setLastMediaScanned(Landroid/net/Uri;ZZLandroid/net/Uri;)V

    goto/16 :goto_f

    :cond_f
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v6, v3

    move-object v7, v2

    move v10, v11

    move v11, v0

    .line 3673
    invoke-virtual/range {v6 .. v12}, Lnet/sourceforge/opencamera/StorageUtils;->broadcastUri(Landroid/net/Uri;ZZZZZ)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    move-object v2, v0

    const/4 v4, 0x0

    goto :goto_7

    :catch_2
    move-exception v0

    const/4 v4, 0x0

    goto :goto_8

    :catch_3
    move-exception v0

    const/4 v4, 0x0

    const/4 v8, 0x0

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v15, v8

    const/4 v4, 0x0

    goto/16 :goto_10

    :catch_4
    move-exception v0

    move-object v15, v8

    const/4 v4, 0x0

    goto :goto_6

    :catch_5
    move-exception v0

    const/4 v4, 0x0

    goto :goto_c

    :catch_6
    move-exception v0

    move-object v15, v8

    :goto_6
    const/4 v13, 0x0

    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v2, v0

    :goto_7
    const/4 v15, 0x0

    goto :goto_10

    :catch_8
    move-exception v0

    const/4 v13, 0x0

    :goto_8
    const/4 v15, 0x0

    .line 3685
    :goto_9
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3686
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    const v2, 0x7f100096

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v15, :cond_10

    .line 3691
    :try_start_8
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_a

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 3696
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_10
    :goto_a
    if-eqz v4, :cond_12

    .line 3700
    :goto_b
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/cameracontroller/RawImage;->close()V

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object v2, v0

    goto :goto_10

    :catch_a
    move-exception v0

    const/4 v8, 0x0

    :goto_c
    const/4 v13, 0x0

    .line 3679
    :goto_d
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    iget-object v0, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3680
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    const v2, 0x7f100096

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v8, :cond_11

    .line 3691
    :try_start_a
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_e

    :catch_b
    move-exception v0

    move-object v2, v0

    .line 3696
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_11
    :goto_e
    if-eqz v4, :cond_12

    goto :goto_b

    .line 3704
    :cond_12
    :goto_f
    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v0, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3706
    invoke-virtual {v0, v5}, Lnet/sourceforge/opencamera/MainActivity;->savingImage(Z)V

    return v13

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v15, v8

    :goto_10
    if-eqz v15, :cond_13

    .line 3691
    :try_start_b
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    goto :goto_11

    :catch_c
    move-exception v0

    move-object v3, v0

    .line 3696
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_13
    :goto_11
    if-eqz v4, :cond_14

    .line 3700
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/cameracontroller/RawImage;->close()V

    .line 3702
    :cond_14
    goto :goto_13

    :goto_12
    throw v2

    :goto_13
    goto :goto_12
.end method

.method private saveImages(Lnet/sourceforge/opencamera/ImageSaver$Request;Ljava/lang/String;ZZZ)Z
    .locals 16

    move-object/from16 v9, p1

    .line 1884
    iget-object v0, v9, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v10, v0, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 1885
    :goto_0
    iget-object v0, v9, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_6

    .line 1887
    iget-object v0, v9, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [B

    .line 1888
    iget-object v0, v9, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v11, :cond_0

    if-nez p3, :cond_0

    goto :goto_1

    .line 1889
    :cond_0
    iget-boolean v0, v9, Lnet/sourceforge/opencamera/ImageSaver$Request;->force_suffix:Z

    if-eqz v0, :cond_1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, p2

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lnet/sourceforge/opencamera/ImageSaver$Request;->suffix_offset:I

    add-int/2addr v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object/from16 v15, p2

    const-string v0, ""

    .line 1890
    :goto_2
    iget-object v1, v9, Lnet/sourceforge/opencamera/ImageSaver$Request;->process_type:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    sget-object v3, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->X_NIGHT:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    if-ne v1, v3, :cond_2

    .line 1891
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "_Night"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v4, v0

    if-eqz p5, :cond_3

    if-ne v13, v10, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p4

    .line 1894
    invoke-direct/range {v0 .. v8}, Lnet/sourceforge/opencamera/ImageSaver;->saveSingleImageNow(Lnet/sourceforge/opencamera/ImageSaver$Request;[BLandroid/graphics/Bitmap;Ljava/lang/String;ZZZZ)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v14, 0x0

    :cond_4
    if-eqz p3, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_6
    :goto_4
    return v14
.end method

.method private saveSingleImageNow(Lnet/sourceforge/opencamera/ImageSaver$Request;[BLandroid/graphics/Bitmap;Ljava/lang/String;ZZZZ)Z
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p4

    move/from16 v11, p5

    move/from16 v12, p6

    const-string v10, "failed to create ParcelFileDescriptor for saveUri: "

    const-string v4, "."

    .line 2484
    iget-object v5, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->type:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    sget-object v6, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->JPEG:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    if-ne v5, v6, :cond_2e

    if-eqz v3, :cond_2d

    .line 2496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v5, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2499
    invoke-virtual {v5}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-nez p7, :cond_0

    .line 2500
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isRawOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    iget-object v5, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2503
    invoke-virtual {v5}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v9

    .line 2506
    sget-object v5, Lnet/sourceforge/opencamera/ImageSaver$4;->$SwitchMap$net$sourceforge$opencamera$ImageSaver$Request$ImageFormat:[I

    iget-object v6, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_format:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v8, 0x2

    if-eq v5, v15, :cond_2

    if-eq v5, v8, :cond_1

    const-string v5, "jpg"

    goto :goto_1

    :cond_1
    const-string v5, "png"

    goto :goto_1

    :cond_2
    const-string v5, "webp"

    :goto_1
    move-object v7, v5

    iget-object v5, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2520
    invoke-virtual {v5, v15}, Lnet/sourceforge/opencamera/MainActivity;->savingImage(Z)V

    const-string v6, "ImageSaver"

    if-nez v16, :cond_3

    move-object/from16 v5, p3

    move/from16 v8, p8

    .line 2530
    :try_start_0
    invoke-direct {v1, v2, v3, v5, v8}, Lnet/sourceforge/opencamera/ImageSaver;->postProcessBitmap(Lnet/sourceforge/opencamera/ImageSaver$Request;[BLandroid/graphics/Bitmap;Z)Lnet/sourceforge/opencamera/ImageSaver$PostProcessBitmapResult;

    move-result-object v8

    .line 2531
    iget-object v5, v8, Lnet/sourceforge/opencamera/ImageSaver$PostProcessBitmapResult;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object/from16 v18, v5

    :goto_2
    move-object v14, v6

    move-object v12, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_3
    const/16 v17, 0x0

    goto/16 :goto_42

    :catch_1
    move-exception v0

    move-object/from16 v18, v5

    :goto_4
    move-object v14, v6

    move-object v12, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f100095

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_5
    const/16 v17, 0x0

    goto/16 :goto_43

    :catch_2
    move-exception v0

    move-object/from16 v18, v5

    :goto_6
    move-object v14, v6

    move-object v12, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f100095

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_7
    const/16 v17, 0x0

    goto/16 :goto_44

    :cond_3
    move-object/from16 v5, p3

    :goto_8
    move-object/from16 v18, v5

    const-string v8, "is_pending"

    const/4 v5, -0x1

    if-eqz v16, :cond_4

    move-object/from16 v26, v6

    move-object v12, v9

    move-object/from16 v14, v18

    const/4 v4, 0x1

    :goto_9
    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    goto/16 :goto_18

    .line 2538
    :cond_4
    :try_start_1
    iget-boolean v15, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_capture_intent:Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_44
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_43
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_42

    if-eqz v15, :cond_9

    .line 2541
    :try_start_2
    iget-object v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_capture_intent_uri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 2546
    iget-object v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_capture_intent_uri:Landroid/net/Uri;

    :goto_a
    move-object/from16 v26, v6

    move-object v12, v9

    move-object/from16 v14, v18

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object v9, v8

    move-object v8, v0

    goto/16 :goto_18

    :cond_5
    if-nez v18, :cond_6

    .line 2558
    invoke-direct {v1, v3, v14}, Lnet/sourceforge/opencamera/ImageSaver;->loadBitmapWithRotation([BZ)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_6

    move-object v4, v0

    goto :goto_b

    :cond_6
    move-object/from16 v4, v18

    :goto_b
    if-eqz v4, :cond_7

    .line 2561
    :try_start_3
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2562
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    const/16 v7, 0x80

    if-le v0, v7, :cond_7

    const/high16 v7, 0x43000000    # 128.0f

    int-to-float v15, v0

    div-float/2addr v7, v15

    .line 2572
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 2573
    invoke-virtual {v15, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v25, 0x1

    move-object/from16 v19, v4

    move/from16 v22, v0

    move-object/from16 v24, v15

    .line 2574
    invoke-static/range {v19 .. v25}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v4, :cond_7

    .line 2577
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    move-object v4, v0

    goto :goto_c

    :catch_3
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_2

    :catch_4
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_4

    :catch_5
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_6

    :cond_7
    :goto_c
    if-eqz v4, :cond_8

    iget-object v0, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2592
    new-instance v7, Landroid/content/Intent;

    const-string v15, "inline-data"

    invoke-direct {v7, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "data"

    invoke-virtual {v7, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lnet/sourceforge/opencamera/MainActivity;->setResult(ILandroid/content/Intent;)V

    :cond_8
    iget-object v0, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2593
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->finish()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v14, v4

    move-object/from16 v26, v6

    move-object v12, v9

    const/4 v4, 0x0

    goto/16 :goto_9

    :catch_6
    move-exception v0

    goto/16 :goto_2

    :catch_7
    move-exception v0

    goto/16 :goto_4

    :catch_8
    move-exception v0

    goto/16 :goto_6

    .line 2596
    :cond_9
    :try_start_4
    invoke-virtual {v9}, Lnet/sourceforge/opencamera/StorageUtils;->isUsingSAF()Z

    move-result v15
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_41
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_40
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_42

    if-eqz v15, :cond_a

    .line 2597
    :try_start_5
    iget-object v4, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->current_date:Ljava/util/Date;

    const/4 v15, 0x1

    invoke-virtual {v9, v15, v0, v7, v4}, Lnet/sourceforge/opencamera/StorageUtils;->createOutputMediaFileSAF(ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Landroid/net/Uri;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_a

    .line 2599
    :cond_a
    :try_start_6
    invoke-static {}, Lnet/sourceforge/opencamera/MainActivity;->useScopedStorage()Z

    move-result v15
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_41
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_40
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_42

    if-eqz v15, :cond_e

    :try_start_7
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_16
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_14

    const/16 v5, 0x1d

    if-lt v15, v5, :cond_b

    :try_start_8
    const-string v5, "external_primary"

    .line 2604
    invoke-static {v5}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    move-object v14, v6

    move-object v12, v9

    goto/16 :goto_10

    :catch_a
    move-exception v0

    move-object v14, v6

    move-object v12, v9

    goto/16 :goto_13

    :catch_b
    move-exception v0

    move-object v14, v6

    move-object v12, v9

    goto/16 :goto_16

    .line 2605
    :cond_b
    :try_start_9
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_d
    move-object v15, v5

    .line 2606
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/16 v19, 0x1

    const/16 v20, 0x0

    .line 2607
    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    iget-object v4, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->current_date:Ljava/util/Date;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_16
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_15
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_14

    move-object/from16 v22, v4

    move-object v4, v9

    move-object v14, v5

    move/from16 v5, v19

    move-object/from16 v26, v6

    move-object/from16 v6, p4

    move-object v0, v7

    move/from16 v7, v20

    move-object/from16 v27, v8

    move-object/from16 v8, v21

    move-object v12, v9

    move-object/from16 v9, v22

    :try_start_a
    invoke-virtual/range {v4 .. v9}, Lnet/sourceforge/opencamera/StorageUtils;->createMediaFilename(ILjava/lang/String;ILjava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_display_name"

    .line 2610
    invoke-virtual {v14, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2611
    invoke-virtual {v12, v0}, Lnet/sourceforge/opencamera/StorageUtils;->getImageMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "mime_type"

    .line 2614
    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v0, v4, :cond_c

    .line 2616
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveRelativeFolder()Ljava/lang/String;

    move-result-object v0

    const-string v4, "relative_path"

    .line 2619
    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 2620
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v9, v27

    invoke-virtual {v14, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_12
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_11

    goto :goto_e

    :cond_c
    move-object/from16 v9, v27

    :goto_e
    :try_start_b
    iget-object v0, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2629
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v15, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_13
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_12
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_11

    if-eqz v5, :cond_d

    move-object v8, v5

    move-object v7, v14

    move-object/from16 v14, v18

    const/4 v4, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x1

    goto/16 :goto_18

    .line 2648
    :cond_d
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    move-exception v0

    move-object/from16 v14, v26

    const/4 v4, 0x0

    goto :goto_11

    :catch_d
    move-exception v0

    move-object/from16 v14, v26

    const/4 v4, 0x0

    goto :goto_14

    :catch_e
    move-exception v0

    move-object/from16 v14, v26

    const/4 v4, 0x0

    goto :goto_17

    :catch_f
    move-exception v0

    .line 2642
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2643
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :catch_10
    move-exception v0

    .line 2635
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 2636
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_12
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_11

    :catch_11
    move-exception v0

    goto :goto_f

    :catch_12
    move-exception v0

    goto :goto_12

    :catch_13
    move-exception v0

    goto :goto_15

    :catch_14
    move-exception v0

    move-object/from16 v26, v6

    move-object v12, v9

    :goto_f
    move-object/from16 v14, v26

    :goto_10
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_11
    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x1

    goto/16 :goto_42

    :catch_15
    move-exception v0

    move-object/from16 v26, v6

    move-object v12, v9

    :goto_12
    move-object/from16 v14, v26

    :goto_13
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_14
    const v6, 0x7f100095

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x1

    goto/16 :goto_43

    :catch_16
    move-exception v0

    move-object/from16 v26, v6

    move-object v12, v9

    :goto_15
    move-object/from16 v14, v26

    :goto_16
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_17
    const v6, 0x7f100095

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x1

    goto/16 :goto_44

    :cond_e
    move-object/from16 v26, v6

    move-object v5, v7

    move-object v12, v9

    move-object v9, v8

    .line 2652
    :try_start_e
    iget-object v4, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->current_date:Ljava/util/Date;

    const/4 v6, 0x1

    invoke-virtual {v12, v6, v0, v5, v4}, Lnet/sourceforge/opencamera/StorageUtils;->createOutputMediaFile(ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/io/File;

    move-result-object v5
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_3f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3e
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_e} :catch_3d

    move-object v15, v5

    move-object/from16 v14, v18

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v17, 0x0

    :goto_18
    if-nez v15, :cond_11

    if-eqz v8, :cond_f

    goto :goto_19

    :cond_f
    move/from16 v18, v4

    move-object v6, v8

    move-object/from16 p7, v14

    move-object/from16 v14, v26

    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_30

    :cond_11
    :goto_19
    if-eqz v15, :cond_12

    .line 2663
    :try_start_f
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_18
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_17

    :goto_1a
    move-object v5, v0

    goto :goto_1b

    :catch_17
    move-exception v0

    move-object v5, v8

    move-object/from16 v18, v14

    move-object/from16 v14, v26

    const/4 v7, 0x0

    goto/16 :goto_42

    :catch_18
    move-exception v0

    move-object v5, v8

    move-object/from16 v18, v14

    move-object/from16 v14, v26

    const v6, 0x7f100095

    const/4 v7, 0x0

    goto/16 :goto_43

    :catch_19
    move-exception v0

    move-object v5, v8

    move-object/from16 v18, v14

    move-object/from16 v14, v26

    const v6, 0x7f100095

    const/4 v7, 0x0

    goto/16 :goto_44

    :cond_12
    :try_start_10
    iget-object v0, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2665
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_3c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3b
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_10} :catch_3a

    goto :goto_1a

    :goto_1b
    if-eqz v14, :cond_15

    .line 2671
    :try_start_11
    sget-object v0, Lnet/sourceforge/opencamera/ImageSaver$4;->$SwitchMap$net$sourceforge$opencamera$ImageSaver$Request$ImageFormat:[I

    iget-object v6, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_format:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->ordinal()I

    move-result v6

    aget v0, v0, v6

    const/4 v6, 0x1

    if-eq v0, v6, :cond_14

    const/4 v6, 0x2

    if-eq v0, v6, :cond_13

    .line 2679
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1c

    .line 2676
    :cond_13
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1c

    .line 2673
    :cond_14
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    .line 2682
    :goto_1c
    iget v6, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_quality:I

    invoke-virtual {v14, v0, v6, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_1d

    .line 2685
    :cond_15
    invoke-virtual {v5, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 2689
    :goto_1d
    :try_start_12
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_3c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3b
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_12} :catch_3a

    if-nez v8, :cond_16

    const/16 v18, 0x1

    goto :goto_1e

    :cond_16
    move/from16 v18, v4

    .line 2701
    :goto_1e
    :try_start_13
    iget-object v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_format:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    sget-object v4, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->STD:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_36
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_35
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_13} :catch_34

    if-ne v0, v4, :cond_1b

    if-eqz v14, :cond_1a

    if-eqz v15, :cond_17

    .line 2708
    :try_start_14
    invoke-direct {v1, v2, v3, v15}, Lnet/sourceforge/opencamera/ImageSaver;->setExifFromData(Lnet/sourceforge/opencamera/ImageSaver$Request;[BLjava/io/File;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_1c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1b
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_14} :catch_1a

    goto/16 :goto_23

    :catch_1a
    move-exception v0

    move-object v5, v8

    move/from16 v4, v18

    const/4 v7, 0x0

    move-object/from16 v18, v14

    move-object/from16 v14, v26

    goto/16 :goto_42

    :catch_1b
    move-exception v0

    move-object v5, v8

    move/from16 v4, v18

    const v6, 0x7f100095

    const/4 v7, 0x0

    move-object/from16 v18, v14

    move-object/from16 v14, v26

    goto/16 :goto_43

    :catch_1c
    move-exception v0

    move-object v5, v8

    move/from16 v4, v18

    const v6, 0x7f100095

    const/4 v7, 0x0

    move-object/from16 v18, v14

    move-object/from16 v14, v26

    goto/16 :goto_44

    :cond_17
    :try_start_15
    iget-object v0, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2711
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "rw"

    invoke-virtual {v0, v8, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_21
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_20
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_15} :catch_1f

    if-eqz v4, :cond_18

    .line 2714
    :try_start_16
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 2715
    invoke-direct {v1, v2, v3, v0}, Lnet/sourceforge/opencamera/ImageSaver;->setExifFromData(Lnet/sourceforge/opencamera/ImageSaver$Request;[BLjava/io/FileDescriptor;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    move-object/from16 v10, v26

    goto :goto_1f

    :catchall_0
    move-exception v0

    move-object v5, v0

    move-object/from16 v10, v26

    goto :goto_21

    .line 2718
    :cond_18
    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    move-object/from16 v10, v26

    :try_start_18
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :goto_1f
    if-eqz v4, :cond_1c

    .line 2724
    :try_start_19
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_24
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_19} :catch_22

    goto :goto_24

    :catch_1d
    move-exception v0

    move-object v4, v0

    .line 2727
    :try_start_1a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_24
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_23
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_1a} :catch_22

    goto :goto_24

    :catchall_1
    move-exception v0

    goto :goto_20

    :catchall_2
    move-exception v0

    move-object/from16 v10, v26

    :goto_20
    move-object v5, v0

    :goto_21
    if-eqz v4, :cond_19

    .line 2724
    :try_start_1b
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_24
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_1b} :catch_22

    goto :goto_22

    :catch_1e
    move-exception v0

    move-object v4, v0

    .line 2727
    :try_start_1c
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 2730
    :cond_19
    :goto_22
    throw v5

    :catch_1f
    move-exception v0

    move-object/from16 v10, v26

    goto :goto_25

    :catch_20
    move-exception v0

    move-object/from16 v10, v26

    goto :goto_26

    :catch_21
    move-exception v0

    move-object/from16 v10, v26

    goto :goto_27

    :cond_1a
    move-object/from16 v10, v26

    .line 2734
    invoke-direct {v1, v2, v15, v8}, Lnet/sourceforge/opencamera/ImageSaver;->updateExif(Lnet/sourceforge/opencamera/ImageSaver$Request;Ljava/io/File;Landroid/net/Uri;)V

    goto :goto_24

    :cond_1b
    :goto_23
    move-object/from16 v10, v26

    :cond_1c
    :goto_24
    if-eqz v11, :cond_1d

    .line 2743
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/StorageUtils;->clearLastMediaScanned()V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_24
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_23
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_1c} :catch_22

    goto :goto_28

    :catch_22
    move-exception v0

    :goto_25
    move-object v5, v8

    move/from16 v4, v18

    const/4 v7, 0x0

    move-object/from16 v18, v14

    move-object v14, v10

    goto/16 :goto_42

    :catch_23
    move-exception v0

    :goto_26
    move-object v5, v8

    move/from16 v4, v18

    const v6, 0x7f100095

    const/4 v7, 0x0

    move-object/from16 v18, v14

    move-object v14, v10

    goto/16 :goto_43

    :catch_24
    move-exception v0

    :goto_27
    move-object v5, v8

    move/from16 v4, v18

    const v6, 0x7f100095

    const/4 v7, 0x0

    move-object/from16 v18, v14

    move-object v14, v10

    goto/16 :goto_44

    .line 2746
    :cond_1d
    :goto_28
    :try_start_1d
    iget-object v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->remove_device_exif:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    sget-object v4, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->OFF:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_33
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_32
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_1d} :catch_31

    if-eq v0, v4, :cond_1e

    :try_start_1e
    iget-object v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->remove_device_exif:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    sget-object v4, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->KEEP_DATETIME:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_24
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_23
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_1e} :catch_22

    if-eq v0, v4, :cond_1e

    const/4 v0, 0x1

    goto :goto_29

    :cond_1e
    const/4 v0, 0x0

    :goto_29
    if-eqz v15, :cond_1f

    if-nez v8, :cond_1f

    const/4 v6, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v4, v12

    move-object v5, v15

    move-object/from16 p4, v7

    move/from16 v7, v19

    move-object/from16 v28, v8

    move/from16 v8, p5

    move-object/from16 v29, v9

    move v9, v0

    move-object/from16 p7, v14

    move-object v14, v10

    move-object/from16 v10, v20

    .line 2750
    :try_start_1f
    invoke-virtual/range {v4 .. v10}, Lnet/sourceforge/opencamera/StorageUtils;->broadcastFile(Ljava/io/File;ZZZZLandroid/net/Uri;)V

    iget-object v4, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2751
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lnet/sourceforge/opencamera/MainActivity;->test_last_saved_image:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_27
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_26
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_1f} :catch_25

    goto :goto_2a

    :catch_25
    move-exception v0

    move/from16 v4, v18

    move-object/from16 v5, v28

    const/4 v7, 0x0

    goto/16 :goto_33

    :catch_26
    move-exception v0

    move/from16 v4, v18

    move-object/from16 v5, v28

    const v6, 0x7f100095

    const/4 v7, 0x0

    goto/16 :goto_36

    :catch_27
    move-exception v0

    move/from16 v4, v18

    move-object/from16 v5, v28

    const v6, 0x7f100095

    const/4 v7, 0x0

    goto/16 :goto_39

    :cond_1f
    move-object/from16 p4, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-object/from16 p7, v14

    move-object v14, v10

    .line 2754
    :goto_2a
    :try_start_20
    iget-boolean v4, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_capture_intent:Z
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_20} :catch_30
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_2f
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_20} :catch_2e

    if-eqz v4, :cond_20

    :try_start_21
    iget-object v4, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v5, -0x1

    .line 2757
    invoke-virtual {v4, v5}, Lnet/sourceforge/opencamera/MainActivity;->setResult(I)V

    iget-object v4, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2758
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MainActivity;->finish()V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_21} :catch_27
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_26
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_21} :catch_25

    :cond_20
    move-object/from16 v6, v28

    if-eqz v6, :cond_10

    if-eqz v17, :cond_22

    :try_start_22
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_21

    .line 2766
    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentValues;->clear()V

    const/4 v4, 0x0

    .line 2767
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v4, p4

    move-object/from16 v7, v29

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2768
    invoke-virtual {v5}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_22} :catch_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_29
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_22} :catch_28

    const/4 v7, 0x0

    :try_start_23
    invoke-virtual {v5, v6, v4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2b

    :cond_21
    const/4 v7, 0x0

    .line 2772
    :goto_2b
    iget-boolean v4, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_capture_intent:Z

    if-nez v4, :cond_23

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2778
    invoke-virtual {v12, v6, v5, v4}, Lnet/sourceforge/opencamera/StorageUtils;->announceUri(Landroid/net/Uri;ZZ)V

    if-eqz v11, :cond_23

    .line 2781
    invoke-virtual {v12, v6, v4, v0, v6}, Lnet/sourceforge/opencamera/StorageUtils;->setLastMediaScanned(Landroid/net/Uri;ZZLandroid/net/Uri;)V

    goto :goto_2c

    :catch_28
    move-exception v0

    const/4 v7, 0x0

    goto :goto_2d

    :catch_29
    move-exception v0

    const/4 v7, 0x0

    goto :goto_2e

    :catch_2a
    move-exception v0

    const/4 v7, 0x0

    goto :goto_2f

    :cond_22
    const/4 v7, 0x0

    .line 2786
    iget-boolean v4, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_capture_intent:Z

    invoke-direct {v1, v6, v11, v0, v4}, Lnet/sourceforge/opencamera/ImageSaver;->broadcastSAFFile(Landroid/net/Uri;ZZZ)V

    :cond_23
    :goto_2c
    iget-object v0, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2789
    iput-object v6, v0, Lnet/sourceforge/opencamera/MainActivity;->test_last_saved_imageuri:Landroid/net/Uri;
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_23} :catch_2d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_2c
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_23} :catch_2b

    const/16 v18, 0x1

    goto :goto_30

    :catch_2b
    move-exception v0

    :goto_2d
    move-object/from16 v18, p7

    move-object v5, v6

    const/4 v4, 0x1

    goto/16 :goto_42

    :catch_2c
    move-exception v0

    :goto_2e
    move-object/from16 v18, p7

    move-object v5, v6

    const/4 v4, 0x1

    goto/16 :goto_3c

    :catch_2d
    move-exception v0

    :goto_2f
    move-object/from16 v18, p7

    move-object v5, v6

    const/4 v4, 0x1

    goto/16 :goto_3e

    :goto_30
    move-object v8, v6

    move/from16 v4, v18

    move-object/from16 v18, p7

    goto/16 :goto_46

    :catch_2e
    move-exception v0

    move-object/from16 v6, v28

    goto :goto_31

    :catch_2f
    move-exception v0

    move-object/from16 v6, v28

    goto :goto_34

    :catch_30
    move-exception v0

    move-object/from16 v6, v28

    goto :goto_37

    :catch_31
    move-exception v0

    move-object v6, v8

    move-object/from16 p7, v14

    const/4 v7, 0x0

    move-object v14, v10

    goto :goto_32

    :catch_32
    move-exception v0

    move-object v6, v8

    move-object/from16 p7, v14

    const/4 v7, 0x0

    move-object v14, v10

    goto :goto_35

    :catch_33
    move-exception v0

    move-object v6, v8

    move-object/from16 p7, v14

    const/4 v7, 0x0

    move-object v14, v10

    goto :goto_38

    :catch_34
    move-exception v0

    move-object v6, v8

    move-object/from16 p7, v14

    move-object/from16 v14, v26

    :goto_31
    const/4 v7, 0x0

    :goto_32
    move-object v5, v6

    move/from16 v4, v18

    :goto_33
    move-object/from16 v18, p7

    goto/16 :goto_42

    :catch_35
    move-exception v0

    move-object v6, v8

    move-object/from16 p7, v14

    move-object/from16 v14, v26

    :goto_34
    const/4 v7, 0x0

    :goto_35
    move-object v5, v6

    move/from16 v4, v18

    const v6, 0x7f100095

    :goto_36
    move-object/from16 v18, p7

    goto/16 :goto_43

    :catch_36
    move-exception v0

    move-object v6, v8

    move-object/from16 p7, v14

    move-object/from16 v14, v26

    :goto_37
    const/4 v7, 0x0

    :goto_38
    move-object v5, v6

    move/from16 v4, v18

    const v6, 0x7f100095

    :goto_39
    move-object/from16 v18, p7

    goto/16 :goto_44

    :catchall_3
    move-exception v0

    move-object v6, v8

    move-object/from16 p7, v14

    move-object/from16 v14, v26

    const/4 v7, 0x0

    .line 2689
    :try_start_24
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 2690
    throw v0
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_24} :catch_39
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_38
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_24} :catch_37

    :catch_37
    move-exception v0

    goto :goto_3a

    :catch_38
    move-exception v0

    goto :goto_3b

    :catch_39
    move-exception v0

    goto :goto_3d

    :catch_3a
    move-exception v0

    move-object v6, v8

    move-object/from16 p7, v14

    move-object/from16 v14, v26

    const/4 v7, 0x0

    :goto_3a
    move-object/from16 v18, p7

    move-object v5, v6

    goto/16 :goto_42

    :catch_3b
    move-exception v0

    move-object v6, v8

    move-object/from16 p7, v14

    move-object/from16 v14, v26

    const/4 v7, 0x0

    :goto_3b
    move-object/from16 v18, p7

    move-object v5, v6

    :goto_3c
    const v6, 0x7f100095

    goto/16 :goto_43

    :catch_3c
    move-exception v0

    move-object v6, v8

    move-object/from16 p7, v14

    move-object/from16 v14, v26

    const/4 v7, 0x0

    :goto_3d
    move-object/from16 v18, p7

    move-object v5, v6

    :goto_3e
    const v6, 0x7f100095

    goto/16 :goto_44

    :catch_3d
    move-exception v0

    move-object/from16 v14, v26

    goto :goto_41

    :catch_3e
    move-exception v0

    move-object/from16 v14, v26

    goto :goto_3f

    :catch_3f
    move-exception v0

    move-object/from16 v14, v26

    goto :goto_40

    :catch_40
    move-exception v0

    move-object v14, v6

    move-object v12, v9

    :goto_3f
    const/4 v7, 0x0

    move-object v5, v7

    move-object v15, v5

    const/4 v4, 0x0

    const v6, 0x7f100095

    goto/16 :goto_5

    :catch_41
    move-exception v0

    move-object v14, v6

    move-object v12, v9

    :goto_40
    const/4 v7, 0x0

    move-object v5, v7

    move-object v15, v5

    const/4 v4, 0x0

    const v6, 0x7f100095

    goto/16 :goto_7

    :catch_42
    move-exception v0

    move-object v14, v6

    move-object v12, v9

    :goto_41
    const/4 v7, 0x0

    move-object v5, v7

    move-object v15, v5

    const/4 v4, 0x0

    goto/16 :goto_3

    .line 2810
    :goto_42
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    iget-object v0, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2811
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    const v6, 0x7f100095

    invoke-virtual {v0, v7, v6}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    goto :goto_45

    :catch_43
    move-exception v0

    move-object v14, v6

    move-object v12, v9

    const v6, 0x7f100095

    const/4 v7, 0x0

    move-object v5, v7

    move-object v15, v5

    const/4 v4, 0x0

    goto/16 :goto_5

    .line 2802
    :goto_43
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2803
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    goto :goto_45

    :catch_44
    move-exception v0

    move-object v14, v6

    move-object v12, v9

    const v6, 0x7f100095

    const/4 v7, 0x0

    move-object v5, v7

    move-object v15, v5

    const/4 v4, 0x0

    goto/16 :goto_7

    .line 2796
    :goto_44
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    iget-object v0, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2797
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    :goto_45
    move-object v8, v5

    :goto_46
    if-eqz v16, :cond_24

    goto :goto_47

    :cond_24
    if-eqz v4, :cond_25

    if-nez v8, :cond_25

    move/from16 v5, p6

    .line 2818
    invoke-virtual {v13, v15, v5}, Lnet/sourceforge/opencamera/MyApplicationInterface;->addLastImage(Ljava/io/File;Z)V

    goto :goto_47

    :cond_25
    move/from16 v5, p6

    move-object v6, v12

    if-eqz v4, :cond_26

    .line 2820
    invoke-virtual {v6}, Lnet/sourceforge/opencamera/StorageUtils;->isUsingSAF()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2821
    invoke-virtual {v13, v8, v5}, Lnet/sourceforge/opencamera/MyApplicationInterface;->addLastImageSAF(Landroid/net/Uri;Z)V

    goto :goto_47

    :cond_26
    if-eqz v4, :cond_27

    if-eqz v17, :cond_27

    .line 2824
    invoke-virtual {v13, v8, v5}, Lnet/sourceforge/opencamera/MyApplicationInterface;->addLastImageMediaStore(Landroid/net/Uri;Z)V

    :cond_27
    :goto_47
    if-eqz v4, :cond_2b

    iget-object v0, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2828
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    if-eqz v0, :cond_2b

    if-eqz v11, :cond_2b

    iget-object v0, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2830
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getPictureSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v0

    .line 2831
    iget v0, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    int-to-double v5, v0

    iget-object v0, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v8, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 2832
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 2833
    iget v2, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->sample_factor:I

    mul-int v0, v0, v2

    if-nez v18, :cond_29

    .line 2842
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x0

    .line 2843
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-gt v6, v7, :cond_28

    const/4 v6, 0x1

    .line 2846
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 2848
    :cond_28
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2849
    array-length v0, v3

    invoke-static {v3, v5, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2857
    invoke-direct {v1, v0, v3}, Lnet/sourceforge/opencamera/ImageSaver;->rotateForExif(Landroid/graphics/Bitmap;[B)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_48

    .line 2860
    :cond_29
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 2861
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 2862
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v0, v0

    div-float/2addr v6, v0

    .line 2864
    invoke-virtual {v5, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 p1, v18

    move/from16 p2, v0

    move/from16 p3, v6

    move/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v5

    move/from16 p7, v8

    .line 2868
    :try_start_25
    invoke-static/range {p1 .. p7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_25} :catch_45

    goto :goto_48

    :catch_45
    move-exception v0

    move-object v2, v0

    const-string v0, "can\'t create thumbnail bitmap due to IllegalArgumentException?!"

    .line 2882
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v5, v7

    :goto_48
    if-nez v5, :cond_2a

    goto :goto_49

    :cond_2a
    iget-object v0, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2894
    new-instance v2, Lnet/sourceforge/opencamera/ImageSaver$3;

    invoke-direct {v2, v1, v13, v5}, Lnet/sourceforge/opencamera/ImageSaver$3;-><init>(Lnet/sourceforge/opencamera/ImageSaver;Lnet/sourceforge/opencamera/MyApplicationInterface;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2b
    :goto_49
    if-eqz v18, :cond_2c

    .line 2906
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 2909
    :cond_2c
    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v0, v1, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v2, 0x0

    .line 2911
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/MainActivity;->savingImage(Z)V

    return v4

    .line 2494
    :cond_2d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 2488
    :cond_2e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    goto :goto_4b

    :goto_4a
    throw v0

    :goto_4b
    goto :goto_4a
.end method

.method private setBitmapOptionsSampleSize(Landroid/graphics/BitmapFactory$Options;I)V
    .locals 1

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 1069
    iput p2, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 1070
    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    :cond_0
    return-void
.end method

.method private setCustomExif(Landroidx/exifinterface/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 4010
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "Artist"

    .line 4014
    invoke-virtual {p1, v0, p2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 4016
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    const-string p2, "Copyright"

    .line 4020
    invoke-virtual {p1, p2, p3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setExif(Lnet/sourceforge/opencamera/ImageSaver$Request;Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v3, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 3510
    iget-object v4, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->remove_device_exif:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    sget-object v5, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->OFF:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    if-ne v4, v5, :cond_0

    .line 3511
    invoke-direct {v3, v0, v1}, Lnet/sourceforge/opencamera/ImageSaver;->transferDeviceExif(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface;)V

    .line 3514
    :cond_0
    iget-object v4, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->remove_device_exif:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    sget-object v5, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->OFF:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    if-eq v4, v5, :cond_1

    iget-object v4, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->remove_device_exif:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    sget-object v5, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->KEEP_DATETIME:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    if-ne v4, v5, :cond_2

    .line 3515
    :cond_1
    invoke-direct {v3, v0, v1}, Lnet/sourceforge/opencamera/ImageSaver;->transferDeviceExifDateTime(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface;)V

    .line 3518
    :cond_2
    iget-object v4, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->remove_device_exif:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    sget-object v5, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->OFF:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    if-eq v4, v5, :cond_3

    iget-boolean v4, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->store_location:Z

    if-eqz v4, :cond_4

    .line 3523
    :cond_3
    invoke-direct {v3, v0, v1}, Lnet/sourceforge/opencamera/ImageSaver;->transferDeviceExifGPS(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface;)V

    .line 3526
    :cond_4
    iget-object v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->remove_device_exif:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    iget-object v4, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->type:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    sget-object v5, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->JPEG:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    const/16 v19, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    const/16 v19, 0x0

    :goto_0
    iget-boolean v4, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->using_camera2:Z

    iget-boolean v5, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->using_camera_extensions:Z

    iget-object v6, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->current_date:Ljava/util/Date;

    iget-boolean v7, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->store_location:Z

    iget-object v8, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->location:Landroid/location/Location;

    iget-boolean v9, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->store_geo_direction:Z

    iget-wide v10, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->geo_direction:D

    iget-object v12, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->custom_tag_artist:Ljava/lang/String;

    iget-object v13, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->custom_tag_copyright:Ljava/lang/String;

    iget-wide v14, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->level_angle:D

    move-object/from16 p2, v0

    iget-wide v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->pitch_angle:D

    move-wide/from16 v16, v0

    iget-boolean v0, v2, Lnet/sourceforge/opencamera/ImageSaver$Request;->store_ypr:Z

    move/from16 v18, v0

    move-object/from16 v20, p2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v20

    move/from16 v3, v19

    invoke-direct/range {v0 .. v18}, Lnet/sourceforge/opencamera/ImageSaver;->modifyExif(Landroidx/exifinterface/media/ExifInterface;Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;ZZZLjava/util/Date;ZLandroid/location/Location;ZDLjava/lang/String;Ljava/lang/String;DDZ)V

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 3528
    invoke-direct {v0, v2, v1}, Lnet/sourceforge/opencamera/ImageSaver;->removeExifTags(Landroidx/exifinterface/media/ExifInterface;Lnet/sourceforge/opencamera/ImageSaver$Request;)V

    .line 3529
    invoke-virtual/range {p3 .. p3}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V

    return-void
.end method

.method private setExifFromData(Lnet/sourceforge/opencamera/ImageSaver$Request;[BLjava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2928
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2929
    :try_start_1
    new-instance p2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {p2, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 2930
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 2931
    invoke-direct {p0, p1, p2, v0}, Lnet/sourceforge/opencamera/ImageSaver;->setExif(Lnet/sourceforge/opencamera/ImageSaver$Request;Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2935
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 2937
    :cond_0
    throw p1
.end method

.method private setExifFromData(Lnet/sourceforge/opencamera/ImageSaver$Request;[BLjava/io/FileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2956
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2957
    :try_start_1
    new-instance p2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {p2, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 2958
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v0, p3}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V

    .line 2959
    invoke-direct {p0, p1, p2, v0}, Lnet/sourceforge/opencamera/ImageSaver;->setExif(Lnet/sourceforge/opencamera/ImageSaver$Request;Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2963
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 2965
    :cond_0
    throw p1
.end method

.method private setGPSDirectionExif(Landroidx/exifinterface/media/ExifInterface;ZD)V
    .locals 0

    if-eqz p2, :cond_1

    .line 3979
    invoke-static {p3, p4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p2

    double-to-float p2, p2

    const/4 p3, 0x0

    cmpg-float p3, p2, p3

    if-gez p3, :cond_0

    const/high16 p3, 0x43b40000    # 360.0f

    add-float/2addr p2, p3

    .line 3986
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 p4, 0x42c80000    # 100.0f

    mul-float p2, p2, p4

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/100"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "GPSImgDirection"

    .line 3990
    invoke-virtual {p1, p3, p2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "GPSImgDirectionRef"

    const-string p3, "M"

    .line 3991
    invoke-virtual {p1, p2, p3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private stampImage(Lnet/sourceforge/opencamera/ImageSaver$Request;[BLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2173
    iget-object v2, v1, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_stamp:Ljava/lang/String;

    const-string v3, "preference_stamp_yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2174
    iget-object v3, v1, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_textstamp:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-object/from16 v1, p3

    goto/16 :goto_e

    :cond_2
    :goto_2
    const/4 v6, 0x0

    if-nez p3, :cond_3

    move-object/from16 v7, p2

    .line 2179
    invoke-direct {v0, v7, v4}, Lnet/sourceforge/opencamera/ImageSaver;->loadBitmapWithRotation([BZ)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_4

    iget-object v8, v0, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2181
    invoke-virtual {v8}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v8

    const v9, 0x7f100098

    invoke-virtual {v8, v6, v9}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    .line 2182
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_3

    :cond_3
    move-object/from16 v7, p3

    :cond_4
    :goto_3
    if-eqz v7, :cond_13

    .line 2196
    iget v8, v1, Lnet/sourceforge/opencamera/ImageSaver$Request;->font_size:I

    .line 2197
    iget v9, v1, Lnet/sourceforge/opencamera/ImageSaver$Request;->color:I

    .line 2198
    iget-object v10, v1, Lnet/sourceforge/opencamera/ImageSaver$Request;->pref_style:Ljava/lang/String;

    .line 2201
    iget-object v11, v1, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_stamp_dateformat:Ljava/lang/String;

    .line 2202
    iget-object v12, v1, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_stamp_timeformat:Ljava/lang/String;

    .line 2203
    iget-object v14, v1, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_stamp_gpsformat:Ljava/lang/String;

    .line 2204
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 2205
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 2210
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v5, v0, Lnet/sourceforge/opencamera/ImageSaver;->p:Landroid/graphics/Paint;

    const/4 v6, -0x1

    .line 2211
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2214
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    const/high16 v17, 0x43900000    # 288.0f

    div-float v5, v5, v17

    int-to-float v8, v8

    mul-float v8, v8, v5

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v8, v8, v21

    float-to-int v8, v8

    iget-object v6, v0, Lnet/sourceforge/opencamera/ImageSaver;->p:Landroid/graphics/Paint;

    int-to-float v8, v8

    .line 2222
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v6, 0x41000000    # 8.0f

    mul-float v6, v6, v5

    add-float v6, v6, v21

    float-to-int v6, v6

    sub-int v22, v13, v6

    iget-object v13, v0, Lnet/sourceforge/opencamera/ImageSaver;->p:Landroid/graphics/Paint;

    move-object/from16 p3, v7

    .line 2227
    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2228
    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_NONE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    .line 2229
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :goto_4
    const/16 v16, -0x1

    goto :goto_5

    :sswitch_0
    const-string v13, "preference_stamp_style_shadowed"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_4

    :cond_5
    const/4 v10, 0x2

    const/16 v16, 0x2

    goto :goto_5

    :sswitch_1
    const-string v13, "preference_stamp_style_background"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_4

    :cond_6
    const/16 v16, 0x1

    goto :goto_5

    :sswitch_2
    const-string v13, "preference_stamp_style_plain"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_4

    :cond_7
    const/16 v16, 0x0

    :goto_5
    packed-switch v16, :pswitch_data_0

    goto :goto_6

    .line 2231
    :pswitch_0
    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_OUTLINE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    goto :goto_6

    .line 2237
    :pswitch_1
    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_BACKGROUND:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    goto :goto_6

    .line 2234
    :pswitch_2
    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_NONE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    :goto_6
    const-string v10, "\n"

    const-string v13, ""

    if-eqz v2, :cond_e

    .line 2246
    iget-object v2, v1, Lnet/sourceforge/opencamera/ImageSaver$Request;->current_date:Ljava/util/Date;

    invoke-static {v11, v2}, Lnet/sourceforge/opencamera/TextFormatter;->getDateString(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2247
    iget-object v11, v1, Lnet/sourceforge/opencamera/ImageSaver$Request;->current_date:Ljava/util/Date;

    invoke-static {v12, v11}, Lnet/sourceforge/opencamera/TextFormatter;->getTimeString(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 2252
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_8

    goto :goto_8

    :cond_8
    :goto_7
    move-object v2, v13

    goto :goto_9

    .line 2254
    :cond_9
    :goto_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_a

    .line 2255
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2256
    :cond_a
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 2257
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 2258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2259
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    goto :goto_7

    :goto_9
    iget-object v11, v0, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2268
    invoke-virtual {v11}, Lnet/sourceforge/opencamera/MainActivity;->getTextFormatter()Lnet/sourceforge/opencamera/TextFormatter;

    move-result-object v13

    iget-object v11, v1, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_units_distance:Ljava/lang/String;

    iget-boolean v12, v1, Lnet/sourceforge/opencamera/ImageSaver$Request;->store_location:Z

    move/from16 p2, v6

    iget-object v6, v1, Lnet/sourceforge/opencamera/ImageSaver$Request;->location:Landroid/location/Location;

    move-object/from16 v23, v4

    iget-boolean v4, v1, Lnet/sourceforge/opencamera/ImageSaver$Request;->store_geo_direction:Z

    move-object/from16 v25, v7

    move/from16 v24, v8

    iget-wide v7, v1, Lnet/sourceforge/opencamera/ImageSaver$Request;->geo_direction:D

    move/from16 v26, v15

    move-object v15, v11

    move/from16 v16, v12

    move-object/from16 v17, v6

    move/from16 v18, v4

    move-wide/from16 v19, v7

    invoke-virtual/range {v13 .. v20}, Lnet/sourceforge/opencamera/TextFormatter;->getGPSString(Ljava/lang/String;Ljava/lang/String;ZLandroid/location/Location;ZD)Ljava/lang/String;

    move-result-object v4

    .line 2269
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_d

    .line 2318
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_c

    move-object v13, v4

    goto :goto_a

    .line 2321
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_d
    move-object v13, v2

    goto :goto_a

    :cond_e
    move-object/from16 v23, v4

    move/from16 p2, v6

    move-object/from16 v25, v7

    move/from16 v24, v8

    move/from16 v26, v15

    :goto_a
    if-eqz v3, :cond_10

    .line 2359
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f

    .line 2360
    iget-object v1, v1, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_textstamp:Ljava/lang/String;

    goto :goto_b

    .line 2362
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_textstamp:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_b
    move-object v13, v1

    .line 2368
    :cond_10
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2372
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c003b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09008d

    .line 2373
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0900ec

    .line 2374
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x0

    .line 2376
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2377
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    move/from16 v4, v24

    .line 2378
    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2379
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2380
    sget-object v3, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_OUTLINE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    move-object/from16 v7, v25

    if-ne v7, v3, :cond_11

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v5, v5, v3

    add-float v5, v5, v21

    .line 2383
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, -0x1000000

    const/4 v5, 0x0

    .line 2386
    invoke-virtual {v1, v3, v5, v5, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_c

    .line 2388
    :cond_11
    sget-object v3, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_BACKGROUND:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    if-ne v7, v3, :cond_12

    const/16 v3, 0x40

    const/4 v4, 0x0

    .line 2389
    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_d

    :cond_12
    :goto_c
    const/4 v4, 0x0

    :goto_d
    const v3, 0x800005

    .line 2392
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2394
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 2395
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v2, v4, v4, v3, v5}, Landroid/widget/LinearLayout;->layout(IIII)V

    sub-int v15, v26, p2

    .line 2396
    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    sub-int/2addr v15, v3

    int-to-float v3, v15

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    sub-int v1, v22, v1

    int-to-float v1, v1

    move-object/from16 v4, v23

    invoke-virtual {v4, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2397
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    :cond_13
    move-object/from16 p3, v7

    goto/16 :goto_1

    :goto_e
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3a739324 -> :sswitch_2
        0xde3dd5c -> :sswitch_1
        0x5436796d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private transferDeviceExif(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface;)V
    .locals 80

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "FNumber"

    .line 2977
    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ExposureTime"

    .line 2978
    invoke-virtual {v0, v4}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Flash"

    .line 2979
    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "FocalLength"

    .line 2980
    invoke-virtual {v0, v8}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "ISOSpeedRatings"

    .line 2983
    invoke-virtual {v0, v10}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Make"

    .line 2984
    invoke-virtual {v0, v12}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Model"

    .line 2985
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v14

    const-string v14, "WhiteBalance"

    move-object/from16 v17, v15

    .line 2987
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v14

    const-string v14, "ApertureValue"

    move-object/from16 v19, v15

    .line 3031
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v14

    const-string v14, "BrightnessValue"

    move-object/from16 v21, v15

    .line 3032
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v22, v14

    const-string v14, "CFAPattern"

    move-object/from16 v23, v15

    .line 3033
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v24, v14

    const-string v14, "ColorSpace"

    move-object/from16 v25, v15

    .line 3034
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v26, v14

    const-string v14, "ComponentsConfiguration"

    move-object/from16 v27, v15

    .line 3035
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v28, v14

    const-string v14, "CompressedBitsPerPixel"

    move-object/from16 v29, v15

    .line 3036
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v30, v14

    const-string v14, "Compression"

    move-object/from16 v31, v15

    .line 3037
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v32, v14

    const-string v14, "Contrast"

    move-object/from16 v33, v15

    .line 3038
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v34, v14

    const-string v14, "DeviceSettingDescription"

    move-object/from16 v35, v15

    .line 3039
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v36, v14

    const-string v14, "DigitalZoomRatio"

    move-object/from16 v37, v15

    .line 3040
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v38, v14

    const-string v14, "ExposureBiasValue"

    move-object/from16 v39, v15

    .line 3042
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v40, v14

    const-string v14, "ExposureIndex"

    move-object/from16 v41, v15

    .line 3043
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v42, v14

    const-string v14, "ExposureMode"

    move-object/from16 v43, v15

    .line 3044
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v44, v14

    const-string v14, "ExposureProgram"

    move-object/from16 v45, v15

    .line 3045
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v46, v14

    const-string v14, "FlashEnergy"

    .line 3046
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v47, v14

    const-string v14, "FocalLengthIn35mmFilm"

    .line 3047
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v48, v14

    const-string v14, "FocalPlaneResolutionUnit"

    .line 3048
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v49, v14

    const-string v14, "FocalPlaneXResolution"

    .line 3049
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v50, v14

    const-string v14, "FocalPlaneYResolution"

    .line 3050
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v51, v14

    const-string v14, "GainControl"

    .line 3052
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v52, v14

    const-string v14, "GPSAreaInformation"

    .line 3053
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v53, v14

    const-string v14, "GPSDifferential"

    .line 3055
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v54, v14

    const-string v14, "GPSDOP"

    .line 3056
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v55, v14

    const-string v14, "GPSMeasureMode"

    .line 3059
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v56, v14

    const-string v14, "ImageDescription"

    .line 3062
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v57, v14

    const-string v14, "LightSource"

    .line 3066
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v58, v14

    const-string v14, "MakerNote"

    .line 3067
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v59, v14

    const-string v14, "MaxApertureValue"

    .line 3068
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v60, v14

    const-string v14, "MeteringMode"

    .line 3069
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v61, v14

    const-string v14, "OECF"

    .line 3070
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v62, v14

    const-string v14, "PhotometricInterpretation"

    .line 3071
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v63, v14

    const-string v14, "Saturation"

    .line 3078
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v64, v14

    const-string v14, "SceneCaptureType"

    .line 3079
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v65, v14

    const-string v14, "SceneType"

    .line 3080
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v66, v14

    const-string v14, "SensingMethod"

    .line 3081
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v67, v14

    const-string v14, "Sharpness"

    .line 3082
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v68, v14

    const-string v14, "ShutterSpeedValue"

    .line 3083
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v69, v14

    const-string v14, "Software"

    .line 3084
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v70, v14

    const-string v14, "UserComment"

    .line 3092
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v71, v14

    const-string v14, "PhotographicSensitivity"

    .line 3098
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v72, v14

    const-string v14, "SensitivityType"

    .line 3099
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v73, v14

    const-string v14, "StandardOutputSensitivity"

    .line 3100
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v74, v14

    const-string v14, "RecommendedExposureIndex"

    .line 3101
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v75, v14

    const-string v14, "ISOSpeed"

    .line 3102
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v76, v14

    const-string v14, "CustomRendered"

    .line 3103
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v77, v14

    const-string v14, "LensSpecification"

    .line 3104
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v78, v14

    const-string v14, "LensMake"

    .line 3105
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v79, v14

    const-string v14, "LensModel"

    .line 3106
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_0

    .line 3111
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v5, :cond_1

    .line 3113
    invoke-virtual {v1, v4, v5}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v7, :cond_2

    .line 3115
    invoke-virtual {v1, v6, v7}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v9, :cond_3

    .line 3117
    invoke-virtual {v1, v8, v9}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v11, :cond_4

    .line 3120
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v13, :cond_5

    .line 3122
    invoke-virtual {v1, v12, v13}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v17, :cond_6

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    .line 3124
    invoke-virtual {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v19, :cond_7

    move-object/from16 v3, v18

    move-object/from16 v2, v19

    .line 3126
    invoke-virtual {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v21, :cond_8

    move-object/from16 v3, v20

    move-object/from16 v2, v21

    .line 3130
    invoke-virtual {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v23, :cond_9

    move-object/from16 v3, v22

    move-object/from16 v2, v23

    .line 3132
    invoke-virtual {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v25, :cond_a

    move-object/from16 v3, v24

    move-object/from16 v2, v25

    .line 3134
    invoke-virtual {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz v27, :cond_b

    move-object/from16 v3, v26

    move-object/from16 v2, v27

    .line 3136
    invoke-virtual {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz v29, :cond_c

    move-object/from16 v3, v28

    move-object/from16 v2, v29

    .line 3138
    invoke-virtual {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz v31, :cond_d

    move-object/from16 v3, v30

    move-object/from16 v2, v31

    .line 3140
    invoke-virtual {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    if-eqz v33, :cond_e

    move-object/from16 v3, v32

    move-object/from16 v2, v33

    .line 3142
    invoke-virtual {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    if-eqz v35, :cond_f

    move-object/from16 v3, v34

    move-object/from16 v2, v35

    .line 3144
    invoke-virtual {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    if-eqz v37, :cond_10

    move-object/from16 v3, v36

    move-object/from16 v2, v37

    .line 3146
    invoke-virtual {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    if-eqz v39, :cond_11

    move-object/from16 v3, v38

    move-object/from16 v2, v39

    .line 3148
    invoke-virtual {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    if-eqz v41, :cond_12

    move-object/from16 v3, v40

    move-object/from16 v2, v41

    .line 3150
    invoke-virtual {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    if-eqz v43, :cond_13

    move-object/from16 v3, v42

    move-object/from16 v2, v43

    .line 3152
    invoke-virtual {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    if-eqz v45, :cond_14

    move-object/from16 v3, v44

    move-object/from16 v2, v45

    .line 3154
    invoke-virtual {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    if-eqz v15, :cond_15

    move-object/from16 v2, v46

    .line 3156
    invoke-virtual {v1, v2, v15}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    if-eqz v47, :cond_16

    const-string v2, "FlashEnergy"

    move-object/from16 v3, v47

    .line 3158
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    if-eqz v48, :cond_17

    const-string v2, "FocalLengthIn35mmFilm"

    move-object/from16 v3, v48

    .line 3160
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    if-eqz v49, :cond_18

    const-string v2, "FocalPlaneResolutionUnit"

    move-object/from16 v3, v49

    .line 3162
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    if-eqz v50, :cond_19

    const-string v2, "FocalPlaneXResolution"

    move-object/from16 v3, v50

    .line 3164
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    if-eqz v51, :cond_1a

    const-string v2, "FocalPlaneYResolution"

    move-object/from16 v3, v51

    .line 3166
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    if-eqz v52, :cond_1b

    const-string v2, "GainControl"

    move-object/from16 v3, v52

    .line 3168
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    if-eqz v53, :cond_1c

    const-string v2, "GPSAreaInformation"

    move-object/from16 v3, v53

    .line 3170
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    if-eqz v54, :cond_1d

    const-string v2, "GPSDifferential"

    move-object/from16 v3, v54

    .line 3172
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    if-eqz v55, :cond_1e

    const-string v2, "GPSDOP"

    move-object/from16 v3, v55

    .line 3174
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    if-eqz v56, :cond_1f

    const-string v2, "GPSMeasureMode"

    move-object/from16 v3, v56

    .line 3176
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    if-eqz v57, :cond_20

    const-string v2, "ImageDescription"

    move-object/from16 v3, v57

    .line 3178
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    if-eqz v58, :cond_21

    const-string v2, "LightSource"

    move-object/from16 v3, v58

    .line 3180
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    if-eqz v59, :cond_22

    const-string v2, "MakerNote"

    move-object/from16 v3, v59

    .line 3182
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    if-eqz v60, :cond_23

    const-string v2, "MaxApertureValue"

    move-object/from16 v3, v60

    .line 3184
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    if-eqz v61, :cond_24

    const-string v2, "MeteringMode"

    move-object/from16 v3, v61

    .line 3186
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    if-eqz v62, :cond_25

    const-string v2, "OECF"

    move-object/from16 v3, v62

    .line 3188
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    if-eqz v63, :cond_26

    const-string v2, "PhotometricInterpretation"

    move-object/from16 v3, v63

    .line 3190
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    if-eqz v64, :cond_27

    const-string v2, "Saturation"

    move-object/from16 v3, v64

    .line 3192
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    if-eqz v65, :cond_28

    const-string v2, "SceneCaptureType"

    move-object/from16 v3, v65

    .line 3194
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    if-eqz v66, :cond_29

    const-string v2, "SceneType"

    move-object/from16 v3, v66

    .line 3196
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    if-eqz v67, :cond_2a

    const-string v2, "SensingMethod"

    move-object/from16 v3, v67

    .line 3198
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    if-eqz v68, :cond_2b

    const-string v2, "Sharpness"

    move-object/from16 v3, v68

    .line 3200
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    if-eqz v69, :cond_2c

    const-string v2, "ShutterSpeedValue"

    move-object/from16 v3, v69

    .line 3202
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    if-eqz v70, :cond_2d

    const-string v2, "Software"

    move-object/from16 v3, v70

    .line 3204
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    if-eqz v71, :cond_2e

    const-string v2, "UserComment"

    move-object/from16 v3, v71

    .line 3206
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    if-eqz v72, :cond_2f

    const-string v2, "PhotographicSensitivity"

    move-object/from16 v3, v72

    .line 3210
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    if-eqz v73, :cond_30

    const-string v2, "SensitivityType"

    move-object/from16 v3, v73

    .line 3212
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    if-eqz v74, :cond_31

    const-string v2, "StandardOutputSensitivity"

    move-object/from16 v3, v74

    .line 3214
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    if-eqz v75, :cond_32

    const-string v2, "RecommendedExposureIndex"

    move-object/from16 v3, v75

    .line 3216
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    if-eqz v76, :cond_33

    const-string v2, "ISOSpeed"

    move-object/from16 v3, v76

    .line 3218
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    if-eqz v77, :cond_34

    const-string v2, "CustomRendered"

    move-object/from16 v3, v77

    .line 3220
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    if-eqz v78, :cond_35

    const-string v2, "LensSpecification"

    move-object/from16 v3, v78

    .line 3222
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    if-eqz v79, :cond_36

    const-string v2, "LensMake"

    move-object/from16 v3, v79

    .line 3224
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    if-eqz v0, :cond_37

    const-string v2, "LensModel"

    .line 3226
    invoke-virtual {v1, v2, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method private transferDeviceExifDateTime(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface;)V
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "DateTime"

    .line 3238
    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DateTimeOriginal"

    .line 3239
    invoke-virtual {v0, v4}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DateTimeDigitized"

    .line 3240
    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SubSecTime"

    .line 3241
    invoke-virtual {v0, v8}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "SubSecTimeOriginal"

    .line 3242
    invoke-virtual {v0, v10}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "SubSecTimeDigitized"

    .line 3243
    invoke-virtual {v0, v12}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "OffsetTime"

    .line 3244
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v14

    const-string v14, "OffsetTimeOriginal"

    move-object/from16 v17, v15

    .line 3245
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v14

    const-string v14, "OffsetTimeDigitized"

    .line 3246
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_0

    .line 3249
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v5, :cond_1

    .line 3251
    invoke-virtual {v1, v4, v5}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v7, :cond_2

    .line 3253
    invoke-virtual {v1, v6, v7}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v9, :cond_3

    .line 3255
    invoke-virtual {v1, v8, v9}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v11, :cond_4

    .line 3257
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v13, :cond_5

    .line 3259
    invoke-virtual {v1, v12, v13}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v17, :cond_6

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    .line 3261
    invoke-virtual {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v15, :cond_7

    move-object/from16 v2, v18

    .line 3263
    invoke-virtual {v1, v2, v15}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v0, :cond_8

    .line 3265
    invoke-virtual {v1, v14, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private transferDeviceExifGPS(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface;)V
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "GPSProcessingMethod"

    .line 3277
    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "GPSLatitude"

    .line 3278
    invoke-virtual {v0, v4}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "GPSLatitudeRef"

    .line 3279
    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "GPSLongitude"

    .line 3280
    invoke-virtual {v0, v8}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "GPSLongitudeRef"

    .line 3281
    invoke-virtual {v0, v10}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "GPSAltitude"

    .line 3282
    invoke-virtual {v0, v12}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "GPSAltitudeRef"

    .line 3283
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v14

    const-string v14, "GPSDateStamp"

    move-object/from16 v17, v15

    .line 3284
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v14

    const-string v14, "GPSTimeStamp"

    move-object/from16 v19, v15

    .line 3285
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v14

    const-string v14, "GPSSpeed"

    move-object/from16 v21, v15

    .line 3286
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v22, v14

    const-string v14, "GPSSpeedRef"

    .line 3287
    invoke-virtual {v0, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_0

    .line 3290
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v5, :cond_1

    .line 3292
    invoke-virtual {v1, v4, v5}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v7, :cond_2

    .line 3294
    invoke-virtual {v1, v6, v7}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v9, :cond_3

    .line 3296
    invoke-virtual {v1, v8, v9}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v11, :cond_4

    .line 3298
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v13, :cond_5

    .line 3300
    invoke-virtual {v1, v12, v13}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v17, :cond_6

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    .line 3302
    invoke-virtual {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v19, :cond_7

    move-object/from16 v3, v18

    move-object/from16 v2, v19

    .line 3304
    invoke-virtual {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v21, :cond_8

    move-object/from16 v3, v20

    move-object/from16 v2, v21

    .line 3306
    invoke-virtual {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v15, :cond_9

    move-object/from16 v2, v22

    .line 3308
    invoke-virtual {v1, v2, v15}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v0, :cond_a

    .line 3310
    invoke-virtual {v1, v14, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method private updateExif(Lnet/sourceforge/opencamera/ImageSaver$Request;Ljava/io/File;Landroid/net/Uri;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    .line 3893
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->store_geo_direction:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->store_ypr:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->custom_tag_artist:Ljava/lang/String;

    iget-object v4, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->custom_tag_copyright:Ljava/lang/String;

    invoke-direct {v15, v1, v4}, Lnet/sourceforge/opencamera/ImageSaver;->hasCustomExif(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->using_camera_extensions:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->type:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    sget-object v4, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->JPEG:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v4, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->using_camera2:Z

    iget-boolean v5, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->store_location:Z

    .line 3895
    invoke-direct {v15, v1, v4, v5}, Lnet/sourceforge/opencamera/ImageSaver;->needGPSExifFix(ZZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3896
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-object/from16 v1, p2

    move-object/from16 v4, p3

    .line 3900
    :try_start_0
    invoke-direct {v15, v1, v4}, Lnet/sourceforge/opencamera/ImageSaver;->createExifInterface(Ljava/io/File;Landroid/net/Uri;)Lnet/sourceforge/opencamera/ImageSaver$ExifInterfaceHolder;

    move-result-object v20
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 3904
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Lnet/sourceforge/opencamera/ImageSaver$ExifInterfaceHolder;->getExif()Landroidx/exifinterface/media/ExifInterface;

    move-result-object v21

    if-eqz v21, :cond_3

    .line 3906
    iget-object v4, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->remove_device_exif:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    iget-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->type:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    sget-object v5, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->JPEG:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    if-ne v1, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    iget-boolean v6, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->using_camera2:Z

    iget-boolean v7, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->using_camera_extensions:Z

    iget-object v8, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->current_date:Ljava/util/Date;

    iget-boolean v9, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->store_location:Z

    iget-object v10, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->location:Landroid/location/Location;

    iget-boolean v11, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->store_geo_direction:Z

    iget-wide v12, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->geo_direction:D

    iget-object v14, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->custom_tag_artist:Ljava/lang/String;

    iget-object v3, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->custom_tag_copyright:Ljava/lang/String;

    iget-wide v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->level_angle:D

    move-object/from16 v16, v14

    iget-wide v14, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->pitch_angle:D

    iget-boolean v0, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->store_ypr:Z

    move-wide/from16 v17, v1

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v19, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move v10, v11

    move-wide v11, v12

    move-object/from16 v13, v16

    move-wide/from16 v22, v14

    move-object/from16 v14, v19

    move-wide/from16 v15, v17

    move-wide/from16 v17, v22

    move/from16 v19, v0

    invoke-direct/range {v1 .. v19}, Lnet/sourceforge/opencamera/ImageSaver;->modifyExif(Landroidx/exifinterface/media/ExifInterface;Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;ZZZLjava/util/Date;ZLandroid/location/Location;ZDLjava/lang/String;Ljava/lang/String;DDZ)V

    .line 3910
    invoke-virtual/range {v21 .. v21}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3916
    :cond_3
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Lnet/sourceforge/opencamera/ImageSaver$ExifInterfaceHolder;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual/range {v20 .. v20}, Lnet/sourceforge/opencamera/ImageSaver$ExifInterfaceHolder;->close()V

    .line 3917
    throw v0
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 3923
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method private writeGyroDebugXml(Ljava/io/Writer;Lnet/sourceforge/opencamera/ImageSaver$Request;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 1245
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    move-object/from16 v2, p1

    .line 1247
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const/4 v2, 0x1

    .line 1248
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v3, 0x0

    const-string v4, "open_camera_gyro_info"

    .line 1249
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1250
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPanoramaPicsPerScreen()F

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "panorama_pics_per_screen"

    invoke-interface {v1, v3, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1251
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->camera_view_angle_x:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "camera_view_angle_x"

    invoke-interface {v1, v3, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1252
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->camera_view_angle_y:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "camera_view_angle_y"

    invoke-interface {v1, v3, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x3

    new-array v7, v5, [F

    new-array v5, v5, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1256
    :goto_0
    iget-object v10, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->gyro_rotation_matrix:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_0

    const-string v10, "image"

    .line 1257
    invoke-interface {v1, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1258
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "index"

    invoke-interface {v1, v3, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 1260
    invoke-static {v7, v11, v12, v12}, Lnet/sourceforge/opencamera/GyroSensor;->setVector([FFFF)V

    .line 1261
    iget-object v13, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->gyro_rotation_matrix:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [F

    invoke-static {v5, v13, v7}, Lnet/sourceforge/opencamera/GyroSensor;->transformVector([F[F[F)V

    const-string v13, "vector"

    .line 1262
    invoke-interface {v1, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v14, "X"

    const-string v15, "type"

    .line 1263
    invoke-interface {v1, v3, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1264
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v11, v5, v8

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v14, "x"

    invoke-interface {v1, v3, v14, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1265
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v8, v5, v2

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "y"

    invoke-interface {v1, v3, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1266
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x2

    aget v2, v5, v17

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "z"

    invoke-interface {v1, v3, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1267
    invoke-interface {v1, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1269
    invoke-static {v7, v12, v2, v12}, Lnet/sourceforge/opencamera/GyroSensor;->setVector([FFFF)V

    .line 1270
    iget-object v2, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->gyro_rotation_matrix:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    invoke-static {v5, v2, v7}, Lnet/sourceforge/opencamera/GyroSensor;->transformVector([F[F[F)V

    .line 1271
    invoke-interface {v1, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "Y"

    .line 1272
    invoke-interface {v1, v3, v15, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    aget v12, v5, v16

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x1

    aget v3, v5, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v12, v5, v17

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1276
    invoke-interface {v1, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v12, 0x0

    .line 1278
    invoke-static {v7, v12, v12, v2}, Lnet/sourceforge/opencamera/GyroSensor;->setVector([FFFF)V

    .line 1279
    iget-object v2, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->gyro_rotation_matrix:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    invoke-static {v5, v2, v7}, Lnet/sourceforge/opencamera/GyroSensor;->transformVector([F[F[F)V

    .line 1280
    invoke-interface {v1, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "Z"

    .line 1281
    invoke-interface {v1, v3, v15, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    aget v15, v5, v12

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x1

    aget v15, v5, v14

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v11, v5, v17

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1285
    invoke-interface {v1, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1287
    invoke-interface {v1, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x1

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1290
    :cond_0
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1291
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1292
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    return-void
.end method


# virtual methods
.method addImageBatch([B[F)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->pending_image_average_request:Lnet/sourceforge/opencamera/ImageSaver$Request;

    if-nez v0, :cond_0

    const-string p1, "ImageSaver"

    const-string p2, "addImageBatch called but no pending_image_average_request"

    .line 801
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 804
    :cond_0
    iget-object v0, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 806
    array-length p1, p2

    new-array p1, p1, [F

    .line 807
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lnet/sourceforge/opencamera/ImageSaver;->pending_image_average_request:Lnet/sourceforge/opencamera/ImageSaver$Request;

    .line 808
    iget-object p2, p2, Lnet/sourceforge/opencamera/ImageSaver$Request;->gyro_rotation_matrix:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method computePhotoCost(II)I
    .locals 2

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    .line 402
    invoke-static {v1, p1}, Lnet/sourceforge/opencamera/ImageSaver;->computeRequestCost(ZI)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-lez p2, :cond_1

    .line 404
    invoke-static {v0, p2}, Lnet/sourceforge/opencamera/ImageSaver;->computeRequestCost(ZI)I

    move-result p2

    add-int/2addr p1, p2

    :cond_1
    return p1
.end method

.method finishImageBatch(Z)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->pending_image_average_request:Lnet/sourceforge/opencamera/ImageSaver$Request;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 829
    iget-object p1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/ImageSaver;->computeRequestCost(ZI)I

    move-result p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->pending_image_average_request:Lnet/sourceforge/opencamera/ImageSaver$Request;

    .line 830
    invoke-direct {p0, v0, p1}, Lnet/sourceforge/opencamera/ImageSaver;->addRequest(Lnet/sourceforge/opencamera/ImageSaver$Request;I)V

    goto :goto_0

    .line 834
    :cond_1
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ImageSaver;->waitUntilDone()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/ImageSaver;->pending_image_average_request:Lnet/sourceforge/opencamera/ImageSaver$Request;

    .line 835
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/ImageSaver;->saveImageNow(Lnet/sourceforge/opencamera/ImageSaver$Request;)Z

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ImageSaver;->pending_image_average_request:Lnet/sourceforge/opencamera/ImageSaver$Request;

    return-void
.end method

.method flushImageBatch()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->pending_image_average_request:Lnet/sourceforge/opencamera/ImageSaver$Request;

    return-void
.end method

.method getHDRProcessor()Lnet/sourceforge/opencamera/HDRProcessor;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->hdrProcessor:Lnet/sourceforge/opencamera/HDRProcessor;

    return-object v0
.end method

.method getImageBatchRequest()Lnet/sourceforge/opencamera/ImageSaver$Request;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->pending_image_average_request:Lnet/sourceforge/opencamera/ImageSaver$Request;

    return-object v0
.end method

.method getMaxDNG()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->queue_capacity:I

    add-int/lit8 v0, v0, 0x1

    .line 452
    div-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public declared-synchronized getNImagesToSave()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->n_images_to_save:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNRealImagesToSave()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->n_real_images_to_save:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPanoramaProcessor()Lnet/sourceforge/opencamera/PanoramaProcessor;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->panoramaProcessor:Lnet/sourceforge/opencamera/PanoramaProcessor;

    return-object v0
.end method

.method public getQueueSize()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->queue_capacity:I

    return v0
.end method

.method onDestroy()V
    .locals 51

    move-object/from16 v0, p0

    .line 495
    new-instance v15, Lnet/sourceforge/opencamera/ImageSaver$Request;

    move-object v1, v15

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->ON_DESTROY:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    sget-object v3, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->NORMAL:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->SAVEBASE_NONE:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->STD:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v50, v15

    move/from16 v15, v16

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    sget-object v22, Lnet/sourceforge/opencamera/HDRProcessor;->default_tonemapping_algorithm_c:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    sget-object v38, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->OFF:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-wide/16 v42, 0x0

    const-wide/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x1

    invoke-direct/range {v1 .. v49}, Lnet/sourceforge/opencamera/ImageSaver$Request;-><init>(Lnet/sourceforge/opencamera/ImageSaver$Request$Type;Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;ZILnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;Ljava/util/List;Lnet/sourceforge/opencamera/cameracontroller/RawImage;ZLandroid/net/Uri;ZZLnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;IZDLjava/util/List;ZZLjava/util/Date;Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;Ljava/lang/String;IJFLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;ZLandroid/location/Location;ZDDZLjava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x1

    move-object/from16 v2, v50

    .line 523
    invoke-direct {v0, v2, v1}, Lnet/sourceforge/opencamera/ImageSaver;->addRequest(Lnet/sourceforge/opencamera/ImageSaver$Request;I)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver;->panoramaProcessor:Lnet/sourceforge/opencamera/PanoramaProcessor;

    if-eqz v1, :cond_0

    .line 526
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/PanoramaProcessor;->onDestroy()V

    :cond_0
    iget-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver;->hdrProcessor:Lnet/sourceforge/opencamera/HDRProcessor;

    if-eqz v1, :cond_1

    .line 529
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/HDRProcessor;->onDestroy()V

    :cond_1
    return-void
.end method

.method onPause()V
    .locals 1

    .line 477
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->app_is_paused:Z

    .line 479
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onResume()V
    .locals 1

    .line 485
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->app_is_paused:Z

    .line 487
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized queueWouldBlock(I)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->n_images_to_save:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 437
    monitor-exit p0

    return v1

    :cond_0
    add-int/2addr v0, p1

    :try_start_1
    iget p1, p0, Lnet/sourceforge/opencamera/ImageSaver;->queue_capacity:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    add-int/2addr p1, v2

    if-le v0, p1, :cond_1

    .line 442
    monitor-exit p0

    return v2

    .line 446
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method queueWouldBlock(II)Z
    .locals 0

    .line 415
    invoke-virtual {p0, p1, p2}, Lnet/sourceforge/opencamera/ImageSaver;->computePhotoCost(II)I

    move-result p1

    .line 416
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/ImageSaver;->queueWouldBlock(I)Z

    move-result p1

    return p1
.end method

.method public run()V
    .locals 5

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 541
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/opencamera/ImageSaver$Request;

    .line 548
    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$4;->$SwitchMap$net$sourceforge$opencamera$ImageSaver$Request$Type:[I

    iget-object v2, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->type:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    goto :goto_2

    .line 557
    :cond_2
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/ImageSaver;->saveImageNow(Lnet/sourceforge/opencamera/ImageSaver$Request;)Z

    goto :goto_1

    .line 552
    :cond_3
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/ImageSaver;->saveImageNowRaw(Lnet/sourceforge/opencamera/ImageSaver$Request;)Z

    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget-boolean v3, p0, Lnet/sourceforge/opencamera/ImageSaver;->test_slow_saving:Z

    if-eqz v3, :cond_4

    const-wide/16 v3, 0x7d0

    .line 579
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 587
    :cond_4
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v3, p0, Lnet/sourceforge/opencamera/ImageSaver;->n_images_to_save:I

    sub-int/2addr v3, v2

    iput v3, p0, Lnet/sourceforge/opencamera/ImageSaver;->n_images_to_save:I

    .line 589
    iget-object v3, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->type:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    sget-object v4, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->DUMMY:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    if-eq v3, v4, :cond_5

    iget-object v0, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->type:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    sget-object v3, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->ON_DESTROY:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    if-eq v0, v3, :cond_5

    iget v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->n_real_images_to_save:I

    sub-int/2addr v0, v2

    iput v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->n_real_images_to_save:I

    .line 601
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 603
    new-instance v2, Lnet/sourceforge/opencamera/ImageSaver$1;

    invoke-direct {v2, p0}, Lnet/sourceforge/opencamera/ImageSaver$1;-><init>(Lnet/sourceforge/opencamera/ImageSaver;)V

    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 608
    monitor-exit p0

    if-eqz v1, :cond_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 614
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method saveImageJpeg(ZLnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;ZIZLjava/util/List;ZLandroid/net/Uri;ZZLnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;IZDZZLjava/util/Date;Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;Ljava/lang/String;IJFLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;ZLandroid/location/Location;ZDDZLjava/lang/String;Ljava/lang/String;I)Z
    .locals 49
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;",
            "ZIZ",
            "Ljava/util/List<",
            "[B>;Z",
            "Landroid/net/Uri;",
            "ZZ",
            "Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;",
            "IZDZZ",
            "Ljava/util/Date;",
            "Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;",
            "Ljava/lang/String;",
            "IJF",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;",
            "Z",
            "Landroid/location/Location;",
            "ZDDZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move-wide/from16 v16, p14

    move/from16 v18, p16

    move/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move/from16 v23, p21

    move-wide/from16 v24, p22

    move/from16 v26, p24

    move-object/from16 v27, p25

    move-object/from16 v28, p26

    move/from16 v29, p27

    move/from16 v30, p28

    move-object/from16 v31, p29

    move-object/from16 v32, p30

    move-object/from16 v33, p31

    move-object/from16 v34, p32

    move-object/from16 v35, p33

    move/from16 v36, p34

    move-object/from16 v37, p35

    move/from16 v38, p36

    move-object/from16 v39, p37

    move/from16 v40, p38

    move-wide/from16 v41, p39

    move-wide/from16 v43, p41

    move/from16 v45, p43

    move-object/from16 v46, p44

    move-object/from16 v47, p45

    move/from16 v48, p46

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 662
    invoke-direct/range {v0 .. v48}, Lnet/sourceforge/opencamera/ImageSaver;->saveImage(ZZLnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;ZIZLjava/util/List;Lnet/sourceforge/opencamera/cameracontroller/RawImage;ZLandroid/net/Uri;ZZLnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;IZDZZLjava/util/Date;Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;Ljava/lang/String;IJFLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;ZLandroid/location/Location;ZDDZLjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method saveImageRaw(ZZILnet/sourceforge/opencamera/cameracontroller/RawImage;Ljava/util/Date;)Z
    .locals 49

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v8, p4

    move-object/from16 v20, p5

    const/4 v2, 0x1

    .line 707
    sget-object v3, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->NORMAL:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->STD:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget-object v21, Lnet/sourceforge/opencamera/HDRProcessor;->default_tonemapping_algorithm_c:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    sget-object v37, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->OFF:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x1

    invoke-direct/range {v0 .. v48}, Lnet/sourceforge/opencamera/ImageSaver;->saveImage(ZZLnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;ZIZLjava/util/List;Lnet/sourceforge/opencamera/cameracontroller/RawImage;ZLandroid/net/Uri;ZZLnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;IZDZZLjava/util/Date;Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;Ljava/lang/String;IJFLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;ZLandroid/location/Location;ZDDZLjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method startImageBatch(ZLnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;ZLandroid/net/Uri;ZZLnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;IZDZZZLjava/util/Date;IJFLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;ZLandroid/location/Location;ZDDZLjava/lang/String;Ljava/lang/String;I)V
    .locals 50

    .line 768
    new-instance v15, Lnet/sourceforge/opencamera/ImageSaver$Request;

    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->JPEG:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    if-eqz p13, :cond_0

    .line 778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v17, v0

    sget-object v21, Lnet/sourceforge/opencamera/HDRProcessor;->default_tonemapping_algorithm_c:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    const/16 v22, 0x0

    move-object v0, v15

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v49, v15

    move-wide/from16 v15, p11

    move/from16 v18, p14

    move/from16 v19, p15

    move-object/from16 v20, p16

    move/from16 v23, p17

    move-wide/from16 v24, p18

    move/from16 v26, p20

    move-object/from16 v27, p21

    move-object/from16 v28, p22

    move/from16 v29, p23

    move/from16 v30, p24

    move-object/from16 v31, p25

    move-object/from16 v32, p26

    move-object/from16 v33, p27

    move-object/from16 v34, p28

    move-object/from16 v35, p29

    move/from16 v36, p30

    move-object/from16 v37, p31

    move/from16 v38, p32

    move-object/from16 v39, p33

    move/from16 v40, p34

    move-wide/from16 v41, p35

    move-wide/from16 v43, p37

    move/from16 v45, p39

    move-object/from16 v46, p40

    move-object/from16 v47, p41

    move/from16 v48, p42

    invoke-direct/range {v0 .. v48}, Lnet/sourceforge/opencamera/ImageSaver$Request;-><init>(Lnet/sourceforge/opencamera/ImageSaver$Request$Type;Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;ZILnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;Ljava/util/List;Lnet/sourceforge/opencamera/cameracontroller/RawImage;ZLandroid/net/Uri;ZZLnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;IZDLjava/util/List;ZZLjava/util/Date;Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;Ljava/lang/String;IJFLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;ZLandroid/location/Location;ZDDZLjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver;->pending_image_average_request:Lnet/sourceforge/opencamera/ImageSaver$Request;

    return-void
.end method

.method waitUntilDone()V
    .locals 1

    .line 1037
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v0, p0, Lnet/sourceforge/opencamera/ImageSaver;->n_images_to_save:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    .line 1046
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1049
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1058
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
