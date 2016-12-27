.class public Lcom/android/settings_ex/TimeoutLockingPreference;
.super Landroid/preference/Preference;
.source "TimeoutLockingPreference.java"


# instance fields
.field private MAX:I

.field private entries:[I

.field private mContext:Landroid/content/Context;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v0, 0x9

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput v0, p0, Lcom/android/settings_ex/TimeoutLockingPreference;->MAX:I

    .line 47
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/TimeoutLockingPreference;->entries:[I

    .line 51
    iput-object p1, p0, Lcom/android/settings_ex/TimeoutLockingPreference;->mContext:Landroid/content/Context;

    .line 52
    const v0, 0x7f040132

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/TimeoutLockingPreference;->setLayoutResource(I)V

    .line 53
    return-void

    .line 47
    nop

    :array_0
    .array-data 4
        0x7f1200df
        0x7f1200e2
        0x7f1202f1
        0x7f1202f2
        0x7f1202f3
        0x7f1202f4
        0x7f1202f5
        0x7f1202f6
        0x7f1202f7
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings_ex/TimeoutLockingPreference;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TimeoutLockingPreference;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TimeoutLockingPreference;->setLockTimeout(I)V

    return-void
.end method

.method private getLockTimeout()I
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/TimeoutLockingPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const/16 v2, 0x1388

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setLockTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/TimeoutLockingPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private timeoutToProgress(I)I
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    const v0, 0x7f1202f1

    .line 106
    if-nez p1, :cond_1

    .line 107
    const v0, 0x7f1200df

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    const/16 v1, 0x1388

    if-gt p1, v1, :cond_2

    .line 109
    const v0, 0x7f1200e2

    goto :goto_0

    .line 110
    :cond_2
    const/16 v1, 0x3a98

    if-le p1, v1, :cond_0

    .line 112
    const/16 v1, 0x7530

    if-gt p1, v1, :cond_3

    .line 113
    const v0, 0x7f1202f2

    goto :goto_0

    .line 114
    :cond_3
    const v1, 0xea60

    if-gt p1, v1, :cond_4

    .line 115
    const v0, 0x7f1202f3

    goto :goto_0

    .line 116
    :cond_4
    const v1, 0x1d4c0

    if-gt p1, v1, :cond_5

    .line 117
    const v0, 0x7f1202f4

    goto :goto_0

    .line 118
    :cond_5
    const v1, 0x493e0

    if-gt p1, v1, :cond_6

    .line 119
    const v0, 0x7f1202f5

    goto :goto_0

    .line 120
    :cond_6
    const v1, 0x927c0

    if-gt p1, v1, :cond_7

    .line 121
    const v0, 0x7f1202f6

    goto :goto_0

    .line 122
    :cond_7
    const v1, 0x1b7740

    if-gt p1, v1, :cond_0

    .line 123
    const v0, 0x7f1202f7

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 59
    const v1, 0x7f1202f0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/android/settings_ex/TimeoutLockingPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/TimeoutLockingPreference;->entries:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/android/settings_ex/TimeoutLockingPreference;->entries:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings_ex/TimeoutLockingPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 62
    iget v1, p0, Lcom/android/settings_ex/TimeoutLockingPreference;->MAX:I

    if-lt v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/settings_ex/TimeoutLockingPreference;->mRadioButton:Landroid/widget/RadioButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 60
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/TimeoutLockingPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Lcom/android/settings_ex/TimeoutLockingPreference;->getLockTimeout()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/TimeoutLockingPreference;->timeoutToProgress(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 68
    iget-object v1, p0, Lcom/android/settings_ex/TimeoutLockingPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v2, Lcom/android/settings_ex/TimeoutLockingPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/TimeoutLockingPreference$1;-><init>(Lcom/android/settings_ex/TimeoutLockingPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 103
    return-void
.end method

.method public setDisplayEntriesVolume(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    iput p1, p0, Lcom/android/settings_ex/TimeoutLockingPreference;->MAX:I

    goto :goto_0
.end method

.method public updateLockTimeOut()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/TimeoutLockingPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Lcom/android/settings_ex/TimeoutLockingPreference;->getLockTimeout()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/TimeoutLockingPreference;->timeoutToProgress(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 145
    return-void
.end method
