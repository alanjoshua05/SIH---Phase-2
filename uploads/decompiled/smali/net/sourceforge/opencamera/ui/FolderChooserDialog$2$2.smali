.class Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2$2;
.super Ljava/lang/Object;
.source "FolderChooserDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2$2;->this$1:Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2$2;->this$1:Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;

    .line 169
    iget-object p1, p1, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;->this$0:Lnet/sourceforge/opencamera/ui/FolderChooserDialog;

    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->access$600(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;)V

    return-void
.end method
