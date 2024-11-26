.class Lnet/sourceforge/opencamera/ImageSaver$Request;
.super Ljava/lang/Object;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/ImageSaver$Request$Type;,
        Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;,
        Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;,
        Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;,
        Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;
    }
.end annotation


# instance fields
.field camera_view_angle_x:F

.field camera_view_angle_y:F

.field final color:I

.field final current_date:Ljava/util/Date;

.field final custom_tag_artist:Ljava/lang/String;

.field final custom_tag_copyright:Ljava/lang/String;

.field do_auto_stabilise:Z

.field final exposure_time:J

.field final font_size:I

.field final force_suffix:Z

.field final geo_direction:D

.field final gyro_rotation_matrix:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[F>;"
        }
    .end annotation
.end field

.field final image_capture_intent:Z

.field final image_capture_intent_uri:Landroid/net/Uri;

.field image_format:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

.field image_quality:I

.field final is_front_facing:Z

.field final iso:I

.field final jpeg_images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field final level_angle:D

.field final location:Landroid/location/Location;

.field mirror:Z

.field final panorama_crop:Z

.field panorama_dir_left_to_right:Z

.field final pitch_angle:D

.field final pref_style:Ljava/lang/String;

.field final preference_hdr_contrast_enhancement:Ljava/lang/String;

.field final preference_hdr_tonemapping_algorithm:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

.field preference_stamp:Ljava/lang/String;

.field final preference_stamp_dateformat:Ljava/lang/String;

.field final preference_stamp_gpsformat:Ljava/lang/String;

.field final preference_stamp_timeformat:Ljava/lang/String;

.field preference_textstamp:Ljava/lang/String;

.field final preference_units_distance:Ljava/lang/String;

.field final process_type:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

.field final raw_image:Lnet/sourceforge/opencamera/cameracontroller/RawImage;

.field final remove_device_exif:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

.field final sample_factor:I

.field final save_base:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

.field final store_geo_direction:Z

.field final store_location:Z

.field final store_ypr:Z

.field final suffix_offset:I

.field final type:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

.field final using_camera2:Z

.field final using_camera_extensions:Z

.field final zoom_factor:F


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ImageSaver$Request$Type;Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;ZILnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;Ljava/util/List;Lnet/sourceforge/opencamera/cameracontroller/RawImage;ZLandroid/net/Uri;ZZLnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;IZDLjava/util/List;ZZLjava/util/Date;Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;Ljava/lang/String;IJFLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;ZLandroid/location/Location;ZDDZLjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sourceforge/opencamera/ImageSaver$Request$Type;",
            "Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;",
            "ZI",
            "Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;",
            "Ljava/util/List<",
            "[B>;",
            "Lnet/sourceforge/opencamera/cameracontroller/RawImage;",
            "Z",
            "Landroid/net/Uri;",
            "ZZ",
            "Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;",
            "IZD",
            "Ljava/util/List<",
            "[F>;ZZ",
            "Ljava/util/Date;",
            "Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;",
            "Ljava/lang/String;",
            "IJF",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;",
            "Z",
            "Landroid/location/Location;",
            "ZDDZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->type:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    move-object v1, p2

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->process_type:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    move v1, p3

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->force_suffix:Z

    move v1, p4

    iput v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->suffix_offset:I

    move-object v1, p5

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->save_base:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    move-object v1, p6

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    move-object v1, p7

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->raw_image:Lnet/sourceforge/opencamera/cameracontroller/RawImage;

    move v1, p8

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_capture_intent:Z

    move-object v1, p9

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_capture_intent_uri:Landroid/net/Uri;

    move v1, p10

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->using_camera2:Z

    move v1, p11

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->using_camera_extensions:Z

    move-object v1, p12

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_format:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    move/from16 v1, p13

    iput v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_quality:I

    move/from16 v1, p14

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->do_auto_stabilise:Z

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->level_angle:D

    move-object/from16 v1, p17

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->gyro_rotation_matrix:Ljava/util/List;

    move/from16 v1, p18

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->is_front_facing:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->mirror:Z

    move-object/from16 v1, p20

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->current_date:Ljava/util/Date;

    move-object/from16 v1, p21

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_hdr_tonemapping_algorithm:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    move-object/from16 v1, p22

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_hdr_contrast_enhancement:Ljava/lang/String;

    move/from16 v1, p23

    iput v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->iso:I

    move-wide/from16 v1, p24

    iput-wide v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->exposure_time:J

    move/from16 v1, p26

    iput v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->zoom_factor:F

    move-object/from16 v1, p27

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_stamp:Ljava/lang/String;

    move-object/from16 v1, p28

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_textstamp:Ljava/lang/String;

    move/from16 v1, p29

    iput v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->font_size:I

    move/from16 v1, p30

    iput v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->color:I

    move-object/from16 v1, p31

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->pref_style:Ljava/lang/String;

    move-object/from16 v1, p32

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_stamp_dateformat:Ljava/lang/String;

    move-object/from16 v1, p33

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_stamp_timeformat:Ljava/lang/String;

    move-object/from16 v1, p34

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_stamp_gpsformat:Ljava/lang/String;

    move-object/from16 v1, p35

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_units_distance:Ljava/lang/String;

    move/from16 v1, p36

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->panorama_crop:Z

    move-object/from16 v1, p37

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->remove_device_exif:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    move/from16 v1, p38

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->store_location:Z

    move-object/from16 v1, p39

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->location:Landroid/location/Location;

    move/from16 v1, p40

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->store_geo_direction:Z

    move-wide/from16 v1, p41

    iput-wide v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->geo_direction:D

    move-wide/from16 v1, p43

    iput-wide v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->pitch_angle:D

    move/from16 v1, p45

    iput-boolean v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->store_ypr:Z

    move-object/from16 v1, p46

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->custom_tag_artist:Ljava/lang/String;

    move-object/from16 v1, p47

    iput-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->custom_tag_copyright:Ljava/lang/String;

    move/from16 v1, p48

    iput v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->sample_factor:I

    return-void
