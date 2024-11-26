.class public Lnet/sourceforge/opencamera/cameracontroller/RawImage;
.super Ljava/lang/Object;
.source "RawImage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RawImage"


# instance fields
.field private final dngCreator:Landroid/hardware/camera2/DngCreator;

.field private final image:Landroid/media/Image;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/DngCreator;Landroid/media/Image;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/RawImage;->dngCreator:Landroid/hardware/camera2/DngCreator;

    iput-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/RawImage;->image:Landroid/media/Image;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/RawImage;->image:Landroid/media/Image;

    .line 57
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/Image;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/RawImage;->dngCreator:Landroid/hardware/camera2/DngCreator;

    .line 58
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/DngCreator;)V

    return-void
.end method

.method public writeImage(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/RawImage;->dngCreator:Landroid/hardware/camera2/DngCreator;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/RawImage;->image:Landroid/media/Image;

    .line 34
    invoke-static {v0, p1, v1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/DngCreator;Ljava/io/OutputStream;Landroid/media/Image;)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 46
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :catch_1
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/AssertionError;->printStackTrace()V

    .line 40
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method
