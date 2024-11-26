.class public Lnet/sourceforge/opencamera/ScriptC_process_avg;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_process_avg.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "process_avg"

.field private static final mExportForEachIdx_avg:I = 0x3

.field private static final mExportForEachIdx_avg_f:I = 0x2

.field private static final mExportForEachIdx_avg_multi:I = 0x4

.field private static final mExportForEachIdx_compute_diff:I = 0x1

.field private static final mExportVarIdx_avg_factor:I = 0x6

.field private static final mExportVarIdx_bitmap1:I = 0x9

.field private static final mExportVarIdx_bitmap2:I = 0xa

.field private static final mExportVarIdx_bitmap3:I = 0xb

.field private static final mExportVarIdx_bitmap4:I = 0xc

.field private static final mExportVarIdx_bitmap5:I = 0xd

.field private static final mExportVarIdx_bitmap6:I = 0xe

.field private static final mExportVarIdx_bitmap7:I = 0xf

.field private static final mExportVarIdx_bitmap_align_new:I = 0x2

.field private static final mExportVarIdx_bitmap_new:I = 0x1

.field private static final mExportVarIdx_bitmap_orig:I = 0x0

.field private static final mExportVarIdx_offset_x1:I = 0x10

.field private static final mExportVarIdx_offset_x2:I = 0x12

.field private static final mExportVarIdx_offset_x3:I = 0x14

.field private static final mExportVarIdx_offset_x4:I = 0x16

.field private static final mExportVarIdx_offset_x5:I = 0x18

.field private static final mExportVarIdx_offset_x6:I = 0x1a

.field private static final mExportVarIdx_offset_x7:I = 0x1c

.field private static final mExportVarIdx_offset_x_new:I = 0x3

.field private static final mExportVarIdx_offset_y1:I = 0x11

.field private static final mExportVarIdx_offset_y2:I = 0x13

.field private static final mExportVarIdx_offset_y3:I = 0x15

.field private static final mExportVarIdx_offset_y4:I = 0x17

.field private static final mExportVarIdx_offset_y5:I = 0x19

.field private static final mExportVarIdx_offset_y6:I = 0x1b

.field private static final mExportVarIdx_offset_y7:I = 0x1d

.field private static final mExportVarIdx_offset_y_new:I = 0x4

.field private static final mExportVarIdx_scale_align_size:I = 0x5

.field private static final mExportVarIdx_wiener_C:I = 0x7

.field private static final mExportVarIdx_wiener_C_cutoff:I = 0x8


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __F32:Landroid/renderscript/Element;

.field private __F32_3:Landroid/renderscript/Element;

.field private __I32:Landroid/renderscript/Element;

.field private __U8_4:Landroid/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/renderscript/FieldPacker;

.field private __rs_fp_F32:Landroid/renderscript/FieldPacker;

.field private __rs_fp_I32:Landroid/renderscript/FieldPacker;

.field private mExportVar_avg_factor:F

.field private mExportVar_bitmap1:Landroid/renderscript/Allocation;

.field private mExportVar_bitmap2:Landroid/renderscript/Allocation;

.field private mExportVar_bitmap3:Landroid/renderscript/Allocation;

.field private mExportVar_bitmap4:Landroid/renderscript/Allocation;

.field private mExportVar_bitmap5:Landroid/renderscript/Allocation;

.field private mExportVar_bitmap6:Landroid/renderscript/Allocation;

.field private mExportVar_bitmap7:Landroid/renderscript/Allocation;

.field private mExportVar_bitmap_align_new:Landroid/renderscript/Allocation;

.field private mExportVar_bitmap_new:Landroid/renderscript/Allocation;

.field private mExportVar_bitmap_orig:Landroid/renderscript/Allocation;

.field private mExportVar_offset_x1:I

.field private mExportVar_offset_x2:I

.field private mExportVar_offset_x3:I

.field private mExportVar_offset_x4:I

.field private mExportVar_offset_x5:I

.field private mExportVar_offset_x6:I

.field private mExportVar_offset_x7:I

.field private mExportVar_offset_x_new:I

.field private mExportVar_offset_y1:I

.field private mExportVar_offset_y2:I

.field private mExportVar_offset_y3:I

.field private mExportVar_offset_y4:I

.field private mExportVar_offset_y5:I

.field private mExportVar_offset_y6:I

.field private mExportVar_offset_y7:I

.field private mExportVar_offset_y_new:I

