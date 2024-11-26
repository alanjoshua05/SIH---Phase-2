.class Lnet/sourceforge/opencamera/ImageSaver$PostProcessBitmapResult;
.super Ljava/lang/Object;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostProcessBitmapResult"
.end annotation


# instance fields
.field final bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 2407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ImageSaver$PostProcessBitmapResult;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
