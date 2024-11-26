.class public Lnet/sourceforge/opencamera/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/StorageUtils$UriType;,
        Lnet/sourceforge/opencamera/StorageUtils$Media;
    }
.end annotation


# static fields
.field static final MEDIA_TYPE_GYRO_INFO:I = 0x4

.field static final MEDIA_TYPE_IMAGE:I = 0x1

.field static final MEDIA_TYPE_PREFS:I = 0x3

.field static final MEDIA_TYPE_VIDEO:I = 0x2

.field private static final RELATIVE_FOLDER_BASE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "StorageUtils"


# instance fields
.field private final applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

.field private final context:Landroid/content/Context;

.field public volatile failed_to_scan:Z

.field private last_media_scanned:Landroid/net/Uri;

.field private last_media_scanned_check_uri:Landroid/net/Uri;

.field private last_media_scanned_hasnoexifdatetime:Z

.field private last_media_scanned_is_raw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    sput-object v0, Lnet/sourceforge/opencamera/StorageUtils;->RELATIVE_FOLDER_BASE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lnet/sourceforge/opencamera/MyApplicationInterface;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/StorageUtils;->context:Landroid/content/Context;

    iput-object p2, p0, Lnet/sourceforge/opencamera/StorageUtils;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/StorageUtils;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lnet/sourceforge/opencamera/StorageUtils;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lnet/sourceforge/opencamera/StorageUtils;)Lnet/sourceforge/opencamera/MyApplicationInterface;
    .locals 0

    .line 47
    iget-object p0, p0, Lnet/sourceforge/opencamera/StorageUtils;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    return-object p0
.end method

.method static filenameIsRaw(Ljava/lang/String;)Z
    .locals 1

    .line 960
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".dng"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static filenameIsSpecial(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "_HDR"

    .line 975
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 976
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "_NR"

    .line 978
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 979
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "_PANO"

    .line 981
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 982
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static filenameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 964
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    .line 965
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 966
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private freeMemorySAF()J
    .locals 6

    iget-object v0, p0, Lnet/sourceforge/opencamera/StorageUtils;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1592
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/StorageUtils;->getTreeUriSAF()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    .line 1597
    :try_start_0
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/StorageUtils;->context:Landroid/content/Context;

    .line 1600
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1607
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;

    move-result-object v0

    .line 1608
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/system/StructStatVfs;)J

    move-result-wide v2

    .line 1609
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/system/StructStatVfs;)J

    move-result-wide v4

    mul-long v2, v2, v4

    const-wide/32 v4, 0x100000

    .line 1610
    div-long/2addr v2, v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1629
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1632
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    :try_start_2
    const-string v0, "StorageUtils"

    const-string v2, "pfd is null!"

    .line 1602
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1624
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 1629
    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    :catch_2
    move-exception v0

    .line 1617
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_2

    .line 1629
    :try_start_6
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_3
    move-exception v0

    .line 1614
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_2

    .line 1629
    :try_start_8
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1

    :catch_4
    move-exception v0

    .line 1632
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    const-wide/16 v0, -0x1

    return-wide v0

    :goto_2
    if-eqz v1, :cond_3

    .line 1629
    :try_start_9
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_3

    :catch_5
    move-exception v1

    .line 1632
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1634
    :cond_3
    :goto_3
    throw v0
.end method

