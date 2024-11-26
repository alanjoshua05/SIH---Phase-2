.class public Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;
.super Lnet/sourceforge/opencamera/PreferenceSubScreen;
.source "PreferenceSubSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$LoadSettingsFileChooserDialog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PrefSubSettingsManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lnet/sourceforge/opencamera/PreferenceSubScreen;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->loadSettings()V

    return-void
.end method

.method private loadSettings()V
    .locals 3

    .line 187
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    .line 188
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f100225

    .line 189
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f100226

    .line 190
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 191
    new-instance v1, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$4;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$4;-><init>(Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;)V

    const v2, 0x1040013

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x1040009

    const/4 v2, 0x0

    .line 215
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 218
    new-instance v1, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$5;

    invoke-direct {v1, p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$5;-><init>(Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 226
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 227
    iget-object v1, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->dialogs:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 28
    invoke-super {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubScreen;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130009

    .line 30
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->addPreferencesFromResource(I)V

    .line 32
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "preference_save_settings"

    .line 35
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 36
    new-instance v1, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1;

    invoke-direct {v1, p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$1;-><init>(Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "preference_restore_settings"

    .line 109
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 110
    new-instance v1, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$2;

    invoke-direct {v1, p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$2;-><init>(Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "preference_reset"

    .line 124
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 125
    new-instance v1, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;

    invoke-direct {v1, p0, v0, p1}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;-><init>(Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;Landroid/preference/Preference;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
