.class Lnet/sourceforge/opencamera/MainActivity$22;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity;->updateGalleryIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "updateGalleryIcon"


# instance fields
.field private is_raw:Z

.field private is_video:Z

.field final synthetic this$0:Lnet/sourceforge/opencamera/MainActivity;

.field private uri:Landroid/net/Uri;

.field final synthetic val$ghost_image_last:Z

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;ZLandroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$22;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    iput-boolean p2, p0, Lnet/sourceforge/opencamera/MainActivity$22;->val$ghost_image_last:Z

    iput-object p3, p0, Lnet/sourceforge/opencamera/MainActivity$22;->val$handler:Landroid/os/Handler;

    .line 4316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2400(Lnet/sourceforge/opencamera/MainActivity$22;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 4316
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/MainActivity$22;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$22;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4418
    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$2500(Lnet/sourceforge/opencamera/MainActivity;)Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$22;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$2500(Lnet/sourceforge/opencamera/MainActivity;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$22;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4421
    invoke-static {p1, v1}, Lnet/sourceforge/opencamera/MainActivity;->access$2502(Lnet/sourceforge/opencamera/MainActivity;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$22;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4425
    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$2200(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/StorageUtils;->clearLastMediaScanned()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$22;->uri:Landroid/net/Uri;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$22;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4431
    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$2200(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v0

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity$22;->uri:Landroid/net/Uri;

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/MainActivity$22;->is_raw:Z

    invoke-virtual {v0, v3, v4, v2, v1}, Lnet/sourceforge/opencamera/StorageUtils;->setLastMediaScanned(Landroid/net/Uri;ZZLandroid/net/Uri;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$22;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4436
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/MainActivity;->updateGalleryIcon(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$22;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4437
    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$2200(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object v0

    iget-boolean v3, p0, Lnet/sourceforge/opencamera/MainActivity$22;->is_video:Z

    invoke-virtual {v0, p1, v3, v2}, Lnet/sourceforge/opencamera/ui/DrawPreview;->updateThumbnail(Landroid/graphics/Bitmap;ZZ)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$22;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4442
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$2600(Lnet/sourceforge/opencamera/MainActivity;)V

    :goto_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$22;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4445
    invoke-static {p1, v1}, Lnet/sourceforge/opencamera/MainActivity;->access$2502(Lnet/sourceforge/opencamera/MainActivity;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$22;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4327
    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$2200(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/StorageUtils;->getLatestMedia()Lnet/sourceforge/opencamera/StorageUtils$Media;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$22;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    const-string v2, "keyguard"

    .line 4329
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 4330
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v0, :cond_7

    iget-object v5, p0, Lnet/sourceforge/opencamera/MainActivity$22;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4333
    invoke-virtual {v5}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    if-eqz v5, :cond_7

    if-nez v1, :cond_7

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$22;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4336
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/StorageUtils$Media;->getMediaStoreUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$22;->uri:Landroid/net/Uri;

    .line 4337
    iget-object v1, v0, Lnet/sourceforge/opencamera/StorageUtils$Media;->filename:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lnet/sourceforge/opencamera/StorageUtils$Media;->filename:Ljava/lang/String;

    invoke-static {v1}, Lnet/sourceforge/opencamera/StorageUtils;->filenameIsRaw(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lnet/sourceforge/opencamera/MainActivity$22;->is_raw:Z

    .line 4338
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/StorageUtils$Media;->video:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/MainActivity$22;->is_video:Z

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/MainActivity$22;->val$ghost_image_last:Z

    if-eqz v1, :cond_2

    .line 4340
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/StorageUtils$Media;->video:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$22;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4344
    iget-object v2, v0, Lnet/sourceforge/opencamera/StorageUtils$Media;->uri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Lnet/sourceforge/opencamera/MainActivity;->access$2300(Lnet/sourceforge/opencamera/MainActivity;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v4

    :goto_1
    if-nez v1, :cond_6

    .line 4348
    :try_start_0
    iget-boolean v2, v0, Lnet/sourceforge/opencamera/StorageUtils$Media;->video:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity$22;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4354
    iget-object v0, v0, Lnet/sourceforge/opencamera/StorageUtils$Media;->uri:Landroid/net/Uri;

    const/16 v3, 0x8

    invoke-static {v2, v0, v3}, Lnet/sourceforge/opencamera/MainActivity;->access$2300(Lnet/sourceforge/opencamera/MainActivity;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    move-object v4, v0

    goto/16 :goto_a

    .line 4356
    :cond_3
    iget-boolean v2, v0, Lnet/sourceforge/opencamera/StorageUtils$Media;->mediastore:Z

    if-nez v2, :cond_5

    .line 4360
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity$22;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4362
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v0, v0, Lnet/sourceforge/opencamera/StorageUtils$Media;->uri:Landroid/net/Uri;

    const-string v5, "r"

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 4363
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    const-wide/16 v5, -0x1

    .line 4364
    invoke-virtual {v2, v5, v6}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4372
    :try_start_2
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catch_0
    nop

    :goto_3
    if-eqz v4, :cond_6

    .line 4379
    :try_start_3
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_9

    :catch_1
    move-exception v0

    .line 4383
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    :try_start_5
    const-string v3, "updateGalleryIcon"

    const-string v5, "failed to load video thumbnail"

    .line 4367
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4368
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4372
    :try_start_6
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catch_3
    nop

    :goto_5
    if-eqz v4, :cond_6

    .line 4379
    :try_start_7
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_4

    .line 4372
    :goto_6
    :try_start_8
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_7

    :catch_5
    nop

    :goto_7
    if-eqz v4, :cond_4

    .line 4379
    :try_start_9
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_8

    :catch_6
    move-exception v2

    .line 4383
    :try_start_a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 4385
    :cond_4
    :goto_8
    throw v0

    :cond_5
    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity$22;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4390
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-wide v5, v0, Lnet/sourceforge/opencamera/StorageUtils$Media;->id:J

    invoke-static {v2, v5, v6, v3, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v4, v1

    .line 4398
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    :cond_6
    :goto_9
    move-object v4, v1

    :cond_7
    :goto_a
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$22;->val$handler:Landroid/os/Handler;

    .line 4405
    new-instance v1, Lnet/sourceforge/opencamera/MainActivity$22$1;

    invoke-direct {v1, p0, v4}, Lnet/sourceforge/opencamera/MainActivity$22$1;-><init>(Lnet/sourceforge/opencamera/MainActivity$22;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
