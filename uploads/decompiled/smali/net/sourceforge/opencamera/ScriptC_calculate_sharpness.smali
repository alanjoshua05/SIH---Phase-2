.class public Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_calculate_sharpness.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "calculate_sharpness"

.field private static final mExportForEachIdx_calculate_sharpness:I = 0x1

.field private static final mExportFuncIdx_init_sums:I = 0x0

.field private static final mExportVarIdx_bitmap:I = 0x0

.field private static final mExportVarIdx_sums:I = 0x1

.field private static final mExportVarIdx_width:I = 0x2


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __I32:Landroid/renderscript/Element;

.field private __U8_4:Landroid/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/renderscript/FieldPacker;

.field private __rs_fp_I32:Landroid/renderscript/FieldPacker;

.field private mExportVar_bitmap:Landroid/renderscript/Allocation;

.field private mExportVar_sums:Landroid/renderscript/Allocation;

.field private mExportVar_width:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 3

    .line 39
    invoke-static {}, Lnet/sourceforge/opencamera/calculate_sharpnessBitCode;->getBitCode32()[B

    move-result-object v0

    .line 40
    invoke-static {}, Lnet/sourceforge/opencamera/calculate_sharpnessBitCode;->getBitCode64()[B

    move-result-object v1

    const-string v2, "calculate_sharpness"

    .line 37
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    .line 41
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->__ALLOCATION:Landroid/renderscript/Element;

    .line 42
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->__I32:Landroid/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->__U8_4:Landroid/renderscript/Element;

    return-void
.end method


# virtual methods
.method public bind_sums(Landroid/renderscript/Allocation;)V
    .locals 1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->mExportVar_sums:Landroid/renderscript/Allocation;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->bindAllocation(Landroid/renderscript/Allocation;I)V

    :goto_0
    return-void
.end method

.method public forEach_calculate_sharpness(Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->forEach_calculate_sharpness(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_calculate_sharpness(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 7

    .line 105
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    .line 108
    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 106
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with U8_4!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFieldID_bitmap()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_width()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_calculate_sharpness()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 96
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public get_bitmap()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->mExportVar_bitmap:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_sums()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->mExportVar_sums:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_width()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->mExportVar_width:I

    return v0
.end method

.method public invoke_init_sums()V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->invoke(I)V

    return-void
.end method

.method public declared-synchronized set_bitmap(Landroid/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 54
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->mExportVar_bitmap:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
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

    const/4 v0, 0x2

    .line 81
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->mExportVar_width:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
