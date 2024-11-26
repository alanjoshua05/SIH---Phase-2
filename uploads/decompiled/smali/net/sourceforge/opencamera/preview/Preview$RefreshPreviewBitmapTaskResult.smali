.class Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTaskResult;
.super Ljava/lang/Object;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/preview/Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshPreviewBitmapTaskResult"
.end annotation


# instance fields
.field new_focus_peaking_bitmap:Landroid/graphics/Bitmap;

.field new_histogram:[I

.field new_zebra_stripes_bitmap:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/opencamera/preview/Preview$1;)V
    .locals 0

    .line 8287
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview$RefreshPreviewBitmapTaskResult;-><init>()V

    return-void
.end method
