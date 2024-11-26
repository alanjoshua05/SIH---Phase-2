.class public Lnet/sourceforge/opencamera/ScriptC_create_mtb;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_create_mtb.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "create_mtb"

.field private static final mExportForEachIdx_create_greyscale:I = 0x2

.field private static final mExportForEachIdx_create_greyscale_f:I = 0x3

.field private static final mExportForEachIdx_create_mtb:I = 0x1

.field private static final mExportVarIdx_median_value:I = 0x1

.field private static final mExportVarIdx_out_bitmap:I = 0x0

.field private static final mExportVarIdx_start_x:I = 0x2

.field private static final mExportVarIdx_start_y:I = 0x3


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __F32_3:Landroid/renderscript/Element;

.field private __I32:Landroid/renderscript/Element;

.field private __U8_4:Landroid/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/renderscript/FieldPacker;

.field private __rs_fp_I32:Landroid/renderscript/FieldPacker;

.field private mExportVar_median_value:I

.field private mExportVar_out_bitmap:Landroid/renderscript/Allocation;

.field private mExportVar_start_x:I

.field private mExportVar_start_y:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 3

    .line 39
    invoke-static {}, Lnet/sourceforge/opencamera/create_mtbBitCode;->getBitCode32()[B

    move-result-object v0

    .line 40
    invoke-static {}, Lnet/sourceforge/opencamera/create_mtbBitCode;->getBitCode64()[B

    move-result-object v1

    const-string v2, "create_mtb"

    .line 37
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    .line 41
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->__ALLOCATION:Landroid/renderscript/Element;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->mExportVar_median_value:I

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->__I32:Landroid/renderscript/Element;

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->mExportVar_start_x:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->mExportVar_start_y:I

    .line 46
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->__U8_4:Landroid/renderscript/Element;

    .line 47
    invoke-static {p1}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->__F32_3:Landroid/renderscript/Element;

    return-void
.end method


# virtual methods
.method public forEach_create_greyscale(Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->forEach_create_greyscale(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_create_greyscale(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 7

    .line 145
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    .line 148
    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 146
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with U8_4!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEach_create_greyscale_f(Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->forEach_create_greyscale_f(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_create_greyscale_f(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 7

    .line 162
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->__F32_3:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    .line 165
    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 163
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with F32_3!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEach_create_mtb(Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->forEach_create_mtb(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_create_mtb(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 7

    .line 128
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    .line 131
    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 129
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with U8_4!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFieldID_median_value()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_out_bitmap()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_start_x()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_start_y()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_create_greyscale()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 136
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_create_greyscale_f()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 153
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_create_mtb()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 119
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public get_median_value()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->mExportVar_median_value:I

    return v0
.end method

.method public get_out_bitmap()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->mExportVar_out_bitmap:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_start_x()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->mExportVar_start_x:I

    return v0
.end method

.method public get_start_y()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->mExportVar_start_y:I

    return v0
.end method

.method public declared-synchronized set_median_value(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 74
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->mExportVar_median_value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_out_bitmap(Landroid/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 59
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->mExportVar_out_bitmap:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_start_x(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    .line 89
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->mExportVar_start_x:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_start_y(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x3

    .line 104
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->mExportVar_start_y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
