.class public Lnet/sourceforge/opencamera/ScriptC_process_hdr;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_process_hdr.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "process_hdr"

.field public static final const_exposure:F = 1.2f

.field public static final const_fu2_exposure_bias:F = 0.007843138f

.field public static final const_tonemap_algorithm_aces_c:I = 0x4

.field public static final const_tonemap_algorithm_clamp_c:I = 0x0

.field public static final const_tonemap_algorithm_exponential_c:I = 0x1

.field public static final const_tonemap_algorithm_fu2_c:I = 0x3

.field public static final const_tonemap_algorithm_reinhard_c:I = 0x2

.field public static final const_weight_scale_c:F = 0.0077816225f

.field private static final mExportForEachIdx_hdr:I = 0x1

.field private static final mExportForEachIdx_hdr_n:I = 0x2

.field private static final mExportVarIdx_W:I = 0x2d

.field private static final mExportVarIdx_bitmap0:I = 0x0

.field private static final mExportVarIdx_bitmap1:I = 0x1

.field private static final mExportVarIdx_bitmap2:I = 0x2

.field private static final mExportVarIdx_bitmap3:I = 0x3

.field private static final mExportVarIdx_bitmap4:I = 0x4

.field private static final mExportVarIdx_bitmap5:I = 0x5

.field private static final mExportVarIdx_bitmap6:I = 0x6

.field private static final mExportVarIdx_exposure:I = 0x2a

.field private static final mExportVarIdx_fu2_exposure_bias:I = 0x2c

.field private static final mExportVarIdx_linear_scale:I = 0x2e

.field private static final mExportVarIdx_n_bitmaps_g:I = 0x2f

.field private static final mExportVarIdx_offset_x0:I = 0x7

.field private static final mExportVarIdx_offset_x1:I = 0x9

.field private static final mExportVarIdx_offset_x2:I = 0xb

.field private static final mExportVarIdx_offset_x3:I = 0xd

.field private static final mExportVarIdx_offset_x4:I = 0xf

.field private static final mExportVarIdx_offset_x5:I = 0x11

.field private static final mExportVarIdx_offset_x6:I = 0x13

.field private static final mExportVarIdx_offset_y0:I = 0x8

.field private static final mExportVarIdx_offset_y1:I = 0xa

.field private static final mExportVarIdx_offset_y2:I = 0xc

.field private static final mExportVarIdx_offset_y3:I = 0xe

.field private static final mExportVarIdx_offset_y4:I = 0x10

.field private static final mExportVarIdx_offset_y5:I = 0x12

.field private static final mExportVarIdx_offset_y6:I = 0x14

.field private static final mExportVarIdx_parameter_A0:I = 0x15

.field private static final mExportVarIdx_parameter_A1:I = 0x17

.field private static final mExportVarIdx_parameter_A2:I = 0x19

.field private static final mExportVarIdx_parameter_A3:I = 0x1b

.field private static final mExportVarIdx_parameter_A4:I = 0x1d

.field private static final mExportVarIdx_parameter_A5:I = 0x1f

.field private static final mExportVarIdx_parameter_A6:I = 0x21

.field private static final mExportVarIdx_parameter_B0:I = 0x16

.field private static final mExportVarIdx_parameter_B1:I = 0x18

.field private static final mExportVarIdx_parameter_B2:I = 0x1a

.field private static final mExportVarIdx_parameter_B3:I = 0x1c

.field private static final mExportVarIdx_parameter_B4:I = 0x1e

.field private static final mExportVarIdx_parameter_B5:I = 0x20

.field private static final mExportVarIdx_parameter_B6:I = 0x22

.field private static final mExportVarIdx_tonemap_algorithm:I = 0x29

.field private static final mExportVarIdx_tonemap_algorithm_aces_c:I = 0x28

.field private static final mExportVarIdx_tonemap_algorithm_clamp_c:I = 0x24

.field private static final mExportVarIdx_tonemap_algorithm_exponential_c:I = 0x25

