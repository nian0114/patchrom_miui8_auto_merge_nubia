.class public Lcn/nubia/commonui/preference/ListPreference;
.super Lcn/nubia/commonui/preference/DialogPreference;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/preference/ListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    const-string v1, "ListPreference"

    invoke-static {v1}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v1, "ListPreference_entries"

    invoke-static {v1}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 55
    const-string v1, "ListPreference_entryValues"

    invoke-static {v1}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    const-string v1, "Preference"

    invoke-static {v1}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    const-string v1, "Preference_summary"

    invoke-static {v1}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mSummary:Ljava/lang/String;

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/commonui/preference/ListPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/preference/ListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcn/nubia/commonui/preference/ListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 235
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 237
    iget-object v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 236
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 242
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 224
    invoke-direct {p0}, Lcn/nubia/commonui/preference/ListPreference;->getValueIndex()I

    move-result v0

    .line 225
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 170
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 171
    .local v0, "entry":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 172
    invoke-super {p0}, Lcn/nubia/commonui/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 174
    .end local v0    # "entry":Ljava/lang/CharSequence;
    :goto_0
    return-object v1

    .restart local v0    # "entry":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mSummary:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string v0, ""

    .end local v0    # "entry":Ljava/lang/CharSequence;
    :cond_1
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/DialogPreference;->onDialogClosed(Z)V

    .line 285
    if-eqz p1, :cond_0

    iget v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mClickedDialogEntryIndex:I

    iget-object v2, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v2, p0, Lcn/nubia/commonui/preference/ListPreference;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v2, p0, Lcn/nubia/commonui/preference/ListPreference;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 294
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 298
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Lcn/nubia/commonui/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Lcn/nubia/commonui/app/AlertDialog$Builder;

    .prologue
    const/4 v3, 0x0

    .line 251
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/DialogPreference;->onPrepareDialogBuilder(Lcn/nubia/commonui/app/AlertDialog$Builder;)V

    .line 253
    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1
    invoke-direct {p0}, Lcn/nubia/commonui/preference/ListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mClickedDialogEntryIndex:I

    .line 259
    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Lcn/nubia/commonui/preference/ListPreference$1;

    invoke-direct {v2, p0}, Lcn/nubia/commonui/preference/ListPreference$1;-><init>(Lcn/nubia/commonui/preference/ListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 278
    invoke-virtual {p1, v3, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 279
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 321
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcn/nubia/commonui/preference/ListPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 323
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 330
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 327
    check-cast v0, Lcn/nubia/commonui/preference/ListPreference$SavedState;

    .line 328
    .local v0, "myState":Lcn/nubia/commonui/preference/ListPreference$SavedState;
    invoke-virtual {v0}, Lcn/nubia/commonui/preference/ListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcn/nubia/commonui/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 329
    iget-object v1, v0, Lcn/nubia/commonui/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 308
    invoke-super {p0}, Lcn/nubia/commonui/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 309
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/ListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 314
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcn/nubia/commonui/preference/ListPreference$SavedState;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 315
    .local v0, "myState":Lcn/nubia/commonui/preference/ListPreference$SavedState;
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/commonui/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    move-object v1, v0

    .line 316
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 303
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/ListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 304
    return-void

    .line 303
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I

    .prologue
    .line 101
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 93
    iput-object p1, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 94
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .prologue
    .line 121
    iput-object p1, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 122
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 190
    if-nez p1, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mSummary:Ljava/lang/String;

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 149
    iget-object v2, p0, Lcn/nubia/commonui/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 150
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcn/nubia/commonui/preference/ListPreference;->mValueSet:Z

    if-nez v2, :cond_1

    .line 151
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 152
    iput-boolean v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mValueSet:Z

    .line 153
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/ListPreference;->persistString(Ljava/lang/String;)Z

    .line 154
    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/ListPreference;->notifyChanged()V

    .line 158
    :cond_1
    return-void

    .line 149
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValueIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 206
    :cond_0
    return-void
.end method
