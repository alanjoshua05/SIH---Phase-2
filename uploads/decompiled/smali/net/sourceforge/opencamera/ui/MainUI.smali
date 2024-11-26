.class public Lnet/sourceforge/opencamera/ui/MainUI;
.super Ljava/lang/Object;
.source "MainUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainUI"

.field private static final cache_popup:Z = true

.field private static final manual_iso_value:Ljava/lang/String; = "m"

.field public static final privacy_indicator_gap_dp:I = 0x18

.field private static final view_rotate_animation_duration:I = 0x64


# instance fields
.field private current_orientation:I

.field private force_destroy_popup:Z

.field private final highlightColor:I

.field private final highlightColorExposureUIElement:I

.field private immersive_mode:Z

.field private iso_button_manual_index:I

.field private iso_buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private keydown_volume_down:Z

.field private keydown_volume_up:Z

.field public layoutUI_display_h:I

.field public layoutUI_display_w:I

.field private mExposureLine:I

.field private mHighlightedIcon:Landroid/view/View;

.field private mHighlightedLine:Landroid/widget/LinearLayout;

.field private mPopupIcon:I

.field private mPopupLine:I

.field private mSelectingExposureUIElement:Z

.field private mSelectingIcons:Z

.field private mSelectingLines:Z

.field private final main_activity:Lnet/sourceforge/opencamera/MainActivity;

.field private popup_view:Lnet/sourceforge/opencamera/ui/PopupView;

.field private volatile popup_view_is_open:Z

.field private remote_control_mode:Z

.field private show_gui_photo:Z

.field private show_gui_video:Z

.field public volatile test_navigation_gap:I

.field public test_saved_popup_height:I

.field public test_saved_popup_width:I

.field private final test_ui_buttons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private top_icon:Landroid/view/View;

.field private ui_placement:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

.field private view_rotate_animation:Z

.field private view_rotate_animation_start:F


