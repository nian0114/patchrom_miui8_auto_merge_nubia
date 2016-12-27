.class public Lcom/android/settings_ex/schpwronoff/TimePickerPreference;
.super Landroid/preference/Preference;
.source "TimePickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/schpwronoff/TimePickerPreference$Callback;,
        Lcom/android/settings_ex/schpwronoff/TimePickerPreference$TimePickerFragment;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings_ex/schpwronoff/TimePickerPreference$Callback;

.field private mContext:Landroid/content/Context;

.field private mHourOfDay:I

.field private mMinute:I

.field private mSummaryFormat:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v1, p1

    .line 32
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 33
    .local v0, "frgm":Landroid/app/FragmentManager;
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->init(Landroid/content/Context;Landroid/app/FragmentManager;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/schpwronoff/TimePickerPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    .prologue
    .line 22
    iget v0, p0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->mHourOfDay:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/schpwronoff/TimePickerPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    .prologue
    .line 22
    iget v0, p0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->mMinute:I

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mgr"    # Landroid/app/FragmentManager;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->mContext:Landroid/content/Context;

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->setPersistent(Z)V

    .line 52
    new-instance v0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings_ex/schpwronoff/TimePickerPreference$1;-><init>(Lcom/android/settings_ex/schpwronoff/TimePickerPreference;Landroid/app/FragmentManager;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 61
    return-void
.end method

.method private updateSummary()V
    .locals 6

    .prologue
    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 81
    .local v0, "c":Ljava/util/Calendar;
    const/16 v2, 0xb

    iget v3, p0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->mHourOfDay:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 82
    const/16 v2, 0xc

    iget v3, p0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->mMinute:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 83
    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "time":Ljava/lang/String;
    iget v2, p0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->mSummaryFormat:I

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->mSummaryFormat:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 87
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 46
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040128

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 47
    .local v1, "root":Landroid/view/ViewGroup;
    return-object v1
.end method

.method public setCallback(Lcom/android/settings_ex/schpwronoff/TimePickerPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings_ex/schpwronoff/TimePickerPreference$Callback;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->mCallback:Lcom/android/settings_ex/schpwronoff/TimePickerPreference$Callback;

    .line 65
    return-void
.end method

.method public setTime(II)V
    .locals 1
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->mCallback:Lcom/android/settings_ex/schpwronoff/TimePickerPreference$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->mCallback:Lcom/android/settings_ex/schpwronoff/TimePickerPreference$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/settings_ex/schpwronoff/TimePickerPreference$Callback;->onSetTime(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    iput p1, p0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->mHourOfDay:I

    .line 75
    iput p2, p0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->mMinute:I

    .line 76
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->updateSummary()V

    goto :goto_0
.end method
