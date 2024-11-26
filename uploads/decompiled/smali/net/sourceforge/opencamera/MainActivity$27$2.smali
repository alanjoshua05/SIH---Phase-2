.class Lnet/sourceforge/opencamera/MainActivity$27$2;
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$27$2;->this$1:Lnet/sourceforge/opencamera/MainActivity$27;

    .line 5126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$27$2;->this$1:Lnet/sourceforge/opencamera/MainActivity$27;

    .line 5131
    iget-object p1, p1, Lnet/sourceforge/opencamera/MainActivity$27;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->setWindowFlagsForCamera()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$27$2;->this$1:Lnet/sourceforge/opencamera/MainActivity$27;

    .line 5132
    iget-object p1, p1, Lnet/sourceforge/opencamera/MainActivity$27;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/MainActivity;->showPreview(Z)V

    return-void
.end method