.end method


# virtual methods
.method copy()Lnet/sourceforge/opencamera/ImageSaver$Request;
    .locals 53

    move-object/from16 v0, p0

    .line 271
    new-instance v50, Lnet/sourceforge/opencamera/ImageSaver$Request;

    move-object/from16 v1, v50

    iget-object v2, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->type:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    iget-object v3, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->process_type:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    iget-boolean v4, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->force_suffix:Z

    iget v5, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->suffix_offset:I

    iget-object v6, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->save_base:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    iget-object v7, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->jpeg_images:Ljava/util/List;

    iget-object v8, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->raw_image:Lnet/sourceforge/opencamera/cameracontroller/RawImage;

    iget-boolean v9, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_capture_intent:Z

    iget-object v10, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_capture_intent_uri:Landroid/net/Uri;

    iget-boolean v11, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->using_camera2:Z

    iget-boolean v12, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->using_camera_extensions:Z

    iget-object v13, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_format:Lnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;

    iget v14, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->image_quality:I

    iget-boolean v15, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->do_auto_stabilise:Z

    move-object/from16 v51, v1

    move-object/from16 v52, v2

    iget-wide v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->level_angle:D

    move-wide/from16 v16, v1

    iget-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->gyro_rotation_matrix:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->is_front_facing:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->mirror:Z

    move/from16 v20, v1

    iget-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->current_date:Ljava/util/Date;

    move-object/from16 v21, v1

    iget-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_hdr_tonemapping_algorithm:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_hdr_contrast_enhancement:Ljava/lang/String;

    move-object/from16 v23, v1

    iget v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->iso:I

    move/from16 v24, v1

    iget-wide v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->exposure_time:J

    move-wide/from16 v25, v1

    iget v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->zoom_factor:F

    move/from16 v27, v1

    iget-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_stamp:Ljava/lang/String;

    move-object/from16 v28, v1

    iget-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_textstamp:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->font_size:I

    move/from16 v30, v1

    iget v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->color:I

    move/from16 v31, v1

    iget-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->pref_style:Ljava/lang/String;

    move-object/from16 v32, v1

    iget-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_stamp_dateformat:Ljava/lang/String;

    move-object/from16 v33, v1

    iget-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_stamp_timeformat:Ljava/lang/String;

    move-object/from16 v34, v1

    iget-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_stamp_gpsformat:Ljava/lang/String;

    move-object/from16 v35, v1

    iget-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->preference_units_distance:Ljava/lang/String;

    move-object/from16 v36, v1

    iget-boolean v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->panorama_crop:Z

    move/from16 v37, v1

    iget-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->remove_device_exif:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    move-object/from16 v38, v1

    iget-boolean v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->store_location:Z

    move/from16 v39, v1

    iget-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->location:Landroid/location/Location;

    move-object/from16 v40, v1

    iget-boolean v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->store_geo_direction:Z

    move/from16 v41, v1

    iget-wide v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->geo_direction:D

    move-wide/from16 v42, v1

    iget-wide v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->pitch_angle:D

    move-wide/from16 v44, v1

    iget-boolean v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->store_ypr:Z

    move/from16 v46, v1

    iget-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->custom_tag_artist:Ljava/lang/String;

    move-object/from16 v47, v1

    iget-object v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->custom_tag_copyright:Ljava/lang/String;

    move-object/from16 v48, v1

    iget v1, v0, Lnet/sourceforge/opencamera/ImageSaver$Request;->sample_factor:I

    move/from16 v49, v1

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-direct/range {v1 .. v49}, Lnet/sourceforge/opencamera/ImageSaver$Request;-><init>(Lnet/sourceforge/opencamera/ImageSaver$Request$Type;Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;ZILnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;Ljava/util/List;Lnet/sourceforge/opencamera/cameracontroller/RawImage;ZLandroid/net/Uri;ZZLnet/sourceforge/opencamera/ImageSaver$Request$ImageFormat;IZDLjava/util/List;ZZLjava/util/Date;Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;Ljava/lang/String;IJFLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;ZLandroid/location/Location;ZDDZLjava/lang/String;Ljava/lang/String;I)V

    return-object v50
.end method
