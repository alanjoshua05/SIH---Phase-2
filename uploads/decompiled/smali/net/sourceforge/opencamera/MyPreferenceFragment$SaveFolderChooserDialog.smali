.class public Lnet/sourceforge/opencamera/MyPreferenceFragment$SaveFolderChooserDialog;
.super Lnet/sourceforge/opencamera/ui/FolderChooserDialog;
.source "MyPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/MyPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveFolderChooserDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 837
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 844
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyPreferenceFragment$SaveFolderChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/opencamera/MainActivity;

    if-eqz v0, :cond_0

    .line 846
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyPreferenceFragment$SaveFolderChooserDialog;->getChosenFolder()Ljava/lang/String;

    move-result-object v1

    .line 847
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->updateSaveFolder(Ljava/lang/String;)V

    .line 849
    :cond_0
    invoke-super {p0, p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
