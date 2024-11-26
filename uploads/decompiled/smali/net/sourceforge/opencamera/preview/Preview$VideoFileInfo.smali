.class Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;
.super Ljava/lang/Object;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/preview/Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoFileInfo"
.end annotation


# instance fields
.field private final video_filename:Ljava/lang/String;

.field private final video_method:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

.field private final video_pfd_saf:Landroid/os/ParcelFileDescriptor;

.field private final video_uri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    sget-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->FILE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->video_method:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->video_uri:Landroid/net/Uri;

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->video_filename:Ljava/lang/String;

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->video_pfd_saf:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method constructor <init>(Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->video_method:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    iput-object p2, p0, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->video_uri:Landroid/net/Uri;

    iput-object p3, p0, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->video_filename:Ljava/lang/String;

    iput-object p4, p0, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->video_pfd_saf:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method static synthetic access$1100(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;
    .locals 0

    .line 214
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->video_method:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    return-object p0
.end method

.method static synthetic access$1200(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Landroid/net/Uri;
    .locals 0

    .line 214
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->video_uri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$1300(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Ljava/lang/String;
    .locals 0

    .line 214
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->video_filename:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3400(Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 214
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->video_pfd_saf:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method


# virtual methods
.method close()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$VideoFileInfo;->video_pfd_saf:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 236
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
