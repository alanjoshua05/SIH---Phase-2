.class Lnet/sourceforge/opencamera/StorageUtils$Media;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/StorageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Media"
.end annotation


# instance fields
.field final date:J

.field final filename:Ljava/lang/String;

.field final id:J

.field final mediastore:Z

.field final orientation:I

.field final uri:Landroid/net/Uri;

.field final video:Z


# direct methods
.method constructor <init>(ZJZLandroid/net/Uri;JILjava/lang/String;)V
    .locals 0

    .line 927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/StorageUtils$Media;->mediastore:Z

    iput-wide p2, p0, Lnet/sourceforge/opencamera/StorageUtils$Media;->id:J

    iput-boolean p4, p0, Lnet/sourceforge/opencamera/StorageUtils$Media;->video:Z

    iput-object p5, p0, Lnet/sourceforge/opencamera/StorageUtils$Media;->uri:Landroid/net/Uri;

    iput-wide p6, p0, Lnet/sourceforge/opencamera/StorageUtils$Media;->date:J

    iput p8, p0, Lnet/sourceforge/opencamera/StorageUtils$Media;->orientation:I

    iput-object p9, p0, Lnet/sourceforge/opencamera/StorageUtils$Media;->filename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getMediaStoreUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/StorageUtils$Media;->mediastore:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/StorageUtils$Media;->uri:Landroid/net/Uri;

    return-object p1

    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/StorageUtils$Media;->uri:Landroid/net/Uri;

    .line 948
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 952
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
