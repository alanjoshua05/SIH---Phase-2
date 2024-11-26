.class public Lnet/sourceforge/opencamera/JavaImageProcessing;
.super Ljava/lang/Object;
.source "JavaImageProcessing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;,
        Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;,
        Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;,
        Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JavaImageProcessing"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyFunction(Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p3

    move v8, p4

    .line 217
    invoke-static/range {v0 .. v8}, Lnet/sourceforge/opencamera/JavaImageProcessing;->applyFunction(Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIIII)V

    return-void
.end method

.method static applyFunction(Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIIII)V
    .locals 19

    move-object/from16 v0, p2

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sub-int v1, p6, p4

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move-object/from16 v11, p0

    .line 233
    invoke-interface {v11, v2}, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;->init(I)V

    .line 234
    new-array v12, v2, [Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v14, v2, :cond_2

    add-int/lit8 v16, v14, 0x1

    mul-int v3, v16, v1

    .line 237
    div-int v17, v3, v2

    .line 240
    new-instance v10, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;

    add-int v8, p4, v15

    add-int v18, p4, v17

    move-object v3, v10

    move v4, v14

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p3

    move/from16 v9, p5

    move-object v13, v10

    move/from16 v10, v18

    invoke-direct/range {v3 .. v10}, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;-><init>(ILnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;Landroid/graphics/Bitmap;IIII)V

    aput-object v13, v12, v14

    if-eqz v0, :cond_1

    add-int v3, p8, v15

    move/from16 v4, p7

    .line 242
    invoke-virtual {v13, v0, v4, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->setOutput(Landroid/graphics/Bitmap;II)V

    goto :goto_2

    :cond_1
    move/from16 v4, p7

    :goto_2
    move/from16 v14, v16

    move/from16 v15, v17

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_3

    .line 248
    aget-object v1, v12, v0

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_4
    if-ge v13, v2, :cond_4

    .line 254
    :try_start_0
    aget-object v0, v12, v13

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "JavaImageProcessing"

    const-string v2, "applyFunction threads interrupted"

    .line 258
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    return-void
.end method
