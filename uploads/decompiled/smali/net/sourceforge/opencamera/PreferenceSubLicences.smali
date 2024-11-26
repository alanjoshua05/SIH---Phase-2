.class public Lnet/sourceforge/opencamera/PreferenceSubLicences;
.super Lnet/sourceforge/opencamera/PreferenceSubScreen;
.source "PreferenceSubLicences.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceSubLicences"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lnet/sourceforge/opencamera/PreferenceSubScreen;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/PreferenceSubLicences;ILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/PreferenceSubLicences;->displayTextDialog(ILjava/lang/String;)V

    return-void
.end method

.method private displayTextDialog(ILjava/lang/String;)V
    .locals 2

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/PreferenceSubLicences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 100
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string p2, "\\A"

    invoke-virtual {v0, p2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object p2

    .line 101
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/PreferenceSubLicences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/PreferenceSubLicences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 103
    invoke-virtual {p2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x104000a

    const/4 p2, 0x0

    .line 104
    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 107
    new-instance p2, Lnet/sourceforge/opencamera/PreferenceSubLicences$5;

    invoke-direct {p2, p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubLicences$5;-><init>(Lnet/sourceforge/opencamera/PreferenceSubLicences;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 115
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 116
    iget-object p2, p0, Lnet/sourceforge/opencamera/PreferenceSubLicences;->dialogs:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 20
    invoke-super {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubScreen;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130003

    .line 21
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubLicences;->addPreferencesFromResource(I)V

    const-string p1, "preference_licence_open_camera"

    .line 24
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubLicences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 25
    new-instance v0, Lnet/sourceforge/opencamera/PreferenceSubLicences$1;

    invoke-direct {v0, p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubLicences$1;-><init>(Lnet/sourceforge/opencamera/PreferenceSubLicences;Landroid/preference/Preference;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "preference_licence_androidx"

    .line 41
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubLicences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 42
    new-instance v0, Lnet/sourceforge/opencamera/PreferenceSubLicences$2;

    invoke-direct {v0, p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubLicences$2;-><init>(Lnet/sourceforge/opencamera/PreferenceSubLicences;Landroid/preference/Preference;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "preference_licence_google_icons"

    .line 58
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubLicences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 59
    new-instance v0, Lnet/sourceforge/opencamera/PreferenceSubLicences$3;

    invoke-direct {v0, p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubLicences$3;-><init>(Lnet/sourceforge/opencamera/PreferenceSubLicences;Landroid/preference/Preference;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "preference_licence_online"

    .line 75
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubLicences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 76
    new-instance v0, Lnet/sourceforge/opencamera/PreferenceSubLicences$4;

    invoke-direct {v0, p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubLicences$4;-><init>(Lnet/sourceforge/opencamera/PreferenceSubLicences;Landroid/preference/Preference;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
