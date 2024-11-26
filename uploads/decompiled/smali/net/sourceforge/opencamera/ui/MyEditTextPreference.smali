.class public Lnet/sourceforge/opencamera/ui/MyEditTextPreference;
.super Landroid/preference/DialogPreference;
.source "MyEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/ui/MyEditTextPreference$SavedState;
    }
.end annotation


# instance fields
.field private dialogMessage:Ljava/lang/String;

.field private edittext:Landroid/widget/EditText;

.field private final inputType:I

.field private value:Ljava/lang/String;

.field private value_set:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->dialogMessage:Ljava/lang/String;

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "dialogMessage"

    const/4 v2, 0x0

    .line 42
    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 44
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->dialogMessage:Ljava/lang/String;

    :cond_0
    const-string p1, "inputType"

    .line 46
    invoke-interface {p2, v0, p1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->inputType:I

    const p1, 0x7f0c0023

    .line 48
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->setDialogLayoutResource(I)V

    return-void
.end method

.method private setValue(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->value:Ljava/lang/String;

    .line 83
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->value_set:Z

    if-nez v2, :cond_1

    :cond_0
    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->value:Ljava/lang/String;

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->value_set:Z

    .line 87
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->persistString(Ljava/lang/String;)Z

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->notifyChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->value:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x7f09009b

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->edittext:Landroid/widget/EditText;

    iget v1, p0, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->inputType:I

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    const v0, 0x7f09009c

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->dialogMessage:Ljava/lang/String;

    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->value:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->edittext:Landroid/widget/EditText;

    .line 62
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->edittext:Landroid/widget/EditText;

    .line 71
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/sourceforge/opencamera/ui/MyEditTextPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    check-cast p1, Lnet/sourceforge/opencamera/ui/MyEditTextPreference$SavedState;

    .line 124
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MyEditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 125
    iget-object p1, p1, Lnet/sourceforge/opencamera/ui/MyEditTextPreference$SavedState;->value:Ljava/lang/String;

    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->setValue(Ljava/lang/String;)V

    return-void

    .line 119
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 106
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 111
    :cond_0
    new-instance v1, Lnet/sourceforge/opencamera/ui/MyEditTextPreference$SavedState;

    invoke-direct {v1, v0}, Lnet/sourceforge/opencamera/ui/MyEditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->value:Ljava/lang/String;

    .line 112
    iput-object v0, v1, Lnet/sourceforge/opencamera/ui/MyEditTextPreference$SavedState;->value:Ljava/lang/String;

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->value:Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/ui/MyEditTextPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
