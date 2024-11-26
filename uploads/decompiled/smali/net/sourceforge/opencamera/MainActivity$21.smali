.class Lnet/sourceforge/opencamera/MainActivity$21;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity;->showAlert(Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/MainActivity;

.field final synthetic val$alert:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$21;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    iput-object p2, p0, Lnet/sourceforge/opencamera/MainActivity$21;->val$alert:Landroid/app/AlertDialog;

    .line 4104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$21;->val$alert:Landroid/app/AlertDialog;

    .line 4106
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
