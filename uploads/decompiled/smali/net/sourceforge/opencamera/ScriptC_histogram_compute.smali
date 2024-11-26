.class public Lnet/sourceforge/opencamera/ScriptC_histogram_compute;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_histogram_compute.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "histogram_compute"

.field private static final mExportForEachIdx_generate_focus_peaking:I = 0x9

.field private static final mExportForEachIdx_generate_focus_peaking_filtered:I = 0xa

.field private static final mExportForEachIdx_generate_zebra_stripes:I = 0x8

.field private static final mExportForEachIdx_histogram_compute_by_intensity:I = 0x4

.field private static final mExportForEachIdx_histogram_compute_by_intensity_f:I = 0x5

.field private static final mExportForEachIdx_histogram_compute_by_lightness:I = 0x6

.field private static final mExportForEachIdx_histogram_compute_by_luminance:I = 0x1

.field private static final mExportForEachIdx_histogram_compute_by_value:I = 0x2

.field private static final mExportForEachIdx_histogram_compute_by_value_f:I = 0x3

.field private static final mExportForEachIdx_histogram_compute_rgb:I = 0x7

.field private static final mExportFuncIdx_init_histogram:I = 0x0

.field private static final mExportFuncIdx_init_histogram_rgb:I = 0x1

.field private static final mExportVarIdx_bitmap:I = 0xe

.field private static final mExportVarIdx_histogram:I = 0x0

.field private static final mExportVarIdx_histogram_b:I = 0x3

.field private static final mExportVarIdx_histogram_g:I = 0x2

.field private static final mExportVarIdx_histogram_r:I = 0x1

.field private static final mExportVarIdx_zebra_stripes_background_a:I = 0xc

.field private static final mExportVarIdx_zebra_stripes_background_b:I = 0xb

.field private static final mExportVarIdx_zebra_stripes_background_g:I = 0xa

.field private static final mExportVarIdx_zebra_stripes_background_r:I = 0x9

.field private static final mExportVarIdx_zebra_stripes_foreground_a:I = 0x8

.field private static final mExportVarIdx_zebra_stripes_foreground_b:I = 0x7

.field private static final mExportVarIdx_zebra_stripes_foreground_g:I = 0x6

.field private static final mExportVarIdx_zebra_stripes_foreground_r:I = 0x5

.field private static final mExportVarIdx_zebra_stripes_threshold:I = 0x4

.field private static final mExportVarIdx_zebra_stripes_width:I = 0xd


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __F32_3:Landroid/renderscript/Element;

.field private __I32:Landroid/renderscript/Element;

.field private __U8_4:Landroid/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/renderscript/FieldPacker;

.field private __rs_fp_I32:Landroid/renderscript/FieldPacker;

.field private mExportVar_bitmap:Landroid/renderscript/Allocation;

.field private mExportVar_histogram:Landroid/renderscript/Allocation;

.field private mExportVar_histogram_b:Landroid/renderscript/Allocation;

.field private mExportVar_histogram_g:Landroid/renderscript/Allocation;

.field private mExportVar_histogram_r:Landroid/renderscript/Allocation;

.field private mExportVar_zebra_stripes_background_a:I

.field private mExportVar_zebra_stripes_background_b:I

.field private mExportVar_zebra_stripes_background_g:I

.field private mExportVar_zebra_stripes_background_r:I

.field private mExportVar_zebra_stripes_foreground_a:I

.field private mExportVar_zebra_stripes_foreground_b:I

.field private mExportVar_zebra_stripes_foreground_g:I

.field private mExportVar_zebra_stripes_foreground_r:I

.field private mExportVar_zebra_stripes_threshold:I

