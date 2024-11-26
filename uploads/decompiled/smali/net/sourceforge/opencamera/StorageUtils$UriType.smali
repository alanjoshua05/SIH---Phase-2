.class final enum Lnet/sourceforge/opencamera/StorageUtils$UriType;
.super Ljava/lang/Enum;
.source "StorageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/StorageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UriType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sourceforge/opencamera/StorageUtils$UriType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sourceforge/opencamera/StorageUtils$UriType;

.field public static final enum MEDIASTORE_IMAGES:Lnet/sourceforge/opencamera/StorageUtils$UriType;

.field public static final enum MEDIASTORE_VIDEOS:Lnet/sourceforge/opencamera/StorageUtils$UriType;


# direct methods
.method private static synthetic $values()[Lnet/sourceforge/opencamera/StorageUtils$UriType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/sourceforge/opencamera/StorageUtils$UriType;

    const/4 v1, 0x0

    sget-object v2, Lnet/sourceforge/opencamera/StorageUtils$UriType;->MEDIASTORE_IMAGES:Lnet/sourceforge/opencamera/StorageUtils$UriType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/sourceforge/opencamera/StorageUtils$UriType;->MEDIASTORE_VIDEOS:Lnet/sourceforge/opencamera/StorageUtils$UriType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 988
    new-instance v0, Lnet/sourceforge/opencamera/StorageUtils$UriType;

    const-string v1, "MEDIASTORE_IMAGES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/StorageUtils$UriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/StorageUtils$UriType;->MEDIASTORE_IMAGES:Lnet/sourceforge/opencamera/StorageUtils$UriType;

    .line 989
    new-instance v0, Lnet/sourceforge/opencamera/StorageUtils$UriType;

    const-string v1, "MEDIASTORE_VIDEOS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/StorageUtils$UriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/StorageUtils$UriType;->MEDIASTORE_VIDEOS:Lnet/sourceforge/opencamera/StorageUtils$UriType;

    .line 987
    invoke-static {}, Lnet/sourceforge/opencamera/StorageUtils$UriType;->$values()[Lnet/sourceforge/opencamera/StorageUtils$UriType;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/StorageUtils$UriType;->$VALUES:[Lnet/sourceforge/opencamera/StorageUtils$UriType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 987
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sourceforge/opencamera/StorageUtils$UriType;
    .locals 1

    const-class v0, Lnet/sourceforge/opencamera/StorageUtils$UriType;

    .line 987
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sourceforge/opencamera/StorageUtils$UriType;

    return-object p0
.end method

.method public static values()[Lnet/sourceforge/opencamera/StorageUtils$UriType;
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/StorageUtils$UriType;->$VALUES:[Lnet/sourceforge/opencamera/StorageUtils$UriType;

    .line 987
    invoke-virtual {v0}, [Lnet/sourceforge/opencamera/StorageUtils$UriType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sourceforge/opencamera/StorageUtils$UriType;

    return-object v0
.end method
