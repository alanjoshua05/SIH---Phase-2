.class Lnet/sourceforge/opencamera/ImageSaver$ExifInterfaceHolder;
.super Ljava/lang/Object;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifInterfaceHolder"
.end annotation


# instance fields
.field private final exif:Landroidx/exifinterface/media/ExifInterface;

.field private final pfd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Landroid/os/ParcelFileDescriptor;Landroidx/exifinterface/media/ExifInterface;)V
    .locals 0

    .line 3833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ImageSaver$ExifInterfaceHolder;->pfd:Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ImageSaver$ExifInterfaceHolder;->exif:Landroidx/exifinterface/media/ExifInterface;

    return-void
.end method


# virtual methods
.method close()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ImageSaver$ExifInterfaceHolder;->pfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 3845
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImageSaver"

    const-string v2, "failed to close parcelfiledescriptor"

    .line 3848
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3849
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method getExif()Landroidx/exifinterface/media/ExifInterface;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ImageSaver$ExifInterfaceHolder;->exif:Landroidx/exifinterface/media/ExifInterface;

    return-object v0
.end method