.field private mExportVar_zebra_stripes_width:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 3

    .line 39
    invoke-static {}, Lnet/sourceforge/opencamera/histogram_computeBitCode;->getBitCode32()[B

    move-result-object v0

    .line 40
    invoke-static {}, Lnet/sourceforge/opencamera/histogram_computeBitCode;->getBitCode64()[B

    move-result-object v1

    const-string v2, "histogram_compute"

    .line 37
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    const/16 v0, 0xff

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_threshold:I

    .line 42
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->__I32:Landroid/renderscript/Element;

    const/4 v1, 0x0

    iput v1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_foreground_r:I

    iput v1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_foreground_g:I

    iput v1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_foreground_b:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_foreground_a:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_background_r:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_background_g:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_background_b:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_background_a:I

    const/16 v0, 0x28

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_width:I

    .line 52
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->__ALLOCATION:Landroid/renderscript/Element;

    .line 53
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->__U8_4:Landroid/renderscript/Element;

    .line 54
    invoke-static {p1}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->__F32_3:Landroid/renderscript/Element;

    return-void
.end method


# virtual methods
.method public bind_histogram(Landroid/renderscript/Allocation;)V
    .locals 1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_histogram:Landroid/renderscript/Allocation;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->bindAllocation(Landroid/renderscript/Allocation;I)V

    :goto_0
    return-void
.end method

.method public bind_histogram_b(Landroid/renderscript/Allocation;)V
    .locals 1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_histogram_b:Landroid/renderscript/Allocation;

    const/4 v0, 0x3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 103
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->bindAllocation(Landroid/renderscript/Allocation;I)V

    :goto_0
    return-void
.end method

.method public bind_histogram_g(Landroid/renderscript/Allocation;)V
    .locals 1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_histogram_g:Landroid/renderscript/Allocation;

    const/4 v0, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 91
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->bindAllocation(Landroid/renderscript/Allocation;I)V

    :goto_0
    return-void
.end method

.method public bind_histogram_r(Landroid/renderscript/Allocation;)V
    .locals 1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_histogram_r:Landroid/renderscript/Allocation;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 79
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->bindAllocation(Landroid/renderscript/Allocation;I)V

    :goto_0
    return-void
.end method

.method public forEach_generate_focus_peaking(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 435
    invoke-virtual {p0, p1, p2, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_generate_focus_peaking(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_generate_focus_peaking(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 8

    .line 440
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    const-string v1, "Type mismatch with U8_4!"

    if-eqz v0, :cond_2

    .line 444
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 449
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    .line 450
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 451
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 452
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 453
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 454
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 455
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/16 v3, 0x9

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    .line 459
    invoke-virtual/range {v2 .. v7}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 456
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 445
    :cond_1
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 441
    :cond_2
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEach_generate_focus_peaking_filtered(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 468
    invoke-virtual {p0, p1, p2, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_generate_focus_peaking_filtered(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_generate_focus_peaking_filtered(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 8

    .line 473
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    const-string v1, "Type mismatch with U8_4!"

    if-eqz v0, :cond_2

    .line 477
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 482
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    .line 483
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 484
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 485
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 486
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 487
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 488
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/16 v3, 0xa

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    .line 492
    invoke-virtual/range {v2 .. v7}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 489
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 478
    :cond_1
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 474
    :cond_2
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEach_generate_zebra_stripes(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 402
    invoke-virtual {p0, p1, p2, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_generate_zebra_stripes(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_generate_zebra_stripes(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 8

    .line 407
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    const-string v1, "Type mismatch with U8_4!"

    if-eqz v0, :cond_2

    .line 411
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 416
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    .line 417
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 418
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 419
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 420
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 421
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 422
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/16 v3, 0x8

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    .line 426
    invoke-virtual/range {v2 .. v7}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 423
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 412
    :cond_1
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 408
    :cond_2
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEach_histogram_compute_by_intensity(Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 334
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_histogram_compute_by_intensity(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_histogram_compute_by_intensity(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 7

    .line 339
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    .line 342
    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 340
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with U8_4!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEach_histogram_compute_by_intensity_f(Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_histogram_compute_by_intensity_f(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_histogram_compute_by_intensity_f(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 7

    .line 356
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->__F32_3:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    .line 359
    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 357
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with F32_3!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEach_histogram_compute_by_lightness(Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 368
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_histogram_compute_by_lightness(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_histogram_compute_by_lightness(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 7

    .line 373
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    .line 376
    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 374
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with U8_4!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEach_histogram_compute_by_luminance(Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_histogram_compute_by_luminance(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_histogram_compute_by_luminance(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 7

    .line 288
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    .line 291
    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 289
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with U8_4!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEach_histogram_compute_by_value(Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_histogram_compute_by_value(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_histogram_compute_by_value(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 7

    .line 305
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    .line 308
    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 306
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with U8_4!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEach_histogram_compute_by_value_f(Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 317
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_histogram_compute_by_value_f(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_histogram_compute_by_value_f(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 7

    .line 322
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->__F32_3:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    .line 325
    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 323
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with F32_3!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEach_histogram_compute_rgb(Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_histogram_compute_rgb(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_histogram_compute_rgb(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 7

    .line 390
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    .line 393
    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 391
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with U8_4!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFieldID_bitmap()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 273
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_zebra_stripes_background_a()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 243
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_zebra_stripes_background_b()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 228
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_zebra_stripes_background_g()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 213
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_zebra_stripes_background_r()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 198
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_zebra_stripes_foreground_a()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 183
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_zebra_stripes_foreground_b()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 168
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_zebra_stripes_foreground_g()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 153
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_zebra_stripes_foreground_r()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_zebra_stripes_threshold()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_zebra_stripes_width()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xd

    const/4 v1, 0x0

    .line 258
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_generate_focus_peaking()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x3b

    const/4 v1, 0x0

    const/16 v2, 0x9

    .line 431
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_generate_focus_peaking_filtered()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x3b

    const/4 v1, 0x0

    const/16 v2, 0xa

    .line 464
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_generate_zebra_stripes()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x3b

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 398
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_histogram_compute_by_intensity()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 330
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_histogram_compute_by_intensity_f()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 347
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_histogram_compute_by_lightness()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 364
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_histogram_compute_by_luminance()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 279
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_histogram_compute_by_value()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 296
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_histogram_compute_by_value_f()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 313
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_histogram_compute_rgb()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/4 v2, 0x7

    .line 381
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public get_bitmap()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_bitmap:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_histogram()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_histogram:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_histogram_b()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_histogram_b:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_histogram_g()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_histogram_g:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_histogram_r()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_histogram_r:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_zebra_stripes_background_a()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_background_a:I

    return v0
.end method

.method public get_zebra_stripes_background_b()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_background_b:I

    return v0
.end method

.method public get_zebra_stripes_background_g()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_background_g:I

    return v0
.end method

.method public get_zebra_stripes_background_r()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_background_r:I

    return v0
.end method

.method public get_zebra_stripes_foreground_a()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_foreground_a:I

    return v0
.end method

.method public get_zebra_stripes_foreground_b()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_foreground_b:I

    return v0
.end method

.method public get_zebra_stripes_foreground_g()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_foreground_g:I

    return v0
.end method

.method public get_zebra_stripes_foreground_r()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_foreground_r:I

    return v0
.end method

.method public get_zebra_stripes_threshold()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_threshold:I

    return v0
.end method

.method public get_zebra_stripes_width()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_width:I

    return v0
.end method

.method public invoke_init_histogram()V
    .locals 1

    const/4 v0, 0x0

    .line 497
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->invoke(I)V

    return-void
.end method

.method public invoke_init_histogram_rgb()V
    .locals 1

    const/4 v0, 0x1

    .line 502
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->invoke(I)V

    return-void
.end method

.method public declared-synchronized set_bitmap(Landroid/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0xe

    .line 264
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_bitmap:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_zebra_stripes_background_a(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0xc

    .line 234
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_background_a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_zebra_stripes_background_b(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0xb

    .line 219
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_background_b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_zebra_stripes_background_g(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0xa

    .line 204
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_background_g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_zebra_stripes_background_r(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x9

    .line 189
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_background_r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_zebra_stripes_foreground_a(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x8

    .line 174
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_foreground_a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_zebra_stripes_foreground_b(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x7

    .line 159
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_foreground_b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_zebra_stripes_foreground_g(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x6

    .line 144
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_foreground_g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_zebra_stripes_foreground_r(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x5

    .line 129
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_foreground_r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_zebra_stripes_threshold(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x4

    .line 114
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_threshold:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_zebra_stripes_width(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0xd

    .line 249
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->mExportVar_zebra_stripes_width:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
