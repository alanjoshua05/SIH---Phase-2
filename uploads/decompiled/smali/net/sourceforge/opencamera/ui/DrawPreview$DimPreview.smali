.class final enum Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;
.super Ljava/lang/Enum;
.source "DrawPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/ui/DrawPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DimPreview"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

.field public static final enum DIM_PREVIEW_OFF:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

.field public static final enum DIM_PREVIEW_ON:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

.field public static final enum DIM_PREVIEW_UNTIL:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;


# direct methods
.method private static synthetic $values()[Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    const/4 v1, 0x0

    sget-object v2, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;->DIM_PREVIEW_OFF:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;->DIM_PREVIEW_ON:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;->DIM_PREVIEW_UNTIL:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 67
    new-instance v0, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    const-string v1, "DIM_PREVIEW_OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;->DIM_PREVIEW_OFF:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    .line 68
    new-instance v0, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    const-string v1, "DIM_PREVIEW_ON"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;->DIM_PREVIEW_ON:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    .line 69
    new-instance v0, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    const-string v1, "DIM_PREVIEW_UNTIL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;->DIM_PREVIEW_UNTIL:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    .line 66
    invoke-static {}, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;->$values()[Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;->$VALUES:[Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;
    .locals 1

    const-class v0, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    .line 66
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    return-object p0
.end method

.method public static values()[Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;->$VALUES:[Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    .line 66
    invoke-virtual {v0}, [Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    return-object v0
.end method
