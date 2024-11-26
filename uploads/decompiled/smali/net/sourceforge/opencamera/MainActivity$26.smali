.class Lnet/sourceforge/opencamera/MainActivity$26;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity;->openFolderChooserDialog()V
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$26;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$26;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5025
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->setWindowFlagsForCamera()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$26;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v0, 0x1

    .line 5026
    invoke-virtual {p1, v0}, Lnet/sourceforge/opencamera/MainActivity;->showPreview(Z)V

    return-void
.end method
