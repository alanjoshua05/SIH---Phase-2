.class public Lnet/sourceforge/opencamera/PreferenceSubScreen;
.super Landroid/preference/PreferenceFragment;
.source "PreferenceSubScreen.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceSubScreen"


# instance fields
.field protected final dialogs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/PreferenceSubScreen;->dialogs:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 35
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 37
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/PreferenceSubScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/PreferenceSubScreen;->dialogs:Ljava/util/HashSet;

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->dismissDialogs(Landroid/app/FragmentManager;Ljava/util/HashSet;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 43
    invoke-static {p0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->setBackground(Landroid/app/Fragment;)V

    .line 45
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/PreferenceSubScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {p0, p2}, Lnet/sourceforge/opencamera/PreferenceSubScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 63
    invoke-static {p1, p2, v0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->handleOnSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/preference/Preference;)V

    return-void
.end method
