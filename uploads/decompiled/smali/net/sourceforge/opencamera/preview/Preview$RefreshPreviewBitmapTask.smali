.class Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;
.super Landroid/os/AsyncTask;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/preview/Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshPreviewBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTaskResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RefreshPreviewBmTask"


# instance fields
.field private final focus_peaking_bitmap_bufferReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final focus_peaking_bitmap_buffer_tempReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final histogramScriptReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnet/sourceforge/opencamera/ScriptC_histogram_compute;",
            ">;"
        }
    .end annotation
.end field

.field private final previewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnet/sourceforge/opencamera/preview/Preview;",
            ">;"
        }
    .end annotation
.end field

.field private final preview_bitmapReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final update_histogram:Z

.field private final zebra_stripes_bitmap_bufferReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;Z)V
    .locals 2

    .line 8305
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 8306
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->previewReference:Ljava/lang/ref/WeakReference;

    .line 8307
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$6000(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->preview_bitmapReference:Ljava/lang/ref/WeakReference;

    .line 8308
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$6100(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->zebra_stripes_bitmap_bufferReference:Ljava/lang/ref/WeakReference;

    .line 8309
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$6200(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->focus_peaking_bitmap_bufferReference:Ljava/lang/ref/WeakReference;

    .line 8310
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$6300(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->focus_peaking_bitmap_buffer_tempReference:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->update_histogram:Z

    .line 8314
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$6400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/renderscript/RenderScript;

    move-result-object p2

    if-nez p2, :cond_0

    .line 8318
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$2400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/preview/Preview;->access$6402(Lnet/sourceforge/opencamera/preview/Preview;Landroid/renderscript/RenderScript;)Landroid/renderscript/RenderScript;

    .line 8320
    :cond_0
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$6500(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/ScriptC_histogram_compute;

    move-result-object p2

    if-nez p2, :cond_1

    .line 8324
    new-instance p2, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;

    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$6400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/renderscript/RenderScript;

    move-result-object v0

    invoke-direct {p2, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;-><init>(Landroid/renderscript/RenderScript;)V

    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/preview/Preview;->access$6502(Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/ScriptC_histogram_compute;)Lnet/sourceforge/opencamera/ScriptC_histogram_compute;

    .line 8327
    :cond_1
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$6500(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/ScriptC_histogram_compute;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->histogramScriptReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static computeHistogramRS(Landroid/renderscript/Allocation;Landroid/renderscript/RenderScript;Lnet/sourceforge/opencamera/ScriptC_histogram_compute;Lnet/sourceforge/opencamera/preview/Preview$HistogramType;)[I
    .locals 7

    .line 8343
    sget-object v0, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->HISTOGRAM_TYPE_RGB:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    const/16 v1, 0x100

    if-ne p3, v0, :cond_3

    .line 8346
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p3

    invoke-static {p1, p3, v1}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object p3

    .line 8347
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 8348
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object p1

    .line 8352
    invoke-virtual {p2, p3}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->bind_histogram_r(Landroid/renderscript/Allocation;)V

    .line 8353
    invoke-virtual {p2, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->bind_histogram_g(Landroid/renderscript/Allocation;)V

    .line 8354
    invoke-virtual {p2, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->bind_histogram_b(Landroid/renderscript/Allocation;)V

    .line 8355
    invoke-virtual {p2}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->invoke_init_histogram_rgb()V

    .line 8360
    invoke-virtual {p2, p0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_histogram_compute_rgb(Landroid/renderscript/Allocation;)V

    const/16 p0, 0x300

    new-array p0, p0, [I

    new-array p2, v1, [I

    .line 8368
    invoke-virtual {p3, p2}, Landroid/renderscript/Allocation;->copyTo([I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 8370
    aget v6, p2, v3

    aput v6, p0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    .line 8372
    :cond_0
    invoke-virtual {v0, p2}, Landroid/renderscript/Allocation;->copyTo([I)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 8374
    aget v6, p2, v3

    aput v6, p0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_1

    .line 8376
    :cond_1
    invoke-virtual {p1, p2}, Landroid/renderscript/Allocation;->copyTo([I)V

    :goto_2
    if-ge v2, v1, :cond_2

    add-int/lit8 v3, v4, 0x1

    .line 8378
    aget v5, p2, v2

    aput v5, p0, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_2

    .line 8382
    :cond_2
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->destroy()V

    .line 8383
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 8384
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->destroy()V

    goto :goto_4

    .line 8391
    :cond_3
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object p1

    .line 8395
    invoke-virtual {p2, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->bind_histogram(Landroid/renderscript/Allocation;)V

    .line 8396
    invoke-virtual {p2}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->invoke_init_histogram()V

    .line 8401
    sget-object v0, Lnet/sourceforge/opencamera/preview/Preview$24;->$SwitchMap$net$sourceforge$opencamera$preview$Preview$HistogramType:[I

    invoke-virtual {p3}, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_7

    const/4 v0, 0x2

    if-eq p3, v0, :cond_6

    const/4 v0, 0x3

    if-eq p3, v0, :cond_5

    const/4 v0, 0x4

    if-eq p3, v0, :cond_4

    goto :goto_3

    .line 8412
    :cond_4
    invoke-virtual {p2, p0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_histogram_compute_by_lightness(Landroid/renderscript/Allocation;)V

    goto :goto_3

    .line 8409
    :cond_5
    invoke-virtual {p2, p0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_histogram_compute_by_intensity(Landroid/renderscript/Allocation;)V

    goto :goto_3

    .line 8406
    :cond_6
    invoke-virtual {p2, p0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_histogram_compute_by_value(Landroid/renderscript/Allocation;)V

    goto :goto_3

    .line 8403
    :cond_7
    invoke-virtual {p2, p0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_histogram_compute_by_luminance(Landroid/renderscript/Allocation;)V

    :goto_3
    new-array p0, v1, [I

    .line 8419
    invoke-virtual {p1, p0}, Landroid/renderscript/Allocation;->copyTo([I)V

    .line 8423
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->destroy()V

    :goto_4
    return-object p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8294
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->doInBackground([Ljava/lang/Void;)Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTaskResult;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTaskResult;
    .locals 14

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->previewReference:Ljava/lang/ref/WeakReference;

    .line 8439
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sourceforge/opencamera/preview/Preview;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->histogramScriptReference:Ljava/lang/ref/WeakReference;

    .line 8447
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->preview_bitmapReference:Ljava/lang/ref/WeakReference;

    .line 8454
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->zebra_stripes_bitmap_bufferReference:Ljava/lang/ref/WeakReference;

    .line 8460
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->focus_peaking_bitmap_bufferReference:Ljava/lang/ref/WeakReference;

    .line 8461
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iget-object v5, p0, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->focus_peaking_bitmap_buffer_tempReference:Ljava/lang/ref/WeakReference;

    .line 8462
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/graphics/Bitmap;

    .line 8463
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$2400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    if-eqz v5, :cond_8

    .line 8464
    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_1

    .line 8470
    :cond_3
    new-instance v12, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTaskResult;

    invoke-direct {v12, v0}, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTaskResult;-><init>(Lnet/sourceforge/opencamera/preview/Preview$1;)V

    .line 8475
    :try_start_0
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$2900(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    .line 8476
    invoke-virtual {v0, v2}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 8484
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$6400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/renderscript/RenderScript;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    iget-boolean v2, p0, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->update_histogram:Z

    if-eqz v2, :cond_4

    .line 8529
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$6400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/renderscript/RenderScript;

    move-result-object v2

    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$6700(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    move-result-object v5

    invoke-static {v0, v2, v1, v5}, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->computeHistogramRS(Landroid/renderscript/Allocation;Landroid/renderscript/RenderScript;Lnet/sourceforge/opencamera/ScriptC_histogram_compute;Lnet/sourceforge/opencamera/preview/Preview$HistogramType;)[I

    move-result-object v2

    iput-object v2, v12, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTaskResult;->new_histogram:[I

    .line 8538
    :cond_4
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$6800(Lnet/sourceforge/opencamera/preview/Preview;)Z

    move-result v2

    const/4 v13, 0x0

    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    .line 8547
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x14

    .line 8555
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$6400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/renderscript/RenderScript;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v5

    .line 8557
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$6900(Lnet/sourceforge/opencamera/preview/Preview;)I

    move-result v6

    invoke-virtual {v1, v6}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->set_zebra_stripes_threshold(I)V

    .line 8558
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$7000(Lnet/sourceforge/opencamera/preview/Preview;)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->set_zebra_stripes_foreground_r(I)V

    .line 8559
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$7000(Lnet/sourceforge/opencamera/preview/Preview;)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->set_zebra_stripes_foreground_g(I)V

    .line 8560
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$7000(Lnet/sourceforge/opencamera/preview/Preview;)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->set_zebra_stripes_foreground_b(I)V

    .line 8561
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$7000(Lnet/sourceforge/opencamera/preview/Preview;)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->set_zebra_stripes_foreground_a(I)V

    .line 8562
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$7100(Lnet/sourceforge/opencamera/preview/Preview;)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->set_zebra_stripes_background_r(I)V

    .line 8563
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$7100(Lnet/sourceforge/opencamera/preview/Preview;)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->set_zebra_stripes_background_g(I)V

    .line 8564
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$7100(Lnet/sourceforge/opencamera/preview/Preview;)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->set_zebra_stripes_background_b(I)V

    .line 8565
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$7100(Lnet/sourceforge/opencamera/preview/Preview;)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->set_zebra_stripes_background_a(I)V

    .line 8566
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->set_zebra_stripes_width(I)V

    .line 8570
    invoke-virtual {v1, v0, v5}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_generate_zebra_stripes(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 8574
    invoke-virtual {v5, v4}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 8575
    invoke-virtual {v5}, Landroid/renderscript/Allocation;->destroy()V

    .line 8581
    invoke-static {p1, v13}, Lnet/sourceforge/opencamera/preview/Preview;->access$7200(Lnet/sourceforge/opencamera/preview/Preview;Z)I

    move-result v2

    .line 8587
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    neg-int v2, v2

    int-to-float v2, v2

    .line 8588
    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 8590
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    .line 8589
    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v12, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTaskResult;->new_zebra_stripes_bitmap:Landroid/graphics/Bitmap;

    .line 8616
    :cond_5
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$7300(Lnet/sourceforge/opencamera/preview/Preview;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    if-eqz v11, :cond_6

    .line 8634
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$6400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/renderscript/RenderScript;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 8636
    invoke-virtual {v1, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->set_bitmap(Landroid/renderscript/Allocation;)V

    .line 8640
    invoke-virtual {v1, v0, v2}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_generate_focus_peaking(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 8645
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$6400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/renderscript/RenderScript;

    move-result-object v4

    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$6400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/renderscript/RenderScript;

    move-result-object v5

    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$6400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/renderscript/RenderScript;

    move-result-object v6

    invoke-static {v6}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v4

    .line 8646
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->set_bitmap(Landroid/renderscript/Allocation;)V

    .line 8649
    invoke-virtual {v1, v2, v4}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_generate_focus_peaking_filtered(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 8652
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    .line 8655
    invoke-virtual {v4, v3}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 8656
    invoke-virtual {v4}, Landroid/renderscript/Allocation;->destroy()V

    .line 8661
    invoke-static {p1, v13}, Lnet/sourceforge/opencamera/preview/Preview;->access$7200(Lnet/sourceforge/opencamera/preview/Preview;Z)I

    move-result p1

    .line 8664
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    neg-int p1, p1

    int-to-float p1, p1

    .line 8665
    invoke-virtual {v10, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 8667
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x0

    move-object v5, v3

    .line 8666
    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v12, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTaskResult;->new_focus_peaking_bitmap:Landroid/graphics/Bitmap;

    :cond_6
    if-eqz v0, :cond_7

    .line 8677
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/renderscript/RSInvalidStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8688
    invoke-virtual {p1}, Landroid/renderscript/RSInvalidStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8683
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_7
    :goto_0
    return-object v12

    :cond_8
    :goto_1
    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->previewReference:Ljava/lang/ref/WeakReference;

    .line 8743
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/opencamera/preview/Preview;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 8747
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$7702(Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;)Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 8294
    check-cast p1, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTaskResult;

    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->onPostExecute(Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTaskResult;)V

    return-void
.end method

.method protected onPostExecute(Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTaskResult;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;->previewReference:Ljava/lang/ref/WeakReference;

    .line 8704
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/opencamera/preview/Preview;

    if-nez v0, :cond_0

    return-void

    .line 8708
    :cond_0
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_6

    .line 8709
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 8716
    :cond_2
    iget-object v1, p1, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTaskResult;->new_histogram:[I

    if-eqz v1, :cond_3

    .line 8717
    iget-object v1, p1, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTaskResult;->new_histogram:[I

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$7402(Lnet/sourceforge/opencamera/preview/Preview;[I)[I

    .line 8723
    :cond_3
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$7500(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 8724
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$7500(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 8726
    :cond_4
    iget-object v1, p1, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTaskResult;->new_zebra_stripes_bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$7502(Lnet/sourceforge/opencamera/preview/Preview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 8728
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$7600(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 8729
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$7600(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 8731
    :cond_5
    iget-object p1, p1, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTaskResult;->new_focus_peaking_bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$7602(Lnet/sourceforge/opencamera/preview/Preview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 8733
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$7702(Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;)Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTask;

    :cond_6
    :goto_0
    return-void
.end method
