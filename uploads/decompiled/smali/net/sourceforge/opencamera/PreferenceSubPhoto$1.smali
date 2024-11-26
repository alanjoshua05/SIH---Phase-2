.class Lnet/sourceforge/opencamera/PreferenceSubPhoto$1;
.super Ljava/lang/Object;
.source "PreferenceSubPhoto.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/PreferenceSubPhoto;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/PreferenceSubPhoto;

.field final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/PreferenceSubPhoto;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubPhoto$1;->this$0:Lnet/sourceforge/opencamera/PreferenceSubPhoto;

    iput-object p2, p0, Lnet/sourceforge/opencamera/PreferenceSubPhoto$1;->val$sharedPreferences:Landroid/content/SharedPreferences;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string p1, "preference_raw_yes"

    .line 132
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "preference_raw_only"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubPhoto$1;->val$sharedPreferences:Landroid/content/SharedPreferences;

    const-string p2, "done_raw_info"

    .line 134
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 136
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lnet/sourceforge/opencamera/PreferenceSubPhoto$1;->this$0:Lnet/sourceforge/opencamera/PreferenceSubPhoto;

    invoke-virtual {p2}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f100202

    .line 137
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const p2, 0x7f100322

    .line 138
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    new-instance p2, Lnet/sourceforge/opencamera/PreferenceSubPhoto$1$1;

    invoke-direct {p2, p0}, Lnet/sourceforge/opencamera/PreferenceSubPhoto$1$1;-><init>(Lnet/sourceforge/opencamera/PreferenceSubPhoto$1;)V

    const v0, 0x7f10005e

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 152
    new-instance p2, Lnet/sourceforge/opencamera/PreferenceSubPhoto$1$2;

    invoke-direct {p2, p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubPhoto$1$2;-><init>(Lnet/sourceforge/opencamera/PreferenceSubPhoto$1;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 160
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    iget-object p2, p0, Lnet/sourceforge/opencamera/PreferenceSubPhoto$1;->this$0:Lnet/sourceforge/opencamera/PreferenceSubPhoto;

    .line 161
    iget-object p2, p2, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->dialogs:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
