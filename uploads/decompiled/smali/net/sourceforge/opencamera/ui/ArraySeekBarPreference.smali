.class public Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "ArraySeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private final default_value:Ljava/lang/String;

.field private entries:[Ljava/lang/CharSequence;

.field private seekbar:Landroid/widget/SeekBar;

.field private textView:Landroid/widget/TextView;

.field private value:Ljava/lang/String;

.field private value_set:Z

.field private values:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "defaultValue"

    const-string v0, "http://schemas.android.com/apk/res/android"

    .line 35
    invoke-interface {p2, v0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->default_value:Ljava/lang/String;

    const-string p1, "entries"

    const/4 v1, 0x0

    .line 37
    invoke-interface {p2, v0, p1, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_0

    .line 39
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->setEntries(I)V

    :cond_0
    const-string p1, "entryValues"

    .line 40
    invoke-interface {p2, v0, p1, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_1

    .line 42
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->setEntryValues(I)V

    :cond_1
    const p1, 0x7f0c0020

    .line 44
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->setDialogLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;)[Ljava/lang/CharSequence;
    .locals 0

    .line 18
    iget-object p0, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->entries:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$100(Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;)Landroid/widget/TextView;
    .locals 0

    .line 18
    iget-object p0, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method private getEntry()Ljava/lang/CharSequence;
    .locals 2

    .line 157
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->getValueIndex()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->entries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 158
    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getValueIndex()I
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->values:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 145
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->values:[Ljava/lang/CharSequence;

    .line 146
    aget-object v1, v1, v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private setEntries(I)V
    .locals 1

    .line 118
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setEntryValues(I)V
    .locals 1

    .line 126
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setValue(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->value:Ljava/lang/String;

    .line 162
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->value_set:Z

    if-nez v2, :cond_1

    :cond_0
    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->value:Ljava/lang/String;

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->value_set:Z

    .line 166
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->persistString(Ljava/lang/String;)Z

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->notifyChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .line 131
    invoke-super {p0}, Landroid/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    .line 134
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    .line 49
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->entries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->values:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 54
    array-length v0, v0

    array-length v1, v1

    if-ne v0, v1, :cond_3

    const v0, 0x7f090041

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->seekbar:Landroid/widget/SeekBar;

    const v0, 0x7f090042

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->textView:Landroid/widget/TextView;

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->seekbar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->entries:[Ljava/lang/CharSequence;

    .line 61
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 63
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->getValueIndex()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->default_value:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->values:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 69
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->values:[Ljava/lang/CharSequence;

    .line 70
    aget-object v1, v1, v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->default_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move p1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->seekbar:Landroid/widget/SeekBar;

    .line 78
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->seekbar:Landroid/widget/SeekBar;

    .line 80
    new-instance v0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference$1;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference$1;-><init>(Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->entries:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->seekbar:Landroid/widget/SeekBar;

    .line 96
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    aget-object p1, p1, v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->textView:Landroid/widget/TextView;

    .line 97
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 55
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ArraySeekBarPreference requires entries and entryValues arrays of same length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ArraySeekBarPreference requires entries and entryValues array"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->values:[Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->seekbar:Landroid/widget/SeekBar;

    .line 105
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->values:[Ljava/lang/CharSequence;

    .line 106
    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 175
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    check-cast p1, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference$SavedState;

    .line 203
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 204
    iget-object p1, p1, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference$SavedState;->value:Ljava/lang/String;

    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->setValue(Ljava/lang/String;)V

    return-void

    .line 198
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 185
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 190
    :cond_0
    new-instance v1, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->value:Ljava/lang/String;

    .line 191
    iput-object v0, v1, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference$SavedState;->value:Ljava/lang/String;

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->value:Ljava/lang/String;

    .line 180
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->entries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->values:[Ljava/lang/CharSequence;

    return-void
.end method
