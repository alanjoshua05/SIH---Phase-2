.class synthetic Lnet/sourceforge/opencamera/StorageUtils$2;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/StorageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$sourceforge$opencamera$StorageUtils$UriType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1009
    invoke-static {}, Lnet/sourceforge/opencamera/StorageUtils$UriType;->values()[Lnet/sourceforge/opencamera/StorageUtils$UriType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/sourceforge/opencamera/StorageUtils$2;->$SwitchMap$net$sourceforge$opencamera$StorageUtils$UriType:[I

    :try_start_0
    sget-object v1, Lnet/sourceforge/opencamera/StorageUtils$UriType;->MEDIASTORE_IMAGES:Lnet/sourceforge/opencamera/StorageUtils$UriType;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/StorageUtils$UriType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lnet/sourceforge/opencamera/StorageUtils$2;->$SwitchMap$net$sourceforge$opencamera$StorageUtils$UriType:[I

    sget-object v1, Lnet/sourceforge/opencamera/StorageUtils$UriType;->MEDIASTORE_VIDEOS:Lnet/sourceforge/opencamera/StorageUtils$UriType;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/StorageUtils$UriType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
