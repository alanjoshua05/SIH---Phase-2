.class Lnet/sourceforge/opencamera/StorageUtils$1;
.super Ljava/lang/Object;
.source "StorageUtils.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/StorageUtils;->broadcastFile(Ljava/io/File;ZZZZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/StorageUtils;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$hasnoexifdatetime:Z

.field final synthetic val$is_new_picture:Z

.field final synthetic val$is_new_video:Z

.field final synthetic val$saf_uri:Landroid/net/Uri;

.field final synthetic val$set_last_scanned:Z


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/StorageUtils;Landroid/net/Uri;ZLjava/io/File;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->this$0:Lnet/sourceforge/opencamera/StorageUtils;

    iput-object p2, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->val$saf_uri:Landroid/net/Uri;

    iput-boolean p3, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->val$set_last_scanned:Z

    iput-object p4, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->val$file:Ljava/io/File;

    iput-boolean p5, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->val$hasnoexifdatetime:Z

    iput-boolean p6, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->val$is_new_picture:Z

    iput-boolean p7, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->val$is_new_video:Z

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    iget-object p1, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->this$0:Lnet/sourceforge/opencamera/StorageUtils;

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p1, Lnet/sourceforge/opencamera/StorageUtils;->failed_to_scan:Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->val$saf_uri:Landroid/net/Uri;

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->this$0:Lnet/sourceforge/opencamera/StorageUtils;

    .line 296
    invoke-static {p1}, Lnet/sourceforge/opencamera/StorageUtils;->access$000(Lnet/sourceforge/opencamera/StorageUtils;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->val$saf_uri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    move-object p2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 305
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-boolean p1, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->val$set_last_scanned:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->val$file:Ljava/io/File;

    .line 309
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sourceforge/opencamera/StorageUtils;->filenameIsRaw(Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->this$0:Lnet/sourceforge/opencamera/StorageUtils;

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->val$hasnoexifdatetime:Z

    iget-object v2, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->val$saf_uri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p2

    .line 310
    :goto_1
    invoke-virtual {v0, p2, p1, v1, v2}, Lnet/sourceforge/opencamera/StorageUtils;->setLastMediaScanned(Landroid/net/Uri;ZZLandroid/net/Uri;)V

    :cond_2
    iget-object p1, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->this$0:Lnet/sourceforge/opencamera/StorageUtils;

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->val$is_new_picture:Z

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->val$is_new_video:Z

    .line 312
    invoke-virtual {p1, p2, v0, v1}, Lnet/sourceforge/opencamera/StorageUtils;->announceUri(Landroid/net/Uri;ZZ)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->this$0:Lnet/sourceforge/opencamera/StorageUtils;

    .line 313
    invoke-static {p1}, Lnet/sourceforge/opencamera/StorageUtils;->access$100(Lnet/sourceforge/opencamera/StorageUtils;)Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->val$file:Ljava/io/File;

    invoke-virtual {p1, v0, p2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->scannedFile(Ljava/io/File;Landroid/net/Uri;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->this$0:Lnet/sourceforge/opencamera/StorageUtils;

    .line 320
    invoke-static {p1}, Lnet/sourceforge/opencamera/StorageUtils;->access$000(Lnet/sourceforge/opencamera/StorageUtils;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 321
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-static {}, Lnet/sourceforge/opencamera/MainActivity;->useScopedStorage()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lnet/sourceforge/opencamera/StorageUtils$1;->this$0:Lnet/sourceforge/opencamera/StorageUtils;

    .line 323
    invoke-static {p1}, Lnet/sourceforge/opencamera/StorageUtils;->access$100(Lnet/sourceforge/opencamera/StorageUtils;)Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->finishVideoIntent(Landroid/net/Uri;)V

    :cond_3
    return-void
.end method
