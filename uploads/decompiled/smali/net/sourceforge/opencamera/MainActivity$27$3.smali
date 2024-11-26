.class Lnet/sourceforge/opencamera/MainActivity$27$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity$27;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/MainActivity$27;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity$27;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$27$3;->this$1:Lnet/sourceforge/opencamera/MainActivity$27;

    .line 5113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$27$3;->this$1:Lnet/sourceforge/opencamera/MainActivity$27;

    .line 5118
    iget-object p1, p1, Lnet/sourceforge/opencamera/MainActivity$27;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$2200(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/StorageUtils;->isUsingSAF()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$27$3;->this$1:Lnet/sourceforge/opencamera/MainActivity$27;

    .line 5119
    iget-object p1, p1, Lnet/sourceforge/opencamera/MainActivity$27;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->clearFolderHistorySAF()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$27$3;->this$1:Lnet/sourceforge/opencamera/MainActivity$27;

    .line 5121
    iget-object p1, p1, Lnet/sourceforge/opencamera/MainActivity$27;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->clearFolderHistory()V

    :goto_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$27$3;->this$1:Lnet/sourceforge/opencamera/MainActivity$27;

    .line 5122
    iget-object p1, p1, Lnet/sourceforge/opencamera/MainActivity$27;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->setWindowFlagsForCamera()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$27$3;->this$1:Lnet/sourceforge/opencamera/MainActivity$27;

    .line 5123
    iget-object p1, p1, Lnet/sourceforge/opencamera/MainActivity$27;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/MainActivity;->showPreview(Z)V

    return-void
.end method
