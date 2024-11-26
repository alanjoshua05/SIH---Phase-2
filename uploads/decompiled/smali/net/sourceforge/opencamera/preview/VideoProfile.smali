.class public Lnet/sourceforge/opencamera/preview/VideoProfile;
.super Ljava/lang/Object;
.source "VideoProfile.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoProfile"


# instance fields
.field public audioBitRate:I

.field public audioChannels:I

.field public audioCodec:I

.field public audioSampleRate:I

.field public audioSource:I

.field public fileExtension:Ljava/lang/String;

.field public fileFormat:I

.field public no_audio_permission:Z

.field public record_audio:Z

.field public videoBitRate:I

.field public videoCaptureRate:D

.field public videoCodec:I

.field public videoFrameHeight:I

.field public videoFrameRate:I

.field public videoFrameWidth:I

.field public videoSource:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mp4"

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->fileExtension:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/media/CamcorderProfile;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mp4"

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->fileExtension:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->record_audio:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->no_audio_permission:Z

    const/4 v1, 0x5

    iput v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioSource:I

    .line 45
    iget v1, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    iput v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioCodec:I

    .line 46
    iget v1, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    iput v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioChannels:I

    .line 47
    iget v1, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    iput v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioBitRate:I

    .line 48
    iget v1, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iput v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioSampleRate:I

    .line 49
    iget v1, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    iput v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->fileFormat:I

    iput v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoSource:I

    .line 51
    iget v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    iput v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCodec:I

    .line 52
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameRate:I

    .line 53
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v0, v0

    iput-wide v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D

    .line 54
    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    iput v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoBitRate:I

    .line 55
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameHeight:I

    .line 56
    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput p1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameWidth:I

    return-void
.end method


# virtual methods
.method public copyToMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 5

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->record_audio:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioSource:I

    .line 87
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_0
    iget v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoSource:I

    .line 89
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    iget v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->fileFormat:I

    .line 92
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameRate:I

    .line 95
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    iget-wide v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D

    iget v2, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameRate:I

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 100
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    :cond_1
    iget v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameWidth:I

    iget v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameHeight:I

    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    iget v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoBitRate:I

    .line 103
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    iget v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCodec:I

    .line 104
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->record_audio:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioBitRate:I

    .line 106
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    iget v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioChannels:I

    .line 107
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioSampleRate:I

    .line 108
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    iget v0, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioCodec:I

    .line 109
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\nAudioSource:        "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nVideoSource:        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nFileFormat:         "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->fileFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nFileExtension:         "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->fileExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nAudioCodec:         "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioCodec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nAudioChannels:      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioChannels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nAudioBitrate:       "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioBitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nAudioSampleRate:    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->audioSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nVideoCodec:         "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCodec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nVideoFrameRate:     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nVideoCaptureRate:   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoCaptureRate:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\nVideoBitRate:       "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoBitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nVideoWidth:         "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nVideoHeight:        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sourceforge/opencamera/preview/VideoProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
