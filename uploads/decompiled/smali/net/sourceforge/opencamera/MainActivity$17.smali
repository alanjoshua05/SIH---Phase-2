.class Lnet/sourceforge/opencamera/MainActivity$17;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity;->setupSystemUiVisibilityListener()V
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$17;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$17;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v0, 0x1

    .line 3773
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/MainActivity;->access$2000(Lnet/sourceforge/opencamera/MainActivity;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$17;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v0, 0x0

    .line 3776
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/MainActivity;->access$2000(Lnet/sourceforge/opencamera/MainActivity;Z)V

    :goto_0
    return-void
.end method
