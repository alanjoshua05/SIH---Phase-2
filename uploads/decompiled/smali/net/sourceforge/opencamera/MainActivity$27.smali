.class Lnet/sourceforge/opencamera/MainActivity$27;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity;->longClickedGallery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/MainActivity;

.field final synthetic val$clear_index:I

.field final synthetic val$history:Lnet/sourceforge/opencamera/SaveLocationHistory;

.field final synthetic val$new_index:I


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;IILnet/sourceforge/opencamera/SaveLocationHistory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$27;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    iput p2, p0, Lnet/sourceforge/opencamera/MainActivity$27;->val$clear_index:I

    iput p3, p0, Lnet/sourceforge/opencamera/MainActivity$27;->val$new_index:I

    iput-object p4, p0, Lnet/sourceforge/opencamera/MainActivity$27;->val$history:Lnet/sourceforge/opencamera/SaveLocationHistory;

    .line 5103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget p1, p0, Lnet/sourceforge/opencamera/MainActivity$27;->val$clear_index:I

    if-ne p2, p1, :cond_0

    .line 5109
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lnet/sourceforge/opencamera/MainActivity$27;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x1080027

    .line 5110
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f10004d

    .line 5111
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f10004e

    .line 5112
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lnet/sourceforge/opencamera/MainActivity$27$3;

    invoke-direct {p2, p0}, Lnet/sourceforge/opencamera/MainActivity$27$3;-><init>(Lnet/sourceforge/opencamera/MainActivity$27;)V

    const v0, 0x1040013

    .line 5113
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lnet/sourceforge/opencamera/MainActivity$27$2;

    invoke-direct {p2, p0}, Lnet/sourceforge/opencamera/MainActivity$27$2;-><init>(Lnet/sourceforge/opencamera/MainActivity$27;)V

    const v0, 0x1040009

    .line 5126
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lnet/sourceforge/opencamera/MainActivity$27$1;

    invoke-direct {p2, p0}, Lnet/sourceforge/opencamera/MainActivity$27$1;-><init>(Lnet/sourceforge/opencamera/MainActivity$27;)V

    .line 5135
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 5144
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_0
    iget p1, p0, Lnet/sourceforge/opencamera/MainActivity$27;->val$new_index:I

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$27;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5149
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$2200(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/StorageUtils;->isUsingSAF()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$27;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    const/4 p2, 0x0

    .line 5150
    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/MainActivity;->openFolderChooserDialogSAF(Z)V

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$27;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5153
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$2800(Lnet/sourceforge/opencamera/MainActivity;)V

    goto/16 :goto_1

    :cond_2
    const/4 p1, 0x1

    if-ltz p2, :cond_4

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$27;->val$history:Lnet/sourceforge/opencamera/SaveLocationHistory;

    .line 5159
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/SaveLocationHistory;->size()I

    move-result v0

    if-ge p2, v0, :cond_4

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$27;->val$history:Lnet/sourceforge/opencamera/SaveLocationHistory;

    .line 5160
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/SaveLocationHistory;->size()I

    move-result v1

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/SaveLocationHistory;->get(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$27;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5163
    invoke-static {v0, p2}, Lnet/sourceforge/opencamera/MainActivity;->access$2900(Lnet/sourceforge/opencamera/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$27;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5164
    invoke-static {v1}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/sourceforge/opencamera/MainActivity$27;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$27;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5165
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5166
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$27;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5167
    invoke-static {v1}, Lnet/sourceforge/opencamera/MainActivity;->access$2200(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/StorageUtils;->isUsingSAF()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "preference_save_location_saf"

    .line 5168
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    const-string v1, "preference_save_location"

    .line 5170
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5171
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$27;->val$history:Lnet/sourceforge/opencamera/SaveLocationHistory;

    .line 5172
    invoke-virtual {v0, p2, p1}, Lnet/sourceforge/opencamera/SaveLocationHistory;->updateFolderHistory(Ljava/lang/String;Z)V

    :cond_4
    iget-object p2, p0, Lnet/sourceforge/opencamera/MainActivity$27;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5174
    invoke-virtual {p2}, Lnet/sourceforge/opencamera/MainActivity;->setWindowFlagsForCamera()V

    iget-object p2, p0, Lnet/sourceforge/opencamera/MainActivity$27;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5175
    invoke-virtual {p2, p1}, Lnet/sourceforge/opencamera/MainActivity;->showPreview(Z)V

    :goto_1
    return-void
.end method
