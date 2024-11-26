.class public Lnet/sourceforge/opencamera/LocationSupplier$LocationInfo;
.super Ljava/lang/Object;
.source "LocationSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/LocationSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationInfo"
.end annotation


# instance fields
.field private location_was_cached:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lnet/sourceforge/opencamera/LocationSupplier$LocationInfo;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/LocationSupplier$LocationInfo;->location_was_cached:Z

    return p1
.end method


# virtual methods
.method public LocationWasCached()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/LocationSupplier$LocationInfo;->location_was_cached:Z

    return v0
.end method
