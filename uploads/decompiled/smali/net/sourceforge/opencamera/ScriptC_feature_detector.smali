.class public Lnet/sourceforge/opencamera/ScriptC_feature_detector;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_feature_detector.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "feature_detector"

.field private static final mExportForEachIdx_compute_derivatives:I = 0x2

.field private static final mExportForEachIdx_corner_detector:I = 0x3

.field private static final mExportForEachIdx_create_greyscale:I = 0x1

.field private static final mExportForEachIdx_local_maximum:I = 0x4

.field private static final mExportVarIdx_bitmap:I = 0x1

.field private static final mExportVarIdx_bitmap_Ix:I = 0x2

.field private static final mExportVarIdx_bitmap_Iy:I = 0x3

.field private static final mExportVarIdx_corner_threshold:I


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __F32:Landroid/renderscript/Element;

.field private __U8:Landroid/renderscript/Element;

.field private __U8_4:Landroid/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/renderscript/FieldPacker;

.field private __rs_fp_F32:Landroid/renderscript/FieldPacker;

.field private mExportVar_bitmap:Landroid/renderscript/Allocation;

.field private mExportVar_bitmap_Ix:Landroid/renderscript/Allocation;

.field private mExportVar_bitmap_Iy:Landroid/renderscript/Allocation;

.field private mExportVar_corner_threshold:F


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 3

    .line 39
    invoke-static {}, Lnet/sourceforge/opencamera/feature_detectorBitCode;->getBitCode32()[B

    move-result-object v0

    .line 40
    invoke-static {}, Lnet/sourceforge/opencamera/feature_detectorBitCode;->getBitCode64()[B

    move-result-object v1

    const-string v2, "feature_detector"

    .line 37
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    .line 41
    invoke-static {p1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->__F32:Landroid/renderscript/Element;

    .line 42
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->__ALLOCATION:Landroid/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->__U8_4:Landroid/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->__U8:Landroid/renderscript/Element;

    return-void
.end method


# virtual methods
.method public forEach_compute_derivatives(Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->forEach_compute_derivatives(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_compute_derivatives(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 7

    .line 158
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->__U8:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    .line 161
    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 159
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with U8!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEach_corner_detector(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, p1, p2, v0}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->forEach_corner_detector(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_corner_detector(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 8

    .line 175
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->__U8:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->__F32:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 184
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    .line 185
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 190
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

    .line 194
    invoke-virtual/range {v2 .. v7}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 191
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :cond_1
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with F32!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 176
    :cond_2
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with U8!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEach_create_greyscale(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, p1, p2, v0}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->forEach_create_greyscale(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_create_greyscale(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 8

    .line 125
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->__U8:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 134
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    .line 135
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 140
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

    .line 144
    invoke-virtual/range {v2 .. v7}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 141
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_1
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with U8!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_2
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with U8_4!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEach_local_maximum(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, p1, p2, v0}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->forEach_local_maximum(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_local_maximum(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 8

    .line 208
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->__F32:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->__U8:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 217
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    .line 218
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 220
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 221
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 222
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 223
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

    .line 227
    invoke-virtual/range {v2 .. v7}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 224
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 213
    :cond_1
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with U8!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_2
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Type mismatch with F32!"

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFieldID_bitmap()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_bitmap_Ix()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_bitmap_Iy()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_corner_threshold()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_compute_derivatives()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 149
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_corner_detector()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x3b

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 166
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_create_greyscale()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x3b

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 116
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_local_maximum()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x3b

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 199
    invoke-virtual {p0, v2, v0, v1, v1}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public get_bitmap()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->mExportVar_bitmap:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_bitmap_Ix()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->mExportVar_bitmap_Ix:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_bitmap_Iy()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->mExportVar_bitmap_Iy:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_corner_threshold()F
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->mExportVar_corner_threshold:F

    return v0
.end method

.method public declared-synchronized set_bitmap(Landroid/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 71
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->mExportVar_bitmap:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_bitmap_Ix(Landroid/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    .line 86
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->mExportVar_bitmap_Ix:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_bitmap_Iy(Landroid/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x3

    .line 101
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->setVar(ILandroid/renderscript/BaseObj;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->mExportVar_bitmap_Iy:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_corner_threshold(F)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 56
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->setVar(IF)V

    iput p1, p0, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->mExportVar_corner_threshold:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
