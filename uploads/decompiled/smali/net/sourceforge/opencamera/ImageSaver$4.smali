.class synthetic Lnet/sourceforge/opencamera/ImageSaver$4;
.super Ljava/lang/Object;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$sourceforge$opencamera$ImageSaver$Request$ImageFormat:[I

.field static final synthetic $SwitchMap$net$sourceforge$opencamera$ImageSaver$Request$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 2506
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->values()[Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$4;->$SwitchMap$net$sourceforge$opencamera$ImageSaver$Request$ImageFormat:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->WEBP:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$4;->$SwitchMap$net$sourceforge$opencamera$ImageSaver$Request$ImageFormat:[I

    sget-object v3, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->PNG:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 548
    :catch_1
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->values()[Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lnet/sourceforge/opencamera/ImageSaver$4;->$SwitchMap$net$sourceforge$opencamera$ImageSaver$Request$Type:[I

    :try_start_2
    sget-object v3, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->RAW:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$4;->$SwitchMap$net$sourceforge$opencamera$ImageSaver$Request$Type:[I

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->JPEG:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lnet/sourceforge/opencamera/ImageSaver$4;->$SwitchMap$net$sourceforge$opencamera$ImageSaver$Request$Type:[I

    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->DUMMY:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lnet/sourceforge/opencamera/ImageSaver$4;->$SwitchMap$net$sourceforge$opencamera$ImageSaver$Request$Type:[I

    sget-object v1, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->ON_DESTROY:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