.method public static getBaseFolder()Ljava/io/File;
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/StorageUtils;->RELATIVE_FOLDER_BASE:Ljava/lang/String;

    .line 451
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getDataColumn(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v7, "_data"

    aput-object v7, v3, v0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/StorageUtils;->context:Landroid/content/Context;

    .line 626
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 628
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 629
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 630
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 642
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p2

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception p2

    move-object p1, v0

    .line 638
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/SecurityException;->printStackTrace()V

    if-eqz p1, :cond_2

    goto :goto_2

    :catch_3
    move-exception p2

    move-object p1, v0

    .line 634
    :goto_1
    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    .line 642
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_1
    move-exception p2

    move-object v0, p1

    :goto_3
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 643
    :cond_3
    throw p2
.end method

.method private static getImageFolder(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 465
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 467
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 469
    :cond_0
    invoke-static {p0}, Lnet/sourceforge/opencamera/StorageUtils;->saveFolderIsFull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 473
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lnet/sourceforge/opencamera/StorageUtils;->getBaseFolder()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private getLatestMedia(Lnet/sourceforge/opencamera/StorageUtils$UriType;)Lnet/sourceforge/opencamera/StorageUtils$Media;
    .locals 4

    .line 1502
    invoke-static {}, Lnet/sourceforge/opencamera/MainActivity;->useScopedStorage()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/StorageUtils;->context:Landroid/content/Context;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 1514
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/StorageUtils;->getImageFolderPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1519
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1525
    :goto_0
    sget-object v2, Lnet/sourceforge/opencamera/StorageUtils$2;->$SwitchMap$net$sourceforge$opencamera$StorageUtils$UriType:[I

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/StorageUtils$UriType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1530
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 1533
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown uri_type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1527
    :cond_3
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1538
    :goto_1
    invoke-direct {p0, v2, v0, p1}, Lnet/sourceforge/opencamera/StorageUtils;->getLatestMediaCore(Landroid/net/Uri;Ljava/lang/String;Lnet/sourceforge/opencamera/StorageUtils$UriType;)Lnet/sourceforge/opencamera/StorageUtils$Media;

    move-result-object v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    .line 1542
    invoke-direct {p0, v2, v1, p1}, Lnet/sourceforge/opencamera/StorageUtils;->getLatestMediaCore(Landroid/net/Uri;Ljava/lang/String;Lnet/sourceforge/opencamera/StorageUtils$UriType;)Lnet/sourceforge/opencamera/StorageUtils$Media;

    move-result-object v3

    :cond_4
    return-object v3
.end method

.method private getLatestMediaCore(Landroid/net/Uri;Ljava/lang/String;Lnet/sourceforge/opencamera/StorageUtils$UriType;)Lnet/sourceforge/opencamera/StorageUtils$Media;
    .locals 26

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v7, "datetaken DESC,_id DESC"

    .line 1009
    sget-object v2, Lnet/sourceforge/opencamera/StorageUtils$2;->$SwitchMap$net$sourceforge$opencamera$StorageUtils$UriType:[I

    invoke-virtual/range {p3 .. p3}, Lnet/sourceforge/opencamera/StorageUtils$UriType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "_display_name"

    const-string v4, "datetaken"

    const-string v5, "_id"

    const/4 v8, 0x4

    const-string v9, "unknown uri_type: "

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x2

    if-eq v2, v12, :cond_1

    if-ne v2, v13, :cond_0

    new-array v2, v10, [Ljava/lang/String;

    aput-object v5, v2, v11

    aput-object v4, v2, v12

    aput-object v3, v2, v13

    goto :goto_0

    .line 1017
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v2, v8, [Ljava/lang/String;

    aput-object v5, v2, v11

    aput-object v4, v2, v12

    aput-object v3, v2, v13

    const-string v3, "orientation"

    aput-object v3, v2, v10

    :goto_0
    move-object v4, v2

    .line 1026
    sget-object v2, Lnet/sourceforge/opencamera/StorageUtils$2;->$SwitchMap$net$sourceforge$opencamera$StorageUtils$UriType:[I

    invoke-virtual/range {p3 .. p3}, Lnet/sourceforge/opencamera/StorageUtils$UriType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "bucket_id = "

    const-string v5, ""

    if-eq v2, v12, :cond_3

    if-ne v2, v13, :cond_2

    if-eqz v0, :cond_8

    .line 1044
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v5, v0

    goto :goto_3

    .line 1047
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz v0, :cond_4

    .line 1030
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1031
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    .line 1033
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1034
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mime_type=\'image/jpeg\' OR mime_type=\'image/webp\' OR mime_type=\'image/png\' OR mime_type=\'image/x-adobe-dng\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_7

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v5, v2

    .line 1052
    :cond_8
    :goto_3
    sget-object v0, Lnet/sourceforge/opencamera/StorageUtils$2;->$SwitchMap$net$sourceforge$opencamera$StorageUtils$UriType:[I

    invoke-virtual/range {p3 .. p3}, Lnet/sourceforge/opencamera/StorageUtils$UriType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v12, :cond_a

    if-ne v0, v13, :cond_9

    goto :goto_4

    .line 1061
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1068
    :cond_a
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v3, "3"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v14, 0x0

    move-object/from16 v15, p0

    :try_start_0
    iget-object v0, v15, Lnet/sourceforge/opencamera/StorageUtils;->context:Landroid/content/Context;

    .line 1073
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1a

    .line 1074
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1121
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1126
    invoke-static {v0}, Lnet/sourceforge/opencamera/StorageUtils;->filenameIsRaw(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1129
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 1131
    invoke-static {v0}, Lnet/sourceforge/opencamera/StorageUtils;->filenameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1134
    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1135
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    goto :goto_6

    .line 1143
    :cond_b
    invoke-static {v4}, Lnet/sourceforge/opencamera/StorageUtils;->filenameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1146
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_6

    .line 1156
    :cond_c
    invoke-static {v4}, Lnet/sourceforge/opencamera/StorageUtils;->filenameIsRaw(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_5

    .line 1170
    :cond_d
    :goto_6
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_a

    :cond_e
    if-eqz v0, :cond_16

    .line 1175
    invoke-static {v0}, Lnet/sourceforge/opencamera/StorageUtils;->filenameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1178
    invoke-static {v0}, Lnet/sourceforge/opencamera/StorageUtils;->filenameIsSpecial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_16

    .line 1184
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x5f

    if-lt v3, v10, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v13

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_f

    .line 1185
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v13

    invoke-virtual {v0, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 1187
    :cond_f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v8, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v10

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_10

    .line 1188
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v10

    invoke-virtual {v0, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_10
    move-object v0, v14

    :goto_7
    if-eqz v0, :cond_16

    .line 1193
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    const/4 v4, 0x0

    .line 1196
    :goto_8
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1197
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_11

    goto :goto_9

    .line 1205
    :cond_11
    invoke-static {v5}, Lnet/sourceforge/opencamera/StorageUtils;->filenameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 1208
    invoke-static {v5}, Lnet/sourceforge/opencamera/StorageUtils;->filenameIsSpecial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 1213
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_a

    .line 1227
    :cond_12
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    goto :goto_9

    :cond_13
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xa

    if-le v4, v6, :cond_14

    goto :goto_9

    :cond_14
    move v4, v5

    goto :goto_8

    .line 1241
    :cond_15
    :goto_9
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1248
    :cond_16
    :goto_a
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1249
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 1250
    sget-object v0, Lnet/sourceforge/opencamera/StorageUtils$UriType;->MEDIASTORE_IMAGES:Lnet/sourceforge/opencamera/StorageUtils$UriType;

    if-ne v1, v0, :cond_17

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v24, v0

    move-object/from16 v0, p1

    goto :goto_b

    :cond_17
    move-object/from16 v0, p1

    const/16 v24, 0x0

    .line 1251
    :goto_b
    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 1252
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1257
    sget-object v0, Lnet/sourceforge/opencamera/StorageUtils$2;->$SwitchMap$net$sourceforge$opencamera$StorageUtils$UriType:[I

    invoke-virtual/range {p3 .. p3}, Lnet/sourceforge/opencamera/StorageUtils$UriType;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v12, :cond_19

    if-ne v0, v13, :cond_18

    const/16 v20, 0x1

    goto :goto_c

    .line 1265
    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    const/16 v20, 0x0

    .line 1270
    :goto_c
    new-instance v0, Lnet/sourceforge/opencamera/StorageUtils$Media;

    const/16 v17, 0x1

    move-object/from16 v16, v0

    move-wide/from16 v18, v3

    invoke-direct/range {v16 .. v25}, Lnet/sourceforge/opencamera/StorageUtils$Media;-><init>(ZJZLandroid/net/Uri;JILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v14, v0

    goto :goto_d

    :catch_0
    move-exception v0

    goto :goto_f

    :cond_1a
    :goto_d
    if-eqz v2, :cond_1b

    .line 1299
    :goto_e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_10

    :catchall_0
    move-exception v0

    goto :goto_11

    :catch_1
    move-exception v0

    move-object v2, v14

    .line 1295
    :goto_f
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1b

    goto :goto_e

    :cond_1b
    :goto_10
    return-object v14

    :catchall_1
    move-exception v0

    move-object v14, v2

    :goto_11
    if-eqz v14, :cond_1c

    .line 1299
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1301
    :cond_1c
    goto :goto_13

    :goto_12
    throw v0

    :goto_13
    goto :goto_12
.end method

.method private getLatestMediaSAF(Landroid/net/Uri;)Lnet/sourceforge/opencamera/StorageUtils$Media;
    .locals 32

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 1326
    :try_start_0
    invoke-static/range {p1 .. p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1327
    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/String;

    const-string v3, "document_id"

    const/4 v9, 0x0

    aput-object v3, v5, v9

    const-string v3, "last_modified"

    const/4 v10, 0x1

    aput-object v3, v5, v10

    const-string v3, "_display_name"

    const/4 v11, 0x2

    aput-object v3, v5, v11

    const-string v3, "mime_type"

    const/4 v12, 0x3

    aput-object v3, v5, v12

    move-object/from16 v13, p0

    :try_start_1
    iget-object v3, v13, Lnet/sourceforge/opencamera/StorageUtils;->context:Landroid/content/Context;

    .line 1357
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_a

    .line 1358
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_a

    const-wide/16 v4, 0x0

    move-object v8, v1

    move-object v14, v8

    move-object v15, v14

    move-object/from16 v17, v15

    move-wide v6, v4

    const/16 v16, 0x0

    .line 1374
    :goto_0
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1376
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1377
    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1378
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1383
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v12, "video/mp4"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x6

    goto :goto_2

    :sswitch_1
    const-string v12, "image/png"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x2

    goto :goto_2

    :sswitch_2
    const-string v12, "image/x-adobe-dng"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x3

    goto :goto_2

    :sswitch_3
    const-string v12, "image/webp"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    goto :goto_2

    :sswitch_4
    const-string v12, "image/jpeg"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    goto :goto_2

    :sswitch_5
    const-string v12, "video/webm"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x5

    goto :goto_2

    :sswitch_6
    const-string v12, "video/3gpp"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x4

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v10, -0x1

    :goto_2
    packed-switch v10, :pswitch_data_0

    const/4 v10, 0x0

    goto :goto_3

    :pswitch_0
    const/4 v10, 0x1

    const/4 v12, 0x1

    goto :goto_4

    :pswitch_1
    const/4 v10, 0x1

    :goto_3
    const/4 v12, 0x0

    :goto_4
    if-nez v10, :cond_1

    goto :goto_5

    .line 1408
    :cond_1
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 1409
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_3

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v9, 0x2e

    if-ne v11, v9, :cond_3

    :cond_2
    :goto_5
    move/from16 v26, v16

    goto :goto_6

    :cond_3
    if-eqz v8, :cond_4

    cmp-long v9, v18, v4

    if-lez v9, :cond_5

    :cond_4
    move-object v8, v2

    move-object v15, v10

    move/from16 v16, v12

    move-wide/from16 v4, v18

    :cond_5
    if-nez v12, :cond_2

    .line 1423
    invoke-static {v10}, Lnet/sourceforge/opencamera/StorageUtils;->filenameIsRaw(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz v14, :cond_6

    cmp-long v9, v18, v6

    if-lez v9, :cond_2

    :cond_6
    move-object v14, v2

    move-object/from16 v17, v10

    move/from16 v26, v16

    move-wide/from16 v6, v18

    .line 1431
    :goto_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_9

    if-nez v8, :cond_7

    goto :goto_8

    :cond_7
    if-nez v26, :cond_8

    .line 1443
    invoke-static {v15}, Lnet/sourceforge/opencamera/StorageUtils;->filenameIsRaw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v14, :cond_8

    .line 1445
    invoke-static {v15}, Lnet/sourceforge/opencamera/StorageUtils;->filenameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1446
    invoke-static/range {v17 .. v17}, Lnet/sourceforge/opencamera/StorageUtils;->filenameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1451
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-wide/from16 v28, v6

    move-object/from16 v27, v14

    move-object/from16 v31, v17

    goto :goto_7

    :cond_8
    move-wide/from16 v28, v4

    move-object/from16 v27, v8

    move-object/from16 v31, v15

    .line 1461
    :goto_7
    new-instance v0, Lnet/sourceforge/opencamera/StorageUtils$Media;

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v30, 0x0

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v31}, Lnet/sourceforge/opencamera/StorageUtils$Media;-><init>(ZJZLandroid/net/Uri;JILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v0

    goto :goto_8

    :cond_9
    move/from16 v16, v26

    const/4 v2, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_a

    :cond_a
    :goto_8
    if-eqz v3, :cond_b

    .line 1490
    :goto_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :catchall_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    move-object v3, v1

    .line 1486
    :goto_a
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_b

    goto :goto_9

    :cond_b
    :goto_b
    return-object v1

    :catchall_1
    move-exception v0

    move-object v1, v3

    :goto_c
    if-eqz v1, :cond_c

    .line 1490
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1492
    :cond_c
    throw v0

    :catch_2
    move-object/from16 v13, p0

    .line 1338
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception using treeUri: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StorageUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_6
        -0x63118f53 -> :sswitch_5
        -0x58a7d764 -> :sswitch_4
        -0x58a21830 -> :sswitch_3
        -0x54d6098a -> :sswitch_2
        -0x34686c8b -> :sswitch_1
        0x4f62635d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getSaveRelativeFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 443
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 445
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 447
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/sourceforge/opencamera/StorageUtils;->RELATIVE_FOLDER_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static saveFolderIsFull(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "/"

    .line 459
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method announceUri(Landroid/net/Uri;ZZ)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lnet/sourceforge/opencamera/StorageUtils;->context:Landroid/content/Context;

    .line 137
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.hardware.action.NEW_PICTURE"

    invoke-direct {p3, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p2, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p2, p0, Lnet/sourceforge/opencamera/StorageUtils;->context:Landroid/content/Context;

    .line 139
    new-instance p3, Landroid/content/Intent;

    const-string v0, "com.android.camera.NEW_PICTURE"

    invoke-direct {p3, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p2, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget-object p2, p0, Lnet/sourceforge/opencamera/StorageUtils;->context:Landroid/content/Context;

    .line 195
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.hardware.action.NEW_VIDEO"

    invoke-direct {p3, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p2, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public broadcastFile(Ljava/io/File;ZZZZLandroid/net/Uri;)V
    .locals 12

    move-object v8, p0

    .line 268
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v8, Lnet/sourceforge/opencamera/StorageUtils;->failed_to_scan:Z

    iget-object v9, v8, Lnet/sourceforge/opencamera/StorageUtils;->context:Landroid/content/Context;

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    new-instance v11, Lnet/sourceforge/opencamera/StorageUtils$1;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p6

    move/from16 v3, p4

    move-object v4, p1

    move/from16 v5, p5

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lnet/sourceforge/opencamera/StorageUtils$1;-><init>(Lnet/sourceforge/opencamera/StorageUtils;Landroid/net/Uri;ZLjava/io/File;ZZZ)V

    const/4 v0, 0x0

    invoke-static {v9, v10, v0, v11}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :goto_0
    return-void
.end method

.method public broadcastUri(Landroid/net/Uri;ZZZZZ)V
    .locals 8

    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/StorageUtils;->getFileFromDocumentUriSAF(Landroid/net/Uri;Z)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p1

    .line 357
    invoke-virtual/range {v1 .. v7}, Lnet/sourceforge/opencamera/StorageUtils;->broadcastFile(Ljava/io/File;ZZZZLandroid/net/Uri;)V

    goto :goto_0

    :cond_0
    if-nez p6, :cond_1

    .line 363
    invoke-virtual {p0, p1, p2, p3}, Lnet/sourceforge/opencamera/StorageUtils;->announceUri(Landroid/net/Uri;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method clearLastMediaScanned()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/StorageUtils;->last_media_scanned:Landroid/net/Uri;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/StorageUtils;->last_media_scanned_is_raw:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/StorageUtils;->last_media_scanned_hasnoexifdatetime:Z

    iput-object v0, p0, Lnet/sourceforge/opencamera/StorageUtils;->last_media_scanned_check_uri:Landroid/net/Uri;

    return-void
.end method

.method createFolderIfRequired(Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 746
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 749
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 753
    invoke-virtual/range {v1 .. v7}, Lnet/sourceforge/opencamera/StorageUtils;->broadcastFile(Ljava/io/File;ZZZZLandroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const-string p1, "StorageUtils"

    const-string v0, "failed to create directory"

    .line 750
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method createMediaFilename(ILjava/lang/String;ILjava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    if-lez p3, :cond_0

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/StorageUtils;->context:Landroid/content/Context;

    .line 697
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_save_zulu_time"

    const-string v2, "local"

    .line 698
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "zulu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 701
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss\'Z\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "UTC"

    .line 702
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 703
    invoke-virtual {v1, p5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p5

    goto :goto_1

    .line 706
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, p5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p5

    :goto_1
    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    goto :goto_2

    .line 732
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    .line 725
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "BACKUP_OC_"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    const-string p1, "preference_save_video_prefix"

    const-string v1, "VID_"

    .line 717
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    :goto_2
    const-string p1, "preference_save_photo_prefix"

    const-string v1, "IMG_"

    .line 712
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method createOutputFileSAF(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    :try_start_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/StorageUtils;->getTreeUriSAF()Landroid/net/Uri;

    move-result-object v0

    .line 809
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/StorageUtils;->context:Landroid/content/Context;

    .line 813
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p2, p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 819
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 847
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 848
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :catch_1
    move-exception p1

    .line 840
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 841
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :catch_2
    move-exception p1

    .line 833
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 834
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :catch_3
    move-exception p1

    .line 826
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 827
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method createOutputMediaFile(ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 739
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/StorageUtils;->getImageFolder()Ljava/io/File;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 740
    invoke-virtual/range {v0 .. v5}, Lnet/sourceforge/opencamera/StorageUtils;->createOutputMediaFile(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method createOutputMediaFile(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/io/File;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 760
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/StorageUtils;->createFolderIfRequired(Ljava/io/File;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_0
    const/16 v1, 0x64

    if-ge v7, v1, :cond_1

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move v4, v7

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/opencamera/StorageUtils;->createMediaFilename(ILjava/lang/String;ILjava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 787
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 789
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    move-object v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    return-object v0

    .line 798
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method createOutputMediaFileSAF(ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Landroid/net/Uri;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 911
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const-string v0, "text/xml"

    goto :goto_1

    .line 901
    :cond_2
    invoke-virtual {p0, p3}, Lnet/sourceforge/opencamera/StorageUtils;->getVideoMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 898
    :cond_3
    invoke-virtual {p0, p3}, Lnet/sourceforge/opencamera/StorageUtils;->getImageMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v4, 0x0

    .line 914
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/opencamera/StorageUtils;->createMediaFilename(ILjava/lang/String;ILjava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 915
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/StorageUtils;->createOutputFileSAF(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public freeMemory()J
    .locals 7

    iget-object v0, p0, Lnet/sourceforge/opencamera/StorageUtils;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1644
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/StorageUtils;->isUsingSAF()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1646
    invoke-direct {p0}, Lnet/sourceforge/opencamera/StorageUtils;->freeMemorySAF()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x100000

    const/16 v2, 0x12

    .line 1650
    :try_start_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/StorageUtils;->getImageFolder()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1654
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_1

    .line 1657
    invoke-static {v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/StatFs;)J

    move-result-wide v5

    .line 1658
    invoke-static {v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/os/StatFs;)J

    move-result-wide v3

    goto :goto_0

    .line 1663
    :cond_1
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v5, v3

    .line 1665
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    :goto_0
    mul-long v5, v5, v3

    .line 1667
    div-long/2addr v5, v0

    return-wide v5

    .line 1652
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1673
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/StorageUtils;->isUsingSAF()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1675
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveLocation()Ljava/lang/String;

    move-result-object v3

    .line 1676
    invoke-static {v3}, Lnet/sourceforge/opencamera/StorageUtils;->saveFolderIsFull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1677
    invoke-static {}, Lnet/sourceforge/opencamera/StorageUtils;->getBaseFolder()Ljava/io/File;

    move-result-object v3

    .line 1678
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_3

    .line 1681
    invoke-static {v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/StatFs;)J

    move-result-wide v2

    .line 1682
    invoke-static {v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/os/StatFs;)J

    move-result-wide v4

    goto :goto_1

    .line 1687
    :cond_3
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    .line 1689
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    :goto_1
    mul-long v2, v2, v4

    .line 1691
    div-long/2addr v2, v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v2

    :catch_1
    :cond_4
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getFileFromDocumentUriSAF(Landroid/net/Uri;Z)Ljava/io/File;
    .locals 8

    .line 507
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.externalstorage.documents"

    .line 516
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    const/4 v3, 0x2

    const-string v4, ":"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_5

    if-eqz p2, :cond_0

    .line 517
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 520
    :goto_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 521
    array-length p2, p1

    if-lt p2, v6, :cond_b

    .line 522
    aget-object p2, p1, v5

    .line 523
    array-length v0, p1

    if-lt v0, v3, :cond_1

    aget-object v2, p1, v6

    .line 528
    :cond_1
    new-instance p1, Ljava/io/File;

    const-string v0, "/storage"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const-string v0, "primary"

    .line 530
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 531
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    .line 532
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    .line 534
    array-length p2, p1

    if-ge v5, p2, :cond_4

    if-nez v7, :cond_4

    .line 535
    new-instance p2, Ljava/io/File;

    aget-object v0, p1, v5

    invoke-direct {p2, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v7, p2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-nez v7, :cond_b

    .line 542
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, p1

    goto/16 :goto_5

    :cond_5
    const-string v1, "com.android.providers.downloads.documents"

    .line 546
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez p2, :cond_b

    .line 548
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "raw:"

    .line 549
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 553
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 554
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, p2

    goto/16 :goto_5

    :cond_6
    :try_start_0
    const-string p2, "content://downloads/public_downloads"

    .line 558
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    .line 560
    invoke-direct {p0, p2, v7, v7}, Lnet/sourceforge/opencamera/StorageUtils;->getDataColumn(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 562
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    goto/16 :goto_5

    :catch_0
    move-exception p2

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to parse id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StorageUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_5

    :cond_7
    const-string p2, "com.android.providers.media.documents"

    .line 581
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 582
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 583
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 584
    aget-object p2, p1, v5

    .line 587
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_2
    const/4 v3, -0x1

    goto :goto_3

    :sswitch_0
    const-string v0, "video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_2

    :sswitch_1
    const-string v0, "image"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, 0x1

    goto :goto_3

    :sswitch_2
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    :cond_a
    :goto_3
    packed-switch v3, :pswitch_data_0

    move-object p2, v7

    goto :goto_4

    .line 592
    :pswitch_0
    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_4

    .line 589
    :pswitch_1
    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_4

    .line 595
    :pswitch_2
    sget-object p2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_4
    new-array v0, v6, [Ljava/lang/String;

    .line 600
    aget-object p1, p1, v6

    aput-object p1, v0, v5

    const-string p1, "_id=?"

    .line 604
    invoke-direct {p0, p2, p1, v0}, Lnet/sourceforge/opencamera/StorageUtils;->getDataColumn(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 606
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_b
    :goto_5
    return-object v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x58d9bd6 -> :sswitch_2
        0x5faa95b -> :sswitch_1
        0x6b0147b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    .line 657
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/StorageUtils;->context:Landroid/content/Context;

    .line 660
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 661
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "_display_name"

    .line 662
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 663
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 675
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v0, v1

    .line 671
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_1

    .line 675
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 676
    :cond_1
    throw p1

    :cond_2
    :goto_4
    if-nez v1, :cond_3

    .line 681
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 p1, 0x2f

    .line 682
    invoke-virtual {v1, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    add-int/lit8 p1, p1, 0x1

    .line 684
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public getFilePathFromDocumentUriSAF(Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 0

    .line 485
    invoke-virtual {p0, p1, p2}, Lnet/sourceforge/opencamera/StorageUtils;->getFileFromDocumentUriSAF(Landroid/net/Uri;Z)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 486
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method getImageFolder()Ljava/io/File;
    .locals 2

    .line 420
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/StorageUtils;->isUsingSAF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/StorageUtils;->getTreeUriSAF()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    .line 424
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/StorageUtils;->getFileFromDocumentUriSAF(Landroid/net/Uri;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveLocation()Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-static {v0}, Lnet/sourceforge/opencamera/StorageUtils;->getImageFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getImageFolderPath()Ljava/lang/String;
    .locals 1

    .line 409
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/StorageUtils;->getImageFolder()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getImageMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 856
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "webp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "dng"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p1, "image/jpeg"

    goto :goto_1

    :pswitch_0
    const-string p1, "image/webp"

    goto :goto_1

    :pswitch_1
    const-string p1, "image/png"

    goto :goto_1

    :pswitch_2
    const-string p1, "image/dng"

    :goto_1
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1851d -> :sswitch_2
        0x1b229 -> :sswitch_1
        0x379f9c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getLastMediaScanned()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/StorageUtils;->last_media_scanned:Landroid/net/Uri;

    return-object v0
.end method

.method getLastMediaScannedCheckUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/StorageUtils;->last_media_scanned_check_uri:Landroid/net/Uri;

    return-object v0
.end method

.method getLastMediaScannedHasNoExifDateTime()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/StorageUtils;->last_media_scanned_hasnoexifdatetime:Z

    return v0
.end method

.method getLastMediaScannedIsRaw()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/StorageUtils;->last_media_scanned_is_raw:Z

    return v0
.end method

.method getLatestMedia()Lnet/sourceforge/opencamera/StorageUtils$Media;
    .locals 7

    .line 1549
    invoke-static {}, Lnet/sourceforge/opencamera/MainActivity;->useScopedStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/StorageUtils;->isUsingSAF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1550
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/StorageUtils;->getTreeUriSAF()Landroid/net/Uri;

    move-result-object v0

    .line 1551
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/StorageUtils;->getLatestMediaSAF(Landroid/net/Uri;)Lnet/sourceforge/opencamera/StorageUtils$Media;

    move-result-object v0

    return-object v0

    .line 1554
    :cond_0
    sget-object v0, Lnet/sourceforge/opencamera/StorageUtils$UriType;->MEDIASTORE_IMAGES:Lnet/sourceforge/opencamera/StorageUtils$UriType;

    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/StorageUtils;->getLatestMedia(Lnet/sourceforge/opencamera/StorageUtils$UriType;)Lnet/sourceforge/opencamera/StorageUtils$Media;

    move-result-object v0

    .line 1555
    sget-object v1, Lnet/sourceforge/opencamera/StorageUtils$UriType;->MEDIASTORE_VIDEOS:Lnet/sourceforge/opencamera/StorageUtils$UriType;

    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/StorageUtils;->getLatestMedia(Lnet/sourceforge/opencamera/StorageUtils$UriType;)Lnet/sourceforge/opencamera/StorageUtils$Media;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1573
    iget-wide v2, v0, Lnet/sourceforge/opencamera/StorageUtils$Media;->date:J

    iget-wide v4, v1, Lnet/sourceforge/opencamera/StorageUtils$Media;->date:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method getSaveLocation()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/StorageUtils;->context:Landroid/content/Context;

    .line 380
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_save_location"

    const-string v2, "OpenCamera"

    .line 381
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSaveLocationSAF()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/StorageUtils;->context:Landroid/content/Context;

    .line 386
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_save_location_saf"

    const-string v2, ""

    .line 387
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSaveRelativeFolder()Ljava/lang/String;
    .locals 1

    .line 436
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveLocation()Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-static {v0}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveRelativeFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSettingsFolder()Ljava/io/File;
    .locals 3

    .line 397
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnet/sourceforge/opencamera/StorageUtils;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "backups"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTreeUriSAF()Landroid/net/Uri;
    .locals 1

    .line 392
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/StorageUtils;->getSaveLocationSAF()Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method getVideoMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 878
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "3gp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "webm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "video/mp4"

    goto :goto_0

    :cond_0
    const-string p1, "video/webm"

    goto :goto_0

    :cond_1
    const-string p1, "video/3gpp"

    :goto_0
    return-object p1
.end method

.method public isUsingSAF()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/StorageUtils;->context:Landroid/content/Context;

    .line 370
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_using_saf"

    .line 371
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method setLastMediaScanned(Landroid/net/Uri;ZZLandroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/StorageUtils;->last_media_scanned:Landroid/net/Uri;

    iput-boolean p2, p0, Lnet/sourceforge/opencamera/StorageUtils;->last_media_scanned_is_raw:Z

    iput-boolean p3, p0, Lnet/sourceforge/opencamera/StorageUtils;->last_media_scanned_hasnoexifdatetime:Z

    if-eqz p3, :cond_0

    iput-object p4, p0, Lnet/sourceforge/opencamera/StorageUtils;->last_media_scanned_check_uri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sourceforge/opencamera/StorageUtils;->last_media_scanned_check_uri:Landroid/net/Uri;

    :goto_0
    return-void
.end method
