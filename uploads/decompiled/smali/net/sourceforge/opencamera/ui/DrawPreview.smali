.class public Lnet/sourceforge/opencamera/ui/DrawPreview;
.super Ljava/lang/Object;
.source "DrawPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawPreview"

.field private static final close_level_angle:D = 1.0

.field private static final crop_shading_alpha_c:I = 0xa0

.field private static final decimalFormat:Ljava/text/DecimalFormat;

.field public static final dim_effect_time_c:J = 0x32L

.field private static final histogram_height_dp:I = 0x3c

.field private static final histogram_width_dp:I = 0x64


# instance fields
.field private OSDLine1:Ljava/lang/String;

.field private OSDLine2:Ljava/lang/String;

.field private ae_started_scanning_ms:J

.field private allow_ghost_last_image:Z

.field private angle_highlight_color_pref:I

.field private angle_string:Ljava/lang/String;

.field private final applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

.field private audio_disabled_bitmap:Landroid/graphics/Bitmap;

.field private auto_stabilise_bitmap:Landroid/graphics/Bitmap;

.field private final auto_stabilise_crop:[I

.field private auto_stabilise_pref:Z

.field private battery_frac:F

.field private final battery_ifilter:Landroid/content/IntentFilter;

.field private burst_bitmap:Landroid/graphics/Bitmap;

.field private cached_angle:D

.field private calendar:Ljava/util/Calendar;

.field private camera_id_string:Ljava/lang/String;

.field private camera_inactive_time_ms:J

.field private capture_rate_factor:F

.field private capture_started:Z

.field private continuous_focus_moving:Z

.field private continuous_focus_moving_ms:J

.field private cover_preview:Z

.field private current_time_string:Ljava/lang/String;

.field private dateFormatTimeInstance:Ljava/text/DateFormat;

.field private dim_preview:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

.field private final draw_rect:Landroid/graphics/RectF;

.field private dro_bitmap:Landroid/graphics/Bitmap;

.field private enable_gyro_target_spot:Z

.field private expo_bitmap:Landroid/graphics/Bitmap;

.field private face_detection_bitmap:Landroid/graphics/Bitmap;

.field private flash_bitmap:Landroid/graphics/Bitmap;

.field private focus_peaking_color_pref:I

.field private focus_seekbars_margin_left:I

.field private final free_memory_executor:Ljava/util/concurrent/ExecutorService;

.field private free_memory_future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private free_memory_gb:F

.field private free_memory_gb_string:Ljava/lang/String;

.field private final free_memory_runnable:Ljava/lang/Runnable;

.field private front_screen_flash:Z

.field private ghost_image_alpha:I

.field private ghost_image_pref:Ljava/lang/String;

.field private ghost_selected_image_bitmap:Landroid/graphics/Bitmap;

.field private ghost_selected_image_pref:Ljava/lang/String;

.field private final gui_location:[I

.field private final gyro_direction_up:[F

.field private final gyro_directions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[F>;"
        }
    .end annotation
.end field

.field private has_battery_frac:Z

.field private has_settings:Z

.field private has_stamp_pref:Z

.field private has_video_max_amp:Z

.field private hdr_bitmap:Landroid/graphics/Bitmap;

.field private high_speed_fps_bitmap:Landroid/graphics/Bitmap;

.field private histogram_type:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

.field private final icon_dest:Landroid/graphics/Rect;

.field private image_queue_full:Z

.field private immersive_mode_everything_pref:Z

.field private is_audio_enabled_pref:Z

.field private is_face_detection_pref:Z

.field private is_high_speed:Z

.field private is_raw_only_pref:Z

.field private is_raw_pref:Z

.field private is_scanning:Z

.field private iso_exposure_string:Ljava/lang/String;

.field private last_angle_string_time:J

.field private last_battery_time:J

.field private last_camera_id_time:J

.field private last_current_time_time:J

.field private last_free_memory_time:J

.field private final last_image_dst_rect:Landroid/graphics/RectF;

.field private final last_image_matrix:Landroid/graphics/Matrix;

.field private final last_image_src_rect:Landroid/graphics/RectF;

.field private last_iso_exposure_time:J

.field private last_need_flash_indicator_time:J

.field private last_take_photo_top_time:J

.field private last_thumbnail:Landroid/graphics/Bitmap;

.field private last_thumbnail_is_video:Z

.field private last_top_icon_shift_time:J

.field private last_video_max_amp_time:J

.field private last_view_angles_time:J

.field private final locationInfo:Lnet/sourceforge/opencamera/LocationSupplier$LocationInfo;

.field private location_bitmap:Landroid/graphics/Bitmap;

.field private location_off_bitmap:Landroid/graphics/Bitmap;

.field private final main_activity:Lnet/sourceforge/opencamera/MainActivity;

.field private need_flash_indicator:Z

.field private needs_flash_time:J

.field private nr_bitmap:Landroid/graphics/Bitmap;

.field private final p:Landroid/graphics/Paint;

.field private panorama_bitmap:Landroid/graphics/Bitmap;

.field private final path:Landroid/graphics/Path;

.field private photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

.field private photostamp_bitmap:Landroid/graphics/Bitmap;

.field private preference_grid_pref:Ljava/lang/String;

.field private preview_size_wysiwyg_pref:Z

.field private raw_jpeg_bitmap:Landroid/graphics/Bitmap;

.field private raw_only_bitmap:Landroid/graphics/Bitmap;

.field private rotate_left_bitmap:Landroid/graphics/Bitmap;

.field private rotate_right_bitmap:Landroid/graphics/Bitmap;

.field private final scale_dp:F

.field private final scale_font:F

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private show_angle_line_pref:Z

.field private show_angle_pref:Z

.field private show_battery_pref:Z

.field private show_camera_id_pref:Z

.field private show_free_memory_pref:Z

.field private show_geo_direction_lines_pref:Z

.field private show_geo_direction_pref:Z

.field private show_iso_pref:Z

.field private show_last_image:Z

.field private show_pitch_lines_pref:Z

.field private show_time_pref:Z

.field private show_video_max_amp_pref:Z

.field private show_zoom_pref:Z

.field private slow_motion_bitmap:Landroid/graphics/Bitmap;

.field private store_location_pref:Z

.field private final stroke_width:F

.field private take_photo_border_pref:Z

.field private take_photo_top:I

.field private taking_picture:Z

.field private final temp_histogram_channel:[I

.field public volatile test_thumbnail_anim_count:I

.field private text_bounds_angle_double:Landroid/graphics/Rect;

.field private text_bounds_angle_single:Landroid/graphics/Rect;

.field private text_bounds_camera_id:Landroid/graphics/Rect;

.field private text_bounds_free_memory:Landroid/graphics/Rect;

.field private text_bounds_time:Landroid/graphics/Rect;

.field private volatile thumbnail_anim:Z

.field private final thumbnail_anim_dst_rect:Landroid/graphics/RectF;

.field private final thumbnail_anim_matrix:Landroid/graphics/Matrix;

.field private final thumbnail_anim_src_rect:Landroid/graphics/RectF;

.field private thumbnail_anim_start_ms:J

.field private time_lapse_bitmap:Landroid/graphics/Bitmap;

.field private top_icon_shift:I

.field private final transformed_gyro_direction:[F

.field private final transformed_gyro_direction_up:[F

.field private video_max_amp:I

.field private video_max_amp_peak:I

.field private video_max_amp_prev2:I

.field private view_angle_x_preview:F

.field private view_angle_y_preview:F

.field private want_focus_peaking:Z

.field private want_histogram:Z

.field private want_zebra_stripes:Z

.field private x_beauty_bitmap:Landroid/graphics/Bitmap;

.field private x_bokeh_bitmap:Landroid/graphics/Bitmap;

.field private x_night_bitmap:Landroid/graphics/Bitmap;

.field private final ybounds_text:Ljava/lang/String;

.field private zebra_stripes_color_background:I

.field private zebra_stripes_color_foreground:I

.field private zebra_stripes_threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 133
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->decimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Lnet/sourceforge/opencamera/MainActivity;Lnet/sourceforge/opencamera/MyApplicationInterface;)V
    .locals 5

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-object v0, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;->DIM_PREVIEW_OFF:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->dim_preview:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->camera_inactive_time_ms:J

    const-string v2, ""

    iput-object v2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_selected_image_pref:Ljava/lang/String;

    .line 130
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 131
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->gui_location:[I

    const/16 v4, 0x100

    new-array v4, v4, [I

    iput-object v4, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->temp_histogram_channel:[I

    .line 141
    new-instance v4, Lnet/sourceforge/opencamera/LocationSupplier$LocationInfo;

    invoke-direct {v4}, Lnet/sourceforge/opencamera/LocationSupplier$LocationInfo;-><init>()V

    iput-object v4, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->locationInfo:Lnet/sourceforge/opencamera/LocationSupplier$LocationInfo;

    new-array v3, v3, [I

    iput-object v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->auto_stabilise_crop:[I

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->free_memory_gb:F

    .line 164
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->free_memory_executor:Ljava/util/concurrent/ExecutorService;

    .line 165
    new-instance v3, Lnet/sourceforge/opencamera/ui/DrawPreview$1;

    invoke-direct {v3, p0}, Lnet/sourceforge/opencamera/ui/DrawPreview$1;-><init>(Lnet/sourceforge/opencamera/ui/DrawPreview;)V

    iput-object v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->free_memory_runnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->need_flash_indicator:Z

    .line 231
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->battery_ifilter:Landroid/content/IntentFilter;

    .line 268
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iput-wide v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->needs_flash_time:J

    .line 270
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->path:Landroid/graphics/Path;

    iput-wide v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim_start_ms:J

    .line 276
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim_src_rect:Landroid/graphics/RectF;

    .line 277
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim_dst_rect:Landroid/graphics/RectF;

    .line 278
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim_matrix:Landroid/graphics/Matrix;

    .line 282
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_src_rect:Landroid/graphics/RectF;

    .line 283
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_dst_rect:Landroid/graphics/RectF;

    .line 284
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_matrix:Landroid/graphics/Matrix;

    iput-wide v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ae_started_scanning_ms:J

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->gyro_directions:Ljava/util/List;

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->transformed_gyro_direction:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->gyro_direction_up:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->transformed_gyro_direction_up:[F

    const/4 v0, -0x1

    iput v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->focus_seekbars_margin_left:I

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 329
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    const/4 p1, 0x1

    .line 334
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 335
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {p2, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 336
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 337
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_dp:F

    .line 338
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput p2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    iput p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->stroke_width:F

    .line 341
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 343
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080084

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->location_bitmap:Landroid/graphics/Bitmap;

    .line 344
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080085

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->location_off_bitmap:Landroid/graphics/Bitmap;

    .line 345
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0800b2

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->raw_jpeg_bitmap:Landroid/graphics/Bitmap;

    .line 346
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0800b4

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->raw_only_bitmap:Landroid/graphics/Bitmap;

    .line 347
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08004f

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->auto_stabilise_bitmap:Landroid/graphics/Bitmap;

    .line 348
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08006d

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->dro_bitmap:Landroid/graphics/Bitmap;

    .line 349
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080086

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->hdr_bitmap:Landroid/graphics/Bitmap;

    .line 350
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08005b

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->panorama_bitmap:Landroid/graphics/Bitmap;

    .line 351
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08006e

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->expo_bitmap:Landroid/graphics/Bitmap;

    .line 353
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08007c

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->burst_bitmap:Landroid/graphics/Bitmap;

    .line 354
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0800ab

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->nr_bitmap:Landroid/graphics/Bitmap;

    .line 355
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080052

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->x_night_bitmap:Landroid/graphics/Bitmap;

    .line 356
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08005d

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->x_bokeh_bitmap:Landroid/graphics/Bitmap;

    .line 357
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080057

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->x_beauty_bitmap:Landroid/graphics/Bitmap;

    .line 358
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080097

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photostamp_bitmap:Landroid/graphics/Bitmap;

    .line 359
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080073

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->flash_bitmap:Landroid/graphics/Bitmap;

    .line 360
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080081

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->face_detection_bitmap:Landroid/graphics/Bitmap;

    .line 361
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08008a

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->audio_disabled_bitmap:Landroid/graphics/Bitmap;

    .line 362
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080082

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->high_speed_fps_bitmap:Landroid/graphics/Bitmap;

    .line 363
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080094

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->slow_motion_bitmap:Landroid/graphics/Bitmap;

    .line 364
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080098

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->time_lapse_bitmap:Landroid/graphics/Bitmap;

    .line 365
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08005f

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->rotate_left_bitmap:Landroid/graphics/Bitmap;

    .line 366
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080060

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->rotate_right_bitmap:Landroid/graphics/Bitmap;

    .line 368
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100382

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100026

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10005c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ybounds_text:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/ui/DrawPreview;)Lnet/sourceforge/opencamera/MainActivity;
    .locals 0

    .line 58
    iget-object p0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    return-object p0
.end method

.method static synthetic access$200(Lnet/sourceforge/opencamera/ui/DrawPreview;)Ljava/util/concurrent/Future;
    .locals 0

    .line 58
    iget-object p0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->free_memory_future:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method static synthetic access$202(Lnet/sourceforge/opencamera/ui/DrawPreview;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    .line 58
    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->free_memory_future:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$300(Lnet/sourceforge/opencamera/ui/DrawPreview;)F
    .locals 0

    .line 58
    iget p0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->free_memory_gb:F

    return p0
.end method

.method static synthetic access$302(Lnet/sourceforge/opencamera/ui/DrawPreview;F)F
    .locals 0

    .line 58
    iput p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->free_memory_gb:F

    return p1
.end method

.method static synthetic access$402(Lnet/sourceforge/opencamera/ui/DrawPreview;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->free_memory_gb_string:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500()Ljava/text/DecimalFormat;
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->decimalFormat:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method static synthetic access$600(Lnet/sourceforge/opencamera/ui/DrawPreview;)Landroid/content/Context;
    .locals 0

    .line 58
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private doFocusAnimation(Landroid/graphics/Canvas;J)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2665
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    .line 2666
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v2

    const/4 v3, -0x1

    const/high16 v4, 0x42200000    # 40.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->continuous_focus_moving:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->taking_picture:Z

    if-nez v2, :cond_2

    iget-wide v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->continuous_focus_moving_ms:J

    sub-long v8, p2, v8

    const-wide/16 v10, 0x3e8

    cmp-long v2, v8, v10

    if-gtz v2, :cond_1

    long-to-float v2, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v2, v8

    .line 2676
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    .line 2677
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    iget v10, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_dp:F

    mul-float v11, v10, v4

    add-float/2addr v11, v7

    const/high16 v12, 0x42700000    # 60.0f

    mul-float v10, v10, v12

    add-float/2addr v10, v7

    cmpg-float v12, v2, v7

    if-gez v12, :cond_0

    mul-float v2, v2, v5

    sub-float v12, v6, v2

    mul-float v12, v12, v11

    mul-float v2, v2, v10

    goto :goto_0

    :cond_0
    sub-float/2addr v2, v7

    mul-float v2, v2, v5

    sub-float v12, v6, v2

    mul-float v12, v12, v10

    mul-float v2, v2, v11

    :goto_0
    add-float/2addr v12, v2

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2693
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2694
    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v10, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->stroke_width:F

    .line 2695
    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    .line 2696
    invoke-virtual {v10, v8, v9, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2697
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    :cond_1
    move-object/from16 v10, p1

    .line 2700
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->clearContinuousFocusMove()V

    goto :goto_1

    :cond_2
    move-object/from16 v10, p1

    .line 2704
    :goto_1
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isFocusWaiting()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isFocusRecentSuccess()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isFocusRecentFailure()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2705
    :cond_3
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->timeSinceStartedAutoFocus()J

    move-result-wide v8

    iget v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_dp:F

    mul-float v4, v4, v2

    add-float/2addr v4, v7

    const/high16 v11, 0x42340000    # 45.0f

    mul-float v2, v2, v11

    add-float/2addr v2, v7

    const-wide/16 v11, 0x0

    cmp-long v13, v8, v11

    if-lez v13, :cond_6

    long-to-float v8, v8

    const/high16 v9, 0x43fa0000    # 500.0f

    div-float/2addr v8, v9

    cmpl-float v9, v8, v6

    if-lez v9, :cond_4

    const/high16 v8, 0x3f800000    # 1.0f

    :cond_4
    cmpg-float v9, v8, v7

    if-gez v9, :cond_5

    mul-float v8, v8, v5

    sub-float/2addr v6, v8

    mul-float v6, v6, v4

    mul-float v8, v8, v2

    goto :goto_2

    :cond_5
    sub-float/2addr v8, v7

    mul-float v8, v8, v5

    sub-float/2addr v6, v8

    mul-float v6, v6, v2

    mul-float v8, v8, v4

    :goto_2
    add-float v4, v6, v8

    :cond_6
    float-to-int v2, v4

    .line 2725
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isFocusRecentSuccess()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v4, 0xe7

    const/16 v5, 0x15

    const/16 v6, 0x14

    .line 2726
    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 2727
    :cond_7
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isFocusRecentFailure()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v4, 0x43

    const/16 v5, 0x36

    const/16 v6, 0xf4

    .line 2728
    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    :cond_8
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2730
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_3
    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2731
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->stroke_width:F

    .line 2732
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2735
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->hasFocusArea()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2736
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getFocusPos()Landroid/util/Pair;

    move-result-object v1

    .line 2737
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2738
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4

    .line 2741
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v3, v1, 0x2

    .line 2742
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    :goto_4
    sub-int v4, v3, v2

    int-to-float v4, v4

    sub-int v5, v1, v2

    int-to-float v5, v5

    int-to-float v6, v3

    int-to-float v8, v2

    mul-float v8, v8, v7

    sub-float v7, v6, v8

    iget-object v9, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move v14, v4

    move v15, v5

    move/from16 v16, v7

    move/from16 v17, v5

    move-object/from16 v18, v9

    .line 2746
    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v6, v8

    add-int/2addr v3, v2

    int-to-float v3, v3

    iget-object v9, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move v14, v6

    move/from16 v16, v3

    move-object/from16 v18, v9

    .line 2747
    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v2, v1

    int-to-float v2, v2

    iget-object v9, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move v14, v4

    move v15, v2

    move/from16 v16, v7

    move/from16 v17, v2

    move-object/from16 v18, v9

    .line 2748
    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move v14, v6

    move/from16 v16, v3

    move-object/from16 v18, v7

    .line 2749
    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v1

    sub-float v6, v1, v8

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move v14, v4

    move v15, v5

    move/from16 v16, v4

    move/from16 v17, v6

    move-object/from16 v18, v7

    .line 2751
    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v1, v8

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move v15, v1

    move/from16 v17, v2

    move-object/from16 v18, v7

    .line 2752
    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move v14, v3

    move v15, v5

    move/from16 v16, v3

    move/from16 v17, v6

    move-object/from16 v18, v4

    .line 2753
    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move v15, v1

    move/from16 v17, v2

    move-object/from16 v18, v4

    .line 2754
    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2755
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_a
    return-void
.end method

.method private doThumbnailAnimation(Landroid/graphics/Canvas;J)V
    .locals 7

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2610
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    .line 2611
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_thumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 2614
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getUIRotation()I

    move-result v0

    iget-wide v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim_start_ms:J

    sub-long/2addr p2, v1

    const-wide/16 v1, 0x1f4

    cmp-long v3, p2, v1

    if-lez v3, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim:Z

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim_src_rect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    .line 2623
    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim_src_rect:Landroid/graphics/RectF;

    .line 2624
    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim_src_rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_thumbnail:Landroid/graphics/Bitmap;

    .line 2625
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim_src_rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_thumbnail:Landroid/graphics/Bitmap;

    .line 2626
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v2, 0x7f09007c

    .line 2627
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    long-to-float p2, p2

    const/high16 p3, 0x43fa0000    # 500.0f

    div-float/2addr p2, p3

    .line 2630
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    .line 2631
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 2632
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 2633
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, p2

    int-to-float p3, p3

    mul-float p3, p3, v6

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr p3, v3

    float-to-int p3, p3

    int-to-float v2, v2

    mul-float v6, v6, v2

    int-to-float v2, v4

    mul-float v2, v2, p2

    add-float/2addr v6, v2

    float-to-int v2, v6

    .line 2637
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 2638
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 2639
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 2640
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v6, v3, v6

    sub-float/2addr v6, v5

    div-float v1, v4, v1

    sub-float/2addr v1, v5

    mul-float v6, v6, p2

    add-float/2addr v6, v5

    div-float/2addr v3, v6

    float-to-int v3, v3

    mul-float p2, p2, v1

    add-float/2addr p2, v5

    div-float/2addr v4, p2

    float-to-int p2, v4

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim_dst_rect:Landroid/graphics/RectF;

    int-to-float p3, p3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v6, p3, v3

    .line 2647
    iput v6, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim_dst_rect:Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float p2, p2

    div-float/2addr p2, v4

    sub-float v6, v2, p2

    .line 2648
    iput v6, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim_dst_rect:Landroid/graphics/RectF;

    add-float/2addr p3, v3

    .line 2649
    iput p3, v1, Landroid/graphics/RectF;->right:F

    iget-object p3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim_dst_rect:Landroid/graphics/RectF;

    add-float/2addr v2, p2

    .line 2650
    iput v2, p3, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim_matrix:Landroid/graphics/Matrix;

    iget-object p3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim_src_rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim_dst_rect:Landroid/graphics/RectF;

    .line 2652
    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, p3, v1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    const/16 p2, 0x5a

    if-eq v0, p2, :cond_1

    const/16 p2, 0x10e

    if-ne v0, p2, :cond_2

    :cond_1
    iget-object p2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_thumbnail:Landroid/graphics/Bitmap;

    .line 2655
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    iget-object p3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim_matrix:Landroid/graphics/Matrix;

    div-float/2addr v5, p2

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_thumbnail:Landroid/graphics/Bitmap;

    .line 2656
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {p3, p2, v5, v1, v2}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    :cond_2
    iget-object p2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim_matrix:Landroid/graphics/Matrix;

    int-to-float p3, v0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_thumbnail:Landroid/graphics/Bitmap;

    .line 2658
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p2, p3, v0, v1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    iget-object p2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_thumbnail:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim_matrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2659
    invoke-virtual {p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private drawAngleLines(Landroid/graphics/Canvas;IJ)V
    .locals 53

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2316
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v12

    .line 2317
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v1

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2318
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getSystemOrientation()Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    move-result-object v2

    .line 2319
    sget-object v3, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->PORTRAIT:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2320
    :goto_0
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->hasLevelAngle()Z

    move-result v15

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 2322
    sget-object v4, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v3, v4, :cond_1

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2324
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getGyroSensor()Lnet/sourceforge/opencamera/GyroSensor;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/GyroSensor;->isRecording()Z

    move-result v3

    xor-int/2addr v3, v13

    goto :goto_1

    :cond_1
    iget-boolean v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_angle_line_pref:Z

    :goto_1
    if-eqz v1, :cond_2

    .line 2329
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->isPreviewPaused()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v16, 0x1

    goto :goto_2

    :cond_2
    const/16 v16, 0x0

    :goto_2
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const-wide v19, 0x4066800000000000L    # 180.0

    const/4 v7, 0x2

    const-wide v21, 0x4056800000000000L    # 90.0

    const/high16 v23, 0x40000000    # 2.0f

    if-eqz v16, :cond_1f

    if-eqz v15, :cond_1f

    if-nez v3, :cond_3

    iget-boolean v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_pitch_lines_pref:Z

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_geo_direction_lines_pref:Z

    if-eqz v1, :cond_1f

    .line 2332
    :cond_3
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->getLevelAngle()D

    move-result-wide v4

    .line 2333
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->hasPitchAngle()Z

    move-result v24

    .line 2334
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->getPitchAngle()D

    move-result-wide v25

    .line 2335
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->hasGeoDirection()Z

    move-result v27

    .line 2336
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->getGeoDirection()D

    move-result-wide v28

    const/16 v30, 0x50

    const/16 v1, 0x10e

    const/16 v9, 0x5a

    if-eq v11, v9, :cond_5

    if-ne v11, v1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v1, 0x50

    goto :goto_4

    :cond_5
    :goto_3
    const/16 v32, 0x3c

    const/16 v1, 0x3c

    :goto_4
    int-to-float v1, v1

    iget v9, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_dp:F

    mul-float v1, v1, v9

    const/high16 v34, 0x3f000000    # 0.5f

    add-float v1, v1, v34

    float-to-int v1, v1

    const/high16 v35, 0x41200000    # 10.0f

    mul-float v9, v9, v35

    add-float v9, v9, v34

    float-to-int v9, v9

    move/from16 v36, v9

    .line 2342
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->getOrigLevelAngle()D

    move-result-wide v8

    neg-double v8, v8

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2344
    invoke-virtual {v6, v14}, Lnet/sourceforge/opencamera/MainActivity;->getDisplayRotation(Z)I

    move-result v6

    if-eq v6, v13, :cond_8

    if-eq v6, v7, :cond_7

    const/4 v13, 0x3

    if-eq v6, v13, :cond_6

    goto :goto_5

    :cond_6
    add-double v8, v8, v21

    goto :goto_5

    :cond_7
    add-double v8, v8, v19

    goto :goto_5

    :cond_8
    sub-double v8, v8, v21

    .line 2367
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    div-int/lit8 v13, v6, 0x2

    .line 2368
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    div-int/2addr v6, v7

    if-eqz v15, :cond_9

    .line 2371
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v38, v4, v17

    if-gtz v38, :cond_9

    const/4 v4, 0x1

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :goto_6
    iget v5, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_dp:F

    mul-float v5, v5, v34

    add-float v5, v5, v34

    const/high16 v7, 0x3f800000    # 1.0f

    .line 2378
    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v14, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move/from16 v39, v15

    .line 2379
    sget-object v15, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v14, -0x1000000

    const/4 v15, 0x0

    if-eqz v3, :cond_b

    .line 2381
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->hasLevelAngleStable()Z

    move-result v40

    if-eqz v40, :cond_b

    iget-object v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2385
    invoke-virtual {v11, v7, v15, v15, v14}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    if-eqz v4, :cond_a

    iget-object v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v14, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->angle_highlight_color_pref:I

    .line 2388
    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    :cond_a
    iget-object v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/4 v14, -0x1

    .line 2391
    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setColor(I)V

    :goto_7
    iget-object v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v14, 0xa0

    .line 2393
    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    sub-int v14, v13, v1

    sub-int v15, v14, v36

    int-to-float v15, v15

    move/from16 v41, v2

    int-to-float v2, v6

    move/from16 v42, v4

    sub-float v4, v2, v5

    int-to-float v14, v14

    add-float/2addr v2, v5

    .line 2394
    invoke-virtual {v11, v15, v4, v14, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    iget-object v14, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2395
    invoke-virtual {v10, v11, v5, v5, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    add-int v14, v13, v1

    int-to-float v15, v14

    add-int v14, v14, v36

    int-to-float v14, v14

    .line 2396
    invoke-virtual {v11, v15, v4, v14, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2397
    invoke-virtual {v10, v2, v5, v5, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2399
    invoke-virtual {v2}, Landroid/graphics/Paint;->clearShadowLayer()V

    goto :goto_8

    :cond_b
    move/from16 v41, v2

    move/from16 v42, v4

    .line 2402
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    double-to-float v2, v8

    int-to-float v11, v13

    int-to-float v14, v6

    .line 2403
    invoke-virtual {v10, v2, v11, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    if-eqz v3, :cond_e

    .line 2405
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->hasLevelAngleStable()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    const/4 v4, 0x0

    .line 2408
    invoke-virtual {v2, v7, v4, v4, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    if-eqz v42, :cond_c

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->angle_highlight_color_pref:I

    .line 2411
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9

    :cond_c
    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/4 v3, -0x1

    .line 2414
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_9
    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v3, 0xa0

    .line 2416
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    sub-int v3, v13, v1

    int-to-float v3, v3

    sub-float v4, v14, v5

    add-int v8, v13, v1

    int-to-float v8, v8

    add-float v9, v14, v5

    .line 2417
    invoke-virtual {v2, v3, v4, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2418
    invoke-virtual {v10, v2, v5, v5, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    sub-float v4, v11, v5

    int-to-float v1, v1

    div-float v1, v1, v23

    sub-float v9, v14, v1

    add-float v15, v11, v5

    add-float/2addr v1, v14

    .line 2421
    invoke-virtual {v2, v4, v9, v15, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2422
    invoke-virtual {v10, v1, v5, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz v42, :cond_d

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->angle_highlight_color_pref:I

    .line 2427
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v2, 0xa0

    .line 2428
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float v2, v2, v5

    sub-float v2, v14, v2

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v15, v5, v4

    sub-float v4, v14, v15

    .line 2429
    invoke-virtual {v1, v3, v2, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2430
    invoke-virtual {v10, v1, v5, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_d
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2433
    invoke-virtual {v1}, Landroid/graphics/Paint;->clearShadowLayer()V

    :cond_e
    move-wide/from16 v1, p3

    .line 2435
    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ui/DrawPreview;->updateCachedViewAngles(J)V

    if-eqz v41, :cond_f

    iget v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->view_angle_y_preview:F

    iget v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->view_angle_x_preview:F

    goto :goto_a

    :cond_f
    iget v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->view_angle_x_preview:F

    iget v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->view_angle_y_preview:F

    .line 2445
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-double v3, v3

    float-to-double v8, v1

    const-wide/high16 v41, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double v8, v8, v41

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    mul-double v8, v8, v41

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v8

    double-to-float v1, v3

    .line 2446
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-double v3, v3

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double v8, v8, v41

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    mul-double v8, v8, v41

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v8

    double-to-float v2, v3

    mul-float v1, v1, v1

    mul-float v2, v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    .line 2459
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 2460
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->getZoomRatio()F

    move-result v2

    mul-float v15, v1, v2

    const/16 v41, 0x64

    if-eqz v24, :cond_17

    iget-boolean v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_pitch_lines_pref:Z

    if-eqz v1, :cond_17

    move/from16 v9, p2

    const/16 v1, 0x5a

    if-eq v9, v1, :cond_11

    const/16 v1, 0x10e

    if-ne v9, v1, :cond_10

    goto :goto_b

    :cond_10
    const/16 v2, 0x64

    goto :goto_c

    :cond_11
    const/16 v1, 0x10e

    :goto_b
    const/16 v2, 0x50

    :goto_c
    int-to-float v2, v2

    iget v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_dp:F

    mul-float v2, v2, v3

    add-float v2, v2, v34

    float-to-int v8, v2

    .line 2465
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getAngleStep()I

    move-result v33

    const/16 v4, -0x5a

    const/16 v2, 0x5a

    const/16 v3, -0x5a

    :goto_d
    if-gt v3, v2, :cond_16

    int-to-double v1, v3

    .line 2467
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v1, v25, v1

    .line 2468
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v43

    cmpg-double v45, v43, v21

    if-gez v45, :cond_15

    .line 2469
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, v15

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move/from16 v43, v6

    const/4 v6, -0x1

    .line 2474
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2475
    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-nez v3, :cond_12

    .line 2476
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(D)D

    move-result-wide v44

    cmpg-double v2, v44, v17

    if-gez v2, :cond_12

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v6, 0xff

    .line 2477
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_e
    const/16 v6, 0xa0

    goto :goto_f

    :cond_12
    const/16 v6, 0xff

    const-wide/high16 v44, 0x4008000000000000L    # 3.0

    const/16 v2, 0x5a

    if-ne v3, v2, :cond_13

    sub-double v31, v25, v21

    .line 2479
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->abs(D)D

    move-result-wide v31

    cmpg-double v46, v31, v44

    if-gez v46, :cond_13

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2480
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_e

    :cond_13
    if-ne v3, v4, :cond_14

    add-double v46, v25, v21

    .line 2482
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->abs(D)D

    move-result-wide v46

    cmpg-double v2, v46, v44

    if-gez v2, :cond_14

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2483
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_e

    :cond_14
    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v6, 0xa0

    .line 2486
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_f
    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    const/4 v6, 0x0

    .line 2488
    invoke-virtual {v2, v7, v6, v6, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    sub-int v4, v13, v8

    int-to-float v4, v4

    add-float/2addr v1, v14

    sub-float v6, v1, v5

    move/from16 v44, v7

    add-int v7, v13, v8

    int-to-float v7, v7

    move/from16 v45, v8

    add-float v8, v1, v5

    .line 2490
    invoke-virtual {v2, v4, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2491
    invoke-virtual {v10, v2, v5, v5, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2492
    invoke-virtual {v2}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2494
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\u00b0"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    const/high16 v46, -0x1000000

    const/high16 v36, 0x40800000    # 4.0f

    mul-float v47, v5, v36

    add-float v7, v7, v47

    float-to-int v7, v7

    mul-float v47, v5, v23

    sub-float v1, v1, v47

    float-to-int v1, v1

    sget-object v47, Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;->ALIGNMENT_CENTRE:Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;

    move/from16 v42, v1

    move/from16 v48, v13

    const/16 v13, 0x10e

    move-object v1, v2

    const/16 v32, 0x5a

    move-object/from16 v2, p1

    move/from16 v49, v3

    move-object v3, v4

    const/16 v50, -0x5a

    move-object v4, v6

    move v6, v5

    move v5, v8

    move v8, v6

    move/from16 v31, v43

    const/16 v35, 0xff

    const/16 v37, -0x1

    move/from16 v6, v46

    move/from16 v51, v44

    const/16 v38, 0x2

    move/from16 v52, v8

    move/from16 v37, v45

    move/from16 v8, v42

    move v13, v9

    move/from16 v32, v14

    const/16 v14, 0x5a

    move-object/from16 v9, v47

    invoke-virtual/range {v1 .. v9}, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIIILnet/sourceforge/opencamera/MyApplicationInterface$Alignment;)I

    goto :goto_10

    :cond_15
    move/from16 v49, v3

    move/from16 v52, v5

    move/from16 v31, v6

    move/from16 v51, v7

    move/from16 v37, v8

    move/from16 v48, v13

    move/from16 v32, v14

    const/16 v14, 0x5a

    const/16 v38, 0x2

    const/16 v50, -0x5a

    move v13, v9

    :goto_10
    add-int v3, v49, v33

    move v9, v13

    move/from16 v6, v31

    move/from16 v14, v32

    move/from16 v8, v37

    move/from16 v13, v48

    move/from16 v7, v51

    move/from16 v5, v52

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    const/16 v4, -0x5a

    goto/16 :goto_d

    :cond_16
    move/from16 v52, v5

    move/from16 v31, v6

    move/from16 v51, v7

    move v13, v9

    goto :goto_11

    :cond_17
    move/from16 v13, p2

    move/from16 v52, v5

    move/from16 v31, v6

    move/from16 v51, v7

    :goto_11
    const/16 v14, 0x5a

    const/16 v38, 0x2

    if-eqz v27, :cond_1e

    if-eqz v24, :cond_1e

    iget-boolean v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_geo_direction_lines_pref:Z

    if-eqz v1, :cond_1e

    if-eq v13, v14, :cond_19

    const/16 v1, 0x10e

    if-ne v13, v1, :cond_18

    goto :goto_12

    :cond_18
    const/16 v1, 0x50

    goto :goto_13

    :cond_19
    :goto_12
    const/16 v1, 0x64

    :goto_13
    int-to-float v1, v1

    iget v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_dp:F

    mul-float v1, v1, v2

    add-float v1, v1, v34

    float-to-int v13, v1

    .line 2503
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v14, v1

    .line 2504
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getAngleStep()I

    move-result v24

    const/4 v9, 0x0

    :goto_14
    const/16 v1, 0x168

    if-ge v9, v1, :cond_1e

    int-to-float v1, v9

    sub-float/2addr v1, v14

    float-to-double v1, v1

    :goto_15
    const-wide v3, 0x4076800000000000L    # 360.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_1a

    sub-double/2addr v1, v3

    goto :goto_15

    :cond_1a
    :goto_16
    const-wide v5, -0x3f89800000000000L    # -360.0

    cmpg-double v7, v1, v5

    if-gez v7, :cond_1b

    add-double/2addr v1, v3

    goto :goto_16

    :cond_1b
    cmpl-double v5, v1, v19

    if-lez v5, :cond_1c

    sub-double/2addr v3, v1

    neg-double v1, v3

    .line 2520
    :cond_1c
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v5, v3, v21

    if-gez v5, :cond_1d

    .line 2524
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, v15

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/4 v8, -0x1

    .line 2525
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2526
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v7, 0xa0

    .line 2527
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move/from16 v6, v51

    const/4 v4, 0x0

    const/high16 v5, -0x1000000

    .line 2528
    invoke-virtual {v2, v6, v4, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    add-float/2addr v1, v11

    move/from16 v3, v52

    sub-float v4, v1, v3

    sub-int v5, v31, v13

    int-to-float v5, v5

    add-float v7, v1, v3

    add-int v8, v31, v13

    int-to-float v8, v8

    .line 2530
    invoke-virtual {v2, v4, v5, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2531
    invoke-virtual {v10, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2532
    invoke-virtual {v2}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2534
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\u00b0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    const/high16 v25, -0x1000000

    float-to-int v1, v1

    const/high16 v26, 0x40800000    # 4.0f

    mul-float v27, v3, v26

    sub-float v5, v5, v27

    float-to-int v5, v5

    sget-object v27, Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;->ALIGNMENT_BOTTOM:Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;

    move/from16 v28, v1

    move-object v1, v2

    move-object/from16 v2, p1

    move/from16 v29, v3

    move-object v3, v4

    const/16 v30, 0x0

    move-object v4, v7

    move/from16 v32, v5

    const/high16 v33, -0x1000000

    move v5, v8

    move/from16 v34, v6

    move/from16 v6, v25

    const/16 v8, 0xa0

    move/from16 v7, v28

    move/from16 v8, v32

    move/from16 v25, v9

    move-object/from16 v9, v27

    invoke-virtual/range {v1 .. v9}, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIIILnet/sourceforge/opencamera/MyApplicationInterface$Alignment;)I

    goto :goto_17

    :cond_1d
    move/from16 v25, v9

    move/from16 v34, v51

    move/from16 v29, v52

    const/high16 v26, 0x40800000    # 4.0f

    const/16 v30, 0x0

    const/high16 v33, -0x1000000

    :goto_17
    add-int v9, v25, v24

    move/from16 v52, v29

    move/from16 v51, v34

    goto/16 :goto_14

    :cond_1e
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v2, 0xff

    .line 2539
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2540
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2542
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_18

    :cond_1f
    move/from16 v39, v15

    const/16 v38, 0x2

    :goto_18
    if-eqz v16, :cond_23

    iget-boolean v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->auto_stabilise_pref:Z

    if-eqz v1, :cond_23

    .line 2545
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->hasLevelAngleStable()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v1

    if-nez v1, :cond_23

    .line 2548
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->getLevelAngle()D

    move-result-wide v7

    move-wide v1, v7

    :goto_19
    const-wide v3, -0x3fa9800000000000L    # -90.0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_20

    add-double v1, v1, v19

    goto :goto_19

    :cond_20
    :goto_1a
    cmpl-double v3, v1, v21

    if-lez v3, :cond_21

    sub-double v1, v1, v19

    goto :goto_1a

    .line 2555
    :cond_21
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v25

    .line 2557
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 2558
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-double v3, v1

    .line 2559
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    int-to-double v11, v2

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v11

    add-double v27, v5, v13

    .line 2560
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v5

    add-double v29, v3, v11

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->auto_stabilise_crop:[I

    .line 2562
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v33

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v34

    move-object/from16 v24, v3

    move/from16 v31, v1

    move/from16 v32, v2

    invoke-static/range {v24 .. v34}, Lnet/sourceforge/opencamera/ImageSaver;->autoStabiliseCrop([IDDDIIII)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->auto_stabilise_crop:[I

    const/4 v2, 0x0

    .line 2563
    aget v3, v1, v2

    const/4 v2, 0x1

    .line 2564
    aget v1, v1, v2

    .line 2565
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 2566
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 2568
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    int-to-float v5, v5

    div-float v9, v5, v23

    .line 2569
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    int-to-float v5, v5

    div-float v11, v5, v23

    .line 2570
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    int-to-float v3, v5

    div-float v12, v3, v23

    .line 2571
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v1, v3

    div-float v13, v1, v23

    .line 2573
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    neg-double v5, v7

    double-to-float v1, v5

    int-to-float v2, v2

    int-to-float v3, v4

    .line 2574
    invoke-virtual {v10, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2577
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    mul-int v1, v1, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 2578
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    div-float v2, v2, v23

    .line 2579
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    div-float v14, v3, v23

    .line 2580
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    div-float v15, v3, v23

    .line 2581
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    div-float v16, v3, v23

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2582
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/4 v3, 0x0

    .line 2583
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v3, 0xa0

    .line 2584
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v14

    move v4, v9

    move/from16 v5, v16

    .line 2585
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move v2, v12

    move v4, v15

    .line 2586
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move v2, v9

    move v4, v12

    move v5, v11

    .line 2587
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move v3, v13

    move/from16 v5, v16

    .line 2588
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    if-eqz v39, :cond_22

    .line 2590
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v3, v1, v17

    if-gtz v3, :cond_22

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->angle_highlight_color_pref:I

    .line 2591
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1b

    :cond_22
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/4 v2, -0x1

    .line 2594
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1b
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2596
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->stroke_width:F

    .line 2597
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v9

    move v3, v11

    move v4, v12

    move v5, v13

    .line 2599
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2601
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2603
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v2, 0xff

    .line 2604
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_23
    return-void
.end method

.method private drawCropGuides(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1083
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    .line 1084
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v2

    .line 1085
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->preview_size_wysiwyg_pref:Z

    if-eqz v3, :cond_e

    :cond_0
    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "preference_crop_guide"

    const-string v5, "crop_guide_none"

    .line 1086
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_e

    .line 1087
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getTargetRatio()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v2, v6, v8

    if-lez v2, :cond_e

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1089
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "crop_guide_2.35"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v7, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "crop_guide_2.33"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v7, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "crop_guide_1.85"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v7, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "crop_guide_1.78"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_4
    const-string v2, "crop_guide_1.33"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_5
    const-string v2, "crop_guide_1.25"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "crop_guide_2.4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_7
    const-string v2, "crop_guide_1.5"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_8
    const-string v2, "crop_guide_1.4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_9
    const-string v2, "crop_guide_2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_a
    const-string v2, "crop_guide_1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v7, 0x0

    :goto_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    packed-switch v7, :pswitch_data_0

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    goto :goto_1

    :pswitch_0
    const-wide v12, 0x4002ccece2ecc9c2L    # 2.3500612

    goto :goto_1

    :pswitch_1
    const-wide v12, 0x4002aaaaaa38225bL    # 2.33333333

    goto :goto_1

    :pswitch_2
    const-wide v12, 0x3ffd99999999999aL    # 1.85

    goto :goto_1

    :pswitch_3
    const-wide v12, 0x3ffc71c71d0a7cdcL    # 1.77777778

    goto :goto_1

    :pswitch_4
    const-wide v12, 0x3ff55555547044b7L    # 1.33333333

    goto :goto_1

    :pswitch_5
    const-wide/high16 v12, 0x3ff4000000000000L    # 1.25

    goto :goto_1

    :pswitch_6
    const-wide v12, 0x4003333333333333L    # 2.4

    goto :goto_1

    :pswitch_7
    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    goto :goto_1

    :pswitch_8
    const-wide v12, 0x3ff6666666666666L    # 1.4

    goto :goto_1

    :pswitch_9
    move-wide v12, v2

    goto :goto_1

    :pswitch_a
    move-wide v12, v10

    :goto_1
    cmpl-double v7, v12, v8

    if-lez v7, :cond_e

    .line 1128
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentPreviewAspectRatio()D

    move-result-wide v7

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1129
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getSystemOrientation()Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    move-result-object v1

    .line 1130
    sget-object v9, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->PORTRAIT:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne v1, v9, :cond_c

    div-double v12, v10, v12

    div-double v7, v10, v7

    :cond_c
    sub-double v9, v7, v12

    .line 1136
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v1, v9, v14

    if-lez v1, :cond_e

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1143
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1144
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v4, 0xa0

    .line 1145
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1146
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sub-int/2addr v4, v6

    cmpl-double v9, v12, v7

    if-lez v9, :cond_d

    .line 1149
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-double v7, v4

    mul-double v12, v12, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v12

    .line 1150
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/2addr v2, v5

    double-to-int v3, v7

    sub-int/2addr v2, v3

    .line 1151
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/2addr v4, v5

    add-int/2addr v4, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1153
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v10, v3

    int-to-float v11, v2

    iget-object v12, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v14, 0x0

    int-to-float v15, v4

    .line 1154
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move/from16 v16, v3

    move/from16 v17, v5

    move-object/from16 v18, v7

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 1158
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v12

    div-double/2addr v7, v2

    .line 1159
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/2addr v1, v5

    double-to-int v2, v7

    sub-int/2addr v1, v2

    .line 1160
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/2addr v3, v5

    add-int/2addr v2, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    int-to-float v10, v1

    .line 1162
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v11, v3

    iget-object v12, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v14, v2

    const/4 v15, 0x0

    .line 1163
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move/from16 v16, v3

    move/from16 v17, v5

    move-object/from16 v18, v7

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v6, v1

    move v1, v2

    const/4 v2, 0x1

    :goto_2
    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1165
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v5, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->stroke_width:F

    .line 1166
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v5, 0xeb

    const/16 v7, 0x3b

    const/16 v8, 0xff

    .line 1167
    invoke-static {v8, v5, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v10, v6

    int-to-float v11, v2

    int-to-float v12, v1

    int-to-float v13, v4

    iget-object v14, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    .line 1168
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1169
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1170
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bddb701 -> :sswitch_a
        -0x4bddb700 -> :sswitch_9
        0x34b40b05 -> :sswitch_8
        0x34b40b06 -> :sswitch_7
        0x34b40ec6 -> :sswitch_6
        0x61cd5592 -> :sswitch_5
        0x61cd55af -> :sswitch_4
        0x61cd5630 -> :sswitch_3
        0x61cd564c -> :sswitch_2
        0x61cdca0e -> :sswitch_1
        0x61cdca10 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private drawGrids(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 906
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v1

    .line 907
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->stroke_width:F

    .line 912
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->preference_grid_pref:Ljava/lang/String;

    .line 914
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "preference_grid_golden_triangle_1"

    const-string v4, "preference_grid_golden_spiral_upside_down_left"

    const-string v5, "preference_grid_golden_spiral_upside_down_right"

    const-string v6, "preference_grid_golden_spiral_left"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "preference_grid_golden_triangle_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "preference_grid_phi_3x3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    goto :goto_1

    :sswitch_3
    const-string v2, "preference_grid_golden_spiral_right"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_5
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v2, "preference_grid_4x2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_7
    const-string v2, "preference_grid_3x3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_8
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_9
    const-string v2, "preference_grid_crosshair"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_a
    const-string v2, "preference_grid_diagonals"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x0

    :goto_1
    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x40400000    # 3.0f

    const/high16 v14, 0x40000000    # 2.0f

    const/high16 v15, 0x3f800000    # 1.0f

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1054
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1055
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 1056
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v8

    .line 1057
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v4

    double-to-float v8, v8

    .line 1058
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v4, v4, v1

    double-to-float v9, v4

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->preference_grid_pref:Ljava/lang/String;

    .line 1059
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v2, 0x0

    .line 1060
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v1, v15

    const/4 v5, 0x0

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    .line 1061
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v9

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1062
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v15

    sub-float v2, v1, v8

    sub-float v3, v9, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v15

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1065
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v15

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1066
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v15

    sub-float v4, v1, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v9

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v3, v9, v15

    const/4 v4, 0x0

    .line 1067
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v15

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :pswitch_1
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 923
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 924
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v8, 0x40278d50    # 2.618f

    div-float v2, v1, v8

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v15

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 925
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v9, 0x3fcf1aa0    # 1.618f

    mul-float v1, v1, v9

    div-float v2, v1, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v9

    div-float v4, v1, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v15

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    .line 926
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v5, v1, v8

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 927
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v9

    div-float v3, v1, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v9

    div-float v5, v1, v8

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :pswitch_2
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const v2, -0x777778

    .line 930
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 931
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v8, 0x40800000    # 4.0f

    div-float v2, v1, v8

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v15

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 932
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v1, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v15

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 933
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v13

    div-float v2, v1, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v13

    div-float v4, v1, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v15

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    .line 934
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v5, v1, v14

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 935
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    iget v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_dp:F

    mul-float v2, v2, v1

    add-float/2addr v2, v12

    float-to-int v1, v2

    .line 938
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v14

    int-to-float v8, v1

    sub-float/2addr v3, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v14

    add-float v5, v1, v8

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 939
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v14

    sub-float v2, v1, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v14

    add-float v4, v1, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v5, v1, v14

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :pswitch_3
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 916
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 917
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v1, v13

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v15

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 918
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v14

    div-float v2, v1, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v14

    div-float v4, v1, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v15

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    .line 919
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v5, v1, v13

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 920
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v14

    div-float v3, v1, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v14

    div-float v5, v1, v13

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 950
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->preference_grid_pref:Ljava/lang/String;

    .line 951
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    :goto_2
    const/4 v8, -0x1

    goto :goto_3

    :sswitch_b
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    const/4 v8, 0x2

    goto :goto_3

    :sswitch_c
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_2

    :sswitch_d
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_2

    :cond_e
    const/4 v8, 0x0

    :cond_f
    :goto_3
    const/high16 v1, -0x40800000    # -1.0f

    packed-switch v8, :pswitch_data_1

    goto :goto_4

    .line 959
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v12

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v7, v3, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_4

    .line 962
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v12

    invoke-virtual {v7, v15, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_4

    .line 953
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v12

    invoke-virtual {v7, v1, v15, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :goto_4
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 965
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 966
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->stroke_width:F

    .line 967
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 971
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 972
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-double v3, v1

    const/16 v5, 0x15

    int-to-double v11, v5

    .line 973
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v11

    const/16 v6, 0x22

    int-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v11

    double-to-int v3, v3

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_5
    if-ge v9, v10, :cond_10

    .line 977
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    int-to-float v12, v4

    int-to-float v13, v8

    add-int v14, v4, v3

    int-to-float v15, v14

    add-int v10, v8, v2

    int-to-float v10, v10

    .line 978
    invoke-virtual {v11, v12, v13, v15, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v10, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    .line 979
    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v10, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    iget-object v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 980
    invoke-virtual {v7, v10, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v10, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    mul-int/lit8 v11, v3, 0x2

    add-int/2addr v4, v11

    int-to-float v4, v4

    mul-int/lit8 v11, v2, 0x2

    add-int/2addr v11, v8

    int-to-float v11, v11

    .line 981
    invoke-virtual {v10, v12, v13, v4, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    iget-object v10, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 982
    invoke-virtual {v7, v4, v10}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 983
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    sub-int/2addr v6, v5

    sub-int/2addr v1, v3

    int-to-double v3, v2

    int-to-double v10, v6

    .line 992
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v10

    move v12, v9

    move-wide/from16 v16, v10

    int-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v9

    double-to-int v3, v3

    .line 994
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    add-int v9, v14, v1

    int-to-float v9, v9

    add-int v10, v8, v3

    int-to-float v11, v10

    .line 995
    invoke-virtual {v4, v15, v13, v9, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    .line 996
    invoke-virtual {v7, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    iget-object v15, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 997
    invoke-virtual {v7, v4, v15}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    sub-int v15, v14, v1

    int-to-float v15, v15

    mul-int/lit8 v18, v3, 0x2

    add-int v8, v8, v18

    int-to-float v8, v8

    .line 998
    invoke-virtual {v4, v15, v13, v9, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 999
    invoke-virtual {v7, v4, v8}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1000
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    sub-int/2addr v5, v6

    sub-int/2addr v2, v3

    int-to-double v3, v1

    int-to-double v8, v5

    .line 1009
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    div-double v3, v3, v16

    double-to-int v3, v3

    sub-int/2addr v1, v3

    add-int/2addr v14, v1

    .line 1012
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    int-to-float v13, v14

    add-int v15, v14, v3

    int-to-float v15, v15

    move/from16 v16, v12

    add-int v12, v10, v2

    int-to-float v12, v12

    .line 1013
    invoke-virtual {v4, v13, v11, v15, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    .line 1014
    invoke-virtual {v7, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    iget-object v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1015
    invoke-virtual {v7, v4, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    sub-int v3, v14, v3

    int-to-float v3, v3

    sub-int v11, v10, v2

    int-to-float v11, v11

    .line 1016
    invoke-virtual {v4, v3, v11, v15, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1017
    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1018
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    sub-int/2addr v6, v5

    sub-int v4, v14, v1

    int-to-double v11, v2

    int-to-double v13, v6

    .line 1027
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v8

    double-to-int v3, v11

    sub-int/2addr v2, v3

    add-int/2addr v10, v2

    .line 1030
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    int-to-float v9, v4

    int-to-float v11, v10

    add-int v12, v4, v1

    int-to-float v12, v12

    add-int v15, v10, v3

    int-to-float v15, v15

    .line 1031
    invoke-virtual {v8, v9, v11, v12, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    .line 1032
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    iget-object v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1033
    invoke-virtual {v7, v8, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    sub-int v3, v10, v3

    int-to-float v3, v3

    mul-int/lit8 v11, v1, 0x2

    add-int/2addr v11, v4

    int-to-float v11, v11

    .line 1034
    invoke-virtual {v8, v9, v3, v11, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->draw_rect:Landroid/graphics/RectF;

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1035
    invoke-virtual {v7, v3, v8}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1036
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    sub-int/2addr v5, v6

    sub-int v8, v10, v2

    int-to-double v9, v1

    int-to-double v11, v5

    .line 1045
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v11

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v13

    double-to-int v3, v9

    add-int/lit8 v9, v16, 0x1

    const/4 v10, 0x2

    goto/16 :goto_5

    .line 1048
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1049
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_6

    :pswitch_8
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 942
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 943
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v1, v14

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v15

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    .line 944
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v5, v1, v14

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    :pswitch_9
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1071
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1072
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v15

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1073
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v1, v15

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v15

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1074
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    sub-int v8, v1, v2

    int-to-float v9, v8

    .line 1076
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    int-to-float v1, v1

    sub-float v4, v1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v15

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1077
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    add-int/2addr v8, v1

    int-to-float v1, v8

    sub-float v2, v1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v15

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ae84ef7 -> :sswitch_a
        -0x6efb21b3 -> :sswitch_9
        -0x59645b6c -> :sswitch_8
        -0x4b36cf67 -> :sswitch_7
        -0x4b36cba7 -> :sswitch_6
        0x122e64bf -> :sswitch_5
        0x219b9d04 -> :sswitch_4
        0x2d2f4f2f -> :sswitch_3
        0x57d0c34b -> :sswitch_2
        0x72c60fdb -> :sswitch_1
        0x72c60fdc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x59645b6c -> :sswitch_d
        0x122e64bf -> :sswitch_c
        0x219b9d04 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private drawGyroSpot(Landroid/graphics/Canvas;FFFFIZ)V
    .locals 0

    const/16 p4, 0xff

    if-eqz p7, :cond_0

    iget-object p5, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 3112
    sget-object p7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, p7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p5, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget p7, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->stroke_width:F

    .line 3113
    invoke-virtual {p5, p7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p5, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 3114
    invoke-virtual {p5, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    :cond_0
    iget-object p5, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 p7, 0x7f

    .line 3117
    invoke-virtual {p5, p7}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    int-to-float p5, p6

    iget p6, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_dp:F

    mul-float p5, p5, p6

    const/high16 p6, 0x3f000000    # 0.5f

    add-float/2addr p5, p6

    .line 3120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p6

    int-to-float p6, p6

    const/high16 p7, 0x40000000    # 2.0f

    div-float/2addr p6, p7

    add-float/2addr p6, p2

    .line 3121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p7

    add-float/2addr p2, p3

    const/4 p3, 0x0

    .line 3125
    invoke-static {p6, p3}, Ljava/lang/Math;->max(FF)F

    move-result p6

    .line 3126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p7

    int-to-float p7, p7

    invoke-static {p6, p7}, Ljava/lang/Math;->min(FF)F

    move-result p6

    .line 3127
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 3128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget-object p3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 3130
    invoke-virtual {p1, p6, p2, p5, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 3131
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 3132
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private drawHistogramChannel(Landroid/graphics/Canvas;[II)V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->path:Landroid/graphics/Path;

    .line 1747
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    .line 1748
    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x0

    .line 1749
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    int-to-double v1, v0

    .line 1750
    array-length v3, p2

    int-to-double v3, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    iget-object v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    .line 1751
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 1752
    aget v2, p2, v0

    iget-object v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int v2, v2, v3

    div-int/2addr v2, p3

    iget-object v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->path:Landroid/graphics/Path;

    iget-object v4, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    .line 1753
    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    int-to-float v1, v4

    iget-object v4, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    .line 1755
    iget p3, p3, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->path:Landroid/graphics/Path;

    .line 1756
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    iget-object p2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1759
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawUI(Landroid/graphics/Canvas;IJ)V
    .locals 48

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move/from16 v6, p2

    move-wide/from16 v4, p3

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1782
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v3

    .line 1783
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    .line 1784
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getUIRotation()I

    move-result v2

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1785
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->getUIPlacement()Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    move-result-object v1

    .line 1786
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->hasLevelAngle()Z

    move-result v9

    .line 1787
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getLevelAngle()D

    move-result-wide v10

    .line 1788
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->hasGeoDirection()Z

    move-result v12

    .line 1789
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getGeoDirection()D

    move-result-wide v21

    iget-object v13, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1790
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/MainActivity;->getSystemOrientation()Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    move-result-object v15

    .line 1791
    sget-object v13, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->PORTRAIT:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne v15, v13, :cond_0

    const/16 v23, 0x1

    goto :goto_0

    :cond_0
    const/16 v23, 0x0

    .line 1794
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v13, v2

    .line 1795
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v14

    int-to-float v14, v14

    const/high16 v18, 0x40000000    # 2.0f

    div-float v14, v14, v18

    move/from16 v24, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v18

    invoke-virtual {v7, v13, v14, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v25, 0x41200000    # 10.0f

    const-wide/16 v27, 0x0

    const-wide/16 v30, 0x3e8

    const/high16 v33, 0x41600000    # 14.0f

    const/high16 v34, 0x3f000000    # 0.5f

    if-eqz v0, :cond_33

    .line 1797
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->isPreviewPaused()Z

    move-result v35

    if-nez v35, :cond_33

    iget v13, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    mul-float v2, v2, v13

    add-float v2, v2, v34

    float-to-int v2, v2

    const/high16 v18, 0x41800000    # 16.0f

    mul-float v13, v13, v18

    add-float v13, v13, v34

    float-to-int v13, v13

    .line 1805
    sget-object v14, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_TOP:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    const-wide v36, 0x3fb999999999999aL    # 0.1

    if-ne v1, v14, :cond_2

    const/16 v14, 0xb4

    if-eqz v6, :cond_1

    if-ne v6, v14, :cond_2

    .line 1806
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    move-object/from16 v29, v15

    int-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    :goto_1
    mul-double v14, v14, v36

    double-to-int v14, v14

    sub-int/2addr v1, v14

    move v6, v1

    move-wide/from16 v36, v10

    move v7, v13

    const/16 v1, 0x10e

    const/4 v10, 0x1

    :goto_2
    const/16 v15, 0x5a

    goto/16 :goto_8

    :cond_2
    move-object/from16 v29, v15

    .line 1809
    sget-object v14, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_RIGHT:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    if-ne v1, v14, :cond_3

    const/4 v14, 0x0

    goto :goto_3

    :cond_3
    const/16 v14, 0xb4

    :goto_3
    if-ne v6, v14, :cond_4

    .line 1810
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1

    .line 1813
    :cond_4
    sget-object v14, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_RIGHT:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    if-ne v1, v14, :cond_5

    const/16 v1, 0xb4

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    if-ne v6, v1, :cond_6

    .line 1814
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const-wide/high16 v14, 0x4004000000000000L    # 2.5

    move-wide/from16 v36, v10

    int-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v14

    double-to-int v10, v10

    sub-int/2addr v1, v10

    move v6, v1

    move v7, v13

    const/16 v1, 0x10e

    :goto_5
    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    move-wide/from16 v36, v10

    const/16 v1, 0x5a

    if-eq v6, v1, :cond_8

    const/16 v1, 0x10e

    if-ne v6, v1, :cond_7

    goto :goto_6

    :cond_7
    move v7, v13

    const/4 v6, 0x0

    goto :goto_5

    :cond_8
    const/16 v1, 0x10e

    :goto_6
    iget-wide v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_take_photo_top_time:J

    cmp-long v14, v10, v27

    if-eqz v14, :cond_9

    add-long v10, v10, v30

    cmp-long v14, v4, v10

    if-lez v14, :cond_a

    :cond_9
    iget-object v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v11, 0x7f0900e5

    .line 1824
    invoke-virtual {v10, v11}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1826
    invoke-direct {v8, v10}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getViewOnScreenX(Landroid/view/View;)I

    move-result v10

    .line 1827
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getView()Landroid/view/View;

    move-result-object v11

    iget-object v14, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->gui_location:[I

    invoke-virtual {v11, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v11, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->gui_location:[I

    .line 1828
    aget v11, v11, v23

    sub-int/2addr v10, v11

    iput v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->take_photo_top:I

    iput-wide v4, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_take_photo_top_time:J

    :cond_a
    if-eqz v23, :cond_b

    .line 1841
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    goto :goto_7

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    .line 1842
    :goto_7
    div-int/lit8 v11, v10, 0x2

    iget v14, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->take_photo_top:I

    sub-int/2addr v14, v11

    const/16 v15, 0x5a

    if-ne v6, v15, :cond_c

    const-wide/high16 v38, 0x4004000000000000L    # 2.5

    int-to-double v6, v2

    .line 1864
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v38

    double-to-int v6, v6

    sub-int/2addr v10, v6

    :cond_c
    add-int v6, v11, v14

    if-le v6, v10, :cond_d

    sub-int v14, v10, v11

    .line 1876
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v14

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    move v7, v13

    int-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v10

    double-to-int v10, v13

    sub-int/2addr v6, v10

    const/4 v10, 0x0

    :goto_8
    if-eqz v10, :cond_f

    iget-object v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v11, 0x7f090079

    .line 1881
    invoke-virtual {v10, v11}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1882
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_e

    .line 1883
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int/2addr v6, v10

    :cond_e
    iget-object v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v11, 0x7f090077

    .line 1885
    invoke-virtual {v10, v11}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1886
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_f

    .line 1887
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int/2addr v6, v10

    :cond_f
    move/from16 v32, v6

    if-eqz v9, :cond_10

    iget-boolean v6, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_angle_pref:Z

    if-eqz v6, :cond_10

    const/4 v6, 0x1

    goto :goto_9

    :cond_10
    const/4 v6, 0x0

    :goto_9
    if-eqz v12, :cond_11

    iget-boolean v9, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_geo_direction_pref:Z

    if-eqz v9, :cond_11

    const/16 v38, 0x1

    goto :goto_a

    :cond_11
    const/16 v38, 0x0

    :goto_a
    const-wide/16 v39, 0x1f4

    if-eqz v6, :cond_1a

    iget-object v9, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    mul-float v10, v10, v33

    add-float v10, v10, v34

    .line 1899
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz v38, :cond_12

    const/high16 v9, 0x420c0000    # 35.0f

    iget v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    mul-float v10, v10, v9

    add-float v10, v10, v34

    float-to-int v9, v10

    neg-int v9, v9

    iget-object v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1903
    sget-object v11, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_c

    :cond_12
    const-wide/16 v9, 0x0

    cmpg-double v11, v36, v9

    if-gez v11, :cond_13

    const/16 v9, 0x10

    goto :goto_b

    :cond_13
    const/16 v9, 0xe

    :goto_b
    int-to-float v9, v9

    iget v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    mul-float v9, v9, v10

    add-float v9, v9, v34

    float-to-int v9, v9

    neg-int v9, v9

    iget-object v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1909
    sget-object v11, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1911
    :goto_c
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v10, v12

    if-gtz v14, :cond_14

    iget v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->angle_highlight_color_pref:I

    iget-object v11, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/4 v14, 0x1

    .line 1913
    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    move v13, v10

    goto :goto_d

    :cond_14
    const/4 v14, 0x1

    const/4 v13, -0x1

    :goto_d
    iget-object v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->angle_string:Ljava/lang/String;

    if-eqz v10, :cond_15

    iget-wide v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_angle_string_time:J

    add-long v10, v10, v39

    cmp-long v12, v4, v10

    if-lez v12, :cond_16

    :cond_15
    iput-wide v4, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_angle_string_time:J

    .line 1920
    invoke-static/range {v36 .. v37}, Lnet/sourceforge/opencamera/ui/DrawPreview;->formatLevelAngle(D)Ljava/lang/String;

    move-result-object v10

    .line 1922
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0xb0

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->angle_string:Ljava/lang/String;

    move-wide/from16 v10, v36

    iput-wide v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->cached_angle:D

    :cond_16
    iget-object v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->text_bounds_angle_single:Landroid/graphics/Rect;

    if-nez v10, :cond_17

    .line 1930
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->text_bounds_angle_single:Landroid/graphics/Rect;

    iget-object v11, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/4 v12, 0x5

    const-string v1, "-9.0\u00b0"

    const/4 v14, 0x0

    .line 1932
    invoke-virtual {v11, v1, v14, v12, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_e

    :cond_17
    const/4 v14, 0x0

    :goto_e
    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->text_bounds_angle_double:Landroid/graphics/Rect;

    if-nez v1, :cond_18

    .line 1937
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->text_bounds_angle_double:Landroid/graphics/Rect;

    iget-object v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/4 v11, 0x6

    const-string v12, "-45.0\u00b0"

    .line 1939
    invoke-virtual {v10, v12, v14, v11, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    :cond_18
    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iget-object v11, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget-object v12, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->angle_string:Ljava/lang/String;

    const/high16 v17, -0x1000000

    .line 1941
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int v36, v10, v9

    sget-object v37, Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;->ALIGNMENT_BOTTOM:Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;

    const/16 v41, 0x0

    sget-object v42, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_OUTLINE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    iget-wide v9, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->cached_angle:D

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide/high16 v43, 0x4024000000000000L    # 10.0

    cmpg-double v45, v9, v43

    if-gez v45, :cond_19

    iget-object v9, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->text_bounds_angle_single:Landroid/graphics/Rect;

    goto :goto_f

    :cond_19
    iget-object v9, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->text_bounds_angle_double:Landroid/graphics/Rect;

    :goto_f
    move-object/from16 v43, v9

    move-object v9, v1

    move-object/from16 v10, p1

    move/from16 v35, v7

    const/16 v7, 0x36

    move/from16 v26, v2

    const/4 v1, 0x0

    const/16 v2, 0xf4

    const/16 v15, 0x43

    move/from16 v14, v17

    move-object/from16 v46, v29

    move/from16 v15, v36

    move/from16 v16, v32

    move-object/from16 v17, v37

    move-object/from16 v18, v41

    move-object/from16 v19, v42

    move-object/from16 v20, v43

    invoke-virtual/range {v9 .. v20}, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIIILnet/sourceforge/opencamera/MyApplicationInterface$Alignment;Ljava/lang/String;Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;Landroid/graphics/Rect;)I

    iget-object v9, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1942
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    goto :goto_10

    :cond_1a
    move/from16 v26, v2

    move/from16 v35, v7

    move-object/from16 v46, v29

    const/4 v1, 0x0

    const/16 v2, 0xf4

    const/16 v7, 0x36

    :goto_10
    const/4 v15, 0x0

    if-eqz v38, :cond_1d

    const/4 v13, -0x1

    iget-object v9, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    mul-float v10, v10, v33

    add-float v10, v10, v34

    .line 1946
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz v6, :cond_1b

    iget v6, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    mul-float v6, v6, v25

    add-float v6, v6, v34

    float-to-int v6, v6

    iget-object v9, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1950
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_11

    :cond_1b
    iget v6, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    mul-float v6, v6, v33

    add-float v6, v6, v34

    float-to-int v6, v6

    neg-int v6, v6

    iget-object v9, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1956
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1958
    :goto_11
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    double-to-float v9, v9

    cmpg-float v10, v9, v15

    if-gez v10, :cond_1c

    const/high16 v10, 0x43b40000    # 360.0f

    add-float/2addr v9, v10

    .line 1962
    :cond_1c
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0xb0

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v9, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iget-object v11, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/high16 v14, -0x1000000

    .line 1963
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v6, v10

    sget-object v17, Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;->ALIGNMENT_BOTTOM:Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;

    iget-object v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->ybounds_text:Ljava/lang/String;

    sget-object v19, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_OUTLINE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    move-object/from16 v18, v10

    move-object/from16 v10, p1

    move v15, v6

    move/from16 v16, v32

    invoke-virtual/range {v9 .. v19}, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIIILnet/sourceforge/opencamera/MyApplicationInterface$Alignment;Ljava/lang/String;Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;)I

    .line 1965
    :cond_1d
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->isOnTimer()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 1966
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/preview/Preview;->getTimerEndTime()J

    move-result-wide v0

    sub-long/2addr v0, v4

    const-wide/16 v9, 0x3e7

    add-long/2addr v0, v9

    div-long v0, v0, v30

    cmp-long v6, v0, v27

    if-lez v6, :cond_1f

    iget-object v6, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/high16 v9, 0x42280000    # 42.0f

    iget v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    mul-float v10, v10, v9

    add-float v10, v10, v34

    .line 1970
    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v6, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1971
    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-wide/16 v9, 0x3c

    cmp-long v6, v0, v9

    if-gez v6, :cond_1e

    .line 1975
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 1978
    :cond_1e
    invoke-direct {v8, v0, v1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getTimeStringFromSeconds(J)Ljava/lang/String;

    move-result-object v0

    :goto_12
    move-object v6, v0

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iget-object v9, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v15, 0x43

    .line 1980
    invoke-static {v2, v15, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    const/high16 v11, -0x1000000

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v12, v1, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v13, v1, 0x2

    const/16 v14, 0x10e

    move-object/from16 v1, p1

    move/from16 v47, v24

    const/16 v14, 0xf4

    move-object v2, v9

    move-object v9, v3

    move-object v3, v6

    move-wide v5, v4

    move v4, v10

    move v5, v11

    move/from16 v11, p2

    move v6, v12

    move-object/from16 v12, p1

    const/16 v10, 0x36

    move v7, v13

    invoke-virtual/range {v0 .. v7}, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIII)I

    goto :goto_13

    :cond_1f
    move-object/from16 v12, p1

    move/from16 v11, p2

    move-object v9, v3

    move/from16 v47, v24

    const/16 v10, 0x36

    const/16 v14, 0xf4

    const/16 v15, 0x43

    :goto_13
    move-wide/from16 v13, p3

    :cond_20
    const/4 v10, -0x1

    const/high16 v15, 0x3f800000    # 1.0f

    :cond_21
    :goto_14
    const/16 v16, 0x36

    const/16 v18, 0xf4

    const/16 v19, 0x43

    goto/16 :goto_1a

    :cond_22
    move-object/from16 v12, p1

    move/from16 v11, p2

    move-object v9, v3

    move/from16 v47, v24

    const/16 v10, 0x36

    const/16 v14, 0xf4

    const/16 v15, 0x43

    .line 1983
    invoke-virtual {v9}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecording()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1984
    invoke-virtual {v9, v1}, Lnet/sourceforge/opencamera/preview/Preview;->getVideoTime(Z)J

    move-result-wide v0

    .line 1985
    div-long v0, v0, v30

    invoke-direct {v8, v0, v1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getTimeStringFromSeconds(J)Ljava/lang/String;

    move-result-object v13

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    mul-float v1, v1, v33

    add-float v1, v1, v34

    .line 1988
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1989
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    mul-int/lit8 v16, v35, 0x2

    .line 1991
    invoke-static {v14, v15, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v17

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1992
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->isScreenLocked()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iget-object v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1994
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100344

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v5, -0x1000000

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v6, v1, 0x2

    sub-int v7, v32, v16

    move-object/from16 v1, p1

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v7}, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIII)I

    add-int v16, v16, v35

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iget-object v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1996
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100343

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v6, v1, 0x2

    sub-int v7, v32, v16

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIII)I

    add-int v16, v16, v35

    .line 1999
    :cond_23
    invoke-virtual {v9}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecordingPaused()Z

    move-result v0

    move-wide/from16 v6, p3

    if-eqz v0, :cond_25

    div-long v0, v6, v39

    long-to-int v1, v0

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_24

    goto :goto_15

    :cond_24
    move-wide v13, v6

    goto :goto_16

    :cond_25
    :goto_15
    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iget-object v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/high16 v5, -0x1000000

    .line 2000
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v18, v1, 0x2

    sub-int v19, v32, v16

    move-object/from16 v1, p1

    move-object v3, v13

    move/from16 v4, v17

    move-wide v13, v6

    move/from16 v6, v18

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIII)I

    add-int v16, v16, v35

    :goto_16
    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_video_max_amp_pref:Z

    if-eqz v0, :cond_20

    .line 2003
    invoke-virtual {v9}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecordingPaused()Z

    move-result v0

    if-nez v0, :cond_20

    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->has_video_max_amp:Z

    if-eqz v0, :cond_27

    iget-wide v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_video_max_amp_time:J

    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    cmp-long v2, v13, v0

    if-lez v2, :cond_26

    goto :goto_17

    :cond_26
    const/4 v7, 0x1

    goto :goto_18

    :cond_27
    :goto_17
    const/4 v7, 0x1

    iput-boolean v7, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->has_video_max_amp:Z

    iget v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->video_max_amp_prev2:I

    iget v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->video_max_amp:I

    iput v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->video_max_amp_prev2:I

    .line 2009
    invoke-virtual {v9}, Lnet/sourceforge/opencamera/preview/Preview;->getMaxAmplitude()I

    move-result v1

    iput v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->video_max_amp:I

    iput-wide v13, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_video_max_amp_time:J

    iget v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->video_max_amp_prev2:I

    if-le v2, v0, :cond_28

    if-le v2, v1, :cond_28

    iput v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->video_max_amp_peak:I

    :cond_28
    :goto_18
    iget v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->video_max_amp:I

    int-to-float v0, v0

    const v1, 0x46fffe00    # 32767.0f

    div-float/2addr v0, v1

    const/4 v6, 0x0

    .line 2026
    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 2027
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v18

    add-int v16, v16, v35

    iget v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_dp:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float v1, v1, v0

    add-float v1, v1, v34

    float-to-int v4, v1

    mul-float v0, v0, v25

    add-float v0, v0, v34

    float-to-int v0, v0

    .line 2033
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    iget-object v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/4 v3, -0x1

    .line 2034
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2035
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v3, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->stroke_width:F

    .line 2036
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v3, v1

    sub-int v2, v32, v16

    int-to-float v10, v2

    add-int/2addr v1, v4

    int-to-float v1, v1

    add-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v20, v1

    move v1, v3

    move/from16 v21, v2

    move v2, v10

    move/from16 v22, v3

    const/4 v15, -0x1

    move/from16 v3, v20

    move v7, v4

    move/from16 v4, v21

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v5, v19

    .line 2037
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2038
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v7, v7

    mul-float v0, v18, v7

    add-float v19, v22, v0

    iget-object v5, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v3, v19

    .line 2039
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    cmpg-float v0, v18, v15

    if-gez v0, :cond_29

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    .line 2041
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v1, 0x40

    .line 2042
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    add-float v1, v19, v15

    iget-object v5, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v2, v10

    move/from16 v3, v20

    move/from16 v4, v21

    .line 2043
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v1, 0xff

    .line 2044
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_29
    iget v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->video_max_amp_peak:I

    iget v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->video_max_amp:I

    if-le v0, v1, :cond_2a

    int-to-float v0, v0

    const v1, 0x46fffe00    # 32767.0f

    div-float/2addr v0, v1

    .line 2048
    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2049
    invoke-static {v0, v15}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v2, -0x100

    .line 2050
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2051
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->stroke_width:F

    .line 2052
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    mul-float v0, v0, v7

    add-float v3, v22, v0

    iget-object v5, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v3

    move v2, v10

    move/from16 v4, v21

    .line 2053
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/4 v10, -0x1

    .line 2054
    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_14

    :cond_2a
    const/4 v10, -0x1

    goto/16 :goto_14

    :cond_2b
    move-wide/from16 v13, p3

    const/4 v10, -0x1

    const/high16 v15, 0x3f800000    # 1.0f

    iget-boolean v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->taking_picture:Z

    if-eqz v1, :cond_2f

    iget-boolean v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->capture_started:Z

    if-eqz v1, :cond_2f

    .line 2059
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->isCapturingBurst()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2060
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getNBurstTaken()I

    move-result v1

    const/4 v7, 0x1

    add-int/2addr v1, v7

    .line 2061
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getBurstTotal()I

    move-result v0

    iget-object v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v3, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    mul-float v3, v3, v33

    add-float v3, v3, v34

    .line 2062
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2063
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    mul-int/lit8 v2, v35, 0x2

    if-nez v11, :cond_2c

    iget-object v3, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2065
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v3

    sget-object v4, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FocusBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v3, v4, :cond_2c

    mul-int/lit8 v2, v26, 0x5

    .line 2069
    :cond_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-lez v0, :cond_2d

    .line 2071
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_19

    :cond_2d
    move-object v3, v1

    :goto_19
    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iget-object v4, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/4 v5, -0x1

    const/high16 v6, -0x1000000

    .line 2073
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v18, v1, 0x2

    sub-int v19, v32, v2

    move-object/from16 v1, p1

    move-object v2, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v18

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIII)I

    goto/16 :goto_14

    .line 2075
    :cond_2e
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->isManualISO()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2077
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getExposureTime()J

    move-result-wide v0

    const-wide/32 v2, 0x1dcd6500

    cmp-long v4, v0, v2

    if-ltz v4, :cond_21

    .line 2079
    div-long v0, v13, v39

    long-to-int v1, v0

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_21

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    mul-float v1, v1, v33

    add-float v1, v1, v34

    .line 2080
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2081
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    mul-int/lit8 v0, v35, 0x2

    const/16 v5, 0xf4

    const/16 v6, 0x43

    const/16 v7, 0x36

    .line 2083
    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iget-object v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2084
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f100047

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v5, -0x1000000

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    sub-int v17, v32, v0

    move-object v0, v1

    move-object/from16 v1, p1

    const/16 v18, 0xf4

    const/16 v19, 0x43

    move/from16 v6, v16

    const/16 v16, 0x36

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIII)I

    goto/16 :goto_1a

    :cond_2f
    const/16 v16, 0x36

    const/16 v18, 0xf4

    const/16 v19, 0x43

    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->image_queue_full:Z

    if-eqz v0, :cond_30

    .line 2090
    div-long v0, v13, v39

    long-to-int v1, v0

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_30

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    mul-float v1, v1, v33

    add-float v1, v1, v34

    .line 2091
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2092
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    mul-int/lit8 v0, v35, 0x2

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 2094
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getImageSaver()Lnet/sourceforge/opencamera/ImageSaver;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/ImageSaver;->getNRealImagesToSave()I

    move-result v1

    .line 2095
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100321

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100324

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iget-object v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const v4, -0x333334

    const/high16 v5, -0x1000000

    .line 2096
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v32, v0

    move-object v0, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIII)I

    .line 2100
    :cond_30
    :goto_1a
    invoke-virtual {v9}, Lnet/sourceforge/opencamera/preview/Preview;->supportsZoom()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_zoom_pref:Z

    if-eqz v0, :cond_32

    .line 2101
    invoke-virtual {v9}, Lnet/sourceforge/opencamera/preview/Preview;->getZoomRatio()F

    move-result v0

    const v1, 0x3f7fff58    # 0.99999f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_31

    const v1, 0x3f800054    # 1.00001f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_32

    :cond_31
    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    mul-float v2, v2, v33

    add-float v2, v2, v34

    .line 2105
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2106
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iget-object v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100382

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    const/high16 v4, -0x1000000

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v6, v32, v35

    sget-object v17, Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;->ALIGNMENT_BOTTOM:Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;

    iget-object v7, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->ybounds_text:Ljava/lang/String;

    sget-object v20, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_OUTLINE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    move-object/from16 v21, v9

    move-object v9, v1

    const/16 v1, 0x36

    const/16 v16, -0x1

    move-object/from16 v10, p1

    move-object v11, v2

    move-object v2, v12

    move-object v12, v0

    move v13, v3

    const/16 v0, 0xf4

    const/16 v3, 0x10e

    move v14, v4

    const/4 v1, -0x1

    const/16 v4, 0x43

    const/high16 v22, 0x3f800000    # 1.0f

    move v15, v5

    move/from16 v16, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v20

    invoke-virtual/range {v9 .. v19}, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIIILnet/sourceforge/opencamera/MyApplicationInterface$Alignment;Ljava/lang/String;Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;)I

    goto :goto_1b

    :cond_32
    move-object/from16 v21, v9

    move-object v2, v12

    const/16 v0, 0xf4

    const/4 v1, -0x1

    const/16 v3, 0x10e

    const/16 v4, 0x43

    const/high16 v22, 0x3f800000    # 1.0f

    :goto_1b
    move-object v9, v2

    const/16 v5, 0x36

    const/16 v6, 0xf4

    goto/16 :goto_1d

    :cond_33
    move-object/from16 v21, v3

    move-object v9, v7

    move-object/from16 v46, v15

    move/from16 v47, v24

    const/4 v1, -0x1

    const/16 v3, 0x10e

    const/16 v4, 0x43

    const/16 v5, 0x36

    const/16 v6, 0xf4

    const/4 v7, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    if-nez v0, :cond_35

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2117
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    mul-float v10, v10, v33

    add-float v10, v10, v34

    .line 2118
    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2119
    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    mul-float v0, v0, v2

    add-float v0, v0, v34

    float-to-int v0, v0

    .line 2121
    invoke-virtual/range {v21 .. v21}, Lnet/sourceforge/opencamera/preview/Preview;->hasPermissions()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2122
    invoke-virtual/range {v21 .. v21}, Lnet/sourceforge/opencamera/preview/Preview;->openCameraFailed()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2123
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v10, 0x7f10008e

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v18

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v11, v18

    iget-object v12, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2124
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v10, 0x7f10008f

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v18

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v11, v18

    int-to-float v12, v0

    add-float/2addr v11, v12

    iget-object v12, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2125
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v10, 0x7f100090

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v18

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v11, v18

    mul-int/lit8 v12, v0, 0x2

    int-to-float v12, v12

    add-float/2addr v11, v12

    iget-object v12, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f100040

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    invoke-virtual {v10}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getCameraIdPref()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v18

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v11, v18

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    add-float/2addr v11, v0

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v10, v11, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1c

    .line 2131
    :cond_34
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1000c7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v18

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v18

    iget-object v11, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v2, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_35
    :goto_1c
    const/16 v32, 0x0

    :goto_1d
    iget v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_dp:F

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float v7, v0, v2

    add-float v7, v7, v34

    float-to-int v7, v7

    mul-float v0, v0, v2

    add-float v0, v0, v34

    float-to-int v0, v0

    iget-object v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2140
    invoke-virtual {v10}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v10

    invoke-virtual {v10}, Lnet/sourceforge/opencamera/ui/MainUI;->getTopIcon()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_3e

    iget-wide v11, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_top_icon_shift_time:J

    cmp-long v13, v11, v27

    if-eqz v13, :cond_37

    add-long v11, v11, v30

    move-wide/from16 v13, p3

    cmp-long v15, v13, v11

    if-lez v15, :cond_36

    goto :goto_1e

    :cond_36
    move-object/from16 v15, v46

    goto :goto_21

    :cond_37
    move-wide/from16 v13, p3

    .line 2146
    :goto_1e
    invoke-direct {v8, v10}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getViewOnScreenX(Landroid/view/View;)I

    move-result v11

    .line 2147
    sget-object v12, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    move-object/from16 v15, v46

    if-ne v15, v12, :cond_38

    .line 2148
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    :goto_1f
    add-int/2addr v11, v10

    goto :goto_20

    .line 2149
    :cond_38
    sget-object v12, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->PORTRAIT:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne v15, v12, :cond_39

    .line 2150
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    goto :goto_1f

    .line 2152
    :cond_39
    :goto_20
    invoke-virtual/range {v21 .. v21}, Lnet/sourceforge/opencamera/preview/Preview;->getView()Landroid/view/View;

    move-result-object v10

    iget-object v12, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->gui_location:[I

    invoke-virtual {v10, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->gui_location:[I

    .line 2153
    aget v10, v10, v23

    .line 2154
    sget-object v12, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->REVERSE_LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne v15, v12, :cond_3a

    .line 2155
    invoke-virtual/range {v21 .. v21}, Lnet/sourceforge/opencamera/preview/Preview;->getView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v10, v12

    :cond_3a
    sub-int/2addr v11, v10

    iput v11, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->top_icon_shift:I

    .line 2157
    sget-object v10, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->REVERSE_LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne v15, v10, :cond_3b

    iget v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->top_icon_shift:I

    neg-int v10, v10

    iput v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->top_icon_shift:I

    :cond_3b
    iput-wide v13, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_top_icon_shift_time:J

    :goto_21
    iget v10, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->top_icon_shift:I

    move/from16 v11, p2

    const/16 v12, 0x5a

    if-lez v10, :cond_3f

    if-eq v11, v12, :cond_3d

    if-ne v11, v3, :cond_3c

    goto :goto_22

    :cond_3c
    add-int/2addr v7, v10

    goto :goto_23

    :cond_3d
    :goto_22
    add-int/2addr v0, v10

    goto :goto_23

    :cond_3e
    move/from16 v11, p2

    move-wide/from16 v13, p3

    move-object/from16 v15, v46

    const/16 v12, 0x5a

    :cond_3f
    :goto_23
    move v10, v7

    move v7, v0

    const/16 v0, 0x87

    int-to-float v0, v0

    iget v4, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_dp:F

    mul-float v0, v0, v4

    add-float v0, v0, v34

    float-to-int v0, v0

    iget v4, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->top_icon_shift:I

    if-lez v4, :cond_40

    add-int/2addr v0, v4

    :cond_40
    iget v4, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->focus_seekbars_margin_left:I

    if-eq v4, v1, :cond_41

    if-eq v0, v4, :cond_47

    :cond_41
    iput v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->focus_seekbars_margin_left:I

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v4, 0x7f090079

    .line 2202
    invoke-virtual {v0, v4}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2203
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2204
    invoke-virtual/range {v21 .. v21}, Lnet/sourceforge/opencamera/preview/Preview;->getView()Landroid/view/View;

    move-result-object v5

    iget-object v6, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->gui_location:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v5, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->gui_location:[I

    .line 2205
    aget v5, v5, v23

    .line 2206
    sget-object v6, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->REVERSE_LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne v15, v6, :cond_42

    .line 2207
    invoke-virtual/range {v21 .. v21}, Lnet/sourceforge/opencamera/preview/Preview;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    :cond_42
    iget-object v6, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->gui_location:[I

    .line 2209
    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v6, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->gui_location:[I

    .line 2210
    aget v6, v6, v23

    .line 2211
    sget-object v1, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-eq v15, v1, :cond_44

    sget-object v1, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->PORTRAIT:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne v15, v1, :cond_43

    goto :goto_24

    .line 2217
    :cond_43
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v6, v1

    goto :goto_25

    .line 2213
    :cond_44
    :goto_24
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v6, v1

    :goto_25
    const/high16 v1, 0x43160000    # 150.0f

    iget v3, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_dp:F

    mul-float v3, v3, v1

    add-float v3, v3, v34

    float-to-int v1, v3

    .line 2222
    sget-object v3, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-eq v15, v3, :cond_46

    sget-object v3, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->PORTRAIT:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne v15, v3, :cond_45

    goto :goto_26

    :cond_45
    iget v3, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->focus_seekbars_margin_left:I

    sub-int/2addr v5, v3

    sub-int/2addr v5, v6

    goto :goto_27

    :cond_46
    :goto_26
    iget v3, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->focus_seekbars_margin_left:I

    add-int/2addr v5, v3

    sub-int v5, v6, v5

    .line 2229
    :goto_27
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2235
    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2236
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const v3, 0x7f090077

    .line 2238
    invoke-virtual {v0, v3}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2239
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2240
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2241
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2244
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->setFocusSeekbarsRotation()V

    :cond_47
    iget v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_dp:F

    mul-float v1, v0, v2

    add-float v1, v1, v34

    float-to-int v1, v1

    add-int/2addr v1, v7

    mul-float v0, v0, v2

    add-float v0, v0, v34

    float-to-int v0, v0

    mul-int/lit8 v2, v0, 0x4

    move/from16 v3, v47

    if-eq v3, v12, :cond_49

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_48

    goto :goto_28

    :cond_48
    move v4, v10

    goto :goto_29

    .line 2254
    :cond_49
    :goto_28
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2255
    div-int/lit8 v3, v3, 0x2

    add-int v4, v10, v3

    sub-int/2addr v1, v3

    :goto_29
    if-ne v11, v12, :cond_4a

    .line 2259
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int v1, v3, v2

    :cond_4a
    const/16 v3, 0xb4

    if-ne v11, v3, :cond_4b

    .line 2262
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sub-int/2addr v3, v4

    sub-int v4, v3, v0

    :cond_4b
    iget-boolean v3, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_battery_pref:Z

    if-eqz v3, :cond_51

    iget-boolean v3, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->has_battery_frac:Z

    if-eqz v3, :cond_4c

    iget-wide v5, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_battery_time:J

    const-wide/32 v15, 0xea60

    add-long/2addr v5, v15

    cmp-long v3, v13, v5

    if-lez v3, :cond_4d

    :cond_4c
    iget-object v3, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v5, 0x0

    iget-object v6, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->battery_ifilter:Landroid/content/IntentFilter;

    .line 2268
    invoke-virtual {v3, v5, v6}, Lnet/sourceforge/opencamera/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    const-string v5, "level"

    const/4 v6, -0x1

    .line 2269
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v12, "scale"

    .line 2270
    invoke-virtual {v3, v12, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x1

    iput-boolean v6, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->has_battery_frac:Z

    int-to-float v5, v5

    int-to-float v3, v3

    div-float/2addr v5, v3

    iput v5, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->battery_frac:F

    iput-wide v13, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_battery_time:J

    :cond_4d
    iget v3, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->battery_frac:F

    const v5, 0x3d4ccccd    # 0.05f

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_4e

    .line 2281
    div-long v5, v13, v30

    const-wide/16 v15, 0x2

    rem-long/2addr v5, v15

    cmp-long v12, v5, v27

    if-nez v12, :cond_50

    :cond_4e
    iget-object v5, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const v6, 0x3e19999a    # 0.15f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4f

    const/16 v3, 0x9b

    const/16 v6, 0x24

    const/16 v12, 0x25

    .line 2284
    invoke-static {v12, v3, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    goto :goto_2a

    :cond_4f
    const/16 v3, 0x36

    const/16 v6, 0x43

    const/16 v12, 0xf4

    invoke-static {v12, v6, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    :goto_2a
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2285
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v6, v4

    int-to-float v12, v1

    iget v3, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->battery_frac:F

    sub-float v3, v22, v3

    add-int/lit8 v5, v2, -0x2

    int-to-float v15, v5

    mul-float v3, v3, v15

    add-float/2addr v3, v12

    add-int/2addr v4, v0

    int-to-float v5, v4

    add-int/2addr v1, v2

    int-to-float v4, v1

    iget-object v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v16, v2

    move v2, v3

    move v3, v5

    move/from16 v17, v5

    move-object/from16 v5, v16

    .line 2286
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->battery_frac:F

    cmpg-float v0, v0, v22

    if-gez v0, :cond_50

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    .line 2288
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v1, 0x40

    .line 2289
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->battery_frac:F

    sub-float v0, v22, v0

    mul-float v0, v0, v15

    add-float v4, v12, v0

    iget-object v5, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v6

    move v2, v12

    move/from16 v3, v17

    .line 2290
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v1, 0xff

    .line 2291
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_50
    iget v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_dp:F

    mul-float v0, v0, v25

    add-float v0, v0, v34

    float-to-int v0, v0

    add-int/2addr v10, v0

    :cond_51
    move v2, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v7

    move/from16 v4, v32

    move/from16 v5, p2

    move-wide/from16 v6, p3

    .line 2297
    invoke-direct/range {v0 .. v7}, Lnet/sourceforge/opencamera/ui/DrawPreview;->onDrawInfoLines(Landroid/graphics/Canvas;IIIIJ)V

    .line 2299
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static formatLevelAngle(D)Ljava/lang/String;
    .locals 4

    sget-object v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->decimalFormat:Ljava/text/DecimalFormat;

    .line 1769
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 1770
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v1, 0x3fb999999999999aL    # 0.1

    cmpg-double v3, p0, v1

    if-gez v3, :cond_0

    const-string p0, "^-(?=0(.0*)?$)"

    const-string p1, ""

    .line 1773
    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getAngleStep()I
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2303
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    .line 2305
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getZoomRatio()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    :goto_0
    return v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    return-object v0
.end method

.method private getTimeStringFromSeconds(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x3c

    .line 897
    rem-long v2, p1, v0

    long-to-int v3, v2

    .line 898
    div-long/2addr p1, v0

    .line 899
    rem-long v4, p1, v0

    long-to-int v2, v4

    .line 900
    div-long/2addr p1, v0

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v2, "%02d"

    invoke-static {p2, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v5

    invoke-static {p1, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getViewOnScreenX(Landroid/view/View;)I
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->gui_location:[I

    .line 502
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 504
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getSystemOrientation()Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    move-result-object v0

    .line 505
    sget-object v1, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->PORTRAIT:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->gui_location:[I

    .line 506
    aget v1, v1, v0

    .line 507
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 509
    rem-int/lit16 v2, v2, 0x168

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    const/16 v3, 0xb4

    if-eqz v0, :cond_2

    if-eq v2, v3, :cond_1

    const/16 v0, 0x10e

    if-ne v2, v0, :cond_4

    .line 515
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_1

    :cond_2
    const/16 v0, 0x5a

    if-eq v2, v0, :cond_3

    if-ne v2, v3, :cond_4

    .line 520
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    :goto_1
    sub-int/2addr v1, p1

    :cond_4
    return v1
.end method

.method private loadBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "DrawPreview"

    .line 832
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 833
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 834
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    .line 835
    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 837
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 839
    :cond_0
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v3, v5, :cond_1

    .line 841
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 843
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 844
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 845
    invoke-virtual {v3, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 846
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-double v5, v1

    int-to-double v1, v2

    .line 848
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v1

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 849
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    .line 863
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x0

    .line 864
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 865
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 866
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 867
    invoke-static {v2, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v2, :cond_2

    .line 869
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 891
    invoke-virtual {v0, v1, p1}, Lnet/sourceforge/opencamera/MainActivity;->rotateForExif(Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "MediaStore.Images.Media.getBitmap returned null"

    .line 885
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :catch_0
    move-exception p1

    const-string v1, "MediaStore.Images.Media.getBitmap exception"

    .line 879
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 881
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method private onDrawInfoLines(Landroid/graphics/Canvas;IIIIJ)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move/from16 v14, p5

    move-wide/from16 v11, p6

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1178
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v15

    .line 1179
    invoke-virtual {v15}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v16

    .line 1180
    invoke-virtual {v15}, Lnet/sourceforge/opencamera/preview/Preview;->getUIRotation()I

    move-result v1

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    const/high16 v17, 0x41800000    # 16.0f

    mul-float v3, v3, v17

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v3, v3, v18

    .line 1183
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1184
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    const/high16 v3, 0x41000000    # 8.0f

    mul-float v3, v3, v2

    add-float v3, v3, v18

    float-to-int v3, v3

    const/16 v19, 0x0

    mul-float v2, v2, v19

    add-float v2, v2, v18

    float-to-int v10, v2

    const/high16 v2, 0x40000000    # 2.0f

    iget v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_dp:F

    mul-float v4, v4, v2

    add-float v4, v4, v18

    float-to-int v9, v4

    const/16 v8, 0x5a

    if-eq v1, v8, :cond_1

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v2, p2

    move/from16 v1, p3

    goto :goto_1

    .line 1192
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1193
    div-int/lit8 v1, v1, 0x2

    add-int v2, p2, v1

    sub-int v1, p3, v1

    :goto_1
    if-ne v14, v8, :cond_2

    .line 1197
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    const/high16 v1, 0x41a00000    # 20.0f

    iget v5, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    mul-float v5, v5, v1

    add-float v5, v5, v18

    float-to-int v1, v5

    sub-int v1, v4, v1

    :cond_2
    move/from16 v20, v1

    const/16 v6, 0xb4

    const/4 v5, 0x0

    if-ne v14, v6, :cond_3

    .line 1201
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    sub-int v2, v1, v2

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1202
    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move/from16 v21, v2

    const/16 v22, 0x1

    goto :goto_2

    :cond_3
    move/from16 v21, v2

    const/16 v22, 0x0

    :goto_2
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_time_pref:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->current_time_string:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-wide/16 v1, 0x3e8

    .line 1209
    div-long v23, v11, v1

    iget-wide v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_current_time_time:J

    div-long/2addr v6, v1

    cmp-long v1, v23, v6

    if-lez v1, :cond_6

    :cond_4
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->calendar:Ljava/util/Calendar;

    if-nez v1, :cond_5

    .line 1212
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->calendar:Ljava/util/Calendar;

    goto :goto_3

    .line 1214
    :cond_5
    invoke-virtual {v1, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :goto_3
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->dateFormatTimeInstance:Ljava/text/DateFormat;

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->calendar:Ljava/util/Calendar;

    .line 1216
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->current_time_string:Ljava/lang/String;

    iput-wide v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_current_time_time:J

    :cond_6
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->text_bounds_time:Landroid/graphics/Rect;

    if-nez v1, :cond_7

    .line 1231
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->text_bounds_time:Landroid/graphics/Rect;

    .line 1233
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v24, 0x64

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0xa

    const/16 v28, 0x3b

    const/16 v29, 0x3b

    move-object/from16 v23, v1

    .line 1234
    invoke-virtual/range {v23 .. v29}, Ljava/util/Calendar;->set(IIIIII)V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->dateFormatTimeInstance:Ljava/text/DateFormat;

    .line 1235
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1238
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->text_bounds_time:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v5, v4, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    :cond_7
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->text_bounds_time:Landroid/graphics/Rect;

    .line 1240
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int v23, v1, v3

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->current_time_string:Ljava/lang/String;

    const/4 v6, -0x1

    const/high16 v7, -0x1000000

    .line 1241
    sget-object v24, Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;->ALIGNMENT_TOP:Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;

    const/16 v25, 0x0

    sget-object v26, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_OUTLINE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->text_bounds_time:Landroid/graphics/Rect;

    move-object/from16 v27, v2

    move-object/from16 v2, p1

    move v5, v6

    move v6, v7

    move/from16 v7, v21

    move/from16 v8, v20

    move/from16 v28, v9

    move-object/from16 v9, v24

    move/from16 v24, v10

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move-object/from16 v12, v27

    invoke-virtual/range {v1 .. v12}, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIIILnet/sourceforge/opencamera/MyApplicationInterface$Alignment;Ljava/lang/String;Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;Landroid/graphics/Rect;)I

    move-result v1

    add-int v1, v1, v24

    const/4 v12, 0x0

    .line 1244
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v11, v5

    move/from16 v5, v23

    goto :goto_4

    :cond_8
    move/from16 v28, v9

    move/from16 v24, v10

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_4
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_camera_id_pref:Z

    const-wide/16 v25, 0x2710

    if-eqz v1, :cond_d

    if-eqz v16, :cond_d

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->camera_id_string:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-wide v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_camera_id_time:J

    add-long v1, v1, v25

    move-wide/from16 v9, p6

    cmp-long v3, v9, v1

    if-lez v3, :cond_a

    goto :goto_5

    :cond_9
    move-wide/from16 v9, p6

    .line 1250
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->camera_id_string:Ljava/lang/String;

    iput-wide v9, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_camera_id_time:J

    :cond_a
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->text_bounds_camera_id:Landroid/graphics/Rect;

    if-nez v1, :cond_b

    .line 1256
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->text_bounds_camera_id:Landroid/graphics/Rect;

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->camera_id_string:Ljava/lang/String;

    .line 1257
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->text_bounds_camera_id:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v12, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    :cond_b
    if-eqz v22, :cond_c

    sub-int v1, v21, v5

    move v7, v1

    goto :goto_6

    :cond_c
    add-int v5, v21, v5

    move v7, v5

    :goto_6
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->camera_id_string:Ljava/lang/String;

    const/4 v5, -0x1

    const/high16 v6, -0x1000000

    .line 1260
    sget-object v22, Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;->ALIGNMENT_TOP:Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;

    const/16 v23, 0x0

    sget-object v27, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_OUTLINE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->text_bounds_camera_id:Landroid/graphics/Rect;

    move-object/from16 v2, p1

    move-object/from16 v29, v8

    move/from16 v8, v20

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move/from16 v30, v11

    move-object/from16 v11, v27

    const/4 v13, 0x0

    move-object/from16 v12, v29

    invoke-virtual/range {v1 .. v12}, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIIILnet/sourceforge/opencamera/MyApplicationInterface$Alignment;Ljava/lang/String;Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;Landroid/graphics/Rect;)I

    move-result v1

    add-int v1, v1, v24

    move/from16 v12, v30

    .line 1263
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_7

    :cond_d
    move v12, v11

    const/4 v13, 0x0

    move v11, v12

    :goto_7
    const/16 v12, 0x5a

    if-ne v14, v12, :cond_e

    sub-int v20, v20, v11

    goto :goto_8

    :cond_e
    add-int v20, v20, v11

    :goto_8
    if-eqz v16, :cond_13

    iget-boolean v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_free_memory_pref:Z

    if-eqz v1, :cond_13

    iget-wide v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_free_memory_time:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_f

    add-long v1, v1, v25

    move-wide/from16 v10, p6

    cmp-long v3, v10, v1

    if-lez v3, :cond_10

    goto :goto_9

    :cond_f
    move-wide/from16 v10, p6

    :goto_9
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->free_memory_future:Ljava/util/concurrent/Future;

    if-nez v1, :cond_10

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->free_memory_executor:Ljava/util/concurrent/ExecutorService;

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->free_memory_runnable:Ljava/lang/Runnable;

    .line 1278
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->free_memory_future:Ljava/util/concurrent/Future;

    iput-wide v10, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_free_memory_time:J

    :cond_10
    iget v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->free_memory_gb:F

    cmpl-float v1, v1, v19

    if-ltz v1, :cond_13

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->free_memory_gb_string:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->text_bounds_free_memory:Landroid/graphics/Rect;

    if-nez v1, :cond_11

    .line 1287
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->text_bounds_free_memory:Landroid/graphics/Rect;

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->free_memory_gb_string:Ljava/lang/String;

    .line 1288
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->text_bounds_free_memory:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v13, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    :cond_11
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->free_memory_gb_string:Ljava/lang/String;

    const/4 v5, -0x1

    const/high16 v6, -0x1000000

    .line 1290
    sget-object v9, Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;->ALIGNMENT_TOP:Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;

    const/16 v19, 0x0

    sget-object v22, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_OUTLINE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->text_bounds_free_memory:Landroid/graphics/Rect;

    move-object/from16 v2, p1

    move/from16 v7, v21

    move-object/from16 v23, v8

    move/from16 v8, v20

    move-object/from16 v10, v19

    move-object/from16 v11, v22

    const/16 v13, 0x5a

    move-object/from16 v12, v23

    invoke-virtual/range {v1 .. v12}, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIIILnet/sourceforge/opencamera/MyApplicationInterface$Alignment;Ljava/lang/String;Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;Landroid/graphics/Rect;)I

    move-result v1

    add-int v1, v1, v24

    if-ne v14, v13, :cond_12

    sub-int v20, v20, v1

    goto :goto_a

    :cond_12
    add-int v20, v20, v1

    goto :goto_a

    :cond_13
    const/16 v13, 0x5a

    :goto_a
    iget v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    const/high16 v2, 0x41d80000    # 27.0f

    mul-float v2, v2, v1

    add-float v2, v2, v18

    float-to-int v2, v2

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/high16 v4, 0x41c00000    # 24.0f

    mul-float v1, v1, v4

    add-float v1, v1, v18

    .line 1303
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->OSDLine1:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 1304
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->OSDLine1:Ljava/lang/String;

    const/4 v5, -0x1

    const/high16 v6, -0x1000000

    sub-int v8, p4, v2

    .line 1305
    sget-object v9, Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;->ALIGNMENT_BOTTOM:Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;

    const/4 v10, 0x0

    sget-object v11, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_OUTLINE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    move-object/from16 v2, p1

    move/from16 v7, v21

    invoke-virtual/range {v1 .. v11}, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIIILnet/sourceforge/opencamera/MyApplicationInterface$Alignment;Ljava/lang/String;Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;)I

    :cond_14
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->OSDLine2:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 1309
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_15

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->OSDLine2:Ljava/lang/String;

    const/4 v5, -0x1

    const/high16 v6, -0x1000000

    .line 1310
    sget-object v9, Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;->ALIGNMENT_BOTTOM:Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;

    const/4 v10, 0x0

    sget-object v11, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_OUTLINE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    move-object/from16 v2, p1

    move/from16 v7, v21

    move/from16 v8, p4

    invoke-virtual/range {v1 .. v11}, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIIILnet/sourceforge/opencamera/MyApplicationInterface$Alignment;Ljava/lang/String;Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;)I

    :cond_15
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    mul-float v2, v2, v17

    add-float v2, v2, v18

    .line 1314
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/16 v12, 0x3b

    const/16 v11, 0xeb

    const-wide/16 v22, 0x1f4

    const-wide/16 v9, -0x1

    const/16 v8, 0xff

    if-eqz v16, :cond_23

    iget-boolean v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_iso_pref:Z

    if-eqz v1, :cond_23

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->iso_exposure_string:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-wide v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_iso_exposure_time:J

    add-long v1, v1, v22

    move-wide/from16 v6, p6

    cmp-long v3, v6, v1

    if-lez v3, :cond_16

    goto :goto_b

    :cond_16
    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_d

    :cond_17
    move-wide/from16 v6, p6

    :goto_b
    const-string v1, ""

    iput-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->iso_exposure_string:Ljava/lang/String;

    .line 1319
    invoke-virtual/range {v16 .. v16}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->captureResultHasIso()Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_19

    .line 1320
    invoke-virtual/range {v16 .. v16}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->captureResultIso()I

    move-result v1

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->iso_exposure_string:Ljava/lang/String;

    .line 1321
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_18

    .line 1322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->iso_exposure_string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->iso_exposure_string:Ljava/lang/String;

    .line 1323
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->iso_exposure_string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Lnet/sourceforge/opencamera/preview/Preview;->getISOString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->iso_exposure_string:Ljava/lang/String;

    .line 1325
    :cond_19
    invoke-virtual/range {v16 .. v16}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->captureResultHasExposureTime()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1326
    invoke-virtual/range {v16 .. v16}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->captureResultExposureTime()J

    move-result-wide v3

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->iso_exposure_string:Ljava/lang/String;

    .line 1327
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1a

    .line 1328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->iso_exposure_string:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->iso_exposure_string:Ljava/lang/String;

    .line 1329
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->iso_exposure_string:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3, v4}, Lnet/sourceforge/opencamera/preview/Preview;->getExposureTimeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->iso_exposure_string:Ljava/lang/String;

    .line 1331
    :cond_1b
    invoke-virtual {v15}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecording()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual/range {v16 .. v16}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->captureResultHasFrameDuration()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1332
    invoke-virtual/range {v16 .. v16}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->captureResultFrameDuration()J

    move-result-wide v3

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->iso_exposure_string:Ljava/lang/String;

    .line 1333
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1c

    .line 1334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->iso_exposure_string:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->iso_exposure_string:Ljava/lang/String;

    .line 1335
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->iso_exposure_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3, v4}, Lnet/sourceforge/opencamera/preview/Preview;->getFrameDurationString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->iso_exposure_string:Ljava/lang/String;

    :cond_1d
    const/4 v5, 0x0

    iput-boolean v5, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->is_scanning:Z

    .line 1345
    invoke-virtual/range {v16 .. v16}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->captureResultIsAEScanning()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "preference_iso"

    const-string v3, "auto"

    .line 1348
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1349
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v4, 0x1

    iput-boolean v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->is_scanning:Z

    goto :goto_c

    :cond_1e
    const/4 v4, 0x1

    :goto_c
    iput-wide v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_iso_exposure_time:J

    :goto_d
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->iso_exposure_string:Ljava/lang/String;

    .line 1357
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_23

    .line 1358
    invoke-static {v8, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iget-boolean v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->is_scanning:Z

    if-eqz v2, :cond_20

    iget-wide v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ae_started_scanning_ms:J

    cmp-long v19, v2, v9

    if-nez v19, :cond_1f

    iput-wide v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ae_started_scanning_ms:J

    goto :goto_e

    :cond_1f
    sub-long v2, v6, v2

    cmp-long v19, v2, v22

    if-lez v19, :cond_21

    const/16 v1, 0x43

    const/16 v2, 0x36

    const/16 v3, 0xf4

    .line 1365
    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    goto :goto_e

    :cond_20
    iput-wide v9, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ae_started_scanning_ms:J

    :cond_21
    :goto_e
    move/from16 v19, v1

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iget-object v3, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->iso_exposure_string:Ljava/lang/String;

    const/high16 v25, -0x1000000

    .line 1372
    sget-object v26, Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;->ALIGNMENT_TOP:Lnet/sourceforge/opencamera/MyApplicationInterface$Alignment;

    iget-object v10, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ybounds_text:Ljava/lang/String;

    sget-object v27, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_OUTLINE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    move-object v9, v2

    move-object/from16 v2, p1

    move-object v4, v9

    const/16 v29, 0x0

    move/from16 v5, v19

    move/from16 v6, v25

    move/from16 v7, v21

    const/16 v9, 0xff

    move/from16 v8, v20

    const/16 v12, 0xff

    move-object/from16 v9, v26

    move-object/from16 v11, v27

    invoke-virtual/range {v1 .. v11}, Lnet/sourceforge/opencamera/MyApplicationInterface;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIIILnet/sourceforge/opencamera/MyApplicationInterface$Alignment;Ljava/lang/String;Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;)I

    move-result v1

    add-int v1, v1, v24

    if-ne v14, v13, :cond_22

    sub-int v20, v20, v1

    goto :goto_f

    :cond_22
    add-int v20, v20, v1

    goto :goto_f

    :cond_23
    const/16 v12, 0xff

    const/16 v29, 0x0

    :goto_f
    move/from16 v1, v20

    iget v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_font:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    add-float v2, v2, v18

    float-to-int v2, v2

    const/16 v4, 0x40

    if-eqz v16, :cond_50

    sub-int v5, v21, v2

    iget v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_dp:F

    mul-float v6, v6, v17

    add-float v6, v6, v18

    float-to-int v6, v6

    const/16 v7, 0xb4

    if-ne v14, v7, :cond_24

    sub-int v5, v21, v6

    add-int/2addr v5, v2

    :cond_24
    iget-boolean v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->store_location_pref:Z

    const/high16 v9, -0x1000000

    const/4 v10, 0x0

    if-eqz v8, :cond_29

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    add-int v11, v5, v6

    add-int v13, v1, v6

    .line 1398
    invoke-virtual {v8, v5, v1, v11, v13}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1399
    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1400
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1401
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v13, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    .line 1402
    invoke-virtual {v3, v8, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1403
    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    iget-object v13, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->locationInfo:Lnet/sourceforge/opencamera/LocationSupplier$LocationInfo;

    .line 1405
    invoke-virtual {v8, v13}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getLocation(Lnet/sourceforge/opencamera/LocationSupplier$LocationInfo;)Landroid/location/Location;

    move-result-object v8

    if-eqz v8, :cond_27

    iget-object v13, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->location_bitmap:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v9, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1407
    invoke-virtual {v3, v13, v10, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1408
    div-int/lit8 v4, v6, 0xa

    int-to-double v12, v4

    const-wide/high16 v19, 0x3ff8000000000000L    # 1.5

    .line 1409
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v19

    double-to-int v12, v12

    sub-int/2addr v11, v12

    add-int/2addr v12, v1

    iget-object v13, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget-object v9, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->locationInfo:Lnet/sourceforge/opencamera/LocationSupplier$LocationInfo;

    .line 1411
    invoke-virtual {v9}, Lnet/sourceforge/opencamera/LocationSupplier$LocationInfo;->LocationWasCached()Z

    move-result v9

    if-eqz v9, :cond_25

    const/16 v8, 0x7f

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    :goto_10
    move v7, v8

    const/16 v8, 0xeb

    goto :goto_11

    .line 1412
    :cond_25
    invoke-virtual {v8}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    const v9, 0x41c8147b    # 25.01f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_26

    const/16 v8, 0x9b

    const/16 v9, 0x24

    const/16 v7, 0x25

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    goto :goto_10

    :cond_26
    const/16 v7, 0x3b

    const/16 v8, 0xeb

    const/16 v9, 0xff

    .line 1413
    invoke-static {v9, v8, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    move/from16 v7, v19

    .line 1411
    :goto_11
    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v7, v11

    int-to-float v11, v12

    int-to-float v4, v4

    iget-object v12, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1414
    invoke-virtual {v3, v7, v11, v4, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_12

    :cond_27
    const/16 v8, 0xeb

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->location_off_bitmap:Landroid/graphics/Bitmap;

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1417
    invoke-virtual {v3, v4, v10, v7, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_12
    const/16 v4, 0xb4

    if-ne v14, v4, :cond_28

    add-int v4, v6, v2

    sub-int/2addr v5, v4

    goto :goto_13

    :cond_28
    add-int v4, v6, v2

    add-int/2addr v5, v4

    goto :goto_13

    :cond_29
    move-object/from16 v3, p1

    const/16 v8, 0xeb

    :goto_13
    iget-boolean v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->is_raw_pref:Z

    if-eqz v4, :cond_2c

    .line 1430
    invoke-virtual {v15}, Lnet/sourceforge/opencamera/preview/Preview;->supportsRaw()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    add-int v7, v5, v6

    add-int v11, v1, v6

    .line 1434
    invoke-virtual {v4, v5, v1, v7, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1435
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/high16 v7, -0x1000000

    .line 1436
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v7, 0x40

    .line 1437
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1438
    invoke-virtual {v3, v4, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v7, 0xff

    .line 1439
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->is_raw_only_pref:Z

    if-eqz v4, :cond_2a

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->raw_only_bitmap:Landroid/graphics/Bitmap;

    goto :goto_14

    :cond_2a
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->raw_jpeg_bitmap:Landroid/graphics/Bitmap;

    :goto_14
    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1440
    invoke-virtual {v3, v4, v10, v7, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 v4, 0xb4

    if-ne v14, v4, :cond_2b

    add-int v4, v6, v2

    sub-int/2addr v5, v4

    goto :goto_15

    :cond_2b
    add-int v4, v6, v2

    add-int/2addr v5, v4

    :cond_2c
    :goto_15
    iget-boolean v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->is_face_detection_pref:Z

    if-eqz v4, :cond_2e

    .line 1450
    invoke-virtual {v15}, Lnet/sourceforge/opencamera/preview/Preview;->supportsFaceDetection()Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    add-int v7, v5, v6

    add-int v11, v1, v6

    .line 1451
    invoke-virtual {v4, v5, v1, v7, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1452
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/high16 v7, -0x1000000

    .line 1453
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v7, 0x40

    .line 1454
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1455
    invoke-virtual {v3, v4, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v7, 0xff

    .line 1456
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->face_detection_bitmap:Landroid/graphics/Bitmap;

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1457
    invoke-virtual {v3, v4, v10, v7, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 v4, 0xb4

    if-ne v14, v4, :cond_2d

    add-int v4, v6, v2

    sub-int/2addr v5, v4

    goto :goto_16

    :cond_2d
    add-int v4, v6, v2

    add-int/2addr v5, v4

    :cond_2e
    :goto_16
    iget-boolean v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->auto_stabilise_pref:Z

    if-eqz v4, :cond_30

    .line 1467
    invoke-virtual {v15}, Lnet/sourceforge/opencamera/preview/Preview;->hasLevelAngleStable()Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    add-int v7, v5, v6

    add-int v11, v1, v6

    .line 1468
    invoke-virtual {v4, v5, v1, v7, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1469
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/high16 v7, -0x1000000

    .line 1470
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v7, 0x40

    .line 1471
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1472
    invoke-virtual {v3, v4, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v7, 0xff

    .line 1473
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->auto_stabilise_bitmap:Landroid/graphics/Bitmap;

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1474
    invoke-virtual {v3, v4, v10, v7, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 v4, 0xb4

    if-ne v14, v4, :cond_2f

    add-int v4, v6, v2

    sub-int/2addr v5, v4

    goto :goto_17

    :cond_2f
    add-int v4, v6, v2

    add-int/2addr v5, v4

    :cond_30
    :goto_17
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 1484
    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->DRO:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v4, v7, :cond_31

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v4, v7, :cond_31

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v4, v7, :cond_31

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ExpoBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v4, v7, :cond_31

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FastBurst:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v4, v7, :cond_31

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->NoiseReduction:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v4, v7, :cond_31

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Night:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v4, v7, :cond_31

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Bokeh:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-eq v4, v7, :cond_31

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Beauty:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v4, v7, :cond_3d

    :cond_31
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1496
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isVideoPref()Z

    move-result v4

    if-nez v4, :cond_3d

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    add-int v7, v5, v6

    add-int v11, v1, v6

    .line 1497
    invoke-virtual {v4, v5, v1, v7, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1498
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/high16 v7, -0x1000000

    .line 1499
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v7, 0x40

    .line 1500
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1501
    invoke-virtual {v3, v4, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v7, 0xff

    .line 1502
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 1503
    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->DRO:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v4, v7, :cond_32

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->dro_bitmap:Landroid/graphics/Bitmap;

    goto :goto_18

    :cond_32
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 1504
    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v4, v7, :cond_33

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->hdr_bitmap:Landroid/graphics/Bitmap;

    goto :goto_18

    :cond_33
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 1505
    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v4, v7, :cond_34

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->panorama_bitmap:Landroid/graphics/Bitmap;

    goto :goto_18

    :cond_34
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 1506
    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ExpoBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v4, v7, :cond_35

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->expo_bitmap:Landroid/graphics/Bitmap;

    goto :goto_18

    :cond_35
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 1508
    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FastBurst:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v4, v7, :cond_36

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->burst_bitmap:Landroid/graphics/Bitmap;

    goto :goto_18

    :cond_36
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 1509
    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->NoiseReduction:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v4, v7, :cond_37

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->nr_bitmap:Landroid/graphics/Bitmap;

    goto :goto_18

    :cond_37
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 1510
    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Night:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v4, v7, :cond_38

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->x_night_bitmap:Landroid/graphics/Bitmap;

    goto :goto_18

    :cond_38
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 1511
    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Bokeh:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v4, v7, :cond_39

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->x_bokeh_bitmap:Landroid/graphics/Bitmap;

    goto :goto_18

    :cond_39
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 1512
    sget-object v7, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Beauty:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v4, v7, :cond_3a

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->x_beauty_bitmap:Landroid/graphics/Bitmap;

    goto :goto_18

    :cond_3a
    move-object v4, v10

    :goto_18
    if-eqz v4, :cond_3d

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 1515
    sget-object v11, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->NoiseReduction:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    if-ne v7, v11, :cond_3b

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    invoke-virtual {v7}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getNRModePref()Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    move-result-object v7

    sget-object v11, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;->NRMODE_LOW_LIGHT:Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    if-ne v7, v11, :cond_3b

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1516
    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    const/16 v9, 0x3b

    const/16 v12, 0xff

    invoke-static {v12, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v8, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_3b
    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1518
    invoke-virtual {v3, v4, v10, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1519
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/16 v4, 0xb4

    if-ne v14, v4, :cond_3c

    add-int v4, v6, v2

    sub-int/2addr v5, v4

    goto :goto_19

    :cond_3c
    add-int v4, v6, v2

    add-int/2addr v5, v4

    :cond_3d
    :goto_19
    iget-boolean v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->has_stamp_pref:Z

    if-eqz v4, :cond_40

    iget-boolean v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->is_raw_only_pref:Z

    if-eqz v4, :cond_3e

    .line 1533
    invoke-virtual {v15}, Lnet/sourceforge/opencamera/preview/Preview;->supportsRaw()Z

    move-result v4

    if-nez v4, :cond_40

    :cond_3e
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    add-int v7, v5, v6

    add-int v8, v1, v6

    .line 1534
    invoke-virtual {v4, v5, v1, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1535
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/high16 v7, -0x1000000

    .line 1536
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v7, 0x40

    .line 1537
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1538
    invoke-virtual {v3, v4, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v7, 0xff

    .line 1539
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photostamp_bitmap:Landroid/graphics/Bitmap;

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1540
    invoke-virtual {v3, v4, v10, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 v4, 0xb4

    if-ne v14, v4, :cond_3f

    add-int v4, v6, v2

    sub-int/2addr v5, v4

    goto :goto_1a

    :cond_3f
    add-int v4, v6, v2

    add-int/2addr v5, v4

    :cond_40
    :goto_1a
    iget-boolean v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->is_audio_enabled_pref:Z

    if-nez v4, :cond_42

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1550
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isVideoPref()Z

    move-result v4

    if-eqz v4, :cond_42

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    add-int v7, v5, v6

    add-int v8, v1, v6

    .line 1551
    invoke-virtual {v4, v5, v1, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1552
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/high16 v7, -0x1000000

    .line 1553
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v7, 0x40

    .line 1554
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1555
    invoke-virtual {v3, v4, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v7, 0xff

    .line 1556
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->audio_disabled_bitmap:Landroid/graphics/Bitmap;

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1557
    invoke-virtual {v3, v4, v10, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 v4, 0xb4

    if-ne v14, v4, :cond_41

    add-int v4, v6, v2

    sub-int/2addr v5, v4

    goto :goto_1b

    :cond_41
    add-int v4, v6, v2

    add-int/2addr v5, v4

    :cond_42
    :goto_1b
    iget v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->capture_rate_factor:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v4, v7

    .line 1568
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v7, v4

    const-wide v11, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v4, v7, v11

    if-lez v4, :cond_44

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isVideoPref()Z

    move-result v4

    if-eqz v4, :cond_44

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    add-int v7, v5, v6

    add-int v8, v1, v6

    .line 1569
    invoke-virtual {v4, v5, v1, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1570
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/high16 v7, -0x1000000

    .line 1571
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v7, 0x40

    .line 1572
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1573
    invoke-virtual {v3, v4, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v7, 0xff

    .line 1574
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->capture_rate_factor:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v7

    if-gez v4, :cond_43

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->slow_motion_bitmap:Landroid/graphics/Bitmap;

    goto :goto_1c

    :cond_43
    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->time_lapse_bitmap:Landroid/graphics/Bitmap;

    :goto_1c
    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1575
    invoke-virtual {v3, v4, v10, v8, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 v4, 0xb4

    if-ne v14, v4, :cond_45

    goto :goto_1d

    :cond_44
    const/high16 v7, 0x3f800000    # 1.0f

    iget-boolean v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->is_high_speed:Z

    if-eqz v4, :cond_46

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1584
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isVideoPref()Z

    move-result v4

    if-eqz v4, :cond_46

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    add-int v8, v5, v6

    add-int v11, v1, v6

    .line 1585
    invoke-virtual {v4, v5, v1, v8, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1586
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/high16 v8, -0x1000000

    .line 1587
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v8, 0x40

    .line 1588
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1589
    invoke-virtual {v3, v4, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v8, 0xff

    .line 1590
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->high_speed_fps_bitmap:Landroid/graphics/Bitmap;

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1591
    invoke-virtual {v3, v4, v10, v8, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 v4, 0xb4

    if-ne v14, v4, :cond_45

    :goto_1d
    add-int v4, v6, v2

    sub-int/2addr v5, v4

    goto :goto_1e

    :cond_45
    add-int v4, v6, v2

    add-int/2addr v5, v4

    :cond_46
    :goto_1e
    iget-wide v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_need_flash_indicator_time:J

    const-wide/16 v19, 0x64

    add-long v11, v11, v19

    move-wide/from16 v7, p6

    cmp-long v4, v7, v11

    if-lez v4, :cond_4b

    const/4 v4, 0x0

    iput-boolean v4, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->need_flash_indicator:Z

    .line 1603
    invoke-virtual {v15}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFlashValue()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4a

    const-string v12, "flash_on"

    .line 1606
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_49

    const-string v12, "flash_auto"

    .line 1607
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_47

    const-string v12, "flash_red_eye"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_48

    :cond_47
    invoke-virtual/range {v16 .. v16}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->needsFlash()Z

    move-result v11

    if-nez v11, :cond_49

    .line 1608
    :cond_48
    invoke-virtual/range {v16 .. v16}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->needsFrontScreenFlash()Z

    move-result v11

    if-eqz v11, :cond_4a

    :cond_49
    iget-object v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1609
    invoke-virtual {v11}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isVideoPref()Z

    move-result v11

    if-nez v11, :cond_4a

    const/4 v11, 0x1

    iput-boolean v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->need_flash_indicator:Z

    :cond_4a
    iput-wide v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_need_flash_indicator_time:J

    goto :goto_1f

    :cond_4b
    const/4 v4, 0x0

    :goto_1f
    iget-boolean v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->need_flash_indicator:Z

    if-eqz v11, :cond_4e

    iget-wide v11, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->needs_flash_time:J

    const-wide/16 v9, -0x1

    cmp-long v13, v11, v9

    if-eqz v13, :cond_4d

    sub-long v9, v7, v11

    long-to-float v9, v9

    const/high16 v10, 0x43fa0000    # 500.0f

    div-float/2addr v9, v10

    sub-long/2addr v7, v11

    cmp-long v10, v7, v22

    if-ltz v10, :cond_4c

    const/high16 v9, 0x3f800000    # 1.0f

    :cond_4c
    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    add-int v8, v5, v6

    add-int v10, v1, v6

    .line 1621
    invoke-virtual {v7, v5, v1, v8, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1625
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v5, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/high16 v7, -0x1000000

    .line 1626
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/high16 v7, 0x42800000    # 64.0f

    mul-float v7, v7, v9

    float-to-int v7, v7

    .line 1627
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1628
    invoke-virtual {v3, v5, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v5, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v9, v9, v7

    float-to-int v7, v9

    .line 1629
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->flash_bitmap:Landroid/graphics/Bitmap;

    iget-object v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/4 v9, 0x0

    .line 1630
    invoke-virtual {v3, v5, v9, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v5, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v7, 0xff

    .line 1631
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_20

    :cond_4d
    iput-wide v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->needs_flash_time:J

    goto :goto_20

    :cond_4e
    const-wide/16 v9, -0x1

    iput-wide v9, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->needs_flash_time:J

    :goto_20
    const/16 v7, 0x5a

    if-ne v14, v7, :cond_4f

    sub-int v1, v1, v28

    goto :goto_21

    :cond_4f
    add-int v6, v6, v28

    add-int/2addr v1, v6

    goto :goto_21

    :cond_50
    move-object/from16 v3, p1

    const/4 v4, 0x0

    :goto_21
    if-eqz v16, :cond_58

    iget-boolean v6, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_last_image:Z

    if-nez v6, :cond_58

    .line 1651
    invoke-virtual {v15}, Lnet/sourceforge/opencamera/preview/Preview;->isPreviewBitmapEnabled()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 1652
    invoke-virtual {v15}, Lnet/sourceforge/opencamera/preview/Preview;->getHistogram()[I

    move-result-object v6

    if-eqz v6, :cond_58

    iget v7, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_dp:F

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float v8, v8, v7

    add-float v8, v8, v18

    float-to-int v8, v8

    const/high16 v9, 0x42700000    # 60.0f

    mul-float v7, v7, v9

    add-float v7, v7, v18

    float-to-int v7, v7

    sub-int v9, v21, v2

    const/16 v10, 0xb4

    if-ne v14, v10, :cond_51

    sub-int v21, v21, v8

    add-int v9, v21, v2

    :cond_51
    iget-object v10, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    sub-int/2addr v9, v2

    add-int/2addr v8, v9

    add-int v2, v1, v7

    .line 1664
    invoke-virtual {v10, v9, v1, v8, v2}, Landroid/graphics/Rect;->set(IIII)V

    const/16 v1, 0x5a

    if-ne v14, v1, :cond_52

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    .line 1666
    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v7

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    .line 1667
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v7

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_52
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1670
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v2, 0x40

    .line 1671
    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v2, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 1672
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1675
    array-length v1, v6

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_22
    if-ge v2, v1, :cond_53

    aget v8, v6, v2

    .line 1676
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 1679
    :cond_53
    array-length v1, v6

    const/16 v2, 0x300

    if-ne v1, v2, :cond_57

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_23
    const/16 v8, 0x100

    if-ge v1, v8, :cond_54

    iget-object v8, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->temp_histogram_channel:[I

    add-int/lit8 v9, v2, 0x1

    .line 1710
    aget v2, v6, v2

    aput v2, v8, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v9

    goto :goto_23

    :cond_54
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v9, 0x97

    const/16 v5, 0xff

    .line 1711
    invoke-static {v9, v5, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->temp_histogram_channel:[I

    .line 1712
    invoke-direct {v0, v3, v1, v7}, Lnet/sourceforge/opencamera/ui/DrawPreview;->drawHistogramChannel(Landroid/graphics/Canvas;[II)V

    const/4 v5, 0x0

    :goto_24
    if-ge v5, v8, :cond_55

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->temp_histogram_channel:[I

    add-int/lit8 v10, v2, 0x1

    .line 1715
    aget v2, v6, v2

    aput v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    move v2, v10

    goto :goto_24

    :cond_55
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v5, 0x6e

    const/16 v9, 0xff

    .line 1716
    invoke-static {v5, v4, v9, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->temp_histogram_channel:[I

    .line 1717
    invoke-direct {v0, v3, v1, v7}, Lnet/sourceforge/opencamera/ui/DrawPreview;->drawHistogramChannel(Landroid/graphics/Canvas;[II)V

    const/4 v5, 0x0

    :goto_25
    if-ge v5, v8, :cond_56

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->temp_histogram_channel:[I

    add-int/lit8 v10, v2, 0x1

    .line 1720
    aget v2, v6, v2

    aput v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    move v2, v10

    goto :goto_25

    :cond_56
    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v2, 0x5e

    const/16 v5, 0xff

    .line 1721
    invoke-static {v2, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->temp_histogram_channel:[I

    .line 1722
    invoke-direct {v0, v3, v1, v7}, Lnet/sourceforge/opencamera/ui/DrawPreview;->drawHistogramChannel(Landroid/graphics/Canvas;[II)V

    goto :goto_26

    :cond_57
    const/16 v5, 0xff

    iget-object v1, v0, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v2, 0xc0

    .line 1725
    invoke-static {v2, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1726
    invoke-direct {v0, v3, v6, v7}, Lnet/sourceforge/opencamera/ui/DrawPreview;->drawHistogramChannel(Landroid/graphics/Canvas;[II)V

    :cond_58
    :goto_26
    return-void
.end method

.method private setLastImageMatrix(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IZ)V
    .locals 7

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 3077
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    .line 3078
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_src_rect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    .line 3079
    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_src_rect:Landroid/graphics/RectF;

    .line 3080
    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_src_rect:Landroid/graphics/RectF;

    .line 3081
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_src_rect:Landroid/graphics/RectF;

    .line 3082
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    const/16 v1, 0x10e

    const/16 v3, 0x5a

    if-eq p3, v3, :cond_0

    if-ne p3, v1, :cond_1

    :cond_0
    iget-object v4, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_src_rect:Landroid/graphics/RectF;

    .line 3084
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_src_rect:Landroid/graphics/RectF;

    .line 3085
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    :cond_1
    iget-object v4, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_dst_rect:Landroid/graphics/RectF;

    .line 3087
    iput v2, v4, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_dst_rect:Landroid/graphics/RectF;

    .line 3088
    iput v2, v4, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_dst_rect:Landroid/graphics/RectF;

    .line 3089
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_dst_rect:Landroid/graphics/RectF;

    .line 3090
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, v4, Landroid/graphics/RectF;->bottom:F

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_src_rect:Landroid/graphics/RectF;

    iget-object v5, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_dst_rect:Landroid/graphics/RectF;

    .line 3095
    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    const/high16 p1, 0x40000000    # 2.0f

    if-eq p3, v3, :cond_2

    if-ne p3, v1, :cond_3

    .line 3098
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_matrix:Landroid/graphics/Matrix;

    div-float v4, v1, p1

    neg-float v1, v1

    div-float/2addr v1, p1

    .line 3099
    invoke-virtual {v3, v4, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_3
    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_matrix:Landroid/graphics/Matrix;

    int-to-float p3, p3

    .line 3101
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p1

    invoke-virtual {v1, p3, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    if-eqz p4, :cond_4

    if-eqz v0, :cond_4

    .line 3103
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getFacing()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    move-result-object p3

    sget-object p4, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_FRONT:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    if-ne p3, p4, :cond_4

    iget-object p3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string p4, "preference_front_camera_mirror"

    const-string v0, "preference_front_camera_mirror_no"

    .line 3104
    invoke-interface {p3, p4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "preference_front_camera_mirror_photo"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_matrix:Landroid/graphics/Matrix;

    .line 3105
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p1

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {p3, p1, p4, p2, v2}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    :cond_4
    return-void
.end method

.method private updateCachedViewAngles(J)V
    .locals 5

    iget-wide v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_view_angles_time:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 812
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    const/4 v1, 0x1

    .line 813
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->getViewAngleX(Z)F

    move-result v2

    iput v2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->view_angle_x_preview:F

    .line 814
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->getViewAngleY(Z)F

    move-result v0

    iput v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->view_angle_y_preview:F

    iput-wide p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_view_angles_time:J

    :cond_1
    return-void
.end method


# virtual methods
.method public addGyroDirectionMarker(FFF)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->gyro_directions:Ljava/util/List;

    .line 641
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allowGhostImage()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->allow_ghost_last_image:Z

    :cond_0
    return-void
.end method

.method public cameraInOperation(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 583
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->isVideo()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->taking_picture:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->taking_picture:Z

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->front_screen_flash:Z

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->capture_started:Z

    :goto_0
    return-void
.end method

.method public clearContinuousFocusMove()V
    .locals 2

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->continuous_focus_moving:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->continuous_focus_moving:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->continuous_focus_moving_ms:J

    :cond_0
    return-void
.end method

.method public clearDimPreview()V
    .locals 1

    .line 2777
    sget-object v0, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;->DIM_PREVIEW_OFF:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->dim_preview:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    return-void
.end method

.method public clearGhostImage()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->allow_ghost_last_image:Z

    return-void
.end method

.method public clearGyroDirectionMarker()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->enable_gyro_target_spot:Z

    return-void
.end method

.method public clearLastImage()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_last_image:Z

    return-void
.end method

.method public getStoredAutoStabilisePref()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->auto_stabilise_pref:Z

    return v0
.end method

.method public getStoredHasStampPref()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->has_stamp_pref:Z

    return v0
.end method

.method public hasThumbnailAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim:Z

    return v0
.end method

.method public onCaptureStarted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->capture_started:Z

    return-void
.end method

.method public onContinuousFocusMove(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->continuous_focus_moving:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->continuous_focus_moving:Z

    .line 615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->continuous_focus_moving_ms:J

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->free_memory_future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 377
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->location_bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->location_bitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->location_off_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 385
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->location_off_bitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->raw_jpeg_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 389
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->raw_jpeg_bitmap:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->raw_only_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 393
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->raw_only_bitmap:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->auto_stabilise_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 397
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->auto_stabilise_bitmap:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->dro_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 401
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->dro_bitmap:Landroid/graphics/Bitmap;

    :cond_6
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->hdr_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 405
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->hdr_bitmap:Landroid/graphics/Bitmap;

    :cond_7
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->panorama_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 409
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->panorama_bitmap:Landroid/graphics/Bitmap;

    :cond_8
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->expo_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 413
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->expo_bitmap:Landroid/graphics/Bitmap;

    :cond_9
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->burst_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 421
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->burst_bitmap:Landroid/graphics/Bitmap;

    :cond_a
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->nr_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 425
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->nr_bitmap:Landroid/graphics/Bitmap;

    :cond_b
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->x_night_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 429
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->x_night_bitmap:Landroid/graphics/Bitmap;

    :cond_c
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->x_bokeh_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    .line 433
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->x_bokeh_bitmap:Landroid/graphics/Bitmap;

    :cond_d
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->x_beauty_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    .line 437
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->x_beauty_bitmap:Landroid/graphics/Bitmap;

    :cond_e
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photostamp_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    .line 441
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photostamp_bitmap:Landroid/graphics/Bitmap;

    :cond_f
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->flash_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 445
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->flash_bitmap:Landroid/graphics/Bitmap;

    :cond_10
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->face_detection_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    .line 449
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->face_detection_bitmap:Landroid/graphics/Bitmap;

    :cond_11
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->audio_disabled_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    .line 453
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->audio_disabled_bitmap:Landroid/graphics/Bitmap;

    :cond_12
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->high_speed_fps_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    .line 457
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->high_speed_fps_bitmap:Landroid/graphics/Bitmap;

    :cond_13
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->slow_motion_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_14

    .line 461
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->slow_motion_bitmap:Landroid/graphics/Bitmap;

    :cond_14
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->time_lapse_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    .line 465
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->time_lapse_bitmap:Landroid/graphics/Bitmap;

    :cond_15
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->rotate_left_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_16

    .line 469
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->rotate_left_bitmap:Landroid/graphics/Bitmap;

    :cond_16
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->rotate_right_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_17

    .line 473
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->rotate_right_bitmap:Landroid/graphics/Bitmap;

    :cond_17
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_selected_image_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_18

    .line 478
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_selected_image_bitmap:Landroid/graphics/Bitmap;

    :cond_18
    const-string v0, ""

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_selected_image_pref:Ljava/lang/String;

    return-void
.end method

.method public onDrawPreview(Landroid/graphics/Canvas;)V
    .locals 25

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 2786
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->has_settings:Z

    if-nez v0, :cond_0

    .line 2791
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->updateSettings()V

    :cond_0
    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2793
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v12

    .line 2794
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v6

    .line 2795
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->getUIRotation()I

    move-result v13

    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->want_histogram:Z

    const/4 v15, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->want_zebra_stripes:Z

    if-nez v0, :cond_2

    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->want_focus_peaking:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 2799
    :goto_1
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->isPreviewBitmapEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_3

    .line 2801
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->enablePreviewBitmap()V

    goto :goto_2

    .line 2804
    :cond_3
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->disablePreviewBitmap()V

    :cond_4
    :goto_2
    if-eqz v0, :cond_8

    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->want_histogram:Z

    if-eqz v0, :cond_5

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->histogram_type:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    .line 2808
    invoke-virtual {v12, v0}, Lnet/sourceforge/opencamera/preview/Preview;->enableHistogram(Lnet/sourceforge/opencamera/preview/Preview$HistogramType;)V

    goto :goto_3

    .line 2810
    :cond_5
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->disableHistogram()V

    :goto_3
    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->want_zebra_stripes:Z

    if-eqz v0, :cond_6

    iget v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->zebra_stripes_threshold:I

    iget v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->zebra_stripes_color_foreground:I

    iget v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->zebra_stripes_color_background:I

    .line 2813
    invoke-virtual {v12, v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->enableZebraStripes(III)V

    goto :goto_4

    .line 2815
    :cond_6
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->disableZebraStripes()V

    :goto_4
    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->want_focus_peaking:Z

    if-eqz v0, :cond_7

    .line 2818
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->enableFocusPeaking()V

    goto :goto_5

    .line 2820
    :cond_7
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->disableFocusPeaking()V

    .line 2829
    :cond_8
    :goto_5
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->usingCamera2API()Z

    move-result v0

    const/16 v7, 0xff

    if-eqz v0, :cond_f

    if-eqz v6, :cond_9

    .line 2830
    invoke-virtual {v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->shouldCoverPreview()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_6
    iget-boolean v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->cover_preview:Z

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    iput-boolean v15, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->cover_preview:Z

    :cond_a
    iget-boolean v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->cover_preview:Z

    const/high16 v2, -0x1000000

    if-eqz v1, :cond_b

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2841
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2843
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_b
    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->dim_preview:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    .line 2845
    sget-object v3, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;->DIM_PREVIEW_ON:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    const-wide/16 v4, -0x1

    if-eq v1, v3, :cond_d

    if-nez v0, :cond_c

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->dim_preview:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    sget-object v3, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;->DIM_PREVIEW_UNTIL:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    if-ne v1, v3, :cond_c

    goto :goto_7

    :cond_c
    iput-wide v4, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->camera_inactive_time_ms:J

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->dim_preview:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    .line 2865
    sget-object v2, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;->DIM_PREVIEW_UNTIL:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    if-ne v1, v2, :cond_f

    if-eqz v0, :cond_f

    .line 2866
    sget-object v0, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;->DIM_PREVIEW_OFF:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    iput-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->dim_preview:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    goto :goto_8

    .line 2846
    :cond_d
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v14, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->camera_inactive_time_ms:J

    cmp-long v3, v14, v4

    if-nez v3, :cond_e

    iput-wide v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->camera_inactive_time_ms:J

    :cond_e
    iget-wide v3, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->camera_inactive_time_ms:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2851
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x42fe0000    # 127.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2858
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2859
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2860
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2861
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_f
    :goto_8
    const/4 v14, -0x1

    if-eqz v6, :cond_10

    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->front_screen_flash:Z

    if-eqz v0, :cond_10

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2872
    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2873
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_10
    const-string v0, "flash_frontscreen_torch"

    .line 2875
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->getCurrentFlashValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2876
    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    .line 2877
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2878
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2879
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_11
    :goto_9
    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2882
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->inImmersiveMode()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->immersive_mode_everything_pref:Z

    if-eqz v0, :cond_12

    return-void

    :cond_12
    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2900
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getSystemOrientation()Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    move-result-object v0

    .line 2901
    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->getRotationFromSystemOrientation(Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;)I

    move-result v15

    const/high16 v18, 0x3f000000    # 0.5f

    if-eqz v6, :cond_13

    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->taking_picture:Z

    if-eqz v0, :cond_13

    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->front_screen_flash:Z

    if-nez v0, :cond_13

    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->take_photo_border_pref:Z

    if-eqz v0, :cond_13

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2905
    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2906
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->stroke_width:F

    .line 2907
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x40a00000    # 5.0f

    iget v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_dp:F

    mul-float v1, v1, v0

    add-float v1, v1, v18

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2909
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2910
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2911
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->stroke_width:F

    .line 2912
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2914
    :cond_13
    invoke-direct/range {p0 .. p1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->drawGrids(Landroid/graphics/Canvas;)V

    .line 2916
    invoke-direct/range {p0 .. p1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->drawCropGuides(Landroid/graphics/Canvas;)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_17

    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_thumbnail_is_video:Z

    if-nez v0, :cond_17

    if-eqz v6, :cond_17

    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_last_image:Z

    if-nez v0, :cond_14

    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->allow_ghost_last_image:Z

    if-eqz v0, :cond_17

    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->front_screen_flash:Z

    if-nez v0, :cond_17

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_image_pref:Ljava/lang/String;

    const-string v1, "preference_ghost_image_last"

    .line 2920
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_14
    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_last_image:Z

    if-eqz v0, :cond_15

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 2926
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2927
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_15
    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_thumbnail:Landroid/graphics/Bitmap;

    iget-boolean v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_last_image:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 2929
    invoke-direct {v8, v9, v0, v13, v1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->setLastImageMatrix(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IZ)V

    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_last_image:Z

    if-nez v0, :cond_16

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_image_alpha:I

    .line 2931
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_16
    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_thumbnail:Landroid/graphics/Bitmap;

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_matrix:Landroid/graphics/Matrix;

    iget-object v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2932
    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_last_image:Z

    if-nez v0, :cond_18

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2934
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_a

    :cond_17
    if-eqz v6, :cond_18

    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->front_screen_flash:Z

    if-nez v0, :cond_18

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_selected_image_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    .line 2937
    invoke-direct {v8, v9, v0, v13, v1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->setLastImageMatrix(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IZ)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_image_alpha:I

    .line 2938
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_selected_image_bitmap:Landroid/graphics/Bitmap;

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_matrix:Landroid/graphics/Matrix;

    iget-object v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2939
    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2940
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2943
    :cond_18
    :goto_a
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->isPreviewBitmapEnabled()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_1c

    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_last_image:Z

    if-nez v0, :cond_1c

    .line 2947
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->getZebraStripesBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 2949
    invoke-direct {v8, v9, v0, v1, v1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->setLastImageMatrix(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IZ)V

    iget-object v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2950
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_matrix:Landroid/graphics/Matrix;

    iget-object v3, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2951
    invoke-virtual {v9, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 2955
    :cond_19
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->getFocusPeakingBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2957
    invoke-direct {v8, v9, v0, v1, v1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->setLastImageMatrix(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IZ)V

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v2, 0x7f

    .line 2958
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->focus_peaking_color_pref:I

    if-eq v1, v14, :cond_1a

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2960
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->focus_peaking_color_pref:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1a
    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_image_matrix:Landroid/graphics/Matrix;

    iget-object v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2962
    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->focus_peaking_color_pref:I

    if-eq v0, v14, :cond_1b

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2964
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1b
    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2966
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2970
    :cond_1c
    invoke-direct {v8, v9, v10, v11}, Lnet/sourceforge/opencamera/ui/DrawPreview;->doThumbnailAnimation(Landroid/graphics/Canvas;J)V

    .line 2972
    invoke-direct {v8, v9, v15, v10, v11}, Lnet/sourceforge/opencamera/ui/DrawPreview;->drawUI(Landroid/graphics/Canvas;IJ)V

    .line 2974
    invoke-direct {v8, v9, v15, v10, v11}, Lnet/sourceforge/opencamera/ui/DrawPreview;->drawAngleLines(Landroid/graphics/Canvas;IJ)V

    .line 2976
    invoke-direct {v8, v9, v10, v11}, Lnet/sourceforge/opencamera/ui/DrawPreview;->doFocusAnimation(Landroid/graphics/Canvas;J)V

    .line 2978
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->getFacesDetected()[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const/16 v2, 0xeb

    const/16 v3, 0x3b

    .line 2980
    invoke-static {v7, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2981
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    iget v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->stroke_width:F

    .line 2982
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2983
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    .line 2985
    iget v4, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;->score:I

    const/16 v7, 0x32

    if-lt v4, v7, :cond_1d

    .line 2986
    iget-object v3, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;->temp:Landroid/graphics/Rect;

    iget-object v4, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1e
    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 2989
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1f
    iget-boolean v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->enable_gyro_target_spot:Z

    if-eqz v0, :cond_26

    if-eqz v6, :cond_26

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2993
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getGyroSensor()Lnet/sourceforge/opencamera/GyroSensor;

    move-result-object v15

    .line 2994
    invoke-virtual {v15}, Lnet/sourceforge/opencamera/GyroSensor;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 2995
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getSystemOrientation()Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    move-result-object v0

    .line 2996
    sget-object v1, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->PORTRAIT:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne v0, v1, :cond_20

    const/16 v19, 0x1

    goto :goto_c

    :cond_20
    const/16 v19, 0x0

    :goto_c
    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->gyro_directions:Ljava/util/List;

    .line 2997
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_d
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->transformed_gyro_direction:[F

    .line 2998
    invoke-virtual {v15, v1, v0}, Lnet/sourceforge/opencamera/GyroSensor;->getRelativeInverseVector([F[F)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->transformed_gyro_direction_up:[F

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->gyro_direction_up:[F

    .line 2999
    invoke-virtual {v15, v0, v1}, Lnet/sourceforge/opencamera/GyroSensor;->getRelativeInverseVector([F[F)V

    if-eqz v19, :cond_21

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->transformed_gyro_direction:[F

    const/4 v1, 0x0

    .line 3004
    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->transformed_gyro_direction:[F

    const/4 v2, 0x1

    .line 3005
    aget v1, v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    double-to-float v1, v3

    goto :goto_e

    :cond_21
    const/4 v2, 0x1

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->transformed_gyro_direction:[F

    .line 3008
    aget v0, v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    neg-float v0, v0

    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->transformed_gyro_direction:[F

    const/4 v2, 0x0

    .line 3009
    aget v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    double-to-float v1, v1

    :goto_e
    neg-float v1, v1

    move v7, v0

    .line 3011
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v21, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpg-double v0, v2, v21

    if-gez v0, :cond_23

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    cmpg-double v0, v2, v21

    if-gez v0, :cond_23

    .line 3012
    invoke-direct {v8, v10, v11}, Lnet/sourceforge/opencamera/ui/DrawPreview;->updateCachedViewAngles(J)V

    if-eqz v19, :cond_22

    iget v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->view_angle_y_preview:F

    iget v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->view_angle_x_preview:F

    goto :goto_f

    :cond_22
    iget v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->view_angle_x_preview:F

    iget v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->view_angle_y_preview:F

    .line 3022
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-double v3, v3

    float-to-double v5, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double v5, v5, v22

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    mul-double v5, v5, v22

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    double-to-float v0, v3

    .line 3023
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-double v3, v3

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double v5, v5, v22

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    mul-double v5, v5, v22

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    double-to-float v2, v3

    .line 3024
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->getZoomRatio()F

    move-result v3

    mul-float v0, v0, v3

    .line 3025
    invoke-virtual {v12}, Lnet/sourceforge/opencamera/preview/Preview;->getZoomRatio()F

    move-result v3

    mul-float v2, v2, v3

    float-to-double v3, v7

    .line 3026
    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v22, v0, v3

    float-to-double v0, v1

    .line 3027
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v23, v2, v0

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    .line 3028
    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/16 v6, 0x30

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v14, 0x0

    move/from16 v21, v7

    move/from16 v7, v24

    .line 3029
    invoke-direct/range {v0 .. v7}, Lnet/sourceforge/opencamera/ui/DrawPreview;->drawGyroSpot(Landroid/graphics/Canvas;FFFFIZ)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    const v1, -0xffff01

    .line 3030
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->transformed_gyro_direction_up:[F

    const/16 v16, 0x1

    .line 3031
    aget v1, v0, v16

    neg-float v4, v1

    const/16 v17, 0x0

    .line 3032
    aget v0, v0, v17

    neg-float v5, v0

    const/16 v6, 0x2d

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    .line 3033
    invoke-direct/range {v0 .. v7}, Lnet/sourceforge/opencamera/ui/DrawPreview;->drawGyroSpot(Landroid/graphics/Canvas;FFFFIZ)V

    goto :goto_10

    :cond_23
    move-object v14, v5

    move/from16 v21, v7

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 3050
    :goto_10
    invoke-virtual {v15}, Lnet/sourceforge/opencamera/GyroSensor;->isUpright()I

    move-result v0

    if-eqz v0, :cond_25

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3eb2b8c2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_25

    .line 3052
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v13

    .line 3053
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v9, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->scale_dp:F

    const/high16 v1, 0x42800000    # 64.0f

    mul-float v1, v1, v0

    add-float v1, v1, v18

    float-to-int v1, v1

    const/high16 v2, 0x42a00000    # 80.0f

    mul-float v0, v0, v2

    add-float v0, v0, v18

    float-to-int v0, v0

    .line 3056
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v0

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    .line 3057
    div-int/lit8 v1, v1, 0x2

    sub-int v4, v2, v1

    sub-int v5, v3, v1

    add-int/2addr v2, v1

    add-int/2addr v3, v1

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3063
    invoke-virtual {v15}, Lnet/sourceforge/opencamera/GyroSensor;->isUpright()I

    move-result v0

    if-lez v0, :cond_24

    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->rotate_left_bitmap:Landroid/graphics/Bitmap;

    goto :goto_11

    :cond_24
    iget-object v0, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->rotate_right_bitmap:Landroid/graphics/Bitmap;

    :goto_11
    iget-object v1, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->icon_dest:Landroid/graphics/Rect;

    iget-object v2, v8, Lnet/sourceforge/opencamera/ui/DrawPreview;->p:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v14, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3064
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_25
    move-object v5, v14

    const/4 v14, -0x1

    goto/16 :goto_d

    :cond_26
    return-void
.end method

.method public onExtraOSDValuesChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->OSDLine1:Ljava/lang/String;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->OSDLine2:Ljava/lang/String;

    return-void
.end method

.method public setCoverPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->cover_preview:Z

    return-void
.end method

.method public setDimPreview(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2769
    sget-object p1, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;->DIM_PREVIEW_ON:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->dim_preview:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->dim_preview:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    .line 2771
    sget-object v0, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;->DIM_PREVIEW_ON:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    if-ne p1, v0, :cond_1

    .line 2772
    sget-object p1, Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;->DIM_PREVIEW_UNTIL:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->dim_preview:Lnet/sourceforge/opencamera/ui/DrawPreview$DimPreview;

    :cond_1
    :goto_0
    return-void
.end method

.method public setGyroDirectionMarker(FFF)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->enable_gyro_target_spot:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->gyro_directions:Ljava/util/List;

    .line 632
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 633
    invoke-virtual {p0, p1, p2, p3}, Lnet/sourceforge/opencamera/ui/DrawPreview;->addGyroDirectionMarker(FFF)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->gyro_direction_up:[F

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 634
    aput p3, p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    .line 635
    aput p2, p1, v0

    const/4 p2, 0x2

    .line 636
    aput p3, p1, p2

    return-void
.end method

.method public setImageQueueFull(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->image_queue_full:Z

    return-void
.end method

.method public showLastImage()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_last_image:Z

    return-void
.end method

.method public turnFrontScreenFlashOn()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->front_screen_flash:Z

    return-void
.end method

.method public updateSettings()V
    .locals 9

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 655
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getPhotoMode()Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->photoMode:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_show_time"

    const/4 v2, 0x1

    .line 659
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_time_pref:Z

    .line 661
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->dateFormatTimeInstance:Ljava/text/DateFormat;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->current_time_string:Ljava/lang/String;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_current_time_time:J

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->text_bounds_time:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 666
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->isMultiCam()Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "preference_show_camera_id"

    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_camera_id_pref:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "preference_free_memory"

    .line 668
    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_free_memory_pref:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "preference_show_iso"

    .line 669
    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_iso_pref:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "preference_show_video_max_amp"

    .line 670
    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_video_max_amp_pref:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "preference_show_zoom"

    .line 671
    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_zoom_pref:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "preference_show_battery"

    .line 672
    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_battery_pref:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "preference_show_angle"

    .line 674
    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_angle_pref:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "preference_angle_highlight_color"

    const-string v7, "#14e715"

    .line 675
    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 676
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->angle_highlight_color_pref:I

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "preference_show_geo_direction"

    .line 677
    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_geo_direction_pref:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "preference_take_photo_border"

    .line 679
    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->take_photo_border_pref:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "preference_preview_size"

    const-string v7, "preference_preview_size_wysiwyg"

    .line 680
    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->preview_size_wysiwyg_pref:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "preference_location"

    .line 681
    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->store_location_pref:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "preference_show_angle_line"

    .line 683
    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_angle_line_pref:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "preference_show_pitch_lines"

    .line 684
    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_pitch_lines_pref:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "preference_show_geo_direction_lines"

    .line 685
    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->show_geo_direction_lines_pref:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "preference_immersive_mode"

    const-string v7, "immersive_mode_low_profile"

    .line 687
    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "immersive_mode_everything"

    .line 688
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->immersive_mode_everything_pref:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 690
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getStampPref()Ljava/lang/String;

    move-result-object v1

    const-string v6, "preference_stamp_yes"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->has_stamp_pref:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 691
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getRawPref()Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;

    move-result-object v1

    sget-object v6, Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;->RAWPREF_JPEG_ONLY:Lnet/sourceforge/opencamera/preview/ApplicationInterface$RawPref;

    if-eq v1, v6, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->is_raw_pref:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 692
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->isRawOnly()Z

    move-result v1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->is_raw_only_pref:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 693
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getFaceDetectionPref()Z

    move-result v1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->is_face_detection_pref:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 694
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getRecordAudioPref()Z

    move-result v1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->is_audio_enabled_pref:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 696
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->fpsIsHighSpeed()Z

    move-result v1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->is_high_speed:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 697
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getVideoCaptureRateFactor()F

    move-result v1

    iput v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->capture_rate_factor:F

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 699
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getAutoStabilisePref()Z

    move-result v1

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->auto_stabilise_pref:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "preference_grid"

    const-string v7, "preference_grid_none"

    .line 701
    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->preference_grid_pref:Ljava/lang/String;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "preference_ghost_image"

    const-string v7, "preference_ghost_image_off"

    .line 703
    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_image_pref:Ljava/lang/String;

    const-string v6, "preference_ghost_image_selected"

    .line 704
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, ""

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "preference_ghost_selected_image_saf"

    .line 705
    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const-string v8, "keyguard"

    .line 709
    invoke-virtual {v7, v8}, Lnet/sourceforge/opencamera/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/KeyguardManager;

    if-eqz v7, :cond_2

    .line 710
    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_selected_image_bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 717
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_selected_image_bitmap:Landroid/graphics/Bitmap;

    iput-object v6, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_selected_image_pref:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_selected_image_pref:Ljava/lang/String;

    .line 722
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_selected_image_pref:Ljava/lang/String;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_selected_image_bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 727
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_selected_image_bitmap:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_selected_image_pref:Ljava/lang/String;

    .line 730
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 732
    :try_start_0
    invoke-direct {p0, v1}, Lnet/sourceforge/opencamera/ui/DrawPreview;->loadBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_selected_image_bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 735
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "failed to load ghost_selected_image uri: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "DrawPreview"

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_selected_image_bitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_selected_image_bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 744
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_selected_image_bitmap:Landroid/graphics/Bitmap;

    :cond_5
    iput-object v6, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_selected_image_pref:Ljava/lang/String;

    :cond_6
    :goto_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 749
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getGhostImageAlpha()I

    move-result v0

    iput v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->ghost_image_alpha:I

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_histogram"

    const-string v6, "preference_histogram_off"

    .line 751
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 752
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->supportsPreviewBitmaps()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->want_histogram:Z

    .line 753
    sget-object v1, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->HISTOGRAM_TYPE_VALUE:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    iput-object v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->histogram_type:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->want_histogram:Z

    const/4 v6, -0x1

    if-eqz v1, :cond_d

    .line 755
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_4
    const/4 v0, -0x1

    goto :goto_5

    :sswitch_0
    const-string v1, "preference_histogram_luminance"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x4

    goto :goto_5

    :sswitch_1
    const-string v1, "preference_histogram_lightness"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v0, 0x3

    goto :goto_5

    :sswitch_2
    const-string v1, "preference_histogram_intensity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    const/4 v0, 0x2

    goto :goto_5

    :sswitch_3
    const-string v1, "preference_histogram_rgb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    const/4 v0, 0x1

    goto :goto_5

    :sswitch_4
    const-string v1, "preference_histogram_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    :goto_5
    packed-switch v0, :pswitch_data_0

    goto :goto_6

    .line 760
    :pswitch_0
    sget-object v0, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->HISTOGRAM_TYPE_LUMINANCE:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->histogram_type:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    goto :goto_6

    .line 769
    :pswitch_1
    sget-object v0, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->HISTOGRAM_TYPE_LIGHTNESS:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->histogram_type:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    goto :goto_6

    .line 766
    :pswitch_2
    sget-object v0, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->HISTOGRAM_TYPE_INTENSITY:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->histogram_type:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    goto :goto_6

    .line 757
    :pswitch_3
    sget-object v0, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->HISTOGRAM_TYPE_RGB:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->histogram_type:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    goto :goto_6

    .line 763
    :pswitch_4
    sget-object v0, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->HISTOGRAM_TYPE_VALUE:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->histogram_type:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    :cond_d
    :goto_6
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_zebra_stripes"

    const-string v7, "0"

    .line 774
    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 776
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->zebra_stripes_threshold:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 781
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    iput v5, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->zebra_stripes_threshold:I

    :goto_7
    iget v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->zebra_stripes_threshold:I

    if-eqz v0, :cond_e

    const/4 v5, 0x1

    :cond_e
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 784
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->supportsPreviewBitmaps()Z

    move-result v0

    and-int/2addr v0, v5

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->want_zebra_stripes:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_zebra_stripes_foreground_color"

    const-string v5, "#ff000000"

    .line 786
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 787
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->zebra_stripes_color_foreground:I

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_zebra_stripes_background_color"

    const-string v5, "#ffffffff"

    .line 788
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 789
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->zebra_stripes_color_background:I

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 791
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getFocusPeakingPref()Z

    move-result v0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->want_focus_peaking:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preference_focus_peaking_color"

    const-string v5, "#ffffff"

    .line 792
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 793
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->focus_peaking_color_pref:I

    iput-wide v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_camera_id_time:J

    iput-wide v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_view_angles_time:J

    iput-wide v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_take_photo_top_time:J

    iput-wide v3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_top_icon_shift_time:J

    iput v6, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->focus_seekbars_margin_left:I

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->has_settings:Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x28c1a88e -> :sswitch_4
        0x29f0b0e -> :sswitch_3
        0x240ff5b4 -> :sswitch_2
        0x2f3721ee -> :sswitch_1
        0x4c852279 -> :sswitch_0
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

.method public updateThumbnail(Landroid/graphics/Bitmap;ZZ)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->applicationInterface:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 532
    invoke-virtual {p3}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getThumbnailAnimationPref()Z

    move-result p3

    if-eqz p3, :cond_0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim:Z

    .line 536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->thumbnail_anim_start_ms:J

    iget p3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->test_thumbnail_anim_count:I

    add-int/2addr p3, v0

    iput p3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->test_thumbnail_anim_count:I

    :cond_0
    iget-object p3, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_thumbnail:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_thumbnail:Landroid/graphics/Bitmap;

    iput-boolean p2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->last_thumbnail_is_video:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview;->allow_ghost_last_image:Z

    if-eqz p3, :cond_1

    .line 547
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method
