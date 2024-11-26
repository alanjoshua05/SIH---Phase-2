.class public Lnet/sourceforge/opencamera/TakePhoto;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TakePhoto.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TakePhoto"

.field public static TAKE_PHOTO:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lnet/sourceforge/opencamera/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x14000000

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lnet/sourceforge/opencamera/TakePhoto;->TAKE_PHOTO:Z

    .line 31
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/TakePhoto;->startActivity(Landroid/content/Intent;)V

    .line 34
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/TakePhoto;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 40
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method