.field private static final mExportVarIdx_tonemap_algorithm_fu2_c:I = 0x27

.field private static final mExportVarIdx_tonemap_algorithm_reinhard_c:I = 0x26

.field private static final mExportVarIdx_tonemap_scale:I = 0x2b

.field private static final mExportVarIdx_weight_scale_c:I = 0x23


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __F32:Landroid/renderscript/Element;

.field private __I32:Landroid/renderscript/Element;

.field private __U8_4:Landroid/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/renderscript/FieldPacker;

.field private __rs_fp_F32:Landroid/renderscript/FieldPacker;

.field private __rs_fp_I32:Landroid/renderscript/FieldPacker;

.field private mExportVar_W:F

.field private mExportVar_bitmap0:Landroid/renderscript/Allocation;

.field private mExportVar_bitmap1:Landroid/renderscript/Allocation;

.field private mExportVar_bitmap2:Landroid/renderscript/Allocation;

.field private mExportVar_bitmap3:Landroid/renderscript/Allocation;

.field private mExportVar_bitmap4:Landroid/renderscript/Allocation;

.field private mExportVar_bitmap5:Landroid/renderscript/Allocation;

.field private mExportVar_bitmap6:Landroid/renderscript/Allocation;

.field private mExportVar_exposure:F

.field private mExportVar_fu2_exposure_bias:F

.field private mExportVar_linear_scale:F

.field private mExportVar_n_bitmaps_g:I

.field private mExportVar_offset_x0:I

.field private mExportVar_offset_x1:I

.field private mExportVar_offset_x2:I

.field private mExportVar_offset_x3:I

.field private mExportVar_offset_x4:I

.field private mExportVar_offset_x5:I

.field private mExportVar_offset_x6:I

.field private mExportVar_offset_y0:I

.field private mExportVar_offset_y1:I

.field private mExportVar_offset_y2:I

.field private mExportVar_offset_y3:I

.field private mExportVar_offset_y4:I

.field private mExportVar_offset_y5:I

.field private mExportVar_offset_y6:I

.field private mExportVar_parameter_A0:F

.field private mExportVar_parameter_A1:F

.field private mExportVar_parameter_A2:F

.field private mExportVar_parameter_A3:F

.field private mExportVar_parameter_A4:F

.field private mExportVar_parameter_A5:F

.field private mExportVar_parameter_A6:F

.field private mExportVar_parameter_B0:F

.field private mExportVar_parameter_B1:F

.field private mExportVar_parameter_B2:F

.field private mExportVar_parameter_B3:F

.field private mExportVar_parameter_B4:F

.field private mExportVar_parameter_B5:F

.field private mExportVar_parameter_B6:F

.field private mExportVar_tonemap_algorithm:I

.field private mExportVar_tonemap_algorithm_aces_c:I

.field private mExportVar_tonemap_algorithm_clamp_c:I

.field private mExportVar_tonemap_algorithm_exponential_c:I

.field private mExportVar_tonemap_algorithm_fu2_c:I

.field private mExportVar_tonemap_algorithm_reinhard_c:I

.field private mExportVar_tonemap_scale:F

