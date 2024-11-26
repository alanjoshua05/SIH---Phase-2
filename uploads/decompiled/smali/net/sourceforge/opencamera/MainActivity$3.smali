.class Lnet/sourceforge/opencamera/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$3;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$3;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 536
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$100(Lnet/sourceforge/opencamera/MainActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$3;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 540
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$200(Lnet/sourceforge/opencamera/MainActivity;)Z

    move-result p1

    return p1
.end method
