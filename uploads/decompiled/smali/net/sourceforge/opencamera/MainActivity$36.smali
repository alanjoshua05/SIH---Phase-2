.class Lnet/sourceforge/opencamera/MainActivity$36;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity;->cameraSetup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/MainActivity;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$36;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$36;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v0, 0x1

    .line 5675
    invoke-virtual {p1, v0}, Lnet/sourceforge/opencamera/MainActivity;->changeExposure(I)V

    return-void
.end method
