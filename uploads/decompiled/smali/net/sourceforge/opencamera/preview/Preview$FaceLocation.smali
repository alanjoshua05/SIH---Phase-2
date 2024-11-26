.class final enum Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;
.super Ljava/lang/Enum;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/preview/Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FaceLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

.field public static final enum FACELOCATION_BOTTOM:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

.field public static final enum FACELOCATION_CENTRE:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

.field public static final enum FACELOCATION_LEFT:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

.field public static final enum FACELOCATION_RIGHT:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

.field public static final enum FACELOCATION_TOP:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

.field public static final enum FACELOCATION_UNKNOWN:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

.field public static final enum FACELOCATION_UNSET:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;


# direct methods
.method private static synthetic $values()[Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    const/4 v1, 0x0

    sget-object v2, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_UNSET:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_UNKNOWN:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_LEFT:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_RIGHT:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_TOP:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_BOTTOM:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_CENTRE:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 410
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    const-string v1, "FACELOCATION_UNSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_UNSET:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    .line 411
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    const-string v1, "FACELOCATION_UNKNOWN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_UNKNOWN:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    .line 412
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    const-string v1, "FACELOCATION_LEFT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_LEFT:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    .line 413
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    const-string v1, "FACELOCATION_RIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_RIGHT:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    .line 414
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    const-string v1, "FACELOCATION_TOP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_TOP:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    .line 415
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    const-string v1, "FACELOCATION_BOTTOM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_BOTTOM:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    .line 416
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    const-string v1, "FACELOCATION_CENTRE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->FACELOCATION_CENTRE:Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    .line 409
    invoke-static {}, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->$values()[Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->$VALUES:[Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 409
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;
    .locals 1

    const-class v0, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    .line 409
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    return-object p0
.end method

.method public static values()[Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->$VALUES:[Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    .line 409
    invoke-virtual {v0}, [Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sourceforge/opencamera/preview/Preview$FaceLocation;

    return-object v0
.end method
