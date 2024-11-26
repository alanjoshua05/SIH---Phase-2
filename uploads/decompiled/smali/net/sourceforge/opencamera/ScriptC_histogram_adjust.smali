.class public Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_histogram_adjust.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "histogram_adjust"

.field private static final mExportForEachIdx_histogram_adjust:I = 0x1

.field private static final mExportVarIdx_c_histogram:I = 0x0

.field private static final mExportVarIdx_hdr_alpha:I = 0x1

.field private static final mExportVarIdx_height:I = 0x4

.field private static final mExportVarIdx_n_tiles:I = 0x2

.field private static final mExportVarIdx_width:I = 0x3


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __F32:Landroid/renderscript/Element;

.field private __I32:Landroid/renderscript/Element;

.field private __U8_4:Landroid/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/renderscript/FieldPacker;

.field private __rs_fp_F32:Landroid/renderscript/FieldPacker;

.field private __rs_fp_I32:Landroid/renderscript/FieldPacker;

.field private mExportVar_c_histogram:Landroid/renderscript/Allocation;

.field private mExportVar_hdr_alpha:F

.field private mExportVar_height:I

.field private mExportVar_n_tiles:I

.field private mExportVar_width:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 3

    .line 39
    invoke-static {}, Lnet/sourceforge/opencamera/histogram_adjustBitCode;->getBitCode32()[B

    move-result-object v0

    .line 40
    invoke-static {}, Lnet/sourceforge/opencamera/histogram_adjustBitCode;->getBitCode64()[B

    move-result-object v1

    const-string v2, "histogram_adjust"

    .line 37
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    .line 41
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->__ALLOCATION:Landroid/renderscript/Element;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->mExportVar_hdr_alpha:F

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->__F32:Landroid/renderscript/Element;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->mExportVar_n_tiles:I

    .line 45
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->__I32:Landroid/renderscript/Element;

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->mExportVar_width:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->mExportVar_height:I

    .line 48
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->__U8_4:Landroid/renderscript/Element;

    return-void
.end method


# virtual methods
.method public forEach_histogram_adjust(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, p1, p2, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->forEach_histogram_adjust(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_histogram_adjust(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 8

    .line 145
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    const-string v1, "Type mismatch with U8_4!"

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 154
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    .line 155
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 159
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 160
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

    .line 164
    invoke-virtual/range {v2 .. v7}, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 161
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_1
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_2
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFieldID_c_histogram()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_hdr_alpha()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_height()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_n_tiles()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_width()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_histogram_adjust()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x3b

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 136
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public get_c_histogram()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->mExportVar_c_histogram:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_hdr_alpha()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->mExportVar_hdr_alpha:F

    return v0
.end method

.method public get_height()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->mExportVar_height:I

    return v0
.end method

.method public get_n_tiles()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->mExportVar_n_tiles:I

    return v0
.end method

.method public get_width()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->mExportVar_width:I

    return v0
.end method

.method public declared-synchronized set_c_histogram(Landroid/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 61
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->mExportVar_c_histogram:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_hdr_alpha(F)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 76
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->mExportVar_hdr_alpha:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_height(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x4

    .line 121
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->mExportVar_height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_n_tiles(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    .line 91
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->mExportVar_n_tiles:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_width(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x3

    .line 106
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->mExportVar_width:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
