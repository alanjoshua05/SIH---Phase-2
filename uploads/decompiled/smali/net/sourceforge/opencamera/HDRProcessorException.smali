.class public Lnet/sourceforge/opencamera/HDRProcessorException;
.super Ljava/lang/Exception;
.source "HDRProcessorException.java"


# static fields
.field public static final INVALID_N_IMAGES:I = 0x0

.field public static final UNEQUAL_SIZES:I = 0x1


# instance fields
.field private final code:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lnet/sourceforge/opencamera/HDRProcessorException;->code:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/HDRProcessorException;->code:I

    return v0
.end method
