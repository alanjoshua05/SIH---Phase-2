.class public Lnet/sourceforge/opencamera/ui/PopupView;
.super Landroid/widget/LinearLayout;
.source "PopupView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;,
        Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;,
        Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;
    }
.end annotation


# static fields
.field public static final ALPHA_BUTTON:F = 0.6f

.field public static final ALPHA_BUTTON_SELECTED:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "PopupView"

.field private static final arrow_button_h_dp:F = 48.0f

.field private static final arrow_button_w_dp:F = 60.0f

.field private static final arrow_text_size_dip:F = 16.0f

.field private static final button_text_size_dip:F = 12.0f

.field private static final standard_text_size_dip:F = 16.0f

.field private static final title_text_size_dip:F = 17.0f


# instance fields
.field private final arrow_button_h:I

.field private final arrow_button_w:I

.field private burst_n_images_index:I

.field private final decimal_format_1dp_force0:Ljava/text/DecimalFormat;

.field private grid_index:I

.field private nr_mode_index:I

.field private picture_size_index:I

.field private repeat_mode_index:I

.field private timer_index:I

.field private total_width_dp:I

.field private video_capture_rate_index:I

.field private video_size_index:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 29

    move-object/from16 v11, p0

    .line 81
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, -0x1

    iput v10, v11, Lnet/sourceforge/opencamera/ui/PopupView;->picture_size_index:I

    iput v10, v11, Lnet/sourceforge/opencamera/ui/PopupView;->nr_mode_index:I

    iput v10, v11, Lnet/sourceforge/opencamera/ui/PopupView;->burst_n_images_index:I

    iput v10, v11, Lnet/sourceforge/opencamera/ui/PopupView;->video_size_index:I

    iput v10, v11, Lnet/sourceforge/opencamera/ui/PopupView;->video_capture_rate_index:I

    iput v10, v11, Lnet/sourceforge/opencamera/ui/PopupView;->timer_index:I

    iput v10, v11, Lnet/sourceforge/opencamera/ui/PopupView;->repeat_mode_index:I

    iput v10, v11, Lnet/sourceforge/opencamera/ui/PopupView;->grid_index:I

    .line 77
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, v11, Lnet/sourceforge/opencamera/ui/PopupView;->decimal_format_1dp_force0:Ljava/text/DecimalFormat;

    .line 85
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    const/4 v12, 0x1

    .line 88
    invoke-virtual {v11, v12}, Lnet/sourceforge/opencamera/ui/PopupView;->setOrientation(I)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42700000    # 60.0f

    mul-float v1, v1, v0

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v1, v13

    float-to-int v1, v1

    iput v1, v11, Lnet/sourceforge/opencamera/ui/PopupView;->arrow_button_w:I

    const/high16 v1, 0x42400000    # 48.0f

    mul-float v1, v1, v0

    add-float/2addr v1, v13

    float-to-int v1, v1

    iput v1, v11, Lnet/sourceforge/opencamera/ui/PopupView;->arrow_button_h:I

    .line 95
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lnet/sourceforge/opencamera/MainActivity;

    const/16 v1, 0x118

    iput v1, v11, Lnet/sourceforge/opencamera/ui/PopupView;->total_width_dp:I

    .line 99
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v1

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lnet/sourceforge/opencamera/ui/MainUI;->getMaxHeightDp(Z)I

    move-result v1

    iget v2, v11, Lnet/sourceforge/opencamera/ui/PopupView;->total_width_dp:I

    if-le v2, v1, :cond_0

    iput v1, v11, Lnet/sourceforge/opencamera/ui/PopupView;->total_width_dp:I

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    .line 120
    :goto_0
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v9

    .line 121
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isCameraExtensionPref()Z

    move-result v17

    .line 125
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->showCycleFlashIcon()Z

    move-result v1

    if-nez v1, :cond_4

    .line 127
    invoke-virtual {v9}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedFlashValues()Ljava/util/List;

    move-result-object v1

    .line 128
    invoke-virtual {v9}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    invoke-static {v3}, Lnet/sourceforge/opencamera/preview/Preview;->isFlashSupportedForVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v2, v1

    :cond_3
    if-eqz v2, :cond_4

    .line 137
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v12, :cond_4

    const v3, 0x7f030001

    const v4, 0x7f030002

    .line 138
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f1000a1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFlashValue()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "TEST_FLASH"

    new-instance v1, Lnet/sourceforge/opencamera/ui/PopupView$1;

    invoke-direct {v1, v11, v9, v14}, Lnet/sourceforge/opencamera/ui/PopupView$1;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/MainActivity;)V

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move-object/from16 v19, v9

    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lnet/sourceforge/opencamera/ui/PopupView;->addButtonOptionsToPopup(Ljava/util/List;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;)V

    goto :goto_2

    :cond_4
    move-object/from16 v19, v9

    .line 154
    :goto_2
    invoke-virtual/range {v19 .. v19}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {v19 .. v19}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecording()Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_1e

    .line 159
    :cond_5
    invoke-virtual/range {v19 .. v19}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedFocusValues()Ljava/util/List;

    move-result-object v1

    .line 160
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v9

    .line 161
    invoke-virtual/range {v19 .. v19}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v2

    const/4 v8, 0x0

    if-nez v2, :cond_6

    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FocusBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v9, v2, :cond_6

    move-object v1, v8

    :cond_6
    if-eqz v1, :cond_8

    .line 166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 168
    invoke-virtual/range {v19 .. v19}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "focus_mode_continuous_picture"

    .line 169
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    const-string v1, "focus_mode_continuous_video"

    .line 172
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    move-object v2, v1

    :goto_3
    const v3, 0x7f030004

    const v4, 0x7f030005

    .line 175
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f1000aa

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFocusValue()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v18, "TEST_FOCUS"

    new-instance v1, Lnet/sourceforge/opencamera/ui/PopupView$2;

    move-object/from16 v13, v19

    invoke-direct {v1, v11, v13, v14}, Lnet/sourceforge/opencamera/ui/PopupView$2;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/MainActivity;)V

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move-object/from16 v8, v18

    move-object v10, v9

    move-object/from16 v9, v19

    invoke-direct/range {v1 .. v9}, Lnet/sourceforge/opencamera/ui/PopupView;->addButtonOptionsToPopup(Ljava/util/List;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;)V

    .line 187
    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v3, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Standard:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->supportsNoiseReduction()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 196
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v3, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->NoiseReduction:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_9
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->supportsDRO()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 200
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v3, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->DRO:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_a
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->supportsHDR()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 204
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v3, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_b
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->supportsPanorama()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 208
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000eb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v3, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_c
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->supportsFastBurst()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 212
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v3, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FastBurst:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_d
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->supportsExpoBracketing()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 216
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v3, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ExpoBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_e
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->supportsFocusBracketing()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 220
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v3, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FocusBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_f
    invoke-virtual {v14, v15}, Lnet/sourceforge/opencamera/MainActivity;->supportsCameraExtension(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 224
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v3, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Auto:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    const/4 v3, 0x3

    .line 227
    invoke-virtual {v14, v3}, Lnet/sourceforge/opencamera/MainActivity;->supportsCameraExtension(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 228
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v3, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    const/4 v3, 0x4

    .line 231
    invoke-virtual {v14, v3}, Lnet/sourceforge/opencamera/MainActivity;->supportsCameraExtension(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 232
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v3, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Night:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    const/4 v8, 0x2

    .line 235
    invoke-virtual {v14, v8}, Lnet/sourceforge/opencamera/MainActivity;->supportsCameraExtension(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 236
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v3, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Bokeh:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_13
    invoke-virtual {v14, v12}, Lnet/sourceforge/opencamera/MainActivity;->supportsCameraExtension(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 240
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v3, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Beauty:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_14
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v3

    const-string v7, ""

    if-eqz v3, :cond_15

    goto :goto_6

    .line 247
    :cond_15
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v12, :cond_19

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 249
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_17

    if-nez v3, :cond_17

    .line 250
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v10, :cond_16

    .line 251
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_17
    if-nez v3, :cond_18

    move-object v6, v7

    goto :goto_5

    :cond_18
    move-object v6, v3

    .line 273
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Lnet/sourceforge/opencamera/ui/PopupView;->addTitleToPopup(Ljava/lang/String;)V

    const/4 v3, -0x1

    const/4 v4, -0x1

    const-string v5, ""

    const/16 v19, 0x4

    const-string v21, "TEST_PHOTO_MODE"

    .line 277
    new-instance v12, Lnet/sourceforge/opencamera/ui/PopupView$4;

    invoke-direct {v12, v11, v2, v1}, Lnet/sourceforge/opencamera/ui/PopupView$4;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v1, p0

    move-object/from16 v22, v7

    move/from16 v7, v19

    move-object/from16 v8, v21

    move-object/from16 v24, v9

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Lnet/sourceforge/opencamera/ui/PopupView;->addButtonOptionsToPopup(Ljava/util/List;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;)V

    goto :goto_7

    :cond_19
    :goto_6
    move-object/from16 v22, v7

    move-object/from16 v24, v9

    .line 291
    :goto_7
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v1

    const-string v12, "PopupView"

    if-nez v1, :cond_1c

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->NoiseReduction:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v10, v1, :cond_1c

    .line 295
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 298
    array-length v3, v1

    array-length v4, v2

    if-ne v3, v4, :cond_1b

    .line 304
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getNRMode()Ljava/lang/String;

    move-result-object v3

    .line 305
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, v11, Lnet/sourceforge/opencamera/ui/PopupView;->nr_mode_index:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1a

    iput v15, v11, Lnet/sourceforge/opencamera/ui/PopupView;->nr_mode_index:I

    .line 311
    :cond_1a
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1001e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget v6, v11, Lnet/sourceforge/opencamera/ui/PopupView;->nr_mode_index:I

    const/4 v7, 0x0

    const-string v8, "NR_MODE"

    new-instance v9, Lnet/sourceforge/opencamera/ui/PopupView$5;

    invoke-direct {v9, v11, v1, v14, v13}, Lnet/sourceforge/opencamera/ui/PopupView$5;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;[Ljava/lang/String;Lnet/sourceforge/opencamera/MainActivity;Lnet/sourceforge/opencamera/preview/Preview;)V

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lnet/sourceforge/opencamera/ui/PopupView;->addArrayOptionsToPopup(Ljava/util/List;Ljava/lang/String;ZZIZLjava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;)V

    goto :goto_8

    :cond_1b
    const-string v0, "preference_nr_mode_values and preference_nr_mode_entries are different lengths"

    .line 299
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 346
    :cond_1c
    :goto_8
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->supportsAutoStabilise()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->showAutoLevelIcon()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 348
    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, v14}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 349
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10010f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v9, 0x2

    .line 350
    invoke-virtual {v1, v9, v2}, Landroid/widget/CheckBox;->setTextSize(IF)V

    const/4 v2, -0x1

    .line 351
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 354
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v2, v2, v0

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 359
    invoke-virtual {v3, v2, v15, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 360
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "preference_auto_stabilise"

    move-object/from16 v8, v24

    .line 363
    invoke-interface {v8, v2, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 365
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 366
    :cond_1d
    new-instance v2, Lnet/sourceforge/opencamera/ui/PopupView$6;

    invoke-direct {v2, v11, v14}, Lnet/sourceforge/opencamera/ui/PopupView$6;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;Lnet/sourceforge/opencamera/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 373
    invoke-virtual {v11, v1}, Lnet/sourceforge/opencamera/ui/PopupView;->addView(Landroid/view/View;)V

    goto :goto_9

    :cond_1e
    move-object/from16 v8, v24

    const/4 v9, 0x2

    .line 378
    :goto_9
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v1

    if-nez v1, :cond_22

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v10, v1, :cond_22

    .line 382
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedPictureSizes(Z)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 385
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 v2, -0x1

    iput v2, v11, Lnet/sourceforge/opencamera/ui/PopupView;->picture_size_index:I

    .line 387
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentPictureSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v2

    .line 388
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 389
    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_20

    .line 390
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    .line 392
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v9, v5, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    invoke-static {v7, v9}, Lnet/sourceforge/opencamera/preview/Preview;->getMPString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 393
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-virtual {v5, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    iput v4, v11, Lnet/sourceforge/opencamera/ui/PopupView;->picture_size_index:I

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x2

    goto :goto_a

    :cond_20
    iget v2, v11, Lnet/sourceforge/opencamera/ui/PopupView;->picture_size_index:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_21

    const-string v2, "couldn\'t find index of current picture size"

    .line 399
    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100224

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v11, Lnet/sourceforge/opencamera/ui/PopupView;->picture_size_index:I

    const/4 v9, 0x0

    const-string v19, "PHOTO_RESOLUTIONS"

    new-instance v2, Lnet/sourceforge/opencamera/ui/PopupView$7;

    invoke-direct {v2, v11, v14, v1, v13}, Lnet/sourceforge/opencamera/ui/PopupView$7;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;Lnet/sourceforge/opencamera/MainActivity;Ljava/util/List;Lnet/sourceforge/opencamera/preview/Preview;)V

    move-object/from16 v1, p0

    move-object/from16 v21, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v9

    move-object v9, v8

    move-object/from16 v8, v19

    move-object/from16 v25, v9

    const/4 v15, 0x2

    move-object/from16 v9, v21

    invoke-direct/range {v1 .. v9}, Lnet/sourceforge/opencamera/ui/PopupView;->addArrayOptionsToPopup(Ljava/util/List;Ljava/lang/String;ZZIZLjava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;)V

    goto :goto_b

    :cond_22
    move-object/from16 v25, v8

    const/4 v15, 0x2

    .line 458
    :goto_b
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 462
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getVideoFPSPref()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedVideoQuality(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 463
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_23

    const-string v1, "can\'t find any supported video sizes for current fps!"

    .line 464
    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoQualityHander()Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getSupportedVideoQuality()Ljava/util/List;

    move-result-object v1

    .line 469
    :cond_23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 471
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 474
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iput v1, v11, Lnet/sourceforge/opencamera/ui/PopupView;->video_size_index:I

    const/4 v1, 0x0

    .line 475
    :goto_c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 476
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 477
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoQualityHander()Lnet/sourceforge/opencamera/preview/VideoQualityHandler;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getCurrentVideoQuality()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iput v1, v11, Lnet/sourceforge/opencamera/ui/PopupView;->video_size_index:I

    goto :goto_d

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 484
    :cond_25
    :goto_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 485
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 486
    invoke-virtual {v13, v4}, Lnet/sourceforge/opencamera/preview/Preview;->getCamcorderProfileDescriptionShort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 487
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 489
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f100370

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v11, Lnet/sourceforge/opencamera/ui/PopupView;->video_size_index:I

    const/4 v8, 0x0

    const-string v9, "VIDEO_RESOLUTIONS"

    new-instance v1, Lnet/sourceforge/opencamera/ui/PopupView$8;

    invoke-direct {v1, v11, v14, v2, v13}, Lnet/sourceforge/opencamera/ui/PopupView$8;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;Lnet/sourceforge/opencamera/MainActivity;Ljava/util/List;Lnet/sourceforge/opencamera/preview/Preview;)V

    move-object/from16 v21, v1

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object/from16 v9, v21

    invoke-direct/range {v1 .. v9}, Lnet/sourceforge/opencamera/ui/PopupView;->addArrayOptionsToPopup(Ljava/util/List;Ljava/lang/String;ZZIZLjava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;)V

    .line 539
    :cond_27
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedApertures()[F

    move-result-object v1

    if-eqz v1, :cond_2b

    if-nez v17, :cond_2b

    .line 543
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Lnet/sourceforge/opencamera/ui/PopupView;->addTitleToPopup(Ljava/lang/String;)V

    .line 545
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 546
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 547
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getAperturePref()F

    move-result v1

    .line 552
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedApertures()[F

    move-result-object v2

    array-length v3, v2

    move-object/from16 v5, v22

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_f
    const-string v9, "F/"

    if-ge v6, v3, :cond_29

    aget v15, v2, v6

    move-object/from16 v21, v2

    .line 553
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v11, Lnet/sourceforge/opencamera/ui/PopupView;->decimal_format_1dp_force0:Ljava/text/DecimalFormat;

    move/from16 v26, v3

    move-object/from16 v24, v4

    float-to-double v3, v15

    invoke-virtual {v9, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 555
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmpl-float v3, v1, v15

    if-nez v3, :cond_28

    move-object v5, v2

    const/4 v8, 0x1

    :cond_28
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v21

    move-object/from16 v4, v24

    move/from16 v3, v26

    const/4 v15, 0x2

    goto :goto_f

    :cond_29
    move-object/from16 v24, v4

    if-nez v8, :cond_2a

    .line 564
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v13}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->captureResultHasAperture()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 565
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->captureResultAperture()F

    move-result v1

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lnet/sourceforge/opencamera/ui/PopupView;->decimal_format_1dp_force0:Ljava/text/DecimalFormat;

    float-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_10

    :cond_2a
    move-object v8, v5

    :goto_10
    const/4 v9, -0x1

    const/4 v15, -0x1

    const-string v21, ""

    const/16 v26, 0x0

    const-string v27, "TEST_APERTURE"

    .line 570
    new-instance v28, Lnet/sourceforge/opencamera/ui/PopupView$9;

    move-object/from16 v1, v28

    move-object/from16 v2, p0

    move-object v3, v7

    move-object/from16 v4, v24

    move-object v5, v13

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lnet/sourceforge/opencamera/ui/PopupView$9;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;Ljava/util/List;Ljava/util/List;Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/MainActivity;)V

    move-object/from16 v1, p0

    move-object v2, v7

    move v3, v9

    move v4, v15

    move-object/from16 v5, v21

    move-object v6, v8

    move/from16 v7, v26

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    invoke-direct/range {v1 .. v9}, Lnet/sourceforge/opencamera/ui/PopupView;->addButtonOptionsToPopup(Ljava/util/List;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;)V

    .line 594
    :cond_2b
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v1

    if-nez v1, :cond_30

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FastBurst:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v10, v1, :cond_30

    .line 598
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 599
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 603
    array-length v0, v1

    array-length v3, v2

    if-ne v0, v3, :cond_2f

    .line 608
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getImageSaver()Lnet/sourceforge/opencamera/ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ImageSaver;->getQueueSize()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x2

    .line 609
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 614
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 615
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 616
    :goto_11
    array-length v0, v1

    if-ge v6, v0, :cond_2d

    .line 619
    :try_start_0
    aget-object v0, v1, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v0, v3, :cond_2c

    goto :goto_12

    .line 633
    :cond_2c
    aget-object v0, v1, v6

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    aget-object v0, v2, v6

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :catch_0
    move-exception v0

    .line 622
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "failed to parse "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "th preference_fast_burst_n_images_values value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v1, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_2d
    const/4 v6, 0x0

    new-array v0, v6, [Ljava/lang/String;

    .line 636
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    .line 637
    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "preference_fast_burst_n_images"

    const-string v3, "5"

    move-object/from16 v15, v25

    .line 639
    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 640
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, v11, Lnet/sourceforge/opencamera/ui/PopupView;->burst_n_images_index:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2e

    iput v6, v11, Lnet/sourceforge/opencamera/ui/PopupView;->burst_n_images_index:I

    .line 646
    :cond_2e
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100174

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v6, v11, Lnet/sourceforge/opencamera/ui/PopupView;->burst_n_images_index:I

    const/4 v7, 0x0

    const-string v8, "FAST_BURST_N_IMAGES"

    new-instance v9, Lnet/sourceforge/opencamera/ui/PopupView$10;

    invoke-direct {v9, v11, v0, v14, v13}, Lnet/sourceforge/opencamera/ui/PopupView$10;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;[Ljava/lang/String;Lnet/sourceforge/opencamera/MainActivity;Lnet/sourceforge/opencamera/preview/Preview;)V

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lnet/sourceforge/opencamera/ui/PopupView;->addArrayOptionsToPopup(Ljava/util/List;Ljava/lang/String;ZZIZLjava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;)V

    goto/16 :goto_13

    :cond_2f
    const-string v0, "preference_fast_burst_n_images_values and preference_fast_burst_n_images_entries are different lengths"

    .line 604
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_30
    move-object/from16 v15, v25

    .line 679
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v1

    if-nez v1, :cond_34

    sget-object v1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FocusBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v10, v1, :cond_34

    .line 683
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 684
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 686
    array-length v3, v1

    array-length v4, v2

    if-ne v3, v4, :cond_33

    const-string v3, "preference_focus_bracketing_n_images"

    const-string v4, "3"

    .line 691
    invoke-interface {v15, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 692
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, v11, Lnet/sourceforge/opencamera/ui/PopupView;->burst_n_images_index:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_31

    const/4 v3, 0x0

    iput v3, v11, Lnet/sourceforge/opencamera/ui/PopupView;->burst_n_images_index:I

    .line 698
    :cond_31
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100184

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v6, v11, Lnet/sourceforge/opencamera/ui/PopupView;->burst_n_images_index:I

    const/4 v7, 0x0

    const-string v8, "FOCUS_BRACKETING_N_IMAGES"

    new-instance v9, Lnet/sourceforge/opencamera/ui/PopupView$11;

    invoke-direct {v9, v11, v1, v14, v13}, Lnet/sourceforge/opencamera/ui/PopupView$11;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;[Ljava/lang/String;Lnet/sourceforge/opencamera/MainActivity;Lnet/sourceforge/opencamera/preview/Preview;)V

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lnet/sourceforge/opencamera/ui/PopupView;->addArrayOptionsToPopup(Ljava/util/List;Ljava/lang/String;ZZIZLjava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;)V

    .line 732
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0036

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900aa

    .line 733
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    .line 735
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x5

    .line 739
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setGravity(I)V

    .line 740
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float v0, v0, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-int v0, v0

    const/4 v3, 0x0

    .line 745
    invoke-virtual {v2, v3, v3, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 746
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "preference_focus_bracketing_add_infinity"

    .line 749
    invoke-interface {v15, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 751
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 752
    :cond_32
    new-instance v0, Lnet/sourceforge/opencamera/ui/PopupView$12;

    invoke-direct {v0, v11, v14, v13}, Lnet/sourceforge/opencamera/ui/PopupView$12;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;Lnet/sourceforge/opencamera/MainActivity;Lnet/sourceforge/opencamera/preview/Preview;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 765
    invoke-virtual {v11, v1}, Lnet/sourceforge/opencamera/ui/PopupView;->addView(Landroid/view/View;)V

    goto :goto_14

    :cond_33
    const-string v0, "preference_focus_bracketing_n_images_values and preference_focus_bracketing_n_images_entries are different lengths"

    .line 687
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_34
    :goto_13
    const/4 v9, 0x0

    .line 768
    :goto_14
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 769
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getSupportedVideoCaptureRates()Ljava/util/List;

    move-result-object v4

    .line 770
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_39

    .line 773
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lnet/sourceforge/opencamera/PreferenceKeys;->getVideoCaptureRatePreferenceKey(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 774
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 776
    :goto_15
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_37

    .line 777
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float v6, v1, v5

    .line 778
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move-object/from16 v20, v10

    float-to-double v9, v6

    const-wide v23, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v6, v9, v23

    if-gez v6, :cond_35

    .line 779
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f1002c8

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    move-object/from16 v8, v22

    goto :goto_16

    .line 783
    :cond_35
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v8, v22

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_16
    sub-float v5, v0, v5

    .line 785
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    cmpg-double v9, v5, v23

    if-gez v9, :cond_36

    iput v3, v11, Lnet/sourceforge/opencamera/ui/PopupView;->video_capture_rate_index:I

    :cond_36
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v22, v8

    move-object/from16 v10, v20

    const/4 v9, 0x0

    goto :goto_15

    :cond_37
    move-object/from16 v20, v10

    iget v0, v11, Lnet/sourceforge/opencamera/ui/PopupView;->video_capture_rate_index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    iput v2, v11, Lnet/sourceforge/opencamera/ui/PopupView;->video_capture_rate_index:I

    if-ne v2, v1, :cond_38

    const-string v0, "can\'t find capture_rate_std_index"

    .line 795
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput v1, v11, Lnet/sourceforge/opencamera/ui/PopupView;->video_capture_rate_index:I

    .line 799
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget v10, v11, Lnet/sourceforge/opencamera/ui/PopupView;->video_capture_rate_index:I

    const/4 v12, 0x0

    const-string v21, "VIDEOCAPTURERATE"

    new-instance v22, Lnet/sourceforge/opencamera/ui/PopupView$13;

    move-object/from16 v1, v22

    move-object/from16 v2, p0

    move-object v3, v14

    move-object v5, v13

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lnet/sourceforge/opencamera/ui/PopupView$13;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;Lnet/sourceforge/opencamera/MainActivity;Ljava/util/List;Lnet/sourceforge/opencamera/preview/Preview;Ljava/util/List;)V

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v0

    move v4, v8

    move v5, v9

    move v6, v10

    move v7, v12

    move-object/from16 v8, v21

    const/4 v12, 0x0

    move-object/from16 v9, v22

    invoke-direct/range {v1 .. v9}, Lnet/sourceforge/opencamera/ui/PopupView;->addArrayOptionsToPopup(Ljava/util/List;Ljava/lang/String;ZZIZLjava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;)V

    goto :goto_17

    :cond_39
    move-object v12, v9

    move-object/from16 v20, v10

    .line 878
    :goto_17
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-object/from16 v10, v20

    if-eq v10, v0, :cond_3b

    .line 881
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 882
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "preference_timer"

    const-string v3, "0"

    .line 883
    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 884
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, v11, Lnet/sourceforge/opencamera/ui/PopupView;->timer_index:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3a

    const/4 v2, 0x0

    iput v2, v11, Lnet/sourceforge/opencamera/ui/PopupView;->timer_index:I

    .line 891
    :cond_3a
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100298

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    xor-int/lit8 v4, v16, 0x1

    const/4 v5, 0x0

    iget v6, v11, Lnet/sourceforge/opencamera/ui/PopupView;->timer_index:I

    const/4 v7, 0x0

    const-string v8, "TIMER"

    new-instance v9, Lnet/sourceforge/opencamera/ui/PopupView$14;

    invoke-direct {v9, v11, v0, v14}, Lnet/sourceforge/opencamera/ui/PopupView$14;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;[Ljava/lang/String;Lnet/sourceforge/opencamera/MainActivity;)V

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lnet/sourceforge/opencamera/ui/PopupView;->addArrayOptionsToPopup(Ljava/util/List;Ljava/lang/String;ZZIZLjava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;)V

    .line 924
    :cond_3b
    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v10, v0, :cond_3d

    .line 927
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 928
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "preference_burst_mode"

    const-string v3, "1"

    .line 929
    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 930
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, v11, Lnet/sourceforge/opencamera/ui/PopupView;->repeat_mode_index:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3c

    const/4 v2, 0x0

    iput v2, v11, Lnet/sourceforge/opencamera/ui/PopupView;->repeat_mode_index:I

    .line 938
    :cond_3c
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100126

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    xor-int/lit8 v4, v16, 0x1

    const/4 v5, 0x1

    iget v6, v11, Lnet/sourceforge/opencamera/ui/PopupView;->repeat_mode_index:I

    const/4 v7, 0x0

    const-string v8, "REPEAT_MODE"

    new-instance v9, Lnet/sourceforge/opencamera/ui/PopupView$15;

    invoke-direct {v9, v11, v0, v14}, Lnet/sourceforge/opencamera/ui/PopupView$15;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;[Ljava/lang/String;Lnet/sourceforge/opencamera/MainActivity;)V

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lnet/sourceforge/opencamera/ui/PopupView;->addArrayOptionsToPopup(Ljava/util/List;Ljava/lang/String;ZZIZLjava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;)V

    .line 971
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 972
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "preference_grid"

    const-string v3, "preference_grid_none"

    .line 973
    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 974
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, v11, Lnet/sourceforge/opencamera/ui/PopupView;->grid_index:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3e

    const/4 v2, 0x0

    iput v2, v11, Lnet/sourceforge/opencamera/ui/PopupView;->grid_index:I

    .line 980
    :cond_3e
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1000b3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget v6, v11, Lnet/sourceforge/opencamera/ui/PopupView;->grid_index:I

    const/4 v7, 0x1

    const-string v8, "GRID"

    new-instance v9, Lnet/sourceforge/opencamera/ui/PopupView$16;

    invoke-direct {v9, v11, v0, v14}, Lnet/sourceforge/opencamera/ui/PopupView$16;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;[Ljava/lang/String;Lnet/sourceforge/opencamera/MainActivity;)V

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lnet/sourceforge/opencamera/ui/PopupView;->addArrayOptionsToPopup(Ljava/util/List;Ljava/lang/String;ZZIZLjava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;)V

    .line 1020
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    if-eqz v0, :cond_45

    if-nez v17, :cond_45

    .line 1021
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedWhiteBalances()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_40

    .line 1024
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1025
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1026
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/sourceforge/opencamera/ui/MainUI;->getEntryForWhiteBalance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1027
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_3f
    move-object v3, v0

    goto :goto_19

    :cond_40
    move-object v3, v12

    .line 1030
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100374

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "preference_white_balance"

    const-string v7, "auto"

    const/4 v8, 0x0

    const-string v9, "TEST_WHITE_BALANCE"

    new-instance v10, Lnet/sourceforge/opencamera/ui/PopupView$17;

    invoke-direct {v10, v11}, Lnet/sourceforge/opencamera/ui/PopupView$17;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;)V

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct/range {v1 .. v10}, Lnet/sourceforge/opencamera/ui/PopupView;->addRadioOptionsToPopup(Landroid/content/SharedPreferences;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;)V

    .line 1039
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_42

    .line 1042
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1043
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1044
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/sourceforge/opencamera/ui/MainUI;->getEntryForSceneMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1045
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_41
    move-object v3, v0

    goto :goto_1b

    :cond_42
    move-object v3, v12

    .line 1048
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100331

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "preference_scene_mode"

    const-string v7, "auto"

    const/4 v8, 0x0

    const-string v9, "TEST_SCENE_MODE"

    new-instance v10, Lnet/sourceforge/opencamera/ui/PopupView$18;

    invoke-direct {v10, v11, v13, v14}, Lnet/sourceforge/opencamera/ui/PopupView$18;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/MainActivity;)V

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct/range {v1 .. v10}, Lnet/sourceforge/opencamera/ui/PopupView;->addRadioOptionsToPopup(Landroid/content/SharedPreferences;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;)V

    .line 1067
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/preview/Preview;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 1070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1071
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1072
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/sourceforge/opencamera/ui/MainUI;->getEntryForColorEffect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1073
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_43
    move-object v3, v0

    goto :goto_1d

    :cond_44
    move-object v3, v12

    .line 1076
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "preference_color_effect"

    const-string v7, "none"

    const/4 v8, 0x0

    const-string v9, "TEST_COLOR_EFFECT"

    new-instance v10, Lnet/sourceforge/opencamera/ui/PopupView$19;

    invoke-direct {v10, v11, v13}, Lnet/sourceforge/opencamera/ui/PopupView$19;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;Lnet/sourceforge/opencamera/preview/Preview;)V

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct/range {v1 .. v10}, Lnet/sourceforge/opencamera/ui/PopupView;->addRadioOptionsToPopup(Landroid/content/SharedPreferences;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;)V

    :cond_45
    :goto_1e
    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/ui/PopupView;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lnet/sourceforge/opencamera/ui/PopupView;->changePhotoMode(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lnet/sourceforge/opencamera/ui/PopupView;Landroid/widget/RadioGroup;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;)V
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p10}, Lnet/sourceforge/opencamera/ui/PopupView;->addRadioOptionsToGroup(Landroid/widget/RadioGroup;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;)V

    return-void
.end method

.method static synthetic access$1200(Lnet/sourceforge/opencamera/ui/PopupView;Ljava/util/List;Ljava/lang/String;Landroid/widget/TextView;ZZI)V
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p6}, Lnet/sourceforge/opencamera/ui/PopupView;->setArrayOptionsText(Ljava/util/List;Ljava/lang/String;Landroid/widget/TextView;ZZI)V

    return-void
.end method

.method static synthetic access$200(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 0

    .line 52
    iget p0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->nr_mode_index:I

    return p0
.end method

.method static synthetic access$208(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 2

    .line 52
    iget v0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->nr_mode_index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sourceforge/opencamera/ui/PopupView;->nr_mode_index:I

    return v0
.end method

.method static synthetic access$210(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 2

    .line 52
    iget v0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->nr_mode_index:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lnet/sourceforge/opencamera/ui/PopupView;->nr_mode_index:I

    return v0
.end method

.method static synthetic access$300(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 0

    .line 52
    iget p0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->picture_size_index:I

    return p0
.end method

.method static synthetic access$308(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 2

    .line 52
    iget v0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->picture_size_index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sourceforge/opencamera/ui/PopupView;->picture_size_index:I

    return v0
.end method

.method static synthetic access$310(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 2

    .line 52
    iget v0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->picture_size_index:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lnet/sourceforge/opencamera/ui/PopupView;->picture_size_index:I

    return v0
.end method

.method static synthetic access$400(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 0

    .line 52
    iget p0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->video_size_index:I

    return p0
.end method

.method static synthetic access$408(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 2

    .line 52
    iget v0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->video_size_index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sourceforge/opencamera/ui/PopupView;->video_size_index:I

    return v0
.end method

.method static synthetic access$410(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 2

    .line 52
    iget v0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->video_size_index:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lnet/sourceforge/opencamera/ui/PopupView;->video_size_index:I

    return v0
.end method

.method static synthetic access$500(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 0

    .line 52
    iget p0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->burst_n_images_index:I

    return p0
.end method

.method static synthetic access$508(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 2

    .line 52
    iget v0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->burst_n_images_index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sourceforge/opencamera/ui/PopupView;->burst_n_images_index:I

    return v0
.end method

.method static synthetic access$510(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 2

    .line 52
    iget v0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->burst_n_images_index:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lnet/sourceforge/opencamera/ui/PopupView;->burst_n_images_index:I

    return v0
.end method

.method static synthetic access$600(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 0

    .line 52
    iget p0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->video_capture_rate_index:I

    return p0
.end method

.method static synthetic access$608(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 2

    .line 52
    iget v0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->video_capture_rate_index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sourceforge/opencamera/ui/PopupView;->video_capture_rate_index:I

    return v0
.end method

.method static synthetic access$610(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 2

    .line 52
    iget v0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->video_capture_rate_index:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lnet/sourceforge/opencamera/ui/PopupView;->video_capture_rate_index:I

    return v0
.end method

.method static synthetic access$700(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 0

    .line 52
    iget p0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->timer_index:I

    return p0
.end method

.method static synthetic access$708(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 2

    .line 52
    iget v0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->timer_index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sourceforge/opencamera/ui/PopupView;->timer_index:I

    return v0
.end method

.method static synthetic access$710(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 2

    .line 52
    iget v0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->timer_index:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lnet/sourceforge/opencamera/ui/PopupView;->timer_index:I

    return v0
.end method

.method static synthetic access$800(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 0

    .line 52
    iget p0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->repeat_mode_index:I

    return p0
.end method

.method static synthetic access$808(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 2

    .line 52
    iget v0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->repeat_mode_index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sourceforge/opencamera/ui/PopupView;->repeat_mode_index:I

    return v0
.end method

.method static synthetic access$810(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 2

    .line 52
    iget v0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->repeat_mode_index:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lnet/sourceforge/opencamera/ui/PopupView;->repeat_mode_index:I

    return v0
.end method

.method static synthetic access$900(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 0

    .line 52
    iget p0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->grid_index:I

    return p0
.end method

.method static synthetic access$908(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 2

    .line 52
    iget v0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->grid_index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sourceforge/opencamera/ui/PopupView;->grid_index:I

    return v0
.end method

.method static synthetic access$910(Lnet/sourceforge/opencamera/ui/PopupView;)I
    .locals 2

    .line 52
    iget v0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->grid_index:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lnet/sourceforge/opencamera/ui/PopupView;->grid_index:I

    return v0
.end method

.method static synthetic access$912(Lnet/sourceforge/opencamera/ui/PopupView;I)I
    .locals 1

    .line 52
    iget v0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->grid_index:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->grid_index:I

    return v0
.end method

.method static synthetic access$920(Lnet/sourceforge/opencamera/ui/PopupView;I)I
    .locals 1

    .line 52
    iget v0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->grid_index:I

    sub-int/2addr v0, p1

    iput v0, p0, Lnet/sourceforge/opencamera/ui/PopupView;->grid_index:I

    return v0
.end method

.method private addArrayOptionsToPopup(Ljava/util/List;Ljava/lang/String;ZZIZLjava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZIZ",
            "Ljava/lang/String;",
            "Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;",
            ")V"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move/from16 v7, p5

    move-object/from16 v8, p7

    if-eqz p1, :cond_5

    const/4 v0, -0x1

    if-eq v7, v0, :cond_5

    if-nez p3, :cond_0

    .line 1787
    invoke-direct {v11, v12}, Lnet/sourceforge/opencamera/ui/PopupView;->addTitleToPopup(Ljava/lang/String;)V

    .line 1790
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lnet/sourceforge/opencamera/MainActivity;

    .line 1792
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 1795
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0033

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    const v0, 0x7f0900ec

    .line 1796
    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/TextView;

    const v0, 0x7f09004b

    .line 1797
    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/Button;

    const v0, 0x7f09004c

    .line 1798
    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v14

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v16, v6

    move/from16 v6, p5

    .line 1800
    invoke-direct/range {v0 .. v6}, Lnet/sourceforge/opencamera/ui/PopupView;->setArrayOptionsText(Ljava/util/List;Ljava/lang/String;Landroid/widget/TextView;ZZI)V

    const/4 v0, 0x2

    const/high16 v1, 0x41800000    # 16.0f

    .line 1802
    invoke-virtual {v14, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v2, 0x1

    .line 1803
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1804
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v4, v11, Lnet/sourceforge/opencamera/ui/PopupView;->arrow_button_w:I

    neg-int v5, v4

    .line 1809
    div-int/2addr v5, v0

    neg-int v4, v4

    div-int/2addr v4, v0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1810
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1812
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/4 v4, 0x0

    mul-float v3, v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 1814
    invoke-virtual {v15, v6}, Landroid/widget/Button;->setBackgroundColor(I)V

    const-string v4, "<"

    .line 1816
    invoke-virtual {v15, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1817
    invoke-virtual {v15, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1818
    invoke-virtual {v15, v10, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1819
    invoke-virtual {v15, v3, v3, v3, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1820
    invoke-virtual {v15}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, v11, Lnet/sourceforge/opencamera/ui/PopupView;->arrow_button_w:I

    .line 1821
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v11, Lnet/sourceforge/opencamera/ui/PopupView;->arrow_button_h:I

    .line 1822
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1823
    invoke-virtual {v15, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p6, :cond_2

    if-lez v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x0

    .line 1824
    :goto_1
    invoke-virtual {v15, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1825
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v2, 0x7f100320

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1826
    invoke-virtual {v9}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/ui/MainUI;->getTestUIButtonsMap()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_PREV"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1829
    invoke-virtual {v9}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/ui/MainUI;->getTestUIButtonsMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v16

    .line 1831
    invoke-virtual {v10, v6}, Landroid/widget/Button;->setBackgroundColor(I)V

    const-string v4, ">"

    .line 1833
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1834
    invoke-virtual {v10, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1835
    invoke-virtual {v10, v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1836
    invoke-virtual {v10, v3, v3, v3, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1837
    invoke-virtual {v10}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v3, v11, Lnet/sourceforge/opencamera/ui/PopupView;->arrow_button_w:I

    .line 1838
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v11, Lnet/sourceforge/opencamera/ui/PopupView;->arrow_button_h:I

    .line 1839
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1840
    invoke-virtual {v10, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p6, :cond_4

    .line 1841
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ge v7, v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x4

    :cond_4
    :goto_2
    invoke-virtual {v10, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1000c4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1843
    invoke-virtual {v9}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->getTestUIButtonsMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_NEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1851
    new-instance v9, Lnet/sourceforge/opencamera/ui/PopupView$24;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v14

    move/from16 v6, p3

    move/from16 v7, p4

    move-object v8, v15

    move-object v12, v9

    move/from16 v9, p6

    move-object/from16 v16, v10

    invoke-direct/range {v0 .. v10}, Lnet/sourceforge/opencamera/ui/PopupView$24;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;Ljava/util/List;Ljava/lang/String;Landroid/widget/TextView;ZZLandroid/widget/Button;ZLandroid/widget/Button;)V

    invoke-virtual {v15, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1862
    new-instance v12, Lnet/sourceforge/opencamera/ui/PopupView$25;

    move-object v0, v12

    invoke-direct/range {v0 .. v10}, Lnet/sourceforge/opencamera/ui/PopupView$25;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;Ljava/util/List;Ljava/lang/String;Landroid/widget/TextView;ZZLandroid/widget/Button;ZLandroid/widget/Button;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1874
    invoke-virtual {v11, v13}, Lnet/sourceforge/opencamera/ui/PopupView;->addView(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private addButtonOptionsToPopup(Ljava/util/List;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;",
            ")V"
        }
    .end annotation

    .line 1293
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/opencamera/MainActivity;

    .line 1294
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v14, p0

    iget v3, v14, Lnet/sourceforge/opencamera/ui/PopupView;->total_width_dp:I

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->getTestUIButtonsMap()Ljava/util/Map;

    move-result-object v4

    const/4 v9, 0x1

    move-object v1, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-static/range {v1 .. v13}, Lnet/sourceforge/opencamera/ui/PopupView;->createButtonOptions(Landroid/view/ViewGroup;Landroid/content/Context;ILjava/util/Map;Ljava/util/List;IILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;)Ljava/util/List;

    return-void
.end method

.method private addRadioOptionsToGroup(Landroid/widget/RadioGroup;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RadioGroup;",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v9, p6

    if-eqz v9, :cond_0

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    .line 1679
    invoke-interface {v1, v9, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_0

    :cond_0
    move-object/from16 v10, p8

    .line 1680
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 1681
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lnet/sourceforge/opencamera/MainActivity;

    const/4 v1, 0x0

    const/4 v12, 0x0

    .line 1683
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_2

    move-object/from16 v13, p3

    .line 1684
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    move-object/from16 v14, p4

    .line 1685
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    .line 1699
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0c0035

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0900a9

    .line 1700
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/RadioButton;

    .line 1705
    invoke-virtual {v8, v1}, Landroid/widget/RadioButton;->setId(I)V

    .line 1707
    invoke-virtual {v8, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x2

    const/high16 v4, 0x41800000    # 16.0f

    .line 1708
    invoke-virtual {v8, v2, v4}, Landroid/widget/RadioButton;->setTextSize(IF)V

    const/4 v2, -0x1

    .line 1709
    invoke-virtual {v8, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1714
    invoke-virtual {v0, v8}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1718
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1720
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    :cond_1
    add-int/lit8 v16, v1, 0x1

    .line 1724
    invoke-virtual {v8, v3}, Landroid/widget/RadioButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1727
    new-instance v7, Lnet/sourceforge/opencamera/ui/PopupView$23;

    move-object v1, v7

    move-object/from16 v2, p0

    move-object v4, v15

    move-object/from16 v5, p6

    move-object v6, v11

    move-object v0, v7

    move-object/from16 v7, p10

    move-object v9, v8

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lnet/sourceforge/opencamera/ui/PopupView$23;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sourceforge/opencamera/MainActivity;Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1752
    invoke-virtual {v11}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->getTestUIButtonsMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move-object/from16 v9, p6

    move/from16 v1, v16

    goto/16 :goto_1

    :cond_2
    return-void
.end method

.method private addRadioOptionsToPopup(Landroid/content/SharedPreferences;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;",
            ")V"
        }
    .end annotation

    move-object/from16 v13, p0

    if-eqz p2, :cond_0

    .line 1595
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lnet/sourceforge/opencamera/MainActivity;

    .line 1596
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 1599
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090049

    .line 1600
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/Button;

    const/4 v0, 0x0

    .line 1602
    invoke-virtual {v14, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1604
    invoke-virtual {v14, v0}, Landroid/widget/Button;->setAllCaps(Z)V

    const/4 v0, 0x2

    const/high16 v1, 0x41880000    # 17.0f

    .line 1605
    invoke-virtual {v14, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1606
    invoke-virtual {v13, v14}, Lnet/sourceforge/opencamera/ui/PopupView;->addView(Landroid/view/View;)V

    .line 1610
    new-instance v15, Landroid/widget/RadioGroup;

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v15, v0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 1611
    invoke-virtual {v15, v0}, Landroid/widget/RadioGroup;->setOrientation(I)V

    const/16 v0, 0x8

    .line 1612
    invoke-virtual {v15, v0}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 1613
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->getTestUIButtonsMap()Ljava/util/Map;

    move-result-object v0

    move-object/from16 v11, p8

    invoke-interface {v0, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    new-instance v12, Lnet/sourceforge/opencamera/ui/PopupView$22;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v3, v15

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object v13, v12

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lnet/sourceforge/opencamera/ui/PopupView$22;-><init>(Lnet/sourceforge/opencamera/ui/PopupView;Ljava/lang/String;Landroid/widget/RadioGroup;Lnet/sourceforge/opencamera/MainActivity;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;)V

    invoke-virtual {v14, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    .line 1669
    invoke-virtual {v0, v15}, Lnet/sourceforge/opencamera/ui/PopupView;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    move-object v0, v13

    :goto_0
    return-void
.end method

.method private addTitleToPopup(Ljava/lang/String;)V
    .locals 3

    .line 1545
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 1548
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900ec

    .line 1549
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    const/high16 v1, 0x41880000    # 17.0f

    .line 1552
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 p1, 0x1

    .line 1553
    invoke-virtual {v0, v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1555
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/ui/PopupView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private changePhotoMode(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1104
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/opencamera/MainActivity;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 1106
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    if-ne v4, v1, :cond_1

    .line 1107
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ne v4, v1, :cond_2

    goto/16 :goto_4

    .line 1117
    :cond_2
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 1119
    sget-object p2, Lnet/sourceforge/opencamera/ui/PopupView$26;->$SwitchMap$net$sourceforge$opencamera$MyApplicationInterface$PhotoMode:[I

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ordinal()I

    move-result v1

    aget p2, p2, v1

    const v1, 0x7f1000ec

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    .line 1151
    :pswitch_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1000f2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    .line 1148
    :pswitch_1
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1000f4

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 1145
    :pswitch_2
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1000f8

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 1142
    :pswitch_3
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1000f6

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 1139
    :pswitch_4
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1000f0

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 1136
    :pswitch_5
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 1133
    :pswitch_6
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1000ea

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 1130
    :pswitch_7
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1000e5

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 1127
    :pswitch_8
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1000e7

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 1124
    :pswitch_9
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1000e3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 1121
    :pswitch_a
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1000ee

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 1154
    :goto_1
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 1155
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1156
    sget-object v4, Lnet/sourceforge/opencamera/ui/PopupView$26;->$SwitchMap$net$sourceforge$opencamera$MyApplicationInterface$PhotoMode:[I

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-string v5, "preference_photo_mode"

    packed-switch v4, :pswitch_data_1

    goto :goto_2

    :pswitch_b
    const-string v4, "preference_photo_mode_hdr"

    .line 1164
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :pswitch_c
    const-string v4, "preference_photo_mode_dro"

    .line 1161
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :pswitch_d
    const-string v4, "preference_photo_mode_x_beauty"

    .line 1194
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :pswitch_e
    const-string v4, "preference_photo_mode_x_bokeh"

    .line 1191
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :pswitch_f
    const-string v4, "preference_photo_mode_x_night"

    .line 1188
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :pswitch_10
    const-string v4, "preference_photo_mode_x_hdr"

    .line 1185
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :pswitch_11
    const-string v4, "preference_photo_mode_x_auto"

    .line 1182
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :pswitch_12
    const-string v4, "preference_photo_mode_panorama"

    .line 1179
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :pswitch_13
    const-string v4, "preference_photo_mode_noise_reduction"

    .line 1176
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :pswitch_14
    const-string v4, "preference_photo_mode_fast_burst"

    .line 1173
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :pswitch_15
    const-string v4, "preference_photo_mode_focus_bracketing"

    .line 1170
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :pswitch_16
    const-string v4, "preference_photo_mode_expo_bracketing"

    .line 1167
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :pswitch_17
    const-string v4, "preference_photo_mode_std"

    .line 1158
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1201
    :goto_2
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1204
    sget-object v3, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne p1, v3, :cond_3

    const-string p1, "done_hdr_info"

    .line 1205
    invoke-interface {p2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 1207
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object p2

    const p3, 0x7f1000e8

    const v1, 0x7f1000b4

    invoke-virtual {p2, p3, v1, p1}, Lnet/sourceforge/opencamera/ui/MainUI;->showInfoDialog(IILjava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_3

    .line 1211
    :cond_3
    sget-object v3, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne p1, v3, :cond_4

    const-string p1, "done_panorama_info"

    .line 1212
    invoke-interface {p2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 1214
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object p2

    const p3, 0x7f1000d3

    invoke-virtual {p2, v1, p3, p1}, Lnet/sourceforge/opencamera/ui/MainUI;->showInfoDialog(IILjava/lang/String;)Landroid/app/AlertDialog;

    :goto_3
    const/4 p3, 0x0

    .line 1224
    :cond_4
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->updateSettings()V

    const/4 p1, 0x1

    .line 1225
    invoke-virtual {v0, p1, p3, v2, p1}, Lnet/sourceforge/opencamera/MainActivity;->updateForSettings(ZLjava/lang/String;ZZ)V

    .line 1226
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->destroyPopup()V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method static createButtonOptions(Landroid/view/ViewGroup;Landroid/content/Context;ILjava/util/Map;Ljava/util/List;IILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    .line 1304
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_13

    .line 1306
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 1307
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x0

    .line 1308
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v14, -0x1

    if-eq v5, v14, :cond_0

    .line 1311
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eq v6, v14, :cond_1

    .line 1312
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 1316
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->density:F

    .line 1317
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 1320
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v14

    if-lez v9, :cond_2

    .line 1322
    invoke-static {v14, v9}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1323
    :cond_2
    div-int v14, v2, v14

    const/16 v12, 0x30

    move-object/from16 v17, v11

    if-ge v14, v12, :cond_3

    if-nez v9, :cond_3

    const/4 v12, 0x1

    const/16 v14, 0x30

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    int-to-float v14, v14

    mul-float v14, v14, v15

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v14, v14, v18

    float-to-int v14, v14

    .line 1338
    new-instance v11, Lnet/sourceforge/opencamera/ui/PopupView$20;

    move/from16 p6, v13

    move-object/from16 v13, p12

    invoke-direct {v11, v13}, Lnet/sourceforge/opencamera/ui/PopupView$20;-><init>(Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;)V

    move/from16 v20, v12

    move-object/from16 v13, v17

    const/16 v19, 0x0

    move/from16 v17, v14

    const/4 v14, 0x0

    .line 1351
    :goto_3
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v12

    if-ge v14, v12, :cond_11

    .line 1352
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-lez v9, :cond_4

    if-lez v14, :cond_4

    .line 1358
    rem-int v21, v14, v9

    if-nez v21, :cond_4

    .line 1363
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1364
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 1365
    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1367
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v14

    if-gt v4, v9, :cond_4

    .line 1373
    div-int v4, v2, v4

    int-to-float v4, v4

    mul-float v4, v4, v15

    add-float v4, v4, v18

    float-to-int v4, v4

    goto :goto_4

    :cond_4
    move/from16 v4, v17

    :goto_4
    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    const/4 v0, 0x0

    const/4 v9, -0x1

    .line 1385
    :goto_5
    array-length v2, v6

    if-ge v0, v2, :cond_6

    const/4 v2, -0x1

    if-ne v9, v2, :cond_6

    .line 1386
    aget-object v2, v6, v0

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v9, v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, -0x1

    if-eq v9, v0, :cond_7

    .line 1392
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    aget-object v2, v5, v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v21, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v2, v0

    goto :goto_6

    :cond_7
    move-object/from16 v21, v5

    const/4 v2, -0x1

    .line 1401
    :goto_6
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    move-object/from16 v22, v6

    move-object v0, v12

    :goto_7
    const/4 v5, -0x1

    goto :goto_8

    :cond_8
    const-string v0, "ISO"

    .line 1404
    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v9, 0x4

    if-lt v5, v9, :cond_9

    move-object/from16 v22, v6

    const/4 v5, 0x0

    invoke-virtual {v12, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v5, "ISO_"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1405
    invoke-virtual {v12, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v7, v0}, Lnet/sourceforge/opencamera/ui/PopupView;->getButtonOptionString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_9
    move-object/from16 v22, v6

    .line 1407
    :cond_a
    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_b

    const/4 v5, 0x0

    invoke-virtual {v12, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1408
    invoke-virtual {v12, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v7, v0}, Lnet/sourceforge/opencamera/ui/PopupView;->getButtonOptionString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 1411
    :cond_b
    invoke-static {v8, v7, v12}, Lnet/sourceforge/opencamera/ui/PopupView;->getButtonOptionString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :goto_8
    if-eq v2, v5, :cond_d

    .line 1419
    new-instance v5, Landroid/widget/ImageButton;

    invoke-direct {v5, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1423
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1424
    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1429
    move-object v6, v1

    check-cast v6, Lnet/sourceforge/opencamera/MainActivity;

    .line 1430
    invoke-virtual {v6, v2}, Lnet/sourceforge/opencamera/MainActivity;->getPreloadedBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 1432
    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1439
    :cond_c
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v6, 0x0

    .line 1440
    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    const/high16 v6, 0x41200000    # 10.0f

    mul-float v6, v6, v15

    add-float v6, v6, v18

    float-to-int v6, v6

    .line 1442
    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    const/4 v6, -0x1

    goto :goto_9

    .line 1446
    :cond_d
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0c0034

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f090049

    .line 1447
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const/4 v6, 0x0

    .line 1449
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1451
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1452
    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1454
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x2

    const/high16 v9, 0x41400000    # 12.0f

    .line 1455
    invoke-virtual {v5, v6, v9}, Landroid/widget/Button;->setTextSize(IF)V

    const/4 v6, -0x1

    .line 1456
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v9, 0x0

    mul-float v9, v9, v15

    add-float v9, v9, v18

    float-to-int v9, v9

    .line 1459
    invoke-virtual {v5, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 1464
    :goto_9
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 1465
    iput v4, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v6, :cond_e

    move v2, v15

    goto :goto_a

    :cond_e
    move/from16 v2, p6

    :goto_a
    const/high16 v16, 0x425c0000    # 55.0f

    mul-float v2, v2, v16

    add-float v2, v2, v18

    float-to-int v2, v2

    .line 1468
    iput v2, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1469
    invoke-virtual {v5, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1471
    invoke-virtual {v5, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p9

    .line 1472
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    .line 1473
    invoke-static {v5, v2}, Lnet/sourceforge/opencamera/ui/PopupView;->setButtonSelected(Landroid/view/View;Z)V

    move-object/from16 v19, v5

    const/4 v9, 0x0

    goto :goto_b

    :cond_f
    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 1477
    invoke-static {v5, v9}, Lnet/sourceforge/opencamera/ui/PopupView;->setButtonSelected(Landroid/view/View;Z)V

    .line 1481
    :goto_b
    invoke-virtual {v5, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1482
    invoke-virtual {v5, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v3, :cond_10

    .line 1486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p11

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_10
    move-object/from16 v6, p11

    :goto_c
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v9, p10

    move/from16 v17, v4

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v4, p4

    goto/16 :goto_3

    :cond_11
    if-eqz v20, :cond_12

    move/from16 v0, p2

    int-to-float v0, v0

    mul-float v0, v0, v15

    add-float v0, v0, v18

    float-to-int v0, v0

    .line 1500
    new-instance v2, Landroid/widget/HorizontalScrollView;

    invoke-direct {v2, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 1501
    invoke-virtual {v2, v13}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 1503
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1506
    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v1, p0

    .line 1508
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v3, v19

    if-eqz v3, :cond_13

    .line 1513
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v4, Lnet/sourceforge/opencamera/ui/PopupView$21;

    move/from16 v14, v17

    invoke-direct {v4, v3, v0, v14, v2}, Lnet/sourceforge/opencamera/ui/PopupView$21;-><init>(Landroid/view/View;IILandroid/widget/HorizontalScrollView;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_d

    :cond_12
    move-object/from16 v1, p0

    .line 1532
    invoke-virtual {v1, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_13
    :goto_d
    return-object v10
.end method

.method public static getButtonOptionString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setArrayOptionsText(Ljava/util/List;Ljava/lang/String;Landroid/widget/TextView;ZZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/widget/TextView;",
            "ZZI)V"
        }
    .end annotation

    if-eqz p4, :cond_1

    if-eqz p6, :cond_0

    if-nez p5, :cond_1

    .line 1767
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1769
    :cond_1
    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static setButtonSelected(Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3f19999a    # 0.6f

    .line 1541
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method getTotalWidth()I
    .locals 2

    .line 1096
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget v1, p0, Lnet/sourceforge/opencamera/ui/PopupView;->total_width_dp:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public switchToWhiteBalance(Ljava/lang/String;)V
    .locals 5

    .line 1233
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/PopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/opencamera/MainActivity;

    .line 1234
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    const-string v2, "manual"

    .line 1237
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_3

    .line 1238
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1239
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getWhiteBalance()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1240
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1245
    :cond_0
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->captureResultHasWhiteBalanceTemperature()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1246
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->captureResultWhiteBalanceTemperature()I

    move-result v4

    .line 1249
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1250
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preference_white_balance_temperature"

    .line 1251
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1252
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1256
    :cond_1
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->isExposureUIOpen()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1258
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->toggleExposureUI()V

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 1264
    :goto_0
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1265
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setWhiteBalance(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    if-lez v4, :cond_4

    .line 1267
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object p1

    invoke-virtual {p1, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setWhiteBalanceTemperature(I)Z

    .line 1269
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->setManualWBSeekbar()V

    :cond_4
    if-eqz v2, :cond_5

    .line 1274
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->closePopup()V

    :cond_5
    return-void
.end method
