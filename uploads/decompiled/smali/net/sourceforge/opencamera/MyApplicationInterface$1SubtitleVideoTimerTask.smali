.class Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;
.super Ljava/util/TimerTask;
.source "MyApplicationInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MyApplicationInterface;->startVideoSubtitlesTask(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubtitleVideoTimerTask"
.end annotation


# instance fields
.field private count:I

.field private min_video_time_from:J

.field private pfd_saf:Landroid/os/ParcelFileDescriptor;

.field final synthetic this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

.field private uri:Landroid/net/Uri;

.field final synthetic val$preference_stamp_dateformat:Ljava/lang/String;

.field final synthetic val$preference_stamp_gpsformat:Ljava/lang/String;

.field final synthetic val$preference_stamp_timeformat:Ljava/lang/String;

.field final synthetic val$preference_units_distance:Ljava/lang/String;

.field final synthetic val$store_geo_direction:Z

.field final synthetic val$store_location:Z

.field final synthetic val$video_method:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

.field private writer:Ljava/io/OutputStreamWriter;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MyApplicationInterface;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iput-object p2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->val$preference_stamp_dateformat:Ljava/lang/String;

    iput-object p3, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->val$preference_stamp_timeformat:Ljava/lang/String;

    iput-boolean p4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->val$store_location:Z

    iput-boolean p5, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->val$store_geo_direction:Z

    iput-object p6, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->val$preference_stamp_gpsformat:Ljava/lang/String;

    iput-object p7, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->val$preference_units_distance:Ljava/lang/String;

    iput-object p8, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->val$video_method:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    .line 2056
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->count:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->min_video_time_from:J

    return-void
.end method

