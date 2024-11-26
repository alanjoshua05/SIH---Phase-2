.class Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;
.super Ljava/lang/Thread;
.source "JavaImageProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/JavaImageProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApplyFunctionThread"
.end annotation


# instance fields
.field private chunk_size:I

.field private final function:Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;

.field private final input:Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;

.field private output:Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;

.field private output_start_x:I

.field private output_start_y:I

.field private final start_x:I

.field private final start_y:I

.field private final stop_x:I

.field private final stop_y:I

.field private final thread_index:I


# direct methods
.method constructor <init>(ILnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;Landroid/graphics/Bitmap;IIII)V
    .locals 1

    const-string v0, "ApplyFunctionThread"

    .line 125
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->thread_index:I

    iput-object p2, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->function:Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;

    iput p4, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->start_x:I

    iput p5, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->start_y:I

    iput p6, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->stop_x:I

    iput p7, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->stop_y:I

    .line 139
    invoke-static {p5, p7}, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->getChunkSize(II)I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->chunk_size:I

    if-eqz p3, :cond_0

    .line 143
    new-instance p1, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;

    sub-int/2addr p6, p4

    iget p2, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->chunk_size:I

    invoke-direct {p1, p3, p6, p2}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;-><init>(Landroid/graphics/Bitmap;II)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->input:Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->input:Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;

    :goto_0
    return-void
.end method

.method private static getChunkSize(II)I
    .locals 0

    sub-int/2addr p1, p0

    const/16 p0, 0x40

    .line 120
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 14

    iget v0, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->stop_x:I

    iget v1, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->start_x:I

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->start_y:I

    iget v2, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->output_start_y:I

    sub-int v10, v2, v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->input:Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->output:Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;

    if-nez v2, :cond_0

    iget v2, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->stop_y:I

    sub-int/2addr v2, v1

    iput v2, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->chunk_size:I

    :cond_0
    iget v11, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->chunk_size:I

    :goto_0
    iget v2, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->stop_y:I

    if-ge v1, v2, :cond_4

    add-int v3, v1, v11

    .line 177
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    sub-int v13, v12, v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->input:Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;

    if-nez v2, :cond_1

    iget-object v2, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->function:Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->output:Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;

    iget v4, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->thread_index:I

    iget v5, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->start_x:I

    move v6, v1

    move v7, v0

    move v8, v13

    .line 185
    invoke-interface/range {v2 .. v8}, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;->apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V

    goto :goto_1

    .line 187
    :cond_1
    invoke-static {v2}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->access$000(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->input:Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;

    .line 188
    invoke-static {v2}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->access$000(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->input:Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;

    invoke-static {v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->access$100(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;)[I

    move-result-object v3

    const/4 v4, 0x0

    iget v6, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->start_x:I

    move v5, v0

    move v7, v1

    move v8, v0

    move v9, v13

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->function:Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->output:Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;

    iget v4, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->thread_index:I

    iget-object v5, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->input:Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;

    .line 191
    invoke-static {v5}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->access$100(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;)[I

    move-result-object v5

    iget v6, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->start_x:I

    invoke-interface/range {v2 .. v9}, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;->apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V

    :cond_2
    :goto_1
    iget-object v2, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->output:Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;

    if-eqz v2, :cond_3

    .line 198
    invoke-static {v2}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->access$000(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->output:Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;

    .line 205
    invoke-static {v2}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->access$000(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->output:Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;

    invoke-static {v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->access$100(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;)[I

    move-result-object v3

    const/4 v4, 0x0

    iget v6, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->output_start_x:I

    add-int v7, v1, v10

    move v5, v0

    move v8, v0

    move v9, v13

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_3
    move v1, v12

    goto :goto_0

    :cond_4
    return-void
.end method

.method setOutput(Landroid/graphics/Bitmap;II)V
    .locals 3

    .line 153
    new-instance v0, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;

    iget v1, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->stop_x:I

    iget v2, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->start_x:I

    sub-int/2addr v1, v2

    iget v2, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->chunk_size:I

    invoke-direct {v0, p1, v1, v2}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;-><init>(Landroid/graphics/Bitmap;II)V

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->output:Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;

    iput p2, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->output_start_x:I

    iput p3, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->output_start_y:I

    return-void
.end method
