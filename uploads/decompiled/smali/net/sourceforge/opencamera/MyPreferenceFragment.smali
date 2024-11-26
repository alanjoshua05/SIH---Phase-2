.class public Lnet/sourceforge/opencamera/MyPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "MyPreferenceFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/MyPreferenceFragment$SaveFolderChooserDialog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MyPreferenceFragment"


# instance fields
.field private cameraId:I

.field private final dialogs:Ljava/util/HashSet;
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

    .line 67
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment;->dialogs:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/MyPreferenceFragment;)I
    .locals 0

    .line 67
    iget p0, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment;->cameraId:I

    return p0
.end method

.method static synthetic access$100(Lnet/sourceforge/opencamera/MyPreferenceFragment;Landroid/app/AlertDialog$Builder;Landroid/widget/TextView;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->addTextViewForAlertDialog(Landroid/app/AlertDialog$Builder;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$200(Lnet/sourceforge/opencamera/MyPreferenceFragment;)Ljava/util/HashSet;
    .locals 0

    .line 67
    iget-object p0, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment;->dialogs:Ljava/util/HashSet;

    return-object p0
.end method

.method private addTextViewForAlertDialog(Landroid/app/AlertDialog$Builder;Landroid/widget/TextView;)V
    .locals 6

    .line 745
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 746
    new-instance v1, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 747
    invoke-virtual {v1, p2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float v2, v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 749
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 p2, 0x41600000    # 14.0f

    mul-float p2, p2, v0

    add-float/2addr p2, v3

    float-to-int p2, p2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v4, v4, v0

    add-float/2addr v4, v3

    float-to-int v4, v4

    const/high16 v5, 0x41400000    # 12.0f

    mul-float v0, v0, v5

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 750
    invoke-virtual {v1, p2, v2, v4, v0}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 751
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method static dismissDialogs(Landroid/app/FragmentManager;Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/util/HashSet<",
            "Landroid/app/AlertDialog;",
            ">;)V"
        }
    .end annotation

    .line 938
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 941
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const-string p1, "FOLDER_FRAGMENT"

    .line 944
    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 946
    check-cast p0, Landroid/app/DialogFragment;

    .line 949
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method

.method static filterArrayEntry(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 7

    .line 817
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 818
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 819
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 820
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 821
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 822
    aget-object v5, v1, v4

    .line 823
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 824
    aget-object v6, v0, v4

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 828
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/CharSequence;

    .line 829
    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 830
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 831
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 832
    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 833
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method static handleOnSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/preference/Preference;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 984
    :cond_0
    instance-of v0, p2, Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_1

    .line 985
    move-object v0, p2

    check-cast v0, Landroid/preference/TwoStatePreference;

    const/4 v1, 0x1

    .line 986
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 988
    :cond_1
    instance-of v0, p2, Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 989
    move-object v0, p2

    check-cast v0, Landroid/preference/ListPreference;

    const-string v1, ""

    .line 990
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 992
    :cond_2
    :goto_0
    invoke-static {p2}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->setSummary(Landroid/preference/Preference;)V

    return-void
.end method

.method static readFromBundle(Landroid/preference/PreferenceFragment;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 861
    array-length v0, p1

    if-lez v0, :cond_0

    .line 868
    invoke-virtual {p0, p3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p5

    check-cast p5, Landroid/preference/ListPreference;

    .line 869
    invoke-virtual {p5, p2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 870
    invoke-virtual {p5, p1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 871
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 872
    invoke-interface {p0, p3, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 875
    invoke-virtual {p5, p0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 880
    :cond_0
    invoke-virtual {p0, p3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 881
    invoke-virtual {p0, p5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Landroid/preference/PreferenceGroup;

    .line 882
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method private readFromBundle([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 854
    invoke-static/range {p0 .. p5}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->readFromBundle(Landroid/preference/PreferenceFragment;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static setBackground(Landroid/app/Fragment;)V
    .locals 3

    .line 891
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010031

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    .line 894
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 901
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 902
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static setSummary(Landroid/preference/Preference;)V
    .locals 8

    .line 1001
    instance-of v0, p0, Landroid/preference/EditTextPreference;

    if-nez v0, :cond_c

    if-nez v0, :cond_0

    .line 1012
    instance-of v1, p0, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;

    if-eqz v1, :cond_b

    .line 1015
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preference_exif_artist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "preference_textstamp"

    const-string v4, "preference_exif_copyright"

    const-string v5, "preference_save_video_prefix"

    const-string v6, "preference_save_photo_prefix"

    if-nez v1, :cond_1

    .line 1016
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1017
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1018
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1019
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1022
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "IMG_"

    goto :goto_0

    .line 1024
    :cond_2
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "VID_"

    goto :goto_0

    :cond_3
    const-string v1, ""

    :goto_0
    if-eqz v0, :cond_4

    .line 1029
    move-object v0, p0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 1030
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1033
    :cond_4
    move-object v0, p0

    check-cast v0, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;

    .line 1034
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1037
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1038
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v7, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v7, 0x4

    goto :goto_2

    :sswitch_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v7, 0x3

    goto :goto_2

    :sswitch_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v7, 0x2

    goto :goto_2

    :sswitch_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v7, 0x1

    goto :goto_2

    :sswitch_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    const/4 v7, 0x0

    :goto_2
    packed-switch v7, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const v0, 0x7f100295

    .line 1052
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_3

    :pswitch_1
    const v0, 0x7f10022d

    .line 1046
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_3

    :pswitch_2
    const v0, 0x7f100169

    .line 1040
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_3

    :pswitch_3
    const v0, 0x7f100232

    .line 1049
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_3

    :pswitch_4
    const v0, 0x7f10016b

    .line 1043
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 1058
    :cond_a
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_3
    return-void

    .line 1008
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "detected an EditTextPreference: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pref: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x6a68ecc4 -> :sswitch_4
        -0x6178540c -> :sswitch_3
        -0x1156840e -> :sswitch_2
        0xaa3765d -> :sswitch_1
        0x5b695452 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setupDependencies()V
    .locals 0

    return-void
.end method


# virtual methods
.method public clickedPrivacyPolicy()V
    .locals 5

    .line 769
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1001fc

    .line 770
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 774
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 775
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 779
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c001f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0900ec

    .line 780
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 781
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 783
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x1030044

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 784
    invoke-direct {p0, v0, v2}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->addTextViewForAlertDialog(Landroid/app/AlertDialog$Builder;Landroid/widget/TextView;)V

    const v1, 0x104000a

    .line 787
    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 788
    new-instance v1, Lnet/sourceforge/opencamera/MyPreferenceFragment$5;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/MyPreferenceFragment$5;-><init>(Lnet/sourceforge/opencamera/MyPreferenceFragment;)V

    const v2, 0x7f1001fd

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 797
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 799
    new-instance v1, Lnet/sourceforge/opencamera/MyPreferenceFragment$6;

    invoke-direct {v1, p0, v0}, Lnet/sourceforge/opencamera/MyPreferenceFragment$6;-><init>(Lnet/sourceforge/opencamera/MyPreferenceFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 807
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment;->dialogs:Ljava/util/HashSet;

    .line 808
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 72

    move-object/from16 v15, p0

    .line 87
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f130000

    .line 88
    invoke-virtual {v15, v0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->addPreferencesFromResource(I)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v14

    const-string v0, "cameraId"

    .line 91
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v15, Lnet/sourceforge/opencamera/MyPreferenceFragment;->cameraId:I

    const-string v0, "nCameras"

    .line 94
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v0, "camera_open"

    .line 98
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "camera_api"

    .line 102
    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "photo_mode_string"

    .line 104
    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "using_android_l"

    .line 106
    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v63

    const-string v1, "camera_orientation"

    .line 110
    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v1, "min_zoom_factor"

    .line 114
    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    const-string v1, "max_zoom_factor"

    .line 115
    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v11

    .line 117
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v1, "supports_auto_stabilise"

    .line 119
    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v32

    const-string v1, "supports_face_detection"

    .line 135
    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    const/4 v1, 0x0

    if-nez v33, :cond_1

    const-string v2, "preference_face_detection"

    if-nez v0, :cond_0

    .line 139
    invoke-interface {v12, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    invoke-virtual {v15, v2}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v2, "preference_category_camera_controls"

    .line 145
    invoke-virtual {v15, v2}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 146
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    const-string v0, "preview_width"

    .line 149
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v0, "preview_height"

    .line 150
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    const-string v0, "preview_widths"

    .line 151
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v17

    const-string v0, "preview_heights"

    .line 152
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v18

    const-string v0, "video_widths"

    .line 153
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v21

    const-string v0, "video_heights"

    .line 154
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v22

    const-string v0, "resolution_width"

    .line 156
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    const-string v0, "resolution_height"

    .line 157
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    const-string v0, "resolution_widths"

    .line 158
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v23

    const-string v0, "resolution_heights"

    .line 159
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v24

    const-string v0, "resolution_supports_burst"

    .line 160
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v25

    const-string v0, "supports_raw"

    .line 162
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v34

    const-string v0, "supports_hdr"

    .line 166
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v35

    const-string v0, "supports_panorama"

    .line 170
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v36

    const-string v0, "has_gyro_sensors"

    .line 174
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v37

    const-string v0, "supports_expo_bracketing"

    .line 178
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v38

    const-string v0, "supports_exposure_compensation"

    .line 182
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v39

    const-string v0, "exposure_compensation_min"

    .line 183
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v40

    const-string v0, "exposure_compensation_max"

    .line 184
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v41

    const-string v0, "supports_iso_range"

    .line 191
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v42

    const-string v0, "iso_range_min"

    .line 192
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v43

    const-string v0, "iso_range_max"

    .line 193
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    const-string v0, "supports_exposure_time"

    .line 200
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v45

    const-string v0, "exposure_time_min"

    .line 201
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v46

    const-string v0, "exposure_time_max"

    .line 202
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v48

    const-string v0, "supports_white_balance_temperature"

    .line 209
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v50

    const-string v0, "white_balance_temperature_min"

    .line 210
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v51

    const-string v0, "white_balance_temperature_max"

    .line 211
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v52

    const-string v0, "is_multi_cam"

    .line 218
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    const-string v0, "video_quality"

    .line 222
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    const-string v0, "current_video_quality"

    .line 224
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v0, "video_frame_width"

    .line 225
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v29

    const-string v0, "video_frame_height"

    .line 226
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v30

    const-string v0, "video_bit_rate"

    .line 227
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v31

    const-string v0, "video_frame_rate"

    .line 228
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v53

    const-string v0, "video_capture_rate"

    .line 229
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v54

    const-string v0, "video_high_speed"

    .line 230
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v56

    const-string v0, "video_capture_rate_factor"

    .line 231
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v57

    const-string v0, "supports_optical_stabilization"

    .line 233
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v58

    const-string v0, "optical_stabilization_enabled"

    .line 234
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v59

    const-string v0, "supports_video_stabilization"

    .line 236
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v60

    const-string v0, "video_stabilization_enabled"

    .line 240
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v61

    const-string v0, "can_disable_shutter_sound"

    .line 242
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v62

    const-string v0, "tonemap_max_curve_points"

    .line 246
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v64

    const-string v0, "supports_tonemap_curve"

    .line 247
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v65

    const-string v0, "camera_view_angle_x"

    .line 253
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v66

    const-string v0, "camera_view_angle_y"

    .line 254
    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v67

    .line 261
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "preference_camera_api_old"

    .line 265
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100146

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "supports_camera2"

    .line 268
    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "preference_camera_api_camera2"

    .line 272
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100145

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 278
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 279
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    new-array v2, v1, [Ljava/lang/String;

    .line 282
    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;

    const-string v4, "preference_camera_api"

    const-string v68, "preference_camera_api_old"

    const-string v69, "preference_category_online"

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, v68

    move-object/from16 v68, v5

    move-object/from16 v5, v69

    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->readFromBundle([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-interface/range {v68 .. v68}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    const-string v0, "preference_camera_api"

    .line 285
    invoke-virtual {v15, v0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 286
    new-instance v1, Lnet/sourceforge/opencamera/MyPreferenceFragment$1;

    invoke-direct {v1, v15, v0}, Lnet/sourceforge/opencamera/MyPreferenceFragment$1;-><init>(Lnet/sourceforge/opencamera/MyPreferenceFragment;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    const-string v0, "preference_online_help"

    .line 333
    invoke-virtual {v15, v0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 334
    new-instance v1, Lnet/sourceforge/opencamera/MyPreferenceFragment$2;

    invoke-direct {v1, v15, v0}, Lnet/sourceforge/opencamera/MyPreferenceFragment$2;-><init>(Lnet/sourceforge/opencamera/MyPreferenceFragment;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "preference_privacy_policy"

    .line 350
    invoke-virtual {v15, v0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 351
    new-instance v1, Lnet/sourceforge/opencamera/MyPreferenceFragment$3;

    invoke-direct {v1, v15, v0}, Lnet/sourceforge/opencamera/MyPreferenceFragment$3;-><init>(Lnet/sourceforge/opencamera/MyPreferenceFragment;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "preference_about"

    .line 383
    invoke-virtual {v15, v0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    move-object v2, v5

    .line 384
    new-instance v4, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;

    move-object v0, v4

    move-object/from16 v1, p0

    move v3, v6

    move-object v6, v4

    move/from16 v4, v26

    move-object/from16 v70, v5

    move-object v5, v7

    move-object v7, v6

    move v6, v9

    move-object v9, v7

    move-object v7, v8

    move-object v8, v12

    move-object v12, v9

    move v9, v10

    move v10, v11

    move-object/from16 v11, v17

    move-object/from16 v71, v12

    move-object/from16 v12, v18

    move-object/from16 v68, v14

    move/from16 v14, v16

    move-object/from16 v15, v23

    move-object/from16 v16, v24

    move-object/from16 v17, v25

    move/from16 v18, v19

    move/from16 v19, v20

    move-object/from16 v20, v27

    move-object/from16 v23, v28

    move/from16 v24, v29

    move/from16 v25, v30

    move/from16 v26, v31

    move/from16 v27, v53

    move-wide/from16 v28, v54

    move/from16 v30, v56

    move/from16 v31, v57

    move/from16 v53, v58

    move/from16 v54, v59

    move/from16 v55, v60

    move/from16 v56, v61

    move/from16 v57, v65

    move/from16 v58, v64

    move/from16 v59, v62

    move/from16 v60, v66

    move/from16 v61, v67

    move-object/from16 v62, v68

    invoke-direct/range {v0 .. v63}, Lnet/sourceforge/opencamera/MyPreferenceFragment$4;-><init>(Lnet/sourceforge/opencamera/MyPreferenceFragment;Landroid/preference/Preference;IZLjava/lang/String;ILjava/lang/String;Landroid/content/SharedPreferences;FF[I[III[I[I[ZII[Ljava/lang/String;[I[ILjava/lang/String;IIIIDZFZZZZZZZZIIZIIZJJZIIZZZZZIZFFLandroid/os/Bundle;Z)V

    move-object/from16 v0, v70

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 739
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->setupDependencies()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 922
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 927
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->settingsClosing()V

    .line 933
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment;->dialogs:Ljava/util/HashSet;

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->dismissDialogs(Landroid/app/FragmentManager;Ljava/util/HashSet;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 915
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 906
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 908
    invoke-static {p0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->setBackground(Landroid/app/Fragment;)V

    .line 910
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 911
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 969
    :cond_0
    invoke-virtual {p0, p2}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 970
    invoke-static {p1, p2, v0}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->handleOnSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/preference/Preference;)V

    return-void
.end method
