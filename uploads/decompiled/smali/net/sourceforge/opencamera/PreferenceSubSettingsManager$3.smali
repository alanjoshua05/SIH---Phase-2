.class Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;
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

.field final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;Landroid/preference/Preference;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;->this$0:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;

    iput-object p2, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;->val$pref:Landroid/preference/Preference;

    iput-object p3, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;->val$sharedPreferences:Landroid/content/SharedPreferences;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    iget-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;->val$pref:Landroid/preference/Preference;

    .line 128
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "preference_reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;->this$0:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x1080027

    .line 132
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f100221

    .line 133
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f100222

    .line 134
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 135
    new-instance v0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3$1;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3$1;-><init>(Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;)V

    const v1, 0x1040013

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x1040009

    const/4 v1, 0x0

    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 164
    new-instance v0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3$2;

    invoke-direct {v0, p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3$2;-><init>(Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 172
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;->this$0:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;

    .line 173
    iget-object v0, v0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->dialogs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
