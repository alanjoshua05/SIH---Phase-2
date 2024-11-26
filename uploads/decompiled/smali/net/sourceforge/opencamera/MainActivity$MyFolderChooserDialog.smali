.class public Lnet/sourceforge/opencamera/MainActivity$MyFolderChooserDialog;
.super Lnet/sourceforge/opencamera/ui/FolderChooserDialog;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyFolderChooserDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4906
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 4913
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity$MyFolderChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/opencamera/MainActivity;

    if-eqz v0, :cond_0

    .line 4917
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->setWindowFlagsForCamera()V

    const/4 v1, 0x1

    .line 4918
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->showPreview(Z)V

    .line 4919
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MainActivity$MyFolderChooserDialog;->getChosenFolder()Ljava/lang/String;

    move-result-object v1

    .line 4920
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->updateSaveFolder(Ljava/lang/String;)V

    .line 4926
    :cond_0
    invoke-super {p0, p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
