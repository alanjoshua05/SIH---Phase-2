.class public Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;
.super Lnet/sourceforge/opencamera/PreferenceSubScreen;
.source "PreferenceSubCameraControlsMore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PfSubCameraControlsMore"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lnet/sourceforge/opencamera/PreferenceSubScreen;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->setAudioNoiseControlSensitivityDependency(Ljava/lang/String;)V

    return-void
.end method

.method private setAudioNoiseControlSensitivityDependency(Ljava/lang/String;)V
    .locals 2

    const-string v0, "preference_audio_noise_control_sensitivity"

    .line 239
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "noise"

    .line 241
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 244
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setupDependencies()V
    .locals 2

    const-string v0, "preference_audio_control"

    .line 224
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 226
    new-instance v1, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$4;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$4;-><init>(Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 234
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->setAudioNoiseControlSensitivityDependency(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 26
    invoke-super {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubScreen;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130001

    .line 27
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->addPreferencesFromResource(I)V

    .line 29
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 37
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    const-string v3, "preferences_root"

    if-ge v1, v2, :cond_0

    const-string v1, "preference_screen_remote_control"

    .line 41
    invoke-virtual {p0, v1}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 43
    invoke-virtual {p0, v3}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 44
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string v1, "can_disable_shutter_sound"

    .line 47
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "preference_shutter_sound"

    .line 52
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 54
    invoke-virtual {p0, v3}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 55
    invoke-virtual {v1, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string p1, "preference_save_location"

    .line 75
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 76
    new-instance v1, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$1;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$1;-><init>(Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;)V

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const-string v2, "preference_using_saf"

    if-ge p1, v1, :cond_3

    .line 117
    invoke-virtual {p0, v2}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 119
    invoke-virtual {p0, v3}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 120
    invoke-virtual {v1, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {p0, v2}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 124
    new-instance v1, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$2;

    invoke-direct {v1, p0, p1, v0}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$2;-><init>(Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;Landroid/preference/Preference;Landroid/content/SharedPreferences;)V

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_0
    const-string p1, "preference_calibrate_level"

    .line 153
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 154
    new-instance v1, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;

    invoke-direct {v1, p0, p1, v0}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;-><init>(Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;Landroid/preference/Preference;Landroid/content/SharedPreferences;)V

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "preference_save_photo_prefix"

    .line 209
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->setSummary(Landroid/preference/Preference;)V

    const-string p1, "preference_save_video_prefix"

    .line 210
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->setSummary(Landroid/preference/Preference;)V

    .line 212
    invoke-direct {p0}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->setupDependencies()V

    return-void
.end method