.field private mExportVar_scale_align_size:I

.field private mExportVar_wiener_C:F

.field private mExportVar_wiener_C_cutoff:F


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 3

    .line 39
    invoke-static {}, Lnet/sourceforge/opencamera/process_avgBitCode;->getBitCode32()[B

    move-result-object v0

    .line 40
    invoke-static {}, Lnet/sourceforge/opencamera/process_avgBitCode;->getBitCode64()[B

    move-result-object v1

    const-string v2, "process_avg"

    .line 37
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    .line 41
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->__ALLOCATION:Landroid/renderscript/Element;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x_new:I

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->__I32:Landroid/renderscript/Element;

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y_new:I

    const/4 v1, 0x1

    iput v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_scale_align_size:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_avg_factor:F

    .line 47
    invoke-static {p1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->__F32:Landroid/renderscript/Element;

    const/high16 v1, 0x44800000    # 1024.0f

    iput v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_wiener_C:F

    iput v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_wiener_C_cutoff:F

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x1:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y1:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x2:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y2:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x3:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y3:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x4:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y4:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x5:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y5:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x6:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y6:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x7:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y7:I

    .line 64
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->__U8_4:Landroid/renderscript/Element;

    .line 65
    invoke-static {p1}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->__F32_3:Landroid/renderscript/Element;

    return-void
.end method


# virtual methods
.method public forEach_avg(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 599
    invoke-virtual {p0, p1, p2, v0}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->forEach_avg(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_avg(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 8

    .line 604
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->__F32_3:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 613
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    .line 614
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 615
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 616
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 617
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 618
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 619
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x3

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    .line 623
    invoke-virtual/range {v2 .. v7}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 620
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 609
    :cond_1
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with F32_3!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 605
    :cond_2
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with U8_4!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEach_avg_f(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 566
    invoke-virtual {p0, p1, p2, v0}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->forEach_avg_f(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_avg_f(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 8

    .line 571
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->__F32_3:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    const-string v1, "Type mismatch with F32_3!"

    if-eqz v0, :cond_2

    .line 575
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->__F32_3:Landroid/renderscript/Element;

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 580
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    .line 581
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 582
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 583
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 584
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 585
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 586
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x2

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    .line 590
    invoke-virtual/range {v2 .. v7}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 587
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 576
    :cond_1
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 572
    :cond_2
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEach_avg_multi(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 632
    invoke-virtual {p0, p1, p2, v0}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->forEach_avg_multi(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_avg_multi(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 8

    .line 637
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    const-string v1, "Type mismatch with U8_4!"

    if-eqz v0, :cond_2

    .line 641
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 646
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    .line 647
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 648
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 649
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 650
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 651
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 652
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x4

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    .line 656
    invoke-virtual/range {v2 .. v7}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 653
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 642
    :cond_1
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 638
    :cond_2
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEach_compute_diff(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 533
    invoke-virtual {p0, p1, p2, v0}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->forEach_compute_diff(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_compute_diff(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 8

    .line 538
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->__F32:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 547
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    .line 548
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 549
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 550
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 551
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 552
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 553
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    .line 557
    invoke-virtual/range {v2 .. v7}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 554
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 543
    :cond_1
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with F32!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 539
    :cond_2
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with U8_4!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFieldID_avg_factor()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 178
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_bitmap1()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 223
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_bitmap2()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 238
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_bitmap3()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 253
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_bitmap4()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 268
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_bitmap5()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xd

    const/4 v1, 0x0

    .line 283
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_bitmap6()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 298
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_bitmap7()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xf

    const/4 v1, 0x0

    .line 313
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_bitmap_align_new()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_bitmap_new()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_bitmap_orig()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_x1()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 328
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_x2()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x12

    const/4 v1, 0x0

    .line 358
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_x3()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x14

    const/4 v1, 0x0

    .line 388
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_x4()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x16

    const/4 v1, 0x0

    .line 418
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_x5()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x18

    const/4 v1, 0x0

    .line 448
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_x6()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x1a

    const/4 v1, 0x0

    .line 478
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_x7()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x1c

    const/4 v1, 0x0

    .line 508
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_x_new()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 133
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_y1()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 343
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_y2()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x13

    const/4 v1, 0x0

    .line 373
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_y3()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x15

    const/4 v1, 0x0

    .line 403
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_y4()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x17

    const/4 v1, 0x0

    .line 433
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_y5()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x19

    const/4 v1, 0x0

    .line 463
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_y6()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x1b

    const/4 v1, 0x0

    .line 493
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_y7()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x1d

    const/4 v1, 0x0

    .line 523
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_y_new()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 148
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_scale_align_size()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 163
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_wiener_C()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 193
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_wiener_C_cutoff()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 208
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_avg()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x3b

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 595
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_avg_f()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x3b

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 562
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_avg_multi()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x3b

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 628
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_compute_diff()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x3b

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 529
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public get_avg_factor()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_avg_factor:F

    return v0
.end method

.method public get_bitmap1()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_bitmap1:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_bitmap2()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_bitmap2:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_bitmap3()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_bitmap3:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_bitmap4()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_bitmap4:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_bitmap5()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_bitmap5:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_bitmap6()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_bitmap6:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_bitmap7()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_bitmap7:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_bitmap_align_new()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_bitmap_align_new:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_bitmap_new()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_bitmap_new:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_bitmap_orig()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_bitmap_orig:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_offset_x1()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x1:I

    return v0
.end method

.method public get_offset_x2()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x2:I

    return v0
.end method

.method public get_offset_x3()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x3:I

    return v0
.end method

.method public get_offset_x4()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x4:I

    return v0
.end method

.method public get_offset_x5()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x5:I

    return v0
.end method

.method public get_offset_x6()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x6:I

    return v0
.end method

.method public get_offset_x7()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x7:I

    return v0
.end method

.method public get_offset_x_new()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x_new:I

    return v0
.end method

.method public get_offset_y1()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y1:I

    return v0
.end method

.method public get_offset_y2()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y2:I

    return v0
.end method

.method public get_offset_y3()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y3:I

    return v0
.end method

.method public get_offset_y4()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y4:I

    return v0
.end method

.method public get_offset_y5()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y5:I

    return v0
.end method

.method public get_offset_y6()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y6:I

    return v0
.end method

.method public get_offset_y7()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y7:I

    return v0
.end method

.method public get_offset_y_new()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y_new:I

    return v0
.end method

.method public get_scale_align_size()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_scale_align_size:I

    return v0
.end method

.method public get_wiener_C()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_wiener_C:F

    return v0
.end method

.method public get_wiener_C_cutoff()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_wiener_C_cutoff:F

    return v0
.end method

.method public declared-synchronized set_avg_factor(F)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x6

    .line 169
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_avg_factor:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_bitmap1(Landroid/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x9

    .line 214
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_bitmap1:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_bitmap2(Landroid/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0xa

    .line 229
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_bitmap2:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_bitmap3(Landroid/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0xb

    .line 244
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_bitmap3:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_bitmap4(Landroid/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0xc

    .line 259
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_bitmap4:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_bitmap5(Landroid/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0xd

    .line 274
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_bitmap5:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_bitmap6(Landroid/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0xe

    .line 289
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_bitmap6:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_bitmap7(Landroid/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0xf

    .line 304
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_bitmap7:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_bitmap_align_new(Landroid/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    .line 109
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_bitmap_align_new:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_bitmap_new(Landroid/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 94
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_bitmap_new:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_bitmap_orig(Landroid/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 79
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_bitmap_orig:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_offset_x1(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x10

    .line 319
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x1:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_offset_x2(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x12

    .line 349
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x2:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_offset_x3(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x14

    .line 379
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x3:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_offset_x4(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x16

    .line 409
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x4:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_offset_x5(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x18

    .line 439
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x5:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_offset_x6(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x1a

    .line 469
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x6:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_offset_x7(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x1c

    .line 499
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x7:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_offset_x_new(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x3

    .line 124
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_x_new:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_offset_y1(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x11

    .line 334
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y1:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_offset_y2(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x13

    .line 364
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y2:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_offset_y3(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x15

    .line 394
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y3:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_offset_y4(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x17

    .line 424
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y4:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_offset_y5(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x19

    .line 454
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y5:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_offset_y6(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x1b

    .line 484
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y6:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_offset_y7(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x1d

    .line 514
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y7:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_offset_y_new(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x4

    .line 139
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_offset_y_new:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_scale_align_size(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x5

    .line 154
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_scale_align_size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_wiener_C(F)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x7

    .line 184
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_wiener_C:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_wiener_C_cutoff(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x8

    .line 199
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_avg;->mExportVar_wiener_C_cutoff:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
