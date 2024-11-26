.class Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1;
.super Ljava/lang/Object;
.source "PreferenceSubSettingsManager.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;

.field final synthetic val$pref:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;Landroid/preference/Preference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1;->this$0:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;

    iput-object p2, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1;->val$pref:Landroid/preference/Preference;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 11

    iget-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1;->val$pref:Landroid/preference/Preference;

    .line 39
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "preference_save_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 43
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1;->this$0:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10022f

    .line 44
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1;->this$0:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;

    .line 46
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c001e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090066

    .line 47
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 49
    invoke-virtual {v3}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v5, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1;->this$0:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;

    .line 51
    invoke-virtual {v5}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1;->this$0:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;

    .line 55
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lnet/sourceforge/opencamera/MainActivity;

    .line 59
    :try_start_0
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v5

    .line 60
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/StorageUtils;->getSettingsFolder()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x3

    const-string v8, ""

    const-string v9, "xml"

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 59
    invoke-virtual/range {v5 .. v10}, Lnet/sourceforge/opencamera/StorageUtils;->createOutputMediaFile(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/io/File;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x2e

    .line 65
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 68
    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 70
    :cond_0
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "PrefSubSettingsManager"

    const-string v6, "failed to obtain a filename"

    .line 74
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 78
    :goto_0
    new-instance v2, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1$1;

    invoke-direct {v2, p0, v3, v1}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1$1;-><init>(Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1;Landroid/widget/EditText;Lnet/sourceforge/opencamera/MainActivity;)V

    const v1, 0x104000a

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    .line 88
    invoke-virtual {p1, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 91
    new-instance v1, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1$2;

    invoke-direct {v1, p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1$2;-><init>(Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 99
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1;->this$0:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;

    .line 100
    iget-object v1, v1, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->dialogs:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return v0
.end method