# direct methods
.method public constructor <init>(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->force_destroy_popup:Z

    .line 67
    sget-object v1, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_RIGHT:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->ui_placement:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->top_icon:Landroid/view/View;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->show_gui_photo:Z

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->show_gui_video:Z

    iput v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupLine:I

    iput v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupIcon:I

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mSelectingIcons:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mSelectingLines:Z

    iput v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mSelectingExposureUIElement:Z

    const/16 v0, 0xb7

    const/16 v1, 0x1c

    .line 92
    invoke-static {v0, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->highlightColor:I

    const/16 v0, 0x43

    const/16 v1, 0x36

    const/16 v2, 0xf4

    .line 93
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->highlightColorExposureUIElement:I

    .line 96
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->test_ui_buttons:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->layoutUI_display_w:I

    iput v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->layoutUI_display_h:I

    iput v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->iso_button_manual_index:I

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 106
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->setSeekbarColors()V

    return-void
.end method

.method public static ISOTextEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 2269
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2270
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static ISOToButtonText(I)Ljava/lang/String;
    .locals 2

    .line 2281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/ui/MainUI;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/ui/MainUI;->setPopupViewRotation(II)V

    return-void
.end method

.method static synthetic access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;
    .locals 0

    .line 51
    iget-object p0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    return-object p0
.end method

.method static synthetic access$200(Lnet/sourceforge/opencamera/ui/MainUI;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->show_gui_photo:Z

    return p0
.end method

.method static synthetic access$300(Lnet/sourceforge/opencamera/ui/MainUI;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->show_gui_video:Z

    return p0
.end method

.method static synthetic access$400(Lnet/sourceforge/opencamera/ui/MainUI;Z)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/ui/MainUI;->layoutUI(Z)V

    return-void
.end method

.method static synthetic access$500(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;
    .locals 0

    .line 51
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->computeUIPlacement()Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    move-result-object p0

    return-object p0
.end method

.method private clearRemoteControlForExposureUI()V
    .locals 1

    .line 1701
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->isExposureUIOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->remote_control_mode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->remote_control_mode:Z

    .line 1703
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->resetExposureUIHighlights()V

    :cond_0
    return-void
.end method

.method private clearRemoteControlForPopup()V
    .locals 3

    .line 2755
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->popupIsOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->remote_control_mode:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->remote_control_mode:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f0900a8

    .line 2759
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2760
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2761
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2762
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupLine:I

    .line 2765
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2766
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 2769
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2770
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mHighlightedLine:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    iget v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupIcon:I

    .line 2773
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2774
    instance-of v2, v1, Landroid/widget/ImageButton;

    if-nez v2, :cond_2

    instance-of v2, v1, Landroid/widget/Button;

    if-eqz v2, :cond_3

    .line 2775
    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    return-void
.end method

.method private clearSelectionState()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupLine:I

    iput v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupIcon:I

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mSelectingIcons:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mSelectingLines:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mHighlightedIcon:Landroid/view/View;

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mHighlightedLine:Landroid/widget/LinearLayout;

    return-void
.end method

.method private clickSelectedIcon()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mHighlightedIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2586
    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    :cond_0
    return-void
.end method

.method private computeUIPlacement()Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 191
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_ui_placement"

    const-string v2, "ui_top"

    .line 192
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ui_left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    sget-object v0, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_RIGHT:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    return-object v0

    .line 195
    :cond_0
    sget-object v0, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_LEFT:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    return-object v0

    .line 197
    :cond_1
    sget-object v0, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_TOP:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    return-object v0
.end method

.method private highlightExposureUILine(Z)V
    .locals 10

    .line 1731
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->isExposureUIOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f090087

    .line 1734
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f09006c

    .line 1735
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v3, 0x7f090071

    .line 1736
    invoke-virtual {v2, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v4, 0x7f090089

    .line 1737
    invoke-virtual {v3, v4}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v5, 0x7f0900fe

    .line 1738
    invoke-virtual {v4, v5}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    add-int/lit8 v5, v5, 0x5

    .line 1746
    rem-int/lit8 v5, v5, 0x5

    iput v5, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eqz p1, :cond_5

    if-nez v5, :cond_1

    .line 1750
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    add-int/2addr p1, v9

    iput p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    :cond_1
    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    if-ne p1, v9, :cond_2

    .line 1752
    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    add-int/2addr p1, v9

    iput p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    :cond_2
    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    if-ne p1, v6, :cond_3

    .line 1754
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_3

    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    add-int/2addr p1, v9

    iput p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    :cond_3
    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    if-ne p1, v7, :cond_4

    .line 1756
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_4

    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    add-int/2addr p1, v9

    iput p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    :cond_4
    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    if-ne p1, v8, :cond_a

    .line 1758
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_a

    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    add-int/2addr p1, v9

    iput p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    goto :goto_0

    :cond_5
    if-ne v5, v8, :cond_6

    .line 1762
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_6

    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    sub-int/2addr p1, v9

    iput p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    :cond_6
    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    if-ne p1, v7, :cond_7

    .line 1764
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_7

    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    sub-int/2addr p1, v9

    iput p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    :cond_7
    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    if-ne p1, v6, :cond_8

    .line 1766
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_8

    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    sub-int/2addr p1, v9

    iput p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    :cond_8
    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    if-ne p1, v9, :cond_9

    .line 1768
    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_9

    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    sub-int/2addr p1, v9

    iput p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    :cond_9
    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    if-nez p1, :cond_a

    .line 1770
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result p1

    if-nez p1, :cond_a

    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    sub-int/2addr p1, v9

    iput p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    :cond_a
    :goto_0
    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    add-int/lit8 p1, p1, 0x5

    .line 1775
    rem-int/lit8 p1, p1, 0x5

    iput p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    .line 1778
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->resetExposureUIHighlights()V

    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    if-nez p1, :cond_b

    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->highlightColor:I

    .line 1781
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_1

    :cond_b
    if-ne p1, v9, :cond_c

    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->highlightColor:I

    .line 1784
    invoke-virtual {v3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_c
    if-ne p1, v6, :cond_d

    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->highlightColor:I

    .line 1787
    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_d
    if-ne p1, v7, :cond_e

    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->highlightColor:I

    .line 1790
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_e
    if-ne p1, v8, :cond_f

    iget p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->highlightColor:I

    .line 1793
    invoke-virtual {v4, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_f
    :goto_1
    return-void
.end method

.method private highlightPopupIcon(ZZ)V
    .locals 6

    .line 2519
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->popupIsOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2520
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->clearSelectionState()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2523
    invoke-direct {p0, v0, v0}, Lnet/sourceforge/opencamera/ui/MainUI;->highlightPopupLine(ZZ)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mHighlightedLine:Landroid/widget/LinearLayout;

    .line 2524
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_5

    iget v3, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupIcon:I

    add-int/2addr v3, v1

    .line 2529
    rem-int/2addr v3, v1

    iput v3, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupIcon:I

    iget-object v4, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mHighlightedLine:Landroid/widget/LinearLayout;

    .line 2530
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2533
    instance-of v4, v3, Landroid/widget/ImageButton;

    const/4 v5, 0x1

    if-nez v4, :cond_3

    instance-of v4, v3, Landroid/widget/Button;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget v3, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupIcon:I

    if-eqz p2, :cond_2

    const/4 v5, -0x1

    :cond_2
    add-int/2addr v3, v5

    iput v3, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupIcon:I

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    iget v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->highlightColor:I

    .line 2535
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iput-object v3, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mHighlightedIcon:Landroid/view/View;

    iput-boolean v5, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mSelectingIcons:Z

    goto :goto_2

    .line 2540
    :cond_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private highlightPopupLine(ZZ)V
    .locals 9

    .line 2465
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->popupIsOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2466
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->clearSelectionState()V

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900a8

    .line 2469
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2470
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2471
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getDrawingRect(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    .line 2472
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    return-void

    .line 2475
    :cond_1
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_8

    iget v6, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupLine:I

    add-int/2addr v6, v4

    .line 2479
    rem-int/2addr v6, v4

    iput v6, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupLine:I

    .line 2480
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2484
    instance-of v7, v6, Landroid/widget/HorizontalScrollView;

    if-eqz v7, :cond_2

    move-object v7, v6

    check-cast v7, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_2

    .line 2485
    invoke-virtual {v7, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2486
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_6

    instance-of v7, v6, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_6

    if-eqz p1, :cond_5

    iget v5, p0, Lnet/sourceforge/opencamera/ui/MainUI;->highlightColor:I

    .line 2488
    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2490
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v5, v7, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    iget v7, v1, Landroid/graphics/Rect;->top:I

    if-ge v5, v7, :cond_4

    .line 2491
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 2492
    :cond_4
    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mHighlightedLine:Landroid/widget/LinearLayout;

    goto :goto_1

    .line 2494
    :cond_5
    invoke-virtual {v6, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 2495
    invoke-virtual {v6, v5}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    :cond_6
    iget v6, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupLine:I

    if-eqz p2, :cond_7

    const/4 v8, -0x1

    :cond_7
    add-int/2addr v6, v8

    iput v6, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupLine:I

    goto :goto_0

    :cond_8
    return-void
.end method

.method private initRemoteControlForExposureUI()V
    .locals 2

    .line 1691
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->isExposureUIOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->remote_control_mode:Z

    const/4 v1, 0x0

    iput v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    .line 1694
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/ui/MainUI;->highlightExposureUILine(Z)V

    :cond_0
    return-void
.end method

.method private initRemoteControlForPopup()V
    .locals 2

    .line 2742
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->popupIsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2745
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->clearSelectionState()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->remote_control_mode:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mSelectingLines:Z

    const/4 v1, 0x0

    .line 2748
    invoke-direct {p0, v0, v1}, Lnet/sourceforge/opencamera/ui/MainUI;->highlightPopupLine(ZZ)V

    :cond_0
    return-void
.end method

.method private layoutUI(Z)V
    .locals 68

    move-object/from16 v6, p0

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 214
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getSystemOrientation()Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    move-result-object v0

    .line 215
    sget-object v1, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->PORTRAIT:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    const/4 v8, 0x0

    if-ne v0, v1, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 216
    :goto_0
    sget-object v1, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->REVERSE_LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 222
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 224
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/MainUI;->computeUIPlacement()Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    move-result-object v1

    iput-object v1, v6, Lnet/sourceforge/opencamera/ui/MainUI;->ui_placement:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    iget-object v1, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 255
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1, v8}, Lnet/sourceforge/opencamera/preview/Preview;->setUIRotation(I)V

    const/4 v1, 0x6

    const/4 v2, 0x5

    if-eqz v9, :cond_2

    const/4 v3, 0x6

    goto :goto_2

    :cond_2
    const/4 v3, 0x5

    :goto_2
    const/16 v4, 0x8

    const/4 v5, 0x7

    if-eqz v9, :cond_3

    const/16 v11, 0x8

    goto :goto_3

    :cond_3
    const/4 v11, 0x7

    :goto_3
    if-eqz v9, :cond_4

    const/4 v1, 0x7

    :cond_4
    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    const/16 v2, 0x8

    :goto_4
    const/4 v4, 0x2

    if-eqz v9, :cond_6

    const/4 v5, 0x2

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    const/4 v12, 0x3

    if-eqz v9, :cond_7

    const/4 v13, 0x3

    goto :goto_6

    :cond_7
    const/4 v13, 0x1

    :goto_6
    if-eqz v9, :cond_8

    const/4 v4, 0x1

    :cond_8
    if-eqz v9, :cond_9

    const/4 v12, 0x0

    :cond_9
    const/16 v14, 0xa

    const/16 v15, 0x9

    if-eqz v9, :cond_a

    const/16 v16, 0xa

    goto :goto_7

    :cond_a
    const/16 v16, 0x9

    :goto_7
    const/16 v17, 0xc

    const/16 v18, 0xb

    if-eqz v9, :cond_b

    const/16 v19, 0xc

    goto :goto_8

    :cond_b
    const/16 v19, 0xb

    :goto_8
    if-eqz v9, :cond_c

    const/16 v14, 0xb

    :cond_c
    if-eqz v9, :cond_d

    goto :goto_9

    :cond_d
    const/16 v15, 0xc

    :goto_9
    const/16 v17, 0xe

    if-eqz v9, :cond_e

    const/16 v18, 0xf

    const/16 v20, 0xf

    goto :goto_a

    :cond_e
    const/16 v20, 0xe

    :goto_a
    if-eqz v9, :cond_f

    const/16 v21, 0xe

    goto :goto_b

    :cond_f
    const/16 v17, 0xf

    const/16 v21, 0xf

    :goto_b
    if-eqz v0, :cond_10

    move v0, v15

    move/from16 v7, v16

    move v15, v12

    move v12, v1

    move v1, v14

    move v14, v3

    move v3, v5

    move v5, v4

    move v4, v13

    move v13, v11

    move v11, v2

    move/from16 v2, v19

    goto :goto_c

    :cond_10
    move v0, v14

    move/from16 v7, v19

    move v14, v11

    move v11, v1

    move v1, v15

    move v15, v4

    move v4, v5

    move v5, v12

    move v12, v2

    move/from16 v2, v16

    move/from16 v67, v13

    move v13, v3

    move/from16 v3, v67

    :goto_c
    iget-object v8, v6, Lnet/sourceforge/opencamera/ui/MainUI;->ui_placement:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    move/from16 v18, v0

    .line 321
    sget-object v0, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_LEFT:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    if-ne v8, v0, :cond_11

    move/from16 v28, v3

    move/from16 v29, v4

    move v8, v7

    move/from16 v19, v9

    move-object/from16 v22, v10

    move/from16 v26, v11

    move/from16 v25, v12

    move/from16 v24, v13

    move/from16 v23, v14

    move v14, v15

    move/from16 v27, v14

    move/from16 v0, v18

    move v9, v0

    move v10, v2

    move/from16 v11, v28

    move/from16 v12, v29

    move v13, v5

    move/from16 v18, v13

    move/from16 v3, v27

    move/from16 v15, v18

    move v5, v1

    goto/16 :goto_d

    :cond_11
    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->ui_placement:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    .line 331
    sget-object v8, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_TOP:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    if-ne v0, v8, :cond_12

    move/from16 v28, v3

    move/from16 v29, v4

    move v0, v7

    move/from16 v19, v9

    move-object/from16 v22, v10

    move/from16 v26, v11

    move/from16 v25, v12

    move/from16 v24, v13

    move/from16 v23, v14

    move v11, v15

    move/from16 v27, v11

    move/from16 v8, v18

    move v9, v1

    move v10, v9

    move v1, v2

    move/from16 v13, v28

    move/from16 v14, v29

    move v3, v5

    move v12, v3

    move/from16 v18, v12

    move v5, v8

    goto :goto_d

    :cond_12
    move v0, v1

    move/from16 v28, v3

    move/from16 v29, v4

    move v8, v7

    move/from16 v19, v9

    move-object/from16 v22, v10

    move/from16 v26, v11

    move/from16 v25, v12

    move/from16 v24, v13

    move/from16 v23, v14

    move v14, v15

    move/from16 v27, v14

    move v9, v0

    move v10, v2

    move/from16 v11, v28

    move/from16 v12, v29

    move v3, v5

    move v13, v3

    move/from16 v1, v18

    move v5, v1

    move/from16 v18, v13

    .line 346
    :goto_d
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    move/from16 v30, v3

    iget-object v3, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 347
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 348
    invoke-virtual {v3, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 349
    iget v3, v4, Landroid/graphics/Point;->x:I

    iput v3, v6, Lnet/sourceforge/opencamera/ui/MainUI;->layoutUI_display_w:I

    .line 350
    iget v3, v4, Landroid/graphics/Point;->y:I

    iput v3, v6, Lnet/sourceforge/opencamera/ui/MainUI;->layoutUI_display_h:I

    .line 355
    iget v3, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v3, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 357
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    move/from16 v31, v4

    iget-object v4, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 374
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MainActivity;->getNavigationGap()I

    move-result v4

    move/from16 v32, v15

    iget-object v15, v6, Lnet/sourceforge/opencamera/ui/MainUI;->ui_placement:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    move/from16 v33, v9

    .line 391
    sget-object v9, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_LEFT:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    move/from16 v34, v5

    const/high16 v5, 0x3f000000    # 0.5f

    if-eq v15, v9, :cond_13

    const/high16 v9, 0x41c00000    # 24.0f

    mul-float v9, v9, v3

    add-float/2addr v9, v5

    float-to-int v9, v9

    goto :goto_e

    :cond_13
    const/4 v9, 0x0

    :goto_e
    const/high16 v15, 0x41c00000    # 24.0f

    mul-float v15, v15, v3

    add-float/2addr v15, v5

    float-to-int v15, v15

    add-int/2addr v15, v4

    iput v4, v6, Lnet/sourceforge/opencamera/ui/MainUI;->test_navigation_gap:I

    if-nez p1, :cond_24

    const/4 v5, 0x0

    iput-object v5, v6, Lnet/sourceforge/opencamera/ui/MainUI;->top_icon:Landroid/view/View;

    iget-object v5, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    move/from16 v36, v3

    const v3, 0x7f09007e

    .line 411
    invoke-virtual {v5, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 412
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v37, v4

    const/4 v4, 0x0

    .line 413
    invoke-virtual {v3, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, -0x1

    .line 414
    invoke-virtual {v3, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 415
    invoke-virtual {v3, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x0

    .line 416
    invoke-virtual {v3, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 417
    invoke-virtual {v3, v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 418
    invoke-virtual {v3, v13, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 419
    invoke-virtual {v3, v12, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 420
    invoke-virtual {v3, v11, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 421
    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v3, v4

    .line 422
    invoke-direct {v6, v5, v3}, Lnet/sourceforge/opencamera/ui/MainUI;->setViewRotation(Landroid/view/View;F)V

    .line 425
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move/from16 v38, v0

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->ui_placement:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    move/from16 v39, v1

    .line 426
    sget-object v1, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_TOP:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    move-object/from16 v40, v5

    const v5, 0x7f09007c

    if-ne v0, v1, :cond_14

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 428
    invoke-virtual {v0, v5}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 429
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, 0x0

    .line 430
    invoke-virtual {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v41, v2

    const/4 v2, -0x1

    .line 431
    invoke-virtual {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v35, v7

    move/from16 v7, v34

    .line 432
    invoke-virtual {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v2, v33

    .line 433
    invoke-virtual {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v2, v32

    .line 434
    invoke-virtual {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v2, v30

    .line 435
    invoke-virtual {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v2, v29

    .line 436
    invoke-virtual {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v2, v28

    .line 437
    invoke-virtual {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v5, 0x0

    const/16 v28, 0x0

    move/from16 v42, v38

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v43, v7

    move/from16 v7, v39

    move/from16 v39, v11

    move-object v11, v1

    move-object/from16 v1, v38

    move/from16 v46, v32

    move/from16 v45, v33

    move/from16 v44, v41

    const/16 v33, -0x1

    move/from16 v32, v30

    move/from16 v30, v2

    move v2, v5

    move/from16 v47, v3

    move/from16 v5, v30

    move/from16 v48, v32

    move/from16 v30, v36

    move v3, v9

    move-object/from16 v51, v4

    move/from16 v50, v29

    move/from16 v49, v31

    move/from16 v29, v37

    move v4, v15

    move/from16 v53, v5

    move/from16 v32, v15

    move/from16 v52, v18

    move-object/from16 v18, v40

    move/from16 v54, v43

    const v15, 0x7f09007c

    const/16 v31, 0x0

    move/from16 v5, v28

    .line 438
    invoke-virtual/range {v0 .. v5}, Lnet/sourceforge/opencamera/ui/MainUI;->setMarginsForSystemUI(Landroid/widget/RelativeLayout$LayoutParams;IIII)V

    move-object/from16 v0, v38

    .line 439
    invoke-virtual {v11, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v5, v47

    .line 440
    invoke-direct {v6, v11, v5}, Lnet/sourceforge/opencamera/ui/MainUI;->setViewRotation(Landroid/view/View;F)V

    move-object/from16 v11, v51

    goto :goto_f

    :cond_14
    move/from16 v44, v2

    move v5, v3

    move-object/from16 v51, v4

    move/from16 v35, v7

    move/from16 v52, v18

    move/from16 v53, v28

    move/from16 v50, v29

    move/from16 v48, v30

    move/from16 v49, v31

    move/from16 v46, v32

    move/from16 v45, v33

    move/from16 v54, v34

    move/from16 v30, v36

    move/from16 v29, v37

    move/from16 v42, v38

    move/from16 v7, v39

    move-object/from16 v18, v40

    const/16 v31, 0x0

    move/from16 v39, v11

    move/from16 v32, v15

    const v15, 0x7f09007c

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 443
    invoke-virtual {v0, v15}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v11, v51

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_f
    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900c1

    .line 445
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v4, 0x7f0900a7

    .line 446
    invoke-virtual {v0, v4}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f09006b

    .line 447
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f09006d

    .line 450
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900fd

    .line 451
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f09005e

    .line 452
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900d1

    .line 453
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900eb

    .line 454
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900ce

    .line 455
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f090078

    .line 456
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f090045

    .line 457
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f09005d

    .line 458
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f090073

    .line 459
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f090044

    .line 460
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f09008c

    .line 461
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f0900f3

    .line 465
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f0900c2

    .line 466
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 469
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x0

    .line 470
    invoke-virtual {v2, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 471
    invoke-virtual {v2, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, -0x1

    .line 472
    invoke-virtual {v2, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v4, v42

    .line 473
    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 474
    invoke-virtual {v2, v14, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 475
    invoke-virtual {v2, v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 476
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getId()I

    move-result v15

    invoke-virtual {v2, v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v15, v39

    .line 477
    invoke-virtual {v2, v15, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 478
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    invoke-direct {v6, v1, v5}, Lnet/sourceforge/opencamera/ui/MainUI;->setViewRotation(Landroid/view/View;F)V

    move-object/from16 v18, v1

    const v4, 0x7f0900a7

    const v15, 0x7f09007c

    goto :goto_10

    :cond_15
    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 483
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->ui_placement:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    .line 484
    sget-object v1, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_TOP:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    if-ne v0, v1, :cond_20

    .line 490
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v8, v31

    move-object v9, v8

    const/4 v1, 0x0

    :cond_16
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 491
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_16

    if-nez v8, :cond_17

    move-object v8, v2

    :cond_17
    add-int/lit8 v1, v1, 0x1

    move-object v9, v2

    goto :goto_11

    :cond_18
    if-lez v1, :cond_1f

    mul-int v0, v1, v7

    move/from16 v10, v49

    if-le v0, v10, :cond_19

    .line 520
    div-int v7, v10, v1

    goto :goto_12

    :cond_19
    const/4 v2, 0x1

    if-le v1, v2, :cond_1a

    sub-int v4, v10, v0

    sub-int/2addr v1, v2

    .line 526
    div-int v0, v4, v1

    move v12, v0

    goto :goto_13

    :cond_1a
    :goto_12
    const/4 v12, 0x0

    .line 533
    :goto_13
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_14
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/view/View;

    .line 534
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1d

    .line 542
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    if-ne v13, v8, :cond_1b

    const/4 v3, 0x0

    goto :goto_15

    .line 547
    :cond_1b
    div-int/lit8 v0, v12, 0x2

    move v3, v0

    :goto_15
    if-ne v13, v9, :cond_1c

    const/4 v15, 0x0

    goto :goto_16

    .line 548
    :cond_1c
    div-int/lit8 v0, v12, 0x2

    move v15, v0

    :goto_16
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v18, v12

    move v12, v5

    move v5, v15

    .line 549
    invoke-virtual/range {v0 .. v5}, Lnet/sourceforge/opencamera/ui/MainUI;->setMarginsForSystemUI(Landroid/widget/RelativeLayout$LayoutParams;IIII)V

    .line 550
    iput v7, v14, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 551
    iput v7, v14, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 552
    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_17

    :cond_1d
    move/from16 v18, v12

    move v12, v5

    :goto_17
    move v5, v12

    move/from16 v12, v18

    goto :goto_14

    :cond_1e
    move v12, v5

    iput-object v8, v6, Lnet/sourceforge/opencamera/ui/MainUI;->top_icon:Landroid/view/View;

    goto :goto_19

    :cond_1f
    move v12, v5

    move/from16 v10, v49

    goto :goto_19

    :cond_20
    move v12, v5

    move/from16 v10, v49

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f09007c

    .line 562
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 563
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move v3, v9

    move/from16 v4, v32

    .line 564
    invoke-virtual/range {v0 .. v5}, Lnet/sourceforge/opencamera/ui/MainUI;->setMarginsForSystemUI(Landroid/widget/RelativeLayout$LayoutParams;IIII)V

    .line 565
    invoke-virtual {v8, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eq v1, v8, :cond_21

    .line 568
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x0

    .line 569
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 570
    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 571
    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 572
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_18

    :cond_22
    :goto_19
    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v7, 0x7f0900e5

    .line 579
    invoke-virtual {v0, v7}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 580
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v11, v44

    const/4 v0, 0x0

    .line 581
    invoke-virtual {v9, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v13, v35

    const/4 v1, -0x1

    .line 582
    invoke-virtual {v9, v13, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v14, v54

    .line 583
    invoke-virtual {v9, v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v15, v45

    .line 584
    invoke-virtual {v9, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v2, v21

    .line 585
    invoke-virtual {v9, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v1, v20

    .line 586
    invoke-virtual {v9, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v4, v29

    .line 587
    invoke-virtual/range {v0 .. v5}, Lnet/sourceforge/opencamera/ui/MainUI;->setMarginsForSystemUI(Landroid/widget/RelativeLayout$LayoutParams;IIII)V

    .line 588
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    invoke-direct {v6, v8, v12}, Lnet/sourceforge/opencamera/ui/MainUI;->setViewRotation(Landroid/view/View;F)V

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v8, 0x7f0900d4

    .line 591
    invoke-virtual {v0, v8}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 592
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x0

    .line 593
    invoke-virtual {v5, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, -0x1

    .line 594
    invoke-virtual {v5, v13, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 595
    invoke-virtual {v5, v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 596
    invoke-virtual {v5, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v4, v27

    .line 597
    invoke-virtual {v5, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v3, v52

    .line 598
    invoke-virtual {v5, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v2, v50

    .line 599
    invoke-virtual {v5, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v1, v53

    .line 600
    invoke-virtual {v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move v7, v1

    move-object v1, v5

    move/from16 v55, v2

    move/from16 v2, v18

    move v8, v3

    move/from16 v3, v20

    move/from16 v56, v4

    move/from16 v4, v29

    move/from16 v49, v10

    move-object v10, v5

    move/from16 v5, v21

    .line 601
    invoke-virtual/range {v0 .. v5}, Lnet/sourceforge/opencamera/ui/MainUI;->setMarginsForSystemUI(Landroid/widget/RelativeLayout$LayoutParams;IIII)V

    .line 602
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    invoke-direct {v6, v9, v12}, Lnet/sourceforge/opencamera/ui/MainUI;->setViewRotation(Landroid/view/View;F)V

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900d5

    .line 605
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 606
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v5, v56

    const/4 v0, 0x0

    .line 607
    invoke-virtual {v10, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 608
    invoke-virtual {v10, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v4, v55

    const v1, 0x7f0900d4

    .line 609
    invoke-virtual {v10, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 610
    invoke-virtual {v10, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v3, v26

    .line 611
    invoke-virtual {v10, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v2, v25

    .line 612
    invoke-virtual {v10, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v1, v24

    .line 613
    invoke-virtual {v10, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v5, v23

    .line 614
    invoke-virtual {v10, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float v0, v0, v30

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v0, v5

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v57, v1

    move-object v1, v10

    move/from16 v58, v2

    move/from16 v2, v18

    move/from16 v59, v3

    move/from16 v3, v20

    move/from16 v60, v4

    move/from16 v4, v24

    move/from16 v28, v7

    move/from16 v61, v23

    move/from16 v7, v56

    move/from16 v5, v21

    .line 617
    invoke-virtual/range {v0 .. v5}, Lnet/sourceforge/opencamera/ui/MainUI;->setMarginsForSystemUI(Landroid/widget/RelativeLayout$LayoutParams;IIII)V

    .line 619
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    invoke-direct {v6, v9, v12}, Lnet/sourceforge/opencamera/ui/MainUI;->setViewRotation(Landroid/view/View;F)V

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900a6

    .line 622
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 623
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x0

    .line 624
    invoke-virtual {v10, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, -0x1

    .line 625
    invoke-virtual {v10, v13, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 626
    invoke-virtual {v10, v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 627
    invoke-virtual {v10, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v1, 0x7f0900e5

    .line 628
    invoke-virtual {v10, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 629
    invoke-virtual {v10, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v5, v60

    .line 630
    invoke-virtual {v10, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v4, v28

    .line 631
    invoke-virtual {v10, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v62, v4

    move/from16 v4, v29

    move/from16 v52, v8

    move v8, v5

    move/from16 v5, v18

    .line 632
    invoke-virtual/range {v0 .. v5}, Lnet/sourceforge/opencamera/ui/MainUI;->setMarginsForSystemUI(Landroid/widget/RelativeLayout$LayoutParams;IIII)V

    .line 633
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    invoke-direct {v6, v9, v12}, Lnet/sourceforge/opencamera/ui/MainUI;->setViewRotation(Landroid/view/View;F)V

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f09004e

    .line 636
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 637
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x0

    .line 638
    invoke-virtual {v10, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, -0x1

    .line 639
    invoke-virtual {v10, v13, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 640
    invoke-virtual {v10, v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 641
    invoke-virtual {v10, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v5, v46

    const v1, 0x7f0900e5

    .line 642
    invoke-virtual {v10, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v4, v48

    .line 643
    invoke-virtual {v10, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 644
    invoke-virtual {v10, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v3, v62

    .line 645
    invoke-virtual {v10, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v63, v3

    move/from16 v3, v18

    move/from16 v64, v4

    move/from16 v4, v29

    move/from16 v65, v5

    move/from16 v5, v20

    .line 646
    invoke-virtual/range {v0 .. v5}, Lnet/sourceforge/opencamera/ui/MainUI;->setMarginsForSystemUI(Landroid/widget/RelativeLayout$LayoutParams;IIII)V

    .line 647
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    invoke-direct {v6, v9, v12}, Lnet/sourceforge/opencamera/ui/MainUI;->setViewRotation(Landroid/view/View;F)V

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900d6

    .line 650
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 651
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x0

    .line 652
    invoke-virtual {v10, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, -0x1

    .line 653
    invoke-virtual {v10, v13, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 654
    invoke-virtual {v10, v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 655
    invoke-virtual {v10, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 656
    invoke-virtual {v10, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v5, v52

    const v1, 0x7f0900e5

    .line 657
    invoke-virtual {v10, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 658
    invoke-virtual {v10, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v4, v63

    .line 659
    invoke-virtual {v10, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v66, v4

    move/from16 v4, v29

    move/from16 v50, v8

    move v8, v5

    move/from16 v5, v18

    .line 660
    invoke-virtual/range {v0 .. v5}, Lnet/sourceforge/opencamera/ui/MainUI;->setMarginsForSystemUI(Landroid/widget/RelativeLayout$LayoutParams;IIII)V

    .line 661
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    invoke-direct {v6, v9, v12}, Lnet/sourceforge/opencamera/ui/MainUI;->setViewRotation(Landroid/view/View;F)V

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900e6

    .line 664
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 665
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x0

    .line 666
    invoke-virtual {v10, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, -0x1

    .line 667
    invoke-virtual {v10, v13, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 668
    invoke-virtual {v10, v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 669
    invoke-virtual {v10, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 670
    invoke-virtual {v10, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v1, 0x7f0900e5

    .line 671
    invoke-virtual {v10, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v7, v50

    .line 672
    invoke-virtual {v10, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v8, v66

    .line 673
    invoke-virtual {v10, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    .line 674
    invoke-virtual/range {v0 .. v5}, Lnet/sourceforge/opencamera/ui/MainUI;->setMarginsForSystemUI(Landroid/widget/RelativeLayout$LayoutParams;IIII)V

    .line 675
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 676
    invoke-direct {v6, v9, v12}, Lnet/sourceforge/opencamera/ui/MainUI;->setViewRotation(Landroid/view/View;F)V

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v9, 0x7f090104

    .line 678
    invoke-virtual {v0, v9}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 679
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    .line 680
    invoke-virtual {v0, v11, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, -0x1

    .line 681
    invoke-virtual {v0, v13, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 682
    invoke-virtual {v0, v14, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 683
    invoke-virtual {v0, v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 684
    invoke-virtual {v10, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 685
    invoke-virtual {v0, v9}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/opencamera/ui/MainUI;->setFixedRotation(Landroid/view/View;IIII)V

    .line 686
    invoke-virtual {v10}, Landroid/view/View;->getRotation()F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr v0, v1

    invoke-virtual {v10, v0}, Landroid/view/View;->setRotation(F)V

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v10, 0x7f090105

    .line 688
    invoke-virtual {v0, v10}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 689
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const-string v2, "preference_show_zoom_controls"

    move-object/from16 v3, v22

    const/4 v4, 0x0

    .line 691
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 692
    invoke-virtual {v1, v11, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, -0x1

    .line 693
    invoke-virtual {v1, v13, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 694
    invoke-virtual {v1, v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 695
    invoke-virtual {v1, v15, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v12, v65

    .line 696
    invoke-virtual {v1, v12, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v9, v64

    .line 697
    invoke-virtual {v1, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 698
    invoke-virtual {v1, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 699
    invoke-virtual {v1, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1a

    :cond_23
    move/from16 v9, v64

    move/from16 v12, v65

    const/4 v2, -0x1

    .line 703
    invoke-virtual {v1, v11, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 704
    invoke-virtual {v1, v13, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 705
    invoke-virtual {v1, v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 706
    invoke-virtual {v1, v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 709
    invoke-virtual {v1, v12, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 710
    invoke-virtual {v1, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 711
    invoke-virtual {v1, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 712
    invoke-virtual {v1, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 714
    :goto_1a
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float v3, v30, v0

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    float-to-int v0, v3

    iget-object v1, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 716
    invoke-virtual {v1, v10}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    add-int v4, v0, v29

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/opencamera/ui/MainUI;->setFixedRotation(Landroid/view/View;IIII)V

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f090079

    .line 718
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 719
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 720
    invoke-virtual {v1, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x0

    .line 721
    invoke-virtual {v1, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 722
    invoke-virtual {v1, v12, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 723
    invoke-virtual {v1, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 724
    invoke-virtual {v1, v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, -0x1

    .line 725
    invoke-virtual {v1, v15, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 726
    invoke-virtual {v1, v11, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 727
    invoke-virtual {v1, v13, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 728
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f090077

    .line 730
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 731
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 732
    invoke-virtual {v1, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 733
    invoke-virtual {v1, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v4, 0x7f090079

    .line 734
    invoke-virtual {v1, v12, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 735
    invoke-virtual {v1, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 736
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 738
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/MainUI;->setFocusSeekbarsRotation()V

    goto :goto_1b

    :cond_24
    move v11, v2

    move v13, v7

    move/from16 v61, v23

    move/from16 v57, v24

    move/from16 v58, v25

    move/from16 v59, v26

    move/from16 v8, v28

    move/from16 v7, v29

    move/from16 v9, v30

    move/from16 v49, v31

    move/from16 v12, v32

    move/from16 v15, v33

    move/from16 v14, v34

    move/from16 v30, v3

    const/4 v3, -0x1

    :goto_1b
    if-nez p1, :cond_29

    if-nez v19, :cond_25

    const/16 v0, 0x15e

    goto :goto_1c

    :cond_25
    const/4 v0, 0x1

    .line 753
    invoke-virtual {v6, v0}, Lnet/sourceforge/opencamera/ui/MainUI;->getMaxHeightDp(Z)I

    move-result v0

    const/16 v1, 0xfa

    if-le v1, v0, :cond_26

    goto :goto_1c

    :cond_26
    const/16 v0, 0xfa

    :goto_1c
    int-to-float v0, v0

    mul-float v0, v0, v30

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v2, 0x32

    int-to-float v2, v2

    mul-float v2, v2, v30

    add-float/2addr v2, v1

    float-to-int v2, v2

    iget-object v4, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v5, 0x7f0900c7

    .line 763
    invoke-virtual {v4, v5}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    int-to-float v10, v5

    .line 764
    invoke-direct {v6, v4, v10}, Lnet/sourceforge/opencamera/ui/MainUI;->setViewRotation(Landroid/view/View;F)V

    const/4 v5, 0x0

    .line 765
    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 766
    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    if-nez v19, :cond_27

    int-to-float v5, v2

    .line 777
    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1d

    :cond_27
    if-eqz v19, :cond_28

    mul-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    .line 771
    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1d

    :cond_28
    mul-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    .line 773
    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    :goto_1d
    iget-object v4, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v5, 0x7f09006e

    .line 839
    invoke-virtual {v4, v5}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 840
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 841
    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 842
    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 843
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v5, 0x7f090070

    .line 845
    invoke-virtual {v4, v5}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 846
    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v4, 0x7f090089

    .line 848
    invoke-virtual {v1, v4}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 849
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 850
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 851
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 852
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v4, 0x7f090071

    .line 854
    invoke-virtual {v1, v4}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 855
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 856
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 857
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 858
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v4, 0x7f0900fe

    .line 860
    invoke-virtual {v1, v4}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 861
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 862
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 863
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 864
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 867
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/MainUI;->popupIsOpen()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, v6, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900a8

    .line 869
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 870
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, v6, Lnet/sourceforge/opencamera/ui/MainUI;->ui_placement:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    .line 871
    sget-object v4, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_TOP:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    if-ne v2, v4, :cond_2c

    move/from16 v2, v61

    const/4 v5, 0x0

    .line 872
    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v4, v58

    .line 873
    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v10, v57

    .line 874
    invoke-virtual {v1, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v2, v59

    .line 875
    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 876
    invoke-virtual {v1, v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 877
    invoke-virtual {v1, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 878
    invoke-virtual {v1, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v2, 0x7f0900a7

    .line 879
    invoke-virtual {v1, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-eqz v19, :cond_2a

    const/4 v2, 0x0

    goto :goto_1e

    :cond_2a
    const/4 v2, -0x1

    .line 880
    :goto_1e
    invoke-virtual {v1, v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-eqz v19, :cond_2b

    const/4 v3, 0x0

    .line 881
    :cond_2b
    invoke-virtual {v1, v15, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 882
    invoke-virtual {v1, v11, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 883
    invoke-virtual {v1, v13, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_20

    :cond_2c
    move/from16 v10, v57

    move/from16 v4, v58

    move/from16 v3, v59

    move/from16 v2, v61

    const/4 v5, 0x0

    const v6, 0x7f0900a7

    .line 886
    invoke-virtual {v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 887
    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 888
    invoke-virtual {v1, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 889
    invoke-virtual {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 890
    invoke-virtual {v1, v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 891
    invoke-virtual {v1, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 892
    invoke-virtual {v1, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 893
    invoke-virtual {v1, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 894
    invoke-virtual {v1, v14, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-eqz v19, :cond_2d

    const/4 v2, 0x0

    goto :goto_1f

    :cond_2d
    const/4 v2, -0x1

    .line 895
    :goto_1f
    invoke-virtual {v1, v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 896
    invoke-virtual {v1, v11, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 897
    invoke-virtual {v1, v13, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_20
    move/from16 v2, v49

    if-eqz v19, :cond_2e

    .line 901
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 903
    :cond_2e
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 906
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v3, Lnet/sourceforge/opencamera/ui/MainUI$1;

    move-object/from16 v4, p0

    invoke-direct {v3, v4, v5, v2, v0}, Lnet/sourceforge/opencamera/ui/MainUI$1;-><init>(Lnet/sourceforge/opencamera/ui/MainUI;IILandroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_21

    :cond_2f
    move-object v4, v6

    :goto_21
    if-nez p1, :cond_30

    .line 933
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/MainUI;->setTakePhotoIcon()V

    :cond_30
    return-void
.end method

.method private nextExposureUIItem()V
    .locals 3

    iget v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0900fe

    .line 1832
    invoke-virtual {p0, v0, v2}, Lnet/sourceforge/opencamera/ui/MainUI;->changeSeekbar(II)V

    goto :goto_0

    :cond_1
    const v0, 0x7f09006e

    .line 1829
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ui/MainUI;->changeSeekbar(II)V

    goto :goto_0

    :cond_2
    const v0, 0x7f090071

    const/4 v1, 0x5

    .line 1826
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ui/MainUI;->changeSeekbar(II)V

    goto :goto_0

    :cond_3
    const v0, 0x7f090089

    const/16 v1, 0xa

    .line 1823
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ui/MainUI;->changeSeekbar(II)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 1820
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/ui/MainUI;->nextIsoItem(Z)V

    :goto_0
    return-void
.end method

.method private nextExposureUILine()V
    .locals 2

    iget v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    .line 1800
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/ui/MainUI;->highlightExposureUILine(Z)V

    return-void
.end method

.method private nextIsoItem(Z)V
    .locals 7

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1863
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_iso"

    const-string v2, "auto"

    .line 1864
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->iso_buttons:Ljava/util/List;

    .line 1865
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Lnet/sourceforge/opencamera/ui/MainUI;->iso_buttons:Ljava/util/List;

    .line 1869
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1870
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1871
    invoke-static {v4, v0}, Lnet/sourceforge/opencamera/ui/MainUI;->ISOTextEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->iso_buttons:Ljava/util/List;

    add-int/2addr v3, v1

    add-int v2, v3, p1

    .line 1875
    rem-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1876
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "m"

    .line 1877
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->iso_buttons:Ljava/util/List;

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v3, p1

    .line 1878
    rem-int/2addr v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    .line 1880
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Button;->callOnClick()Z

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->iso_buttons:Ljava/util/List;

    .line 1887
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    :goto_2
    return-void
.end method

.method private nextPopupIcon()V
    .locals 3

    const/4 v0, 0x0

    .line 2568
    invoke-direct {p0, v0, v0}, Lnet/sourceforge/opencamera/ui/MainUI;->highlightPopupIcon(ZZ)V

    iget v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupIcon:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupIcon:I

    .line 2570
    invoke-direct {p0, v2, v0}, Lnet/sourceforge/opencamera/ui/MainUI;->highlightPopupIcon(ZZ)V

    return-void
.end method

.method private nextPopupLine()V
    .locals 3

    const/4 v0, 0x0

    .line 2556
    invoke-direct {p0, v0, v0}, Lnet/sourceforge/opencamera/ui/MainUI;->highlightPopupLine(ZZ)V

    iget v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupLine:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupLine:I

    .line 2558
    invoke-direct {p0, v2, v0}, Lnet/sourceforge/opencamera/ui/MainUI;->highlightPopupLine(ZZ)V

    return-void
.end method

.method private previousExposureUIItem()V
    .locals 2

    iget v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0900fe

    const/4 v1, -0x3

    .line 1854
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ui/MainUI;->changeSeekbar(II)V

    goto :goto_0

    :cond_1
    const v0, 0x7f09006e

    const/4 v1, -0x1

    .line 1851
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ui/MainUI;->changeSeekbar(II)V

    goto :goto_0

    :cond_2
    const v0, 0x7f090071

    const/4 v1, -0x5

    .line 1848
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ui/MainUI;->changeSeekbar(II)V

    goto :goto_0

    :cond_3
    const v0, 0x7f090089

    const/16 v1, -0xa

    .line 1845
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/opencamera/ui/MainUI;->changeSeekbar(II)V

    goto :goto_0

    .line 1842
    :cond_4
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/ui/MainUI;->nextIsoItem(Z)V

    :goto_0
    return-void
.end method

.method private previousExposureUILine()V
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    const/4 v0, 0x0

    .line 1805
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/ui/MainUI;->highlightExposureUILine(Z)V

    return-void
.end method

.method private previousPopupIcon()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2574
    invoke-direct {p0, v0, v1}, Lnet/sourceforge/opencamera/ui/MainUI;->highlightPopupIcon(ZZ)V

    iget v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupIcon:I

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupIcon:I

    .line 2576
    invoke-direct {p0, v1, v1}, Lnet/sourceforge/opencamera/ui/MainUI;->highlightPopupIcon(ZZ)V

    return-void
.end method

.method private previousPopupLine()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2562
    invoke-direct {p0, v0, v1}, Lnet/sourceforge/opencamera/ui/MainUI;->highlightPopupLine(ZZ)V

    iget v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupLine:I

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupLine:I

    .line 2564
    invoke-direct {p0, v1, v1}, Lnet/sourceforge/opencamera/ui/MainUI;->highlightPopupLine(ZZ)V

    return-void
.end method

.method private resetExposureUIHighlights()V
    .locals 6

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f090087

    .line 1710
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f09006c

    .line 1711
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v3, 0x7f090071

    .line 1712
    invoke-virtual {v2, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v4, 0x7f090089

    .line 1713
    invoke-virtual {v3, v4}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v5, 0x7f0900fe

    .line 1714
    invoke-virtual {v4, v5}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    .line 1716
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1717
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1718
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1719
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1720
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private selectExposureUILine()V
    .locals 9

    .line 1902
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->isExposureUIOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f090087

    .line 1907
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->highlightColorExposureUIElement:I

    .line 1908
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1910
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "preference_iso"

    const-string v3, "auto"

    .line 1911
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->iso_buttons:Ljava/util/List;

    .line 1915
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1916
    check-cast v6, Landroid/widget/Button;

    .line 1917
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1918
    invoke-static {v7, v0}, Lnet/sourceforge/opencamera/ui/MainUI;->ISOTextEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1919
    invoke-static {v6, v1}, Lnet/sourceforge/opencamera/ui/PopupView;->setButtonSelected(Landroid/view/View;Z)V

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const-string v8, "m"

    .line 1925
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v4, v6

    .line 1928
    :cond_2
    invoke-static {v6, v3}, Lnet/sourceforge/opencamera/ui/PopupView;->setButtonSelected(Landroid/view/View;Z)V

    .line 1929
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    if-eqz v4, :cond_4

    .line 1934
    invoke-static {v4, v1}, Lnet/sourceforge/opencamera/ui/PopupView;->setButtonSelected(Landroid/view/View;Z)V

    iget v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->highlightColorExposureUIElement:I

    .line 1935
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    :cond_4
    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mSelectingExposureUIElement:Z

    goto :goto_1

    :cond_5
    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f090089

    .line 1942
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->highlightColorExposureUIElement:I

    .line 1944
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mSelectingExposureUIElement:Z

    goto :goto_1

    :cond_6
    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f090071

    .line 1949
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->highlightColorExposureUIElement:I

    .line 1951
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mSelectingExposureUIElement:Z

    goto :goto_1

    :cond_7
    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f09006c

    .line 1956
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->highlightColorExposureUIElement:I

    .line 1958
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mSelectingExposureUIElement:Z

    goto :goto_1

    :cond_8
    const/4 v2, 0x4

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f0900fe

    .line 1963
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->highlightColorExposureUIElement:I

    .line 1965
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mSelectingExposureUIElement:Z

    :cond_9
    :goto_1
    return-void
.end method

.method private setFixedRotation(Landroid/view/View;IIII)V
    .locals 8

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 971
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getSystemOrientation()Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    move-result-object v0

    .line 972
    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->getRotationFromSystemOrientation(Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;)I

    move-result v1

    rsub-int v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    int-to-float v1, v1

    .line 973
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 975
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 976
    sget-object v2, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->PORTRAIT:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne v0, v2, :cond_0

    .line 977
    iget v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int v4, v0, p2

    neg-int p2, v0

    add-int v5, p2, p3

    add-int v6, v0, p4

    add-int v7, p2, p5

    move-object v2, p0

    move-object v3, v1

    .line 980
    invoke-virtual/range {v2 .. v7}, Lnet/sourceforge/opencamera/ui/MainUI;->setMarginsForSystemUI(Landroid/widget/RelativeLayout$LayoutParams;IIII)V

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, v1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 983
    invoke-virtual/range {v2 .. v7}, Lnet/sourceforge/opencamera/ui/MainUI;->setMarginsForSystemUI(Landroid/widget/RelativeLayout$LayoutParams;IIII)V

    .line 985
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setPopupViewRotation(II)V
    .locals 11

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900a8

    .line 996
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    int-to-float v1, p1

    .line 997
    invoke-direct {p0, v0, v1}, Lnet/sourceforge/opencamera/ui/MainUI;->setViewRotation(Landroid/view/View;F)V

    const/4 v1, 0x0

    .line 999
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1000
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1002
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1003
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->test_saved_popup_width:I

    iput v3, p0, Lnet/sourceforge/opencamera/ui/MainUI;->test_saved_popup_height:I

    iget-object v4, p0, Lnet/sourceforge/opencamera/ui/MainUI;->popup_view:Lnet/sourceforge/opencamera/ui/PopupView;

    if-eqz v4, :cond_0

    int-to-double v5, v2

    .line 1012
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/ui/PopupView;->getTotalWidth()I

    move-result v4

    int-to-double v7, v4

    const-wide v9, 0x3ff3333333333333L    # 1.2

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    cmpl-double v4, v5, v7

    if-lez v4, :cond_0

    const-string v4, "MainUI"

    const-string v5, "### popup view is too big?!"

    .line 1021
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lnet/sourceforge/opencamera/ui/MainUI;->force_destroy_popup:Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lnet/sourceforge/opencamera/ui/MainUI;->force_destroy_popup:Z

    :goto_0
    if-eqz p1, :cond_8

    const/16 v4, 0xb4

    if-ne p1, v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lnet/sourceforge/opencamera/ui/MainUI;->ui_placement:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    .line 1037
    sget-object v5, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_TOP:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    const/16 v6, 0x10e

    const/16 v7, 0x5a

    if-ne v4, v5, :cond_3

    .line 1038
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1039
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    if-ne p1, v7, :cond_2

    int-to-float p1, v3

    .line 1042
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3

    :cond_2
    if-ne p1, v6, :cond_9

    int-to-float p1, p2

    .line 1045
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    :cond_3
    int-to-float p2, v2

    .line 1049
    invoke-virtual {v0, p2}, Landroid/view/View;->setPivotX(F)V

    iget-object v4, p0, Lnet/sourceforge/opencamera/ui/MainUI;->ui_placement:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    .line 1050
    sget-object v5, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_RIGHT:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    int-to-float v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->ui_placement:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    .line 1051
    sget-object v4, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_RIGHT:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    if-ne v1, v4, :cond_6

    if-ne p1, v7, :cond_5

    .line 1054
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    :cond_5
    if-ne p1, v6, :cond_9

    neg-int p1, v3

    int-to-float p1, p1

    .line 1057
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3

    :cond_6
    if-ne p1, v7, :cond_7

    neg-int p1, v3

    int-to-float p1, p1

    .line 1061
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3

    :cond_7
    if-ne p1, v6, :cond_9

    neg-int p1, v2

    int-to-float p1, p1

    .line 1063
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    :cond_8
    :goto_2
    int-to-float p1, v2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 1034
    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotX(F)V

    int-to-float p1, v3

    div-float/2addr p1, p2

    .line 1035
    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotY(F)V

    :cond_9
    :goto_3
    return-void
.end method

.method private setSeekbarColors()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/16 v0, 0xff

    const/16 v1, 0xf0

    .line 113
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 114
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v3, 0x7f090105

    .line 116
    invoke-virtual {v2, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 117
    invoke-static {v2, v1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/SeekBar;Landroid/content/res/ColorStateList;)V

    .line 118
    invoke-static {v2, v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/widget/SeekBar;Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v3, 0x7f090079

    .line 120
    invoke-virtual {v2, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 121
    invoke-static {v2, v1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/SeekBar;Landroid/content/res/ColorStateList;)V

    .line 122
    invoke-static {v2, v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/widget/SeekBar;Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v3, 0x7f090077

    .line 124
    invoke-virtual {v2, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 125
    invoke-static {v2, v1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/SeekBar;Landroid/content/res/ColorStateList;)V

    .line 126
    invoke-static {v2, v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/widget/SeekBar;Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v3, 0x7f09006e

    .line 128
    invoke-virtual {v2, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 129
    invoke-static {v2, v1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/SeekBar;Landroid/content/res/ColorStateList;)V

    .line 130
    invoke-static {v2, v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/widget/SeekBar;Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v3, 0x7f090089

    .line 132
    invoke-virtual {v2, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 133
    invoke-static {v2, v1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/SeekBar;Landroid/content/res/ColorStateList;)V

    .line 134
    invoke-static {v2, v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/widget/SeekBar;Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v3, 0x7f090071

    .line 136
    invoke-virtual {v2, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 137
    invoke-static {v2, v1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/SeekBar;Landroid/content/res/ColorStateList;)V

    .line 138
    invoke-static {v2, v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/widget/SeekBar;Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v3, 0x7f0900fe

    .line 140
    invoke-virtual {v2, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 141
    invoke-static {v2, v1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/SeekBar;Landroid/content/res/ColorStateList;)V

    .line 142
    invoke-static {v2, v0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/widget/SeekBar;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private setViewRotation(Landroid/view/View;F)V
    .locals 3

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->view_rotate_animation:Z

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    :cond_0
    iget v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->view_rotate_animation_start:F

    add-float/2addr v0, p2

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1

    sub-float/2addr v0, v1

    .line 156
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    sub-float v0, p2, v0

    const/high16 v2, 0x43350000    # 181.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_2
    const/high16 v2, -0x3ccb0000    # -181.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    add-float/2addr v0, v1

    :cond_3
    :goto_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 165
    iget-boolean v1, v1, Lnet/sourceforge/opencamera/MainActivity;->is_test:Z

    if-eqz v1, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_4

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    goto :goto_1

    .line 172
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    return-void
.end method


# virtual methods
.method public audioControlStarted()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f090044

    .line 1650
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f08008b

    .line 1651
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1652
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public audioControlStopped()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f090044

    .line 1656
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f08008c

    .line 1657
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1658
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public changeSeekbar(II)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2336
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    .line 2337
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/2addr p2, v0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 2341
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-le p2, v1, :cond_1

    .line 2342
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p2

    :cond_1
    :goto_0
    if-eq p2, v0, :cond_2

    .line 2349
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    return-void
.end method

.method public closeExposureUI()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f09006b

    .line 2356
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f08007f

    .line 2357
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2359
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->clearRemoteControlForExposureUI()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900c7

    .line 2360
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 2361
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f090088

    .line 2362
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2363
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f09006c

    .line 2364
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2365
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f090095

    .line 2366
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2367
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f090096

    .line 2368
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2369
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public closePopup()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v1, 0x0

    .line 2406
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->enablePopupOnBackPressedCallback(Z)V

    .line 2408
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->popupIsOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2409
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->clearRemoteControlForPopup()V

    .line 2410
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->clearSelectionState()V

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->popup_view_is_open:Z

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->force_destroy_popup:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->popup_view:Lnet/sourceforge/opencamera/ui/PopupView;

    const/16 v1, 0x8

    .line 2423
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/ui/PopupView;->setVisibility(I)V

    goto :goto_0

    .line 2426
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->destroyPopup()V

    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2428
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->initImmersiveMode()V

    :cond_1
    return-void
.end method

.method public commandMenuExposure()V
    .locals 1

    .line 3016
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->isExposureUIOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3017
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->isSelectingExposureUIElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3020
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->toggleExposureUI()V

    goto :goto_0

    .line 3024
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->selectExposureUILine()V

    :cond_1
    :goto_0
    return-void
.end method

.method public commandMenuPopup()V
    .locals 2

    .line 3034
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->popupIsOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3035
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->selectingIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3036
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->clickSelectedIcon()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3039
    invoke-direct {p0, v0, v1}, Lnet/sourceforge/opencamera/ui/MainUI;->highlightPopupIcon(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public destroyPopup()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->force_destroy_popup:Z

    .line 2448
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->popupIsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2449
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->closePopup()V

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900a8

    .line 2451
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2452
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->popup_view:Lnet/sourceforge/opencamera/ui/PopupView;

    return-void
.end method

.method public getEntryForAntiBanding(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3256
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "60hz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "50hz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    goto :goto_2

    :pswitch_0
    const v0, 0x7f100029

    goto :goto_2

    :pswitch_1
    const v0, 0x7f100028

    goto :goto_2

    :pswitch_2
    const v0, 0x7f100027

    goto :goto_2

    :pswitch_3
    const v0, 0x7f10002a

    :goto_2
    if-eq v0, v1, :cond_4

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3274
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1ad6f -> :sswitch_3
        0x18d8ed -> :sswitch_2
        0x194d4c -> :sswitch_1
        0x2dddaf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEntryForColorEffect(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3210
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "posterize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "solarize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    const-string v0, "negative"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "whiteboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "sepia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "mono"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "aqua"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_8
    const-string v0, "blackboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    goto :goto_2

    :pswitch_0
    const v0, 0x7f100055

    goto :goto_2

    :pswitch_1
    const v0, 0x7f100057

    goto :goto_2

    :pswitch_2
    const v0, 0x7f100053

    goto :goto_2

    :pswitch_3
    const v0, 0x7f100058

    goto :goto_2

    :pswitch_4
    const v0, 0x7f100056

    goto :goto_2

    :pswitch_5
    const v0, 0x7f100054

    goto :goto_2

    :pswitch_6
    const v0, 0x7f100052

    goto :goto_2

    :pswitch_7
    const v0, 0x7f100050

    goto :goto_2

    :pswitch_8
    const v0, 0x7f100051

    :goto_2
    if-eq v0, v1, :cond_9

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3243
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_9
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x617979b9 -> :sswitch_8
        0x2dcebc -> :sswitch_7
        0x333ae3 -> :sswitch_6
        0x33af38 -> :sswitch_5
        0x68429f6 -> :sswitch_4
        0xf91545d -> :sswitch_3
        0x36e70c35 -> :sswitch_2
        0x57d28ff3 -> :sswitch_1
        0x77b67ce7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEntryForNoiseReductionMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3288
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "high_quality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "minimal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "fast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    goto :goto_2

    :pswitch_0
    const v0, 0x7f1000ca

    goto :goto_2

    :pswitch_1
    const v0, 0x7f1000c8

    goto :goto_2

    :pswitch_2
    const v0, 0x7f1000cb

    goto :goto_2

    :pswitch_3
    const v0, 0x7f1000c9

    goto :goto_2

    :pswitch_4
    const v0, 0x7f1000cc

    :goto_2
    if-eq v0, v1, :cond_5

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3309
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_5
    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x1ad6f -> :sswitch_4
        0x2fd85c -> :sswitch_3
        0x3f738da1 -> :sswitch_2
        0x5c13d641 -> :sswitch_1
        0x6ab28362 -> :sswitch_0
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

.method public getEntryForSceneMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3142
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "candlelight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "night-portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "party"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "night"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "beach"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "snow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_9
    const-string v0, "fireworks"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_a
    const-string v0, "steadyphoto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_b
    const-string v0, "barcode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_c
    const-string v0, "sunset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_d
    const-string v0, "sports"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_e
    const-string v0, "theatre"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_f
    const-string v0, "action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    goto :goto_2

    :pswitch_0
    const v0, 0x7f100336

    goto :goto_2

    :pswitch_1
    const v0, 0x7f10033a

    goto :goto_2

    :pswitch_2
    const v0, 0x7f100338

    goto :goto_2

    :pswitch_3
    const v0, 0x7f10033c

    goto :goto_2

    :pswitch_4
    const v0, 0x7f10033b

    goto :goto_2

    :pswitch_5
    const v0, 0x7f100339

    goto :goto_2

    :pswitch_6
    const v0, 0x7f100335

    goto :goto_2

    :pswitch_7
    const v0, 0x7f10033d

    goto :goto_2

    :pswitch_8
    const v0, 0x7f100333

    goto :goto_2

    :pswitch_9
    const v0, 0x7f100337

    goto :goto_2

    :pswitch_a
    const v0, 0x7f10033f

    goto :goto_2

    :pswitch_b
    const v0, 0x7f100334

    goto :goto_2

    :pswitch_c
    const v0, 0x7f100340

    goto :goto_2

    :pswitch_d
    const v0, 0x7f10033e

    goto :goto_2

    :pswitch_e
    const v0, 0x7f100341

    goto :goto_2

    :pswitch_f
    const v0, 0x7f100332

    :goto_2
    if-eq v0, v1, :cond_10

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3196
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_10
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_f
        -0x50780669 -> :sswitch_e
        -0x35643881 -> :sswitch_d
        -0x351e356a -> :sswitch_c
        -0x13e21780 -> :sswitch_b
        -0x11e5dea0 -> :sswitch_a
        -0xfbf68f4 -> :sswitch_9
        0x2dddaf -> :sswitch_8
        0x35f183 -> :sswitch_7
        0x5946163 -> :sswitch_6
        0x63f6418 -> :sswitch_5
        0x6581ae6 -> :sswitch_4
        0x2b77bb9b -> :sswitch_3
        0x5545f2bb -> :sswitch_2
        0x6332f5b0 -> :sswitch_1
        0x713fe229 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEntryForWhiteBalance(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3095
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "daylight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "fluorescent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    const-string v0, "twilight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "cloudy-daylight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "shade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "warm-fluorescent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "incandescent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_8
    const-string v0, "manual"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    goto :goto_2

    :pswitch_0
    const v0, 0x7f100377

    goto :goto_2

    :pswitch_1
    const v0, 0x7f100378

    goto :goto_2

    :pswitch_2
    const v0, 0x7f10037e

    goto :goto_2

    :pswitch_3
    const v0, 0x7f100376

    goto :goto_2

    :pswitch_4
    const v0, 0x7f10037d

    goto :goto_2

    :pswitch_5
    const v0, 0x7f100375

    goto :goto_2

    :pswitch_6
    const v0, 0x7f100381

    goto :goto_2

    :pswitch_7
    const v0, 0x7f100379

    goto :goto_2

    :pswitch_8
    const v0, 0x7f10037c

    :goto_2
    if-eq v0, v1, :cond_9

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3128
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_9
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4075183a -> :sswitch_8
        -0x37fc9231 -> :sswitch_7
        -0x2adfe6e0 -> :sswitch_6
        0x2dddaf -> :sswitch_5
        0x6854e2d -> :sswitch_4
        0x1c4eedc3 -> :sswitch_3
        0x625dee90 -> :sswitch_2
        0x71671468 -> :sswitch_1
        0x73cf92fa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getMaxHeightDp(Z)I
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1975
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1977
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1978
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1981
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1983
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    if-eqz p1, :cond_0

    const/16 p1, 0x78

    goto :goto_0

    :cond_0
    const/16 p1, 0x32

    :goto_0
    sub-int/2addr v0, p1

    return v0
.end method

.method public getPopupView()Lnet/sourceforge/opencamera/ui/PopupView;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->popup_view:Lnet/sourceforge/opencamera/ui/PopupView;

    return-object v0
.end method

.method getTestUIButtonsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->test_ui_buttons:Ljava/util/Map;

    return-object v0
.end method

.method getTopIcon()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->top_icon:Landroid/view/View;

    return-object v0
.end method

.method public getUIButton(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->test_ui_buttons:Ljava/util/Map;

    .line 3328
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public getUIPlacement()Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->ui_placement:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    return-object v0
.end method

.method public inImmersiveMode()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->immersive_mode:Z

    return v0
.end method

.method public isExposureUIOpen()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f09006c

    .line 1662
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1663
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f090095

    .line 1664
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1665
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSelectingExposureUIElement()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mSelectingExposureUIElement:Z

    return v0
.end method

.method public layoutUI()V
    .locals 1

    const/4 v0, 0x0

    .line 177
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/ui/MainUI;->layoutUI(Z)V

    return-void
.end method

.method public layoutUIWithRotation(F)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->view_rotate_animation:Z

    iput p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->view_rotate_animation_start:F

    .line 185
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->layoutUI()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->view_rotate_animation:Z

    const/4 p1, 0x0

    iput p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->view_rotate_animation_start:F

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10

    const/16 v0, 0x13

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_26

    const/16 v0, 0x14

    if-eq p1, v0, :cond_23

    const/16 v0, 0x56

    const/16 v3, 0x55

    const/16 v4, 0x58

    const/16 v5, 0x19

    const/16 v6, 0x18

    if-eq p1, v6, :cond_a

    if-eq p1, v5, :cond_a

    const/16 v7, 0x1b

    if-eq p1, v7, :cond_7

    const/16 v7, 0x3e

    if-eq p1, v7, :cond_4

    const/16 v7, 0x45

    if-eq p1, v7, :cond_3

    const/16 v7, 0x4c

    if-eq p1, v7, :cond_2

    if-eq p1, v4, :cond_a

    const/16 v7, 0x77

    if-eq p1, v7, :cond_1

    const/16 v7, 0x92

    if-eq p1, v7, :cond_23

    const/16 v7, 0x95

    if-eq p1, v7, :cond_4

    const/16 v7, 0x98

    if-eq p1, v7, :cond_26

    if-eq p1, v3, :cond_a

    if-eq p1, v0, :cond_a

    const/16 v0, 0xa8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_9

    :pswitch_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2905
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->openSettings()V

    return v2

    :cond_0
    :pswitch_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2931
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->zoomIn()V

    return v2

    .line 2992
    :cond_1
    :pswitch_2
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->togglePopupSettings()V

    goto/16 :goto_9

    .line 2996
    :cond_2
    :pswitch_3
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->toggleExposureUI()V

    goto/16 :goto_9

    :cond_3
    :pswitch_4
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2938
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->zoomOut()V

    return v2

    .line 2944
    :cond_4
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->isExposureUIOpen()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->remote_control_mode:Z

    if-eqz p1, :cond_5

    .line 2945
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->commandMenuExposure()V

    return v2

    .line 2948
    :cond_5
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->popupIsOpen()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->remote_control_mode:Z

    if-eqz p1, :cond_6

    .line 2949
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->commandMenuPopup()V

    return v2

    .line 2952
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_29

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2953
    invoke-virtual {p1, v1}, Lnet/sourceforge/opencamera/MainActivity;->takePicture(Z)V

    return v2

    .line 2910
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2911
    invoke-virtual {p1, v1}, Lnet/sourceforge/opencamera/MainActivity;->takePicture(Z)V

    return v2

    .line 2920
    :cond_8
    :pswitch_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide p1

    cmp-long v3, v0, p1

    if-nez v3, :cond_9

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->isFocusWaiting()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2923
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->requestAutoFocus()V

    :cond_9
    return v2

    :cond_a
    if-ne p1, v6, :cond_b

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->keydown_volume_up:Z

    goto :goto_0

    :cond_b
    if-ne p1, v5, :cond_c

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->keydown_volume_down:Z

    :cond_c
    :goto_0
    iget-object v7, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2805
    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "preference_volume_keys"

    const-string v9, "volume_take_photo"

    .line 2806
    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eq p1, v4, :cond_d

    if-eq p1, v3, :cond_d

    if-ne p1, v0, :cond_f

    .line 2811
    :cond_d
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const-string v3, "audio"

    .line 2812
    invoke-virtual {v0, v3}, Lnet/sourceforge/opencamera/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_e

    goto/16 :goto_9

    .line 2814
    :cond_e
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_9

    .line 2817
    :cond_f
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_1
    const/4 v0, -0x1

    goto :goto_2

    :sswitch_0
    const-string v0, "volume_auto_stabilise"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_1

    :cond_10
    const/4 v0, 0x5

    goto :goto_2

    :sswitch_1
    const-string v0, "volume_really_nothing"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1

    :cond_11
    const/4 v0, 0x4

    goto :goto_2

    :sswitch_2
    const-string v0, "volume_exposure"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1

    :cond_12
    const/4 v0, 0x3

    goto :goto_2

    :sswitch_3
    const-string v0, "volume_zoom"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1

    :cond_13
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_4
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_1

    :cond_14
    const/4 v0, 0x1

    goto :goto_2

    :sswitch_5
    const-string v0, "volume_focus"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1

    :cond_15
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_2

    goto/16 :goto_9

    :pswitch_6
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2877
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->supportsAutoStabilise()Z

    move-result p1

    if-eqz p1, :cond_17

    const-string p1, "preference_auto_stabilise"

    .line 2878
    invoke-interface {v7, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    xor-int/2addr p2, v2

    .line 2880
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2881
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2882
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2883
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_16

    const p2, 0x7f1000cf

    goto :goto_3

    :cond_16
    const p2, 0x7f1000ce

    :goto_3
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2884
    invoke-virtual {p2}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getChangedAutoStabiliseToastBoxer()Lnet/sourceforge/opencamera/ToastBoxer;

    move-result-object v0

    invoke-virtual {p2, v0, p1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;Z)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2885
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->updateSettings()V

    .line 2886
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->destroyPopup()V

    goto :goto_4

    :cond_17
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2888
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->deviceSupportsAutoStabilise()Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2890
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {p2}, Lnet/sourceforge/opencamera/MainActivity;->getChangedAutoStabiliseToastBoxer()Lnet/sourceforge/opencamera/ToastBoxer;

    move-result-object p2

    const v0, 0x7f100036

    invoke-virtual {p1, p2, v0}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    :cond_18
    :goto_4
    :pswitch_7
    return v2

    :pswitch_8
    iget-object p2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2857
    invoke-virtual {p2}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object p2

    if-eqz p2, :cond_1c

    const-string p2, "preference_iso"

    const-string v0, "auto"

    .line 2858
    invoke-interface {v7, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2859
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v2

    if-ne p1, v6, :cond_1a

    if-eqz p2, :cond_19

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2862
    invoke-virtual {p1, v2}, Lnet/sourceforge/opencamera/MainActivity;->changeISO(I)V

    goto :goto_5

    :cond_19
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2865
    invoke-virtual {p1, v2}, Lnet/sourceforge/opencamera/MainActivity;->changeExposure(I)V

    goto :goto_5

    :cond_1a
    if-eqz p2, :cond_1b

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2869
    invoke-virtual {p1, v3}, Lnet/sourceforge/opencamera/MainActivity;->changeISO(I)V

    goto :goto_5

    :cond_1b
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2872
    invoke-virtual {p1, v3}, Lnet/sourceforge/opencamera/MainActivity;->changeExposure(I)V

    :cond_1c
    :goto_5
    return v2

    :pswitch_9
    if-ne p1, v6, :cond_1d

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2852
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->zoomIn()V

    goto :goto_6

    :cond_1d
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2854
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->zoomOut()V

    :goto_6
    return v2

    :pswitch_a
    if-ne p1, v5, :cond_1e

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v6, :cond_1e

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2820
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecording()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2822
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->pauseVideo()V

    goto :goto_7

    :cond_1e
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2825
    invoke-virtual {p1, v1}, Lnet/sourceforge/opencamera/MainActivity;->takePicture(Z)V

    :goto_7
    return v2

    :pswitch_b
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->keydown_volume_up:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->keydown_volume_down:Z

    if-eqz v0, :cond_1f

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2832
    invoke-virtual {p1, v1}, Lnet/sourceforge/opencamera/MainActivity;->takePicture(Z)V

    goto :goto_8

    :cond_1f
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2834
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFocusValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFocusValue()Ljava/lang/String;

    move-result-object v0

    const-string v4, "focus_mode_manual2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    if-ne p1, v6, :cond_20

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2836
    invoke-virtual {p1, v3, v1}, Lnet/sourceforge/opencamera/MainActivity;->changeFocusDistance(IZ)V

    goto :goto_8

    :cond_20
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2838
    invoke-virtual {p1, v2, v1}, Lnet/sourceforge/opencamera/MainActivity;->changeFocusDistance(IZ)V

    goto :goto_8

    .line 2843
    :cond_21
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide p1

    cmp-long v3, v0, p1

    if-nez v3, :cond_22

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->isFocusWaiting()Z

    move-result p1

    if-nez p1, :cond_22

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2846
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->requestAutoFocus()V

    :cond_22
    :goto_8
    return v2

    :cond_23
    iget-boolean p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->remote_control_mode:Z

    if-nez p1, :cond_25

    .line 2978
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->popupIsOpen()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 2979
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->initRemoteControlForPopup()V

    return v2

    .line 2982
    :cond_24
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->isExposureUIOpen()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 2983
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->initRemoteControlForExposureUI()V

    return v2

    .line 2987
    :cond_25
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->processRemoteDownButton()Z

    move-result p1

    if-eqz p1, :cond_29

    return v2

    :cond_26
    iget-boolean p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->remote_control_mode:Z

    if-nez p1, :cond_28

    .line 2962
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->popupIsOpen()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 2963
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->initRemoteControlForPopup()V

    return v2

    .line 2966
    :cond_27
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->isExposureUIOpen()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 2967
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->initRemoteControlForExposureUI()V

    return v2

    .line 2971
    :cond_28
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->processRemoteUpButton()Z

    move-result p1

    if-eqz p1, :cond_29

    return v2

    :cond_29
    :goto_9
    return v1

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9a
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x510e9c8d -> :sswitch_5
        -0x37281141 -> :sswitch_4
        -0x3420aa28 -> :sswitch_3
        -0x2948db74 -> :sswitch_2
        0x1f965afe -> :sswitch_1
        0x3693e0ab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 1

    const/16 p2, 0x18

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->keydown_volume_up:Z

    goto :goto_0

    :cond_0
    const/16 p2, 0x19

    if-ne p1, p2, :cond_1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->keydown_volume_down:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public popupIsOpen()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->popup_view_is_open:Z

    return v0
.end method

.method public processRemoteDownButton()Z
    .locals 2

    .line 2036
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->popupIsOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2037
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->selectingIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2038
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->nextPopupIcon()V

    goto :goto_0

    .line 2039
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->selectingLines()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2040
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->nextPopupLine()V

    goto :goto_0

    .line 2043
    :cond_1
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->isExposureUIOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2044
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->isSelectingExposureUIElement()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2045
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->previousExposureUIItem()V

    goto :goto_0

    .line 2047
    :cond_2
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->nextExposureUILine()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method

.method public processRemoteUpButton()Z
    .locals 2

    .line 2010
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->popupIsOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2012
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->selectingIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2013
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->previousPopupIcon()V

    goto :goto_0

    .line 2014
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->selectingLines()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2015
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->previousPopupLine()V

    goto :goto_0

    .line 2017
    :cond_1
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->isExposureUIOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2019
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->isSelectingExposureUIElement()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2020
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->nextExposureUIItem()V

    goto :goto_0

    .line 2022
    :cond_2
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->previousExposureUILine()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method

.method public selectingIcons()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mSelectingIcons:Z

    return v0
.end method

.method public selectingLines()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mSelectingLines:Z

    return v0
.end method

.method setFocusSeekbarsRotation()V
    .locals 8

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f090079

    .line 989
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lnet/sourceforge/opencamera/ui/MainUI;->setFixedRotation(Landroid/view/View;IIII)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f090077

    .line 990
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct/range {v2 .. v7}, Lnet/sourceforge/opencamera/ui/MainUI;->setFixedRotation(Landroid/view/View;IIII)V

    return-void
.end method

.method public setImmersiveMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->immersive_mode:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1320
    new-instance v1, Lnet/sourceforge/opencamera/ui/MainUI$3;

    invoke-direct {v1, p0, p1}, Lnet/sourceforge/opencamera/ui/MainUI$3;-><init>(Lnet/sourceforge/opencamera/ui/MainUI;Z)V

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setMarginsForSystemUI(Landroid/widget/RelativeLayout$LayoutParams;IIII)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 946
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getSystemOrientation()Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    move-result-object v0

    .line 947
    sget-object v1, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->PORTRAIT:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne v0, v1, :cond_0

    .line 948
    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 950
    :cond_0
    sget-object v1, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->REVERSE_LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne v0, v1, :cond_1

    .line 951
    invoke-virtual {p1, p4, p5, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 954
    :cond_1
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    return-void
.end method

.method public setPauseVideoContentDescription()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900a6

    .line 1147
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1149
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecordingPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f080091

    .line 1151
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    const v1, 0x7f100328

    goto :goto_0

    :cond_0
    const v1, 0x7f08008e

    .line 1155
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    const v1, 0x7f1000d5

    :goto_0
    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1159
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPopupIcon()V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900a7

    .line 2375
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2376
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFlashValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2379
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->showCycleFlashIcon()Z

    move-result v2

    const v3, 0x7f0800ac

    if-eqz v2, :cond_0

    .line 2380
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "flash_off"

    .line 2382
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x7f0800ae

    .line 2383
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    const-string v2, "flash_torch"

    .line 2385
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "flash_frontscreen_torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const v1, 0x7f0800b1

    .line 2386
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    const-string v2, "flash_auto"

    .line 2388
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "flash_frontscreen_auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const v1, 0x7f0800ad

    .line 2389
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_7

    const-string v2, "flash_on"

    .line 2391
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "flash_frontscreen_on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const v1, 0x7f0800af

    .line 2392
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_7
    if-eqz v1, :cond_8

    const-string v2, "flash_red_eye"

    .line 2394
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f0800b0

    .line 2395
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2398
    :cond_8
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setSeekbarZoom(I)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f090105

    .line 2325
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2328
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getMaxZoom()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public setSwitchCameraContentDescription()V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1118
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->canSwitchCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900d4

    .line 1119
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1121
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getNextCameraId()I

    move-result v1

    .line 1122
    sget-object v2, Lnet/sourceforge/opencamera/ui/MainUI$9;->$SwitchMap$net$sourceforge$opencamera$cameracontroller$CameraController$Facing:[I

    iget-object v3, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraControllerManager()Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getFacing(I)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const v1, 0x7f10035c

    goto :goto_0

    :cond_0
    const v1, 0x7f100359

    goto :goto_0

    :cond_1
    const v1, 0x7f100358

    goto :goto_0

    :cond_2
    const v1, 0x7f10035a

    :goto_0
    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1138
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setTakePhotoIcon()V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1074
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900e5

    .line 1075
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1079
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1082
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0800c4

    goto :goto_0

    :cond_0
    const v1, 0x7f0800c5

    :goto_0
    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1083
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f100355

    goto :goto_1

    :cond_1
    const v2, 0x7f100351

    :goto_1
    const v3, 0x7f10035b

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1086
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v1

    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const v3, 0x7f10035d

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1087
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getGyroSensor()Lnet/sourceforge/opencamera/GyroSensor;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/GyroSensor;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f080054

    const v2, 0x7f10009c

    goto :goto_2

    :cond_3
    const v1, 0x7f0800bf

    const v2, 0x7f10035e

    .line 1101
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v4, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1102
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900d6

    .line 1105
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1106
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1107
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0800bd

    goto :goto_3

    :cond_4
    const v1, 0x7f0800c2

    .line 1108
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public setupExposureUI()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI;->test_ui_buttons:Ljava/util/Map;

    .line 2063
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2064
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2065
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v2

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v4, 0x7f09006b

    .line 2066
    invoke-virtual {v3, v4}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const v4, 0x7f08007e

    .line 2067
    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v4, 0x7f0900c7

    .line 2068
    invoke-virtual {v3, v4}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    .line 2069
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v5, 0x7f090087

    .line 2070
    invoke-virtual {v3, v5}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/view/ViewGroup;

    .line 2071
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2073
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecording()Z

    move-result v3

    const/4 v6, 0x1

    const-string v7, "m"

    const-string v15, "auto"

    const/16 v14, 0x8

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 2076
    :cond_0
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->supportsISORange()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2079
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->getMinimumISO()I

    move-result v3

    .line 2080
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->getMaximumISO()I

    move-result v8

    .line 2081
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2082
    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2083
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v6, v0, Lnet/sourceforge/opencamera/ui/MainUI;->iso_button_manual_index:I

    new-array v10, v14, [I

    fill-array-data v10, :array_0

    .line 2086
    invoke-static {v3}, Lnet/sourceforge/opencamera/ui/MainUI;->ISOToButtonText(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v14, :cond_2

    .line 2087
    aget v12, v10, v11

    if-le v12, v3, :cond_1

    if-ge v12, v8, :cond_1

    .line 2089
    invoke-static {v12}, Lnet/sourceforge/opencamera/ui/MainUI;->ISOToButtonText(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2092
    :cond_2
    invoke-static {v8}, Lnet/sourceforge/opencamera/ui/MainUI;->ISOToButtonText(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v9

    goto :goto_1

    .line 2096
    :cond_3
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedISOs()Ljava/util/List;

    move-result-object v3

    const/4 v8, -0x1

    iput v8, v0, Lnet/sourceforge/opencamera/ui/MainUI;->iso_button_manual_index:I

    :goto_1
    const-string v8, "preference_iso"

    .line 2099
    invoke-interface {v1, v8, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2101
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    if-eqz v3, :cond_4

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    move-object/from16 v16, v7

    goto :goto_2

    :cond_4
    move-object/from16 v16, v8

    .line 2106
    :goto_2
    invoke-virtual {v0, v6}, Lnet/sourceforge/opencamera/ui/MainUI;->getMaxHeightDp(Z)I

    move-result v6

    const/16 v7, 0x118

    if-le v7, v6, :cond_5

    move v7, v6

    :cond_5
    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/MainUI;->test_ui_buttons:Ljava/util/Map;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const-string v12, "ISO"

    const/4 v13, 0x0

    const/16 v17, 0x0

    const-string v18, "TEST_ISO"

    .line 2113
    new-instance v9, Lnet/sourceforge/opencamera/ui/MainUI$5;

    invoke-direct {v9, v0, v1, v2}, Lnet/sourceforge/opencamera/ui/MainUI$5;-><init>(Lnet/sourceforge/opencamera/ui/MainUI;Landroid/content/SharedPreferences;Lnet/sourceforge/opencamera/preview/Preview;)V

    move-object v1, v9

    move-object v9, v3

    const/16 v2, 0x8

    move-object/from16 v14, v16

    move-object v2, v15

    move/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v1

    invoke-static/range {v5 .. v17}, Lnet/sourceforge/opencamera/ui/PopupView;->createButtonOptions(Landroid/view/ViewGroup;Landroid/content/Context;ILjava/util/Map;Ljava/util/List;IILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI;->iso_buttons:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v3, 0x7f090088

    .line 2206
    invoke-virtual {v1, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2207
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v3, 0x7f09006c

    .line 2210
    invoke-virtual {v1, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v5, 0x7f090095

    .line 2211
    invoke-virtual {v3, v5}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v5, v0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2212
    invoke-virtual {v5}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getISOPref()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2213
    invoke-virtual {v6}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/preview/Preview;->usingCamera2API()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v2, 0x8

    .line 2214
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2217
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->supportsISORange()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2218
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f090071

    .line 2219
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2220
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->supportsExposureTime()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2221
    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    const/16 v2, 0x8

    goto :goto_3

    :cond_7
    const/16 v2, 0x8

    .line 2224
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_3

    :cond_8
    const/16 v2, 0x8

    .line 2228
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_9
    const/16 v2, 0x8

    .line 2232
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2234
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->supportsExposures()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2235
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f090070

    .line 2236
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ZoomControls;

    .line 2237
    invoke-virtual {v1, v4}, Landroid/widget/ZoomControls;->setVisibility(I)V

    goto :goto_3

    :cond_a
    const/16 v2, 0x8

    .line 2240
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f090096

    .line 2244
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2245
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/preview/Preview;->supportsWhiteBalanceTemperature()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2247
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getWhiteBalancePref()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2248
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->usingCamera2API()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "manual"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2249
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_b
    const/16 v2, 0x8

    .line 2252
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_c
    const/16 v2, 0x8

    .line 2256
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void

    :array_0
    .array-data 4
        0x32
        0x64
        0xc8
        0x190
        0x320
        0x640
        0xc80
        0x1900
    .end array-data
.end method

.method public showAutoLevelIcon()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1290
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->supportsAutoStabilise()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1292
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "preference_show_auto_level"

    .line 1293
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public showCycleFlashIcon()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1297
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsFlash()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1299
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1301
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "preference_show_cycle_flash"

    .line 1302
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public showCycleRawIcon()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1259
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsRaw()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1261
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isRawAllowed(Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1263
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "preference_show_cycle_raw"

    .line 1264
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public showExposureLockIcon()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1237
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsExposureLock()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1239
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isCameraExtensionPref()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1243
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_show_exposure_lock"

    const/4 v2, 0x1

    .line 1244
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public showFaceDetectionIcon()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1306
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsFaceDetection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1308
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isCameraExtensionPref()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1312
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "preference_show_face_detection"

    .line 1313
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public showFocusPeakingIcon()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1283
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->supportsPreviewBitmaps()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1285
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "preference_show_focus_peaking"

    .line 1286
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public showGUI()V
    .locals 2

    .line 1445
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->inImmersiveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->show_gui_photo:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->show_gui_video:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1447
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->usingKitKatImmersiveMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1449
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->initImmersiveMode()V

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1451
    new-instance v1, Lnet/sourceforge/opencamera/ui/MainUI$4;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/ui/MainUI$4;-><init>(Lnet/sourceforge/opencamera/ui/MainUI;)V

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showGUI(ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->show_gui_video:Z

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->show_gui_photo:Z

    .line 1436
    :goto_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->showGUI()V

    return-void
.end method

.method public showInfoDialog(IILjava/lang/String;)Landroid/app/AlertDialog;
    .locals 2

    .line 3054
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3055
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    if-eqz p2, :cond_0

    .line 3057
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_0
    const p1, 0x104000a

    const/4 p2, 0x0

    .line 3058
    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3059
    new-instance p1, Lnet/sourceforge/opencamera/ui/MainUI$7;

    invoke-direct {p1, p0, p3}, Lnet/sourceforge/opencamera/ui/MainUI$7;-><init>(Lnet/sourceforge/opencamera/ui/MainUI;Ljava/lang/String;)V

    const p2, 0x7f10005e

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 p2, 0x0

    .line 3071
    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/MainActivity;->showPreview(Z)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3072
    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/MainActivity;->setWindowFlagsForSettings(Z)V

    .line 3074
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 3076
    new-instance p2, Lnet/sourceforge/opencamera/ui/MainUI$8;

    invoke-direct {p2, p0}, Lnet/sourceforge/opencamera/ui/MainUI$8;-><init>(Lnet/sourceforge/opencamera/ui/MainUI;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3085
    invoke-virtual {p2, p1}, Lnet/sourceforge/opencamera/MainActivity;->showAlert(Landroid/app/AlertDialog;)V

    return-object p1
.end method

.method public showStampIcon()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1278
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_show_stamp"

    const/4 v2, 0x0

    .line 1279
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public showStoreLocationIcon()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1268
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_show_store_location"

    const/4 v2, 0x0

    .line 1269
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public showTextStampIcon()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1273
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_show_textstamp"

    const/4 v2, 0x0

    .line 1274
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public showWhiteBalanceLockIcon()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1248
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsWhiteBalanceLock()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1250
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isCameraExtensionPref()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1254
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "preference_show_white_balance_lock"

    .line 1255
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public testGetExposureLine()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mExposureLine:I

    return v0
.end method

.method public testGetPopupIcon()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupIcon:I

    return v0
.end method

.method public testGetPopupLine()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mPopupLine:I

    return v0
.end method

.method public testGetRemoteControlMode()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->remote_control_mode:Z

    return v0
.end method

.method public toggleExposureUI()V
    .locals 1

    .line 1675
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->closePopup()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->mSelectingExposureUIElement:Z

    .line 1677
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->isExposureUIOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1678
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->closeExposureUI()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1680
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->supportsExposureButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1681
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->setupExposureUI()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1682
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getBluetoothRemoteControl()Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->remoteEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1683
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->initRemoteControlForExposureUI()V

    :cond_1
    :goto_0
    return-void
.end method

.method public togglePopupSettings()V
    .locals 6

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900a8

    .line 2610
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2611
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->popupIsOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2612
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->closePopup()V

    return-void

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2615
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v2, 0x1

    .line 2624
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->enablePopupOnBackPressedCallback(Z)V

    .line 2626
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->closeExposureUI()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2627
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->cancelTimer()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2628
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->stopAudioListeners()V

    .line 2630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/high16 v1, -0x1000000

    .line 2634
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const v1, 0x3f666666    # 0.9f

    .line 2635
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->popup_view:Lnet/sourceforge/opencamera/ui/PopupView;

    if-nez v1, :cond_2

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->test_ui_buttons:Ljava/util/Map;

    .line 2641
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2642
    new-instance v1, Lnet/sourceforge/opencamera/ui/PopupView;

    iget-object v5, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-direct {v1, v5}, Lnet/sourceforge/opencamera/ui/PopupView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->popup_view:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 2643
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 2648
    invoke-virtual {v1, v5}, Lnet/sourceforge/opencamera/ui/PopupView;->setVisibility(I)V

    :goto_0
    iput-boolean v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->popup_view_is_open:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2652
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getBluetoothRemoteControl()Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->remoteEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2653
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->initRemoteControlForPopup()V

    .line 2660
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lnet/sourceforge/opencamera/ui/MainUI$6;

    invoke-direct {v2, p0, v3, v4, v0}, Lnet/sourceforge/opencamera/ui/MainUI$6;-><init>(Lnet/sourceforge/opencamera/ui/MainUI;JLandroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public updateAutoLevelIcon()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f090045

    .line 1583
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1584
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getAutoStabilisePref()Z

    move-result v1

    if-eqz v1, :cond_0

    const v2, 0x7f080050

    goto :goto_0

    :cond_0
    const v2, 0x7f08004f

    .line 1585
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1586
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_1

    const v1, 0x7f100033

    goto :goto_1

    :cond_1
    const v1, 0x7f100034

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateCycleFlashIcon()V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1592
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFlashValue()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09005d

    const v2, 0x7f080072

    if-eqz v0, :cond_8

    iget-object v3, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1594
    invoke-virtual {v3, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1595
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "flash_red_eye"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_1
    const-string v3, "flash_on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_2
    const-string v3, "flash_torch"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_3
    const-string v3, "flash_frontscreen_torch"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_4
    const-string v3, "flash_frontscreen_on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_5
    const-string v3, "flash_off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_6
    const-string v3, "flash_auto"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_7
    const-string v3, "flash_frontscreen_auto"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 1616
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown flash value "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MainUI"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    :pswitch_0
    const v0, 0x7f08005e

    .line 1612
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    :pswitch_1
    const v0, 0x7f08005a

    .line 1609
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    :pswitch_2
    const v0, 0x7f080073

    .line 1605
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 1597
    :pswitch_3
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    :pswitch_4
    const v0, 0x7f080071

    .line 1601
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1622
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1623
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5ad697b8 -> :sswitch_7
        -0x473ee362 -> :sswitch_6
        -0x445cab60 -> :sswitch_5
        -0xa09548 -> :sswitch_4
        0x10c9c83 -> :sswitch_3
        0x606b72ed -> :sswitch_2
        0x60e43c8e -> :sswitch_1
        0x77b66834 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public updateCycleRawIcon()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1539
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getRawPref()Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f09005e

    .line 1540
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1541
    sget-object v2, Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;->RAWPREF_JPEG_DNG:Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1542
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isRawOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0800b4

    .line 1544
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0800b2

    .line 1547
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0800b3

    .line 1551
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public updateExposureLockIcon()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f09006d

    .line 1525
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1526
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isExposureLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v2, 0x7f08006f

    goto :goto_0

    :cond_0
    const v2, 0x7f080070

    .line 1527
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1528
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_1

    const v1, 0x7f100083

    goto :goto_1

    :cond_1
    const v1, 0x7f100080

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateFaceDetectionIcon()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f090073

    .line 1628
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1629
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getFaceDetectionPref()Z

    move-result v1

    if-eqz v1, :cond_0

    const v2, 0x7f080080

    goto :goto_0

    :cond_0
    const v2, 0x7f080081

    .line 1630
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1631
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_1

    const v1, 0x7f100087

    goto :goto_1

    :cond_1
    const v1, 0x7f100089

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateFocusPeakingIcon()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f090078

    .line 1576
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1577
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getFocusPeakingPref()Z

    move-result v1

    if-eqz v1, :cond_0

    const v2, 0x7f08009e

    goto :goto_0

    :cond_0
    const v2, 0x7f08009d

    .line 1578
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1579
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_1

    const v1, 0x7f1000ab

    goto :goto_1

    :cond_1
    const v1, 0x7f1000ac

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateOnScreenIcons()V
    .locals 0

    .line 1637
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->updateExposureLockIcon()V

    .line 1638
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->updateWhiteBalanceLockIcon()V

    .line 1639
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->updateCycleRawIcon()V

    .line 1640
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->updateStoreLocationIcon()V

    .line 1641
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->updateTextStampIcon()V

    .line 1642
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->updateStampIcon()V

    .line 1643
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->updateFocusPeakingIcon()V

    .line 1644
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->updateAutoLevelIcon()V

    .line 1645
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->updateCycleFlashIcon()V

    .line 1646
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->updateFaceDetectionIcon()V

    return-void
.end method

.method public updateRemoteConnectionIcon()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f09008c

    .line 1167
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1168
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getBluetoothRemoteControl()Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/remotecontrol/BluetoothRemoteControl;->remoteConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1171
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 1175
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateSelectedISOButton()V
    .locals 9

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2290
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    .line 2291
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->supportsISORange()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MainUI;->isExposureUIOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2292
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_iso"

    const-string v2, "auto"

    .line 2293
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->iso_buttons:Ljava/util/List;

    .line 2298
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 2299
    check-cast v5, Landroid/widget/Button;

    .line 2302
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2303
    invoke-static {v7, v0}, Lnet/sourceforge/opencamera/ui/MainUI;->ISOTextEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2304
    invoke-static {v5, v6}, Lnet/sourceforge/opencamera/ui/PopupView;->setButtonSelected(Landroid/view/View;Z)V

    const/4 v4, 0x1

    goto :goto_0

    .line 2308
    :cond_0
    invoke-static {v5, v3}, Lnet/sourceforge/opencamera/ui/PopupView;->setButtonSelected(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    .line 2311
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->iso_button_manual_index:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->iso_buttons:Ljava/util/List;

    .line 2314
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->iso_buttons:Ljava/util/List;

    iget v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->iso_button_manual_index:I

    .line 2315
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2316
    invoke-static {v0, v6}, Lnet/sourceforge/opencamera/ui/PopupView;->setButtonSelected(Landroid/view/View;Z)V

    :cond_2
    return-void
.end method

.method public updateStampIcon()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900ce

    .line 1569
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1570
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStampPref()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preference_stamp_yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v2, 0x7f080096

    goto :goto_0

    :cond_0
    const v2, 0x7f080097

    .line 1571
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1572
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_1

    const v1, 0x7f10034d

    goto :goto_1

    :cond_1
    const v1, 0x7f10034f

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateStoreLocationIcon()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900d1

    .line 1556
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1557
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getGeotaggingPref()Z

    move-result v1

    if-eqz v1, :cond_0

    const v2, 0x7f080083

    goto :goto_0

    :cond_0
    const v2, 0x7f080084

    .line 1558
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1559
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_1

    const v1, 0x7f1001d9

    goto :goto_1

    :cond_1
    const v1, 0x7f1001da

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateTextStampIcon()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900eb

    .line 1563
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1564
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getTextStampPref()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const v1, 0x7f080062

    goto :goto_0

    :cond_0
    const v1, 0x7f080063

    .line 1565
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public updateWhiteBalanceLockIcon()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v1, 0x7f0900fd

    .line 1532
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1533
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isWhiteBalanceLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v2, 0x7f0800cb

    goto :goto_0

    :cond_0
    const v2, 0x7f0800cc

    .line 1534
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1535
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_1

    const v1, 0x7f10037f

    goto :goto_1

    :cond_1
    const v1, 0x7f10037a

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
