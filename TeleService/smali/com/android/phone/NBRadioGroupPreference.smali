.class public Lcom/android/phone/NBRadioGroupPreference;
.super Landroid/preference/PreferenceCategory;
.source "NBRadioGroupPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBRadioGroupPreference$1;,
        Lcom/android/phone/NBRadioGroupPreference$CheckedTracker;,
        Lcom/android/phone/NBRadioGroupPreference$OnCheckedChangedListener;
    }
.end annotation


# instance fields
.field private mCheckedKey:Ljava/lang/String;

.field private mChildCheckChangeListener:Lcom/android/phone/NBRadioButtonPreference$OnCheckedChangedListener;

.field private mOnCheckedChangedListener:Lcom/android/phone/NBRadioGroupPreference$OnCheckedChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/NBRadioGroupPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/NBRadioGroupPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/phone/NBRadioGroupPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/android/phone/NBRadioGroupPreference;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NBRadioGroupPreference;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBRadioGroupPreference;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBRadioGroupPreference;->mCheckedKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/NBRadioGroupPreference;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBRadioGroupPreference;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NBRadioGroupPreference;->setCheckedStateForPreference(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NBRadioGroupPreference;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBRadioGroupPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBRadioGroupPreference;->setCheckedKey(Ljava/lang/String;)V

    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    new-instance v0, Lcom/android/phone/NBRadioGroupPreference$CheckedTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NBRadioGroupPreference$CheckedTracker;-><init>(Lcom/android/phone/NBRadioGroupPreference;Lcom/android/phone/NBRadioGroupPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/NBRadioGroupPreference;->mChildCheckChangeListener:Lcom/android/phone/NBRadioButtonPreference$OnCheckedChangedListener;

    return-void
.end method

.method private needCheck(Ljava/lang/String;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/android/phone/NBRadioButtonPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBRadioGroupPreference;->mCheckedKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCheckedKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "checkedKey"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBRadioGroupPreference;->mCheckedKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/NBRadioGroupPreference;->mOnCheckedChangedListener:Lcom/android/phone/NBRadioGroupPreference$OnCheckedChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBRadioGroupPreference;->mOnCheckedChangedListener:Lcom/android/phone/NBRadioGroupPreference$OnCheckedChangedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/NBRadioGroupPreference$OnCheckedChangedListener;->onCheckedChange(Lcom/android/phone/NBRadioGroupPreference;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setCheckedStateForPreference(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "checkedKey"    # Ljava/lang/String;
    .param p2, "checked"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/phone/NBRadioGroupPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/phone/NBRadioButtonPreference;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/phone/NBRadioButtonPreference;

    .end local v0    # "preference":Landroid/preference/Preference;
    invoke-virtual {v0, p2}, Lcom/android/phone/NBRadioButtonPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addPreference(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    instance-of v1, p1, Lcom/android/phone/NBRadioButtonPreference;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/phone/NBRadioButtonPreference;

    .local v0, "radioButtonPreference":Lcom/android/phone/NBRadioButtonPreference;
    iget-object v1, p0, Lcom/android/phone/NBRadioGroupPreference;->mChildCheckChangeListener:Lcom/android/phone/NBRadioButtonPreference$OnCheckedChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/NBRadioButtonPreference;->setOnCheckedChangedListener(Lcom/android/phone/NBRadioButtonPreference$OnCheckedChangedListener;)V

    invoke-virtual {v0}, Lcom/android/phone/NBRadioButtonPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBRadioGroupPreference;->mCheckedKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/phone/NBRadioGroupPreference;->setCheckedStateForPreference(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NBRadioGroupPreference;->setCheckedKey(Ljava/lang/String;)V

    .end local v0    # "radioButtonPreference":Lcom/android/phone/NBRadioButtonPreference;
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public check(Ljava/lang/String;)V
    .locals 3
    .param p1, "preferenceKey"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/phone/NBRadioGroupPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .local v0, "preference":Landroid/preference/Preference;
    invoke-direct {p0, p1, v0}, Lcom/android/phone/NBRadioGroupPreference;->needCheck(Ljava/lang/String;Landroid/preference/Preference;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBRadioGroupPreference;->mCheckedKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/phone/NBRadioGroupPreference;->setCheckedStateForPreference(Ljava/lang/String;Z)V

    check-cast v0, Lcom/android/phone/NBRadioButtonPreference;

    .end local v0    # "preference":Landroid/preference/Preference;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NBRadioButtonPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setOnCheckedChangedListener(Lcom/android/phone/NBRadioGroupPreference$OnCheckedChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/phone/NBRadioGroupPreference$OnCheckedChangedListener;

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBRadioGroupPreference;->mOnCheckedChangedListener:Lcom/android/phone/NBRadioGroupPreference$OnCheckedChangedListener;

    return-void
.end method
