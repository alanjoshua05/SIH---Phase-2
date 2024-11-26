.class public Lnet/sourceforge/opencamera/ScriptC_align_mtb;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_align_mtb.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "align_mtb"

.field private static final mExportForEachIdx_align:I = 0x2

.field private static final mExportForEachIdx_align_mtb:I = 0x1

.field private static final mExportFuncIdx_init_errors:I = 0x0

.field private static final mExportVarIdx_bitmap0:I = 0x0

.field private static final mExportVarIdx_bitmap1:I = 0x1

.field private static final mExportVarIdx_errors:I = 0x5

.field private static final mExportVarIdx_off_x:I = 0x3

.field private static final mExportVarIdx_off_y:I = 0x4

.field private static final mExportVarIdx_step_size:I = 0x2


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __I32:Landroid/renderscript/Element;

.field private __U8:Landroid/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/renderscript/FieldPacker;

.field private __rs_fp_I32:Landroid/renderscript/FieldPacker;

.field private mExportVar_bitmap0:Landroid/renderscript/Allocation;

.field private mExportVar_bitmap1:Landroid/renderscript/Allocation;

.field private mExportVar_errors:Landroid/renderscript/Allocation;

.field private mExportVar_off_x:I

.field private mExportVar_off_y:I

.field private mExportVar_step_size:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 3

    .line 39
    invoke-static {}, Lnet/sourceforge/opencamera/align_mtbBitCode;->getBitCode32()[B

    move-result-object v0

    .line 40
    invoke-static {}, Lnet/sourceforge/opencamera/align_mtbBitCode;->getBitCode64()[B

    move-result-object v1

    const-string v2, "align_mtb"

    .line 37
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    .line 41
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->__ALLOCATION:Landroid/renderscript/Element;

    const/4 v0, 0x1

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->mExportVar_step_size:I

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->__I32:Landroid/renderscript/Element;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->mExportVar_off_x:I

    iput v0, p0, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->mExportVar_off_y:I

    .line 46
    invoke-static {p1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->__U8:Landroid/renderscript/Element;

    return-void
.end method


# virtual methods
.method public bind_errors(Landroid/renderscript/Allocation;)V
    .locals 1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->mExportVar_errors:Landroid/renderscript/Allocation;

    const/4 v0, 0x5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 133
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->bindAllocation(Landroid/renderscript/Allocation;I)V

    :goto_0
    return-void
.end method

.method public forEach_align(Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->forEach_align(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_align(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 7

    .line 170
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->__U8:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    .line 173
    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 171
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with U8!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEach_align_mtb(Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->forEach_align_mtb(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_align_mtb(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 7

    .line 153
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->__U8:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    .line 156
    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 154
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with U8!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFieldID_bitmap0()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_bitmap1()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_off_x()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_off_y()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 126
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_step_size()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_align()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 161
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_align_mtb()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 144
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public get_bitmap0()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->mExportVar_bitmap0:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_bitmap1()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->mExportVar_bitmap1:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_errors()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->mExportVar_errors:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_off_x()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->mExportVar_off_x:I

    return v0
.end method

.method public get_off_y()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->mExportVar_off_y:I

    return v0
.end method

.method public get_step_size()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->mExportVar_step_size:I

    return v0
.end method

.method public invoke_init_errors()V
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->invoke(I)V

    return-void
.end method

.method public declared-synchronized set_bitmap0(Landroid/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 57
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->mExportVar_bitmap0:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
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

    .line 72
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->mExportVar_bitmap1:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_off_x(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x3

    .line 102
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->mExportVar_off_x:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_off_y(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x4

    .line 117
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->mExportVar_off_y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_step_size(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    .line 87
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->setVar(II)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->mExportVar_step_size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
