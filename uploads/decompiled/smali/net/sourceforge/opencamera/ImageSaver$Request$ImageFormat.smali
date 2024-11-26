.class final enum Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;
.super Ljava/lang/Enum;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/ImageSaver$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ImageFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

.field public static final enum PNG:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

.field public static final enum STD:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

.field public static final enum WEBP:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;


# direct methods
.method private static synthetic $values()[Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->STD:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->WEBP:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->PNG:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 144
    new-instance v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    const-string v1, "STD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->STD:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    .line 145
    new-instance v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    const-string v1, "WEBP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->WEBP:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    .line 146
    new-instance v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    const-string v1, "PNG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->PNG:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    .line 143
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->$values()[Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->$VALUES:[Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;
    .locals 1

    const-class v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    .line 143
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    return-object p0
.end method

.method public static values()[Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->$VALUES:[Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    .line 143
    invoke-virtual {v0}, [Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    return-object v0
.end method