.field private mExportVar_weight_scale_c:F


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 4

    .line 39
    invoke-static {}, Lnet/sourceforge/opencamera/process_hdrBitCode;->getBitCode32()[B

    move-result-object v0

    .line 40
    invoke-static {}, Lnet/sourceforge/opencamera/process_hdrBitCode;->getBitCode64()[B

    move-result-object v1

    const-string v2, "process_hdr"

    .line 37
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    .line 41
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->__ALLOCATION:Landroid/renderscript/Element;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_x0:I

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->__I32:Landroid/renderscript/Element;

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_y0:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_x1:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_y1:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_x2:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_y2:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_x3:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_y3:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_x4:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_y4:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_x5:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_y5:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_x6:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_y6:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_A0:F

    .line 58
    invoke-static {p1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    iput-object v2, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->__F32:Landroid/renderscript/Element;

    const/4 v2, 0x0

    iput v2, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_B0:F

    iput v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_A1:F

    iput v2, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_B1:F

    iput v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_A2:F

    iput v2, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_B2:F

    iput v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_A3:F

    iput v2, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_B3:F

    iput v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_A4:F

    iput v2, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_B4:F

    iput v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_A5:F

    iput v2, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_B5:F

    iput v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_A6:F

    iput v2, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_B6:F

    const v2, 0x3bfefcfb

    iput v2, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_weight_scale_c:F

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_tonemap_algorithm_clamp_c:I

    const/4 v0, 0x1

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_tonemap_algorithm_exponential_c:I

    const/4 v0, 0x2

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_tonemap_algorithm_reinhard_c:I

    const/4 v2, 0x3

    iput v2, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_tonemap_algorithm_fu2_c:I

    const/4 v3, 0x4

    iput v3, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_tonemap_algorithm_aces_c:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_tonemap_algorithm:I

    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_exposure:F

    iput v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_tonemap_scale:F

    const v0, 0x3c008081

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_fu2_exposure_bias:F

    const v0, 0x41333333    # 11.2f

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_W:F

    iput v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_linear_scale:F

    iput v2, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_n_bitmaps_g:I

    .line 85
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->__U8_4:Landroid/renderscript/Element;

    return-void
.end method


# virtual methods
.method public forEach_hdr(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 790
    invoke-virtual {p0, p1, p2, v0}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->forEach_hdr(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_hdr(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 8

    .line 795
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    const-string v1, "Type mismatch with U8_4!"

    if-eqz v0, :cond_2

    .line 799
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 803
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 804
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    .line 805
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 806
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 807
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 808
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 809
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 810
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

    .line 814
    invoke-virtual/range {v2 .. v7}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 811
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 800
    :cond_1
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 796
    :cond_2
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEach_hdr_n(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 823
    invoke-virtual {p0, p1, p2, v0}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->forEach_hdr_n(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_hdr_n(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 8

    .line 828
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    const-string v1, "Type mismatch with U8_4!"

    if-eqz v0, :cond_2

    .line 832
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 836
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 837
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    .line 838
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 839
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 840
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 841
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 842
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 843
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

    .line 847
    invoke-virtual/range {v2 .. v7}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 844
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 833
    :cond_1
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 829
    :cond_2
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFieldID_W()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x2d

    const/4 v1, 0x0

    .line 750
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_bitmap0()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_bitmap1()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_bitmap2()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_bitmap3()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 152
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_bitmap4()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 167
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_bitmap5()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 182
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_bitmap6()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 197
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_exposure()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x2a

    const/4 v1, 0x0

    .line 709
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_fu2_exposure_bias()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x2c

    const/4 v1, 0x0

    .line 735
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_linear_scale()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x2e

    const/4 v1, 0x0

    .line 765
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_n_bitmaps_g()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x2f

    const/4 v1, 0x0

    .line 780
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_x0()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 212
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_x1()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 242
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_x2()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 272
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_x3()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xd

    const/4 v1, 0x0

    .line 302
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_x4()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xf

    const/4 v1, 0x0

    .line 332
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_x5()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 362
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_x6()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x13

    const/4 v1, 0x0

    .line 392
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_y0()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 227
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_y1()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 257
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_y2()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 287
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_y3()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 317
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_y4()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 347
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_y5()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x12

    const/4 v1, 0x0

    .line 377
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset_y6()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x14

    const/4 v1, 0x0

    .line 407
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_parameter_A0()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x15

    const/4 v1, 0x0

    .line 422
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_parameter_A1()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x17

    const/4 v1, 0x0

    .line 452
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_parameter_A2()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x19

    const/4 v1, 0x0

    .line 482
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_parameter_A3()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x1b

    const/4 v1, 0x0

    .line 512
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_parameter_A4()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x1d

    const/4 v1, 0x0

    .line 542
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_parameter_A5()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x1f

    const/4 v1, 0x0

    .line 572
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_parameter_A6()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x21

    const/4 v1, 0x0

    .line 602
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_parameter_B0()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x16

    const/4 v1, 0x0

    .line 437
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_parameter_B1()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x18

    const/4 v1, 0x0

    .line 467
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_parameter_B2()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x1a

    const/4 v1, 0x0

    .line 497
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_parameter_B3()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x1c

    const/4 v1, 0x0

    .line 527
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_parameter_B4()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x1e

    const/4 v1, 0x0

    .line 557
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_parameter_B5()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x0

    .line 587
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_parameter_B6()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x22

    const/4 v1, 0x0

    .line 617
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_tonemap_algorithm()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x29

    const/4 v1, 0x0

    .line 698
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_tonemap_algorithm_aces_c()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x28

    const/4 v1, 0x0

    .line 683
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_tonemap_algorithm_clamp_c()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x24

    const/4 v1, 0x0

    .line 639
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_tonemap_algorithm_exponential_c()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x25

    const/4 v1, 0x0

    .line 650
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_tonemap_algorithm_fu2_c()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x27

    const/4 v1, 0x0

    .line 672
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_tonemap_algorithm_reinhard_c()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x26

    const/4 v1, 0x0

    .line 661
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_tonemap_scale()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x2b

    const/4 v1, 0x0

    .line 724
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_weight_scale_c()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x23

    const/4 v1, 0x0

    .line 628
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_hdr()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x3b

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 786
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_hdr_n()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x3b

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 819
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public get_W()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_W:F

    return v0
.end method

.method public get_bitmap0()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_bitmap0:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_bitmap1()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_bitmap1:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_bitmap2()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_bitmap2:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_bitmap3()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_bitmap3:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_bitmap4()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_bitmap4:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_bitmap5()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_bitmap5:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_bitmap6()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_bitmap6:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_exposure()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_exposure:F

    return v0
.end method

.method public get_fu2_exposure_bias()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_fu2_exposure_bias:F

    return v0
.end method

.method public get_linear_scale()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_linear_scale:F

    return v0
.end method

.method public get_n_bitmaps_g()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_n_bitmaps_g:I

    return v0
.end method

.method public get_offset_x0()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_x0:I

    return v0
.end method

.method public get_offset_x1()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_x1:I

    return v0
.end method

.method public get_offset_x2()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_x2:I

    return v0
.end method

.method public get_offset_x3()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_x3:I

    return v0
.end method

.method public get_offset_x4()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_x4:I

    return v0
.end method

.method public get_offset_x5()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_x5:I

    return v0
.end method

.method public get_offset_x6()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_x6:I

    return v0
.end method

.method public get_offset_y0()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_y0:I

    return v0
.end method

.method public get_offset_y1()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_y1:I

    return v0
.end method

.method public get_offset_y2()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_y2:I

    return v0
.end method

.method public get_offset_y3()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_y3:I

    return v0
.end method

.method public get_offset_y4()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_y4:I

    return v0
.end method

.method public get_offset_y5()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_y5:I

    return v0
.end method

.method public get_offset_y6()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_y6:I

    return v0
.end method

.method public get_parameter_A0()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_A0:F

    return v0
.end method

.method public get_parameter_A1()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_A1:F

    return v0
.end method

.method public get_parameter_A2()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_A2:F

    return v0
.end method

.method public get_parameter_A3()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_A3:F

    return v0
.end method

.method public get_parameter_A4()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_A4:F

    return v0
.end method

.method public get_parameter_A5()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_A5:F

    return v0
.end method

.method public get_parameter_A6()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_A6:F

    return v0
.end method

.method public get_parameter_B0()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_B0:F

    return v0
.end method

.method public get_parameter_B1()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_B1:F

    return v0
.end method

.method public get_parameter_B2()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_B2:F

    return v0
.end method

.method public get_parameter_B3()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_B3:F

    return v0
.end method

.method public get_parameter_B4()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_B4:F

    return v0
.end method

.method public get_parameter_B5()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_B5:F

    return v0
.end method

.method public get_parameter_B6()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_B6:F

    return v0
.end method

.method public get_tonemap_algorithm()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_tonemap_algorithm:I

    return v0
.end method

.method public get_tonemap_algorithm_aces_c()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_tonemap_algorithm_aces_c:I

    return v0
.end method

.method public get_tonemap_algorithm_clamp_c()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_tonemap_algorithm_clamp_c:I

    return v0
.end method

.method public get_tonemap_algorithm_exponential_c()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_tonemap_algorithm_exponential_c:I

    return v0
.end method

.method public get_tonemap_algorithm_fu2_c()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_tonemap_algorithm_fu2_c:I

    return v0
.end method

.method public get_tonemap_algorithm_reinhard_c()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_tonemap_algorithm_reinhard_c:I

    return v0
.end method

.method public get_tonemap_scale()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_tonemap_scale:F

    return v0
.end method

.method public get_weight_scale_c()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_weight_scale_c:F

    return v0
.end method

.method public declared-synchronized set_W(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x2d

    .line 741
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_W:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_bitmap0(Landroid/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 98
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_bitmap0:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
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

    const/4 v0, 0x1

    .line 113
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_bitmap1:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
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

    const/4 v0, 0x2

    .line 128
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_bitmap2:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
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

    const/4 v0, 0x3

    .line 143
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_bitmap3:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
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

    const/4 v0, 0x4

    .line 158
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_bitmap4:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
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

    const/4 v0, 0x5

    .line 173
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_bitmap5:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
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

    const/4 v0, 0x6

    .line 188
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_bitmap6:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_linear_scale(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x2e

    .line 756
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_linear_scale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_n_bitmaps_g(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x2f

    .line 771
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_n_bitmaps_g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_offset_x0(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x7

    .line 203
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_x0:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
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

    const/16 v0, 0x9

    .line 233
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_x1:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
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

    const/16 v0, 0xb

    .line 263
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_x2:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
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

    const/16 v0, 0xd

    .line 293
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_x3:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
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

    const/16 v0, 0xf

    .line 323
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_x4:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
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

    const/16 v0, 0x11

    .line 353
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_x5:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
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

    const/16 v0, 0x13

    .line 383
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_x6:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_offset_y0(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x8

    .line 218
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_y0:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
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

    const/16 v0, 0xa

    .line 248
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_y1:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
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

    const/16 v0, 0xc

    .line 278
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_y2:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
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

    const/16 v0, 0xe

    .line 308
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_y3:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
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

    const/16 v0, 0x10

    .line 338
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_y4:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
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

    const/16 v0, 0x12

    .line 368
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_y5:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
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

    const/16 v0, 0x14

    .line 398
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_offset_y6:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_parameter_A0(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x15

    .line 413
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_A0:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_parameter_A1(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x17

    .line 443
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_A1:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_parameter_A2(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x19

    .line 473
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_A2:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_parameter_A3(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x1b

    .line 503
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_A3:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_parameter_A4(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x1d

    .line 533
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_A4:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_parameter_A5(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x1f

    .line 563
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_A5:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_parameter_A6(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x21

    .line 593
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_A6:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_parameter_B0(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x16

    .line 428
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_B0:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_parameter_B1(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x18

    .line 458
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_B1:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_parameter_B2(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x1a

    .line 488
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_B2:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_parameter_B3(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x1c

    .line 518
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_B3:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_parameter_B4(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x1e

    .line 548
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_B4:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_parameter_B5(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x20

    .line 578
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_B5:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_parameter_B6(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x22

    .line 608
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_parameter_B6:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_tonemap_algorithm(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x29

    .line 689
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_tonemap_algorithm:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_tonemap_scale(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x2b

    .line 715
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->mExportVar_tonemap_scale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