.method private getSubtitleFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    .line 2067
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 2069
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2071
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".srt"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public cancel()Z
    .locals 4

    .line 2291
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->writer:Ljava/io/OutputStreamWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2296
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2299
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iput-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->writer:Ljava/io/OutputStreamWriter;

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->pfd_saf:Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 2305
    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 2308
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    iput-object v1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->pfd_saf:Landroid/os/ParcelFileDescriptor;

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->val$video_method:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    .line 2312
    sget-object v2, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->MEDIASTORE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    if-ne v0, v2, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_2

    .line 2314
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "is_pending"

    const/4 v3, 0x0

    .line 2315
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2316
    invoke-static {v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->access$300(Lnet/sourceforge/opencamera/MyApplicationInterface;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2319
    :cond_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2320
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    .line 2319
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 15

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2080
    invoke-static {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->access$300(Lnet/sourceforge/opencamera/MyApplicationInterface;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoTime(Z)J

    move-result-wide v2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2081
    invoke-static {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->access$300(Lnet/sourceforge/opencamera/MyApplicationInterface;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2086
    invoke-static {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->access$300(Lnet/sourceforge/opencamera/MyApplicationInterface;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2091
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2092
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0xe

    .line 2093
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->val$preference_stamp_dateformat:Ljava/lang/String;

    .line 2102
    invoke-static {v5, v0}, Lnet/sourceforge/opencamera/TextFormatter;->getDateString(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->val$preference_stamp_timeformat:Ljava/lang/String;

    .line 2103
    invoke-static {v6, v0}, Lnet/sourceforge/opencamera/TextFormatter;->getTimeString(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->val$store_location:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2104
    invoke-virtual {v6}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getLocation()Landroid/location/Location;

    move-result-object v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    move-object v11, v6

    iget-boolean v6, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->val$store_geo_direction:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2105
    invoke-static {v6}, Lnet/sourceforge/opencamera/MyApplicationInterface;->access$300(Lnet/sourceforge/opencamera/MyApplicationInterface;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/preview/Preview;->hasGeoDirection()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    invoke-static {v6}, Lnet/sourceforge/opencamera/MyApplicationInterface;->access$300(Lnet/sourceforge/opencamera/MyApplicationInterface;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/preview/Preview;->getGeoDirection()D

    move-result-wide v6

    goto :goto_1

    :cond_3
    const-wide/16 v6, 0x0

    :goto_1
    move-wide v13, v6

    iget-object v6, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2106
    invoke-static {v6}, Lnet/sourceforge/opencamera/MyApplicationInterface;->access$300(Lnet/sourceforge/opencamera/MyApplicationInterface;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/MainActivity;->getTextFormatter()Lnet/sourceforge/opencamera/TextFormatter;

    move-result-object v7

    iget-object v8, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->val$preference_stamp_gpsformat:Ljava/lang/String;

    iget-object v9, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->val$preference_units_distance:Ljava/lang/String;

    iget-boolean v6, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->val$store_location:Z

    const/4 v10, 0x0

    if-eqz v6, :cond_4

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    iget-boolean v12, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->val$store_geo_direction:Z

    if-eqz v12, :cond_5

    iget-object v12, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    invoke-static {v12}, Lnet/sourceforge/opencamera/MyApplicationInterface;->access$300(Lnet/sourceforge/opencamera/MyApplicationInterface;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v12

    invoke-virtual {v12}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v12

    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->hasGeoDirection()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_3
    move v10, v6

    invoke-virtual/range {v7 .. v14}, Lnet/sourceforge/opencamera/TextFormatter;->getGPSString(Ljava/lang/String;Ljava/lang/String;ZLandroid/location/Location;ZD)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    .line 2114
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 2115
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2116
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 2117
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 2118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2119
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2123
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2124
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 2125
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2127
    :cond_9
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 2174
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2187
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_b

    return-void

    :cond_b
    int-to-long v4, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e7

    add-long/2addr v4, v2

    iget-wide v6, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->min_video_time_from:J

    cmp-long v8, v2, v6

    if-gez v8, :cond_c

    goto :goto_4

    :cond_c
    move-wide v6, v2

    :goto_4
    const-wide/16 v8, 0x3e8

    add-long/2addr v2, v8

    iput-wide v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->min_video_time_from:J

    .line 2198
    invoke-static {v6, v7}, Lnet/sourceforge/opencamera/TextFormatter;->formatTimeMS(J)Ljava/lang/String;

    move-result-object v2

    .line 2199
    invoke-static {v4, v5}, Lnet/sourceforge/opencamera/TextFormatter;->formatTimeMS(J)Ljava/lang/String;

    move-result-object v3

    .line 2201
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->writer:Ljava/io/OutputStreamWriter;

    if-nez v4, :cond_13

    iget-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->val$video_method:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    .line 2203
    sget-object v5, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->FILE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    if-ne v4, v5, :cond_d

    iget-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2204
    invoke-static {v4}, Lnet/sourceforge/opencamera/MyApplicationInterface;->access$400(Lnet/sourceforge/opencamera/MyApplicationInterface;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 2205
    invoke-direct {p0, v4}, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->getSubtitleFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2206
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->writer:Ljava/io/OutputStreamWriter;

    goto/16 :goto_7

    :cond_d
    iget-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->val$video_method:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    .line 2208
    sget-object v5, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->SAF:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    if-eq v4, v5, :cond_e

    iget-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->val$video_method:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    sget-object v5, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->MEDIASTORE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    if-ne v4, v5, :cond_13

    :cond_e
    iget-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2211
    invoke-static {v4}, Lnet/sourceforge/opencamera/MyApplicationInterface;->access$600(Lnet/sourceforge/opencamera/MyApplicationInterface;)Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v4

    iget-object v5, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    invoke-static {v5}, Lnet/sourceforge/opencamera/MyApplicationInterface;->access$500(Lnet/sourceforge/opencamera/MyApplicationInterface;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/sourceforge/opencamera/StorageUtils;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 2212
    invoke-direct {p0, v4}, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->getSubtitleFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->val$video_method:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    .line 2213
    sget-object v6, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->SAF:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    if-ne v5, v6, :cond_f

    iget-object v5, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2214
    invoke-static {v5}, Lnet/sourceforge/opencamera/MyApplicationInterface;->access$600(Lnet/sourceforge/opencamera/MyApplicationInterface;)Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v4, v6}, Lnet/sourceforge/opencamera/StorageUtils;->createOutputFileSAF(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->uri:Landroid/net/Uri;

    goto :goto_6

    :cond_f
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_10

    const-string v5, "external_primary"

    .line 2218
    invoke-static {v5}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_5

    .line 2219
    :cond_10
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2220
    :goto_5
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "_display_name"

    .line 2221
    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "mime_type"

    const-string v8, "video/x-srt"

    .line 2226
    invoke-virtual {v7, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_11

    iget-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2228
    invoke-static {v4}, Lnet/sourceforge/opencamera/MyApplicationInterface;->access$600(Lnet/sourceforge/opencamera/MyApplicationInterface;)Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveRelativeFolder()Ljava/lang/String;

    move-result-object v4

    const-string v6, "relative_path"

    .line 2231
    invoke-virtual {v7, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_pending"

    .line 2232
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_11
    :try_start_2
    iget-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2239
    invoke-static {v4}, Lnet/sourceforge/opencamera/MyApplicationInterface;->access$300(Lnet/sourceforge/opencamera/MyApplicationInterface;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->uri:Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_12

    :goto_6
    :try_start_3
    iget-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2260
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->uri:Landroid/net/Uri;

    const-string v6, "w"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->pfd_saf:Landroid/os/ParcelFileDescriptor;

    .line 2261
    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->pfd_saf:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->writer:Ljava/io/OutputStreamWriter;

    goto :goto_7

    .line 2255
    :cond_12
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    .line 2251
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2252
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :catch_1
    move-exception v0

    .line 2245
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 2246
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_13
    :goto_7
    iget-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->writer:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_14

    iget v5, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->count:I

    .line 2265
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->writer:Ljava/io/OutputStreamWriter;

    const/16 v5, 0xa

    .line 2266
    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->append(C)Ljava/io/Writer;

    iget-object v4, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->writer:Ljava/io/OutputStreamWriter;

    .line 2267
    invoke-virtual {v4, v2}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->writer:Ljava/io/OutputStreamWriter;

    const-string v4, " --> "

    .line 2268
    invoke-virtual {v2, v4}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->writer:Ljava/io/OutputStreamWriter;

    .line 2269
    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->writer:Ljava/io/OutputStreamWriter;

    .line 2270
    invoke-virtual {v2, v5}, Ljava/io/OutputStreamWriter;->append(C)Ljava/io/Writer;

    iget-object v2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->writer:Ljava/io/OutputStreamWriter;

    .line 2271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->writer:Ljava/io/OutputStreamWriter;

    .line 2272
    invoke-virtual {v0, v5}, Ljava/io/OutputStreamWriter;->append(C)Ljava/io/Writer;

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->writer:Ljava/io/OutputStreamWriter;

    .line 2273
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 2276
    :cond_14
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->count:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1SubtitleVideoTimerTask;->count:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v0

    .line 2282
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_8
    return-void
.end method
