.class Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;
.super Ljava/lang/Object;
.source "MyApplicationInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/MyApplicationInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastImage"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final share:Z

.field uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Z)V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;->name:Ljava/lang/String;

    iput-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;->uri:Landroid/net/Uri;

    iput-boolean p2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;->share:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;->name:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;->uri:Landroid/net/Uri;

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;->uri:Landroid/net/Uri;

    :goto_0
    iput-boolean p2, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$LastImage;->share:Z

    return-void
.end method
