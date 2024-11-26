.class public Lnet/sourceforge/opencamera/HDRProcessor$AvgData;
.super Ljava/lang/Object;
.source "HDRProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/HDRProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AvgData"
.end annotation


# instance fields
.field allocation_avg_align:Landroid/renderscript/Allocation;

.field allocation_orig:Landroid/renderscript/Allocation;

.field allocation_out:Landroid/renderscript/Allocation;

.field bitmap_avg_align:Landroid/graphics/Bitmap;

.field bitmap_orig:Landroid/graphics/Bitmap;

.field pixels_rgbf_out:[F


# direct methods
.method constructor <init>(Landroid/renderscript/Allocation;[FLandroid/graphics/Bitmap;Landroid/renderscript/Allocation;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation;)V
    .locals 0

    .line 1286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->allocation_out:Landroid/renderscript/Allocation;

    iput-object p2, p0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->pixels_rgbf_out:[F

    iput-object p3, p0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->bitmap_avg_align:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->allocation_avg_align:Landroid/renderscript/Allocation;

    iput-object p5, p0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->bitmap_orig:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->allocation_orig:Landroid/renderscript/Allocation;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->allocation_out:Landroid/renderscript/Allocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1299
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->allocation_out:Landroid/renderscript/Allocation;

    :cond_0
    iput-object v1, p0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->pixels_rgbf_out:[F

    iget-object v0, p0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->bitmap_avg_align:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1304
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->bitmap_avg_align:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->allocation_avg_align:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_2

    .line 1308
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->allocation_avg_align:Landroid/renderscript/Allocation;

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->bitmap_orig:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1312
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->bitmap_orig:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->allocation_orig:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_4

    .line 1316
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->allocation_orig:Landroid/renderscript/Allocation;

    :cond_4
    return-void
.end method
