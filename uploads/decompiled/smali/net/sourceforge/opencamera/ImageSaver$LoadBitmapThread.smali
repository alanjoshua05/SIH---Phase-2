.class Lnet/sourceforge/opencamera/ImageSaver$LoadBitmapThread;
.super Ljava/lang/Thread;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadBitmapThread"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field final jpeg:[B

.field final options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method constructor <init>(Landroid/graphics/BitmapFactory$Options;[B)V
    .locals 1

    const-string v0, "LoadBitmapThread"

    .line 1107
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ImageSaver$LoadBitmapThread;->options:Landroid/graphics/BitmapFactory$Options;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ImageSaver$LoadBitmapThread;->jpeg:[B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/ImageSaver$LoadBitmapThread;->jpeg:[B

    .line 1113
    array-length v1, v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/ImageSaver$LoadBitmapThread;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ImageSaver$LoadBitmapThread;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
