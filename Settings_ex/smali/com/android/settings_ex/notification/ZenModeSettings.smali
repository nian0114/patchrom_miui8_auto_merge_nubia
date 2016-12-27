.class public Lcom/android/settings_ex/notification/ZenModeSettings;
.super Lcom/android/settings_ex/RestrictedSettingsFragment;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/android/settings_ex/notification/ZenModeListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field private static final EVERYDAY:[I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final WEEKEND_DAYS:[I

.field private static final WEEK_DAYS:[I


# instance fields
.field private final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private final DAY_FORMAT:Ljava/text/SimpleDateFormat;

.field private TIMING_REPEAT_DAYS:[I

.field private mAllowConacts:Landroid/preference/Preference;

.field private mCalls:Landroid/preference/nubia/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mDisableListeners:Z

.field private mDowntime:Landroid/preference/PreferenceCategory;

.field private mDowntimeSupported:Z

.field private mEnd:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mEvents:Landroid/preference/nubia/CheckBoxPreference;

.field private mImportant:Landroid/preference/PreferenceCategory;

.field private mImportantSettings:Landroid/preference/PreferenceCategory;

.field private mMessages:Landroid/preference/nubia/CheckBoxPreference;

.field private mNotificationAppList:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

.field private mRepeatCalls:Landroid/preference/nubia/CheckBoxPreference;

.field private mStart:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

.field private mTelSetting:Lcn/nubia/commonui/preference/ListPreference;

.field private mTimeRepeatEntryValues:[Ljava/lang/CharSequence;

.field private mTimeRepeatType:I

.field private mTimingRepeat:Lcn/nubia/commonui/preference/ListPreference;

.field private mTimingRepeatEntries:[Ljava/lang/CharSequence;

.field private mTimingZenMode:Landroid/preference/nubia/CheckBoxPreference;

.field private mZenModeSwitch:Landroid/preference/nubia/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/notification/ZenModeSettings;->DEBUG:Z

    .line 103
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/notification/ZenModeSettings;->WEEK_DAYS:[I

    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings_ex/notification/ZenModeSettings;->WEEKEND_DAYS:[I

    .line 105
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings_ex/notification/ZenModeSettings;->EVERYDAY:[I

    .line 544
    new-instance v0, Lcom/android/settings_ex/notification/ZenModeSettings$12;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/ZenModeSettings$12;-><init>()V

    sput-object v0, Lcom/android/settings_ex/notification/ZenModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void

    .line 103
    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data

    .line 104
    :array_1
    .array-data 4
        0x1
        0x7
    .end array-data

    .line 105
    :array_2
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "no_adjust_volume"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    .line 92
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/notification/ZenModeSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/notification/ZenModeSettings;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->TIMING_REPEAT_DAYS:[I

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/notification/ZenModeSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getCurrentDay()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/notification/ZenModeSettings;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingRepeatEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/notification/ZenModeSettings;)Lcn/nubia/commonui/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingRepeat:Lcn/nubia/commonui/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/notification/ZenModeSettings;)Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/preference/nubia/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mZenModeSwitch:Landroid/preference/nubia/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/notification/ZenModeSettings;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/notification/ZenModeSettings;)Lcn/nubia/commonui/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTelSetting:Lcn/nubia/commonui/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mAllowConacts:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/notification/ZenModeSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/ZenModeSettings;->timingRepeatDays(I)V

    return-void
.end method

.method private addOrRemovePref()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingZenMode:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mZenModeSwitch:Landroid/preference/nubia/CheckBoxPreference;

    if-nez v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingZenMode:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mZenModeSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 312
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportant:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 313
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->isAllowMessages()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->isAllowEvents()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->isAllowCalls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportantSettings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 317
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportant:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 318
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportantSettings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private static allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 533
    .local v0, "rt":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const v1, 0x7f0c09e9

    const-string v2, "priority_settings"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 534
    const v1, 0x7f0c09ea

    const-string v2, "automation_settings"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 535
    return-object v0
.end method

.method private getAllowContactsType()I
    .locals 3

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode_tel_enable_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getCurrentDate()Ljava/lang/String;
    .locals 6

    .prologue
    .line 650
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 651
    .local v0, "c":Ljava/util/Calendar;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 652
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 653
    .local v1, "curDate":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 654
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getCurrentDay()Ljava/lang/String;
    .locals 3

    .prologue
    .line 336
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 337
    .local v0, "c":Ljava/util/Calendar;
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "currentDay":Ljava/lang/String;
    return-object v1
.end method

.method private getZenRepeatType()I
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 275
    iget-object v7, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v7}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->getSheduleInfo()Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v3

    .line 276
    .local v3, "info":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    if-eqz v3, :cond_4

    iget-object v7, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v7, :cond_4

    .line 277
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->copy()Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v4

    .line 278
    .local v4, "tmpInfo":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    iget-object v2, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 279
    .local v2, "days":[I
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getCurrentDay()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 280
    .local v1, "currentDay":I
    new-array v0, v6, [I

    aput v1, v0, v5

    .line 281
    .local v0, "CURRENT_DAY_ARRAY":[I
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 282
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 294
    .end local v0    # "CURRENT_DAY_ARRAY":[I
    .end local v1    # "currentDay":I
    .end local v2    # "days":[I
    .end local v4    # "tmpInfo":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :goto_0
    return v5

    .line 284
    .restart local v0    # "CURRENT_DAY_ARRAY":[I
    .restart local v1    # "currentDay":I
    .restart local v2    # "days":[I
    .restart local v4    # "tmpInfo":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :cond_0
    sget-object v5, Lcom/android/settings_ex/notification/ZenModeSettings;->EVERYDAY:[I

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    .line 285
    goto :goto_0

    .line 286
    :cond_1
    sget-object v5, Lcom/android/settings_ex/notification/ZenModeSettings;->WEEK_DAYS:[I

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 287
    const/4 v5, 0x2

    goto :goto_0

    .line 288
    :cond_2
    sget-object v5, Lcom/android/settings_ex/notification/ZenModeSettings;->WEEKEND_DAYS:[I

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 289
    const/4 v5, 0x3

    goto :goto_0

    .line 291
    :cond_3
    const/4 v5, 0x4

    goto :goto_0

    .line 294
    .end local v0    # "CURRENT_DAY_ARRAY":[I
    .end local v1    # "currentDay":I
    .end local v2    # "days":[I
    .end local v4    # "tmpInfo":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :cond_4
    const/4 v5, -0x1

    goto :goto_0
.end method

.method private initViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 343
    .local v1, "root":Landroid/preference/PreferenceScreen;
    const-string v3, "timing_zen_mode"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingZenMode:Landroid/preference/nubia/CheckBoxPreference;

    .line 344
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingZenMode:Landroid/preference/nubia/CheckBoxPreference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModeSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$1;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v3, v4}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 352
    const-string v3, "zen_mode_switch"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mZenModeSwitch:Landroid/preference/nubia/CheckBoxPreference;

    .line 353
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mZenModeSwitch:Landroid/preference/nubia/CheckBoxPreference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModeSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$2;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v3, v4}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 362
    const-string v3, "important"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportant:Landroid/preference/PreferenceCategory;

    .line 364
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportant:Landroid/preference/PreferenceCategory;

    const-string v4, "phone_calls"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mCalls:Landroid/preference/nubia/CheckBoxPreference;

    .line 365
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mCalls:Landroid/preference/nubia/CheckBoxPreference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModeSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$3;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v3, v4}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 375
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportant:Landroid/preference/PreferenceCategory;

    const-string v4, "repeat_calls"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mRepeatCalls:Landroid/preference/nubia/CheckBoxPreference;

    .line 376
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 377
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mRepeatCalls:Landroid/preference/nubia/CheckBoxPreference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModeSettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$4;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v3, v4}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 391
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportant:Landroid/preference/PreferenceCategory;

    const-string v4, "messages"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mMessages:Landroid/preference/nubia/CheckBoxPreference;

    .line 392
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mMessages:Landroid/preference/nubia/CheckBoxPreference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModeSettings$5;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$5;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v3, v4}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 401
    const-string v3, "important_settings"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportantSettings:Landroid/preference/PreferenceCategory;

    .line 403
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0075

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEntries:[Ljava/lang/CharSequence;

    .line 404
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0076

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEntryValues:[Ljava/lang/CharSequence;

    .line 405
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportantSettings:Landroid/preference/PreferenceCategory;

    const-string v4, "starred"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTelSetting:Lcn/nubia/commonui/preference/ListPreference;

    .line 406
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTelSetting:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v5}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->getAllowCallsFrom()I

    move-result v5

    aget-object v4, v4, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 407
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTelSetting:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEntries:[Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v5}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->getAllowCallsFrom()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTelSetting:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v3, v6}, Lcn/nubia/commonui/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v3}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->getAllowContactsType()I

    move-result v2

    .line 410
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTelSetting:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 412
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTelSetting:Lcn/nubia/commonui/preference/ListPreference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModeSettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$6;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 424
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportantSettings:Landroid/preference/PreferenceCategory;

    const-string v4, "notification_app"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mNotificationAppList:Landroid/preference/Preference;

    .line 426
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportantSettings:Landroid/preference/PreferenceCategory;

    const-string v4, "allow_contacts"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mAllowConacts:Landroid/preference/Preference;

    .line 427
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 428
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportantSettings:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mAllowConacts:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 430
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mAllowConacts:Landroid/preference/Preference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModeSettings$7;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$7;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 441
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportant:Landroid/preference/PreferenceCategory;

    const-string v4, "events"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEvents:Landroid/preference/nubia/CheckBoxPreference;

    .line 442
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEvents:Landroid/preference/nubia/CheckBoxPreference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModeSettings$8;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$8;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v3, v4}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 451
    const-string v3, "downtime"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDowntime:Landroid/preference/PreferenceCategory;

    .line 454
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0077

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingRepeatEntries:[Ljava/lang/CharSequence;

    .line 455
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0078

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimeRepeatEntryValues:[Ljava/lang/CharSequence;

    .line 456
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDowntime:Landroid/preference/PreferenceCategory;

    const-string v4, "days"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingRepeat:Lcn/nubia/commonui/preference/ListPreference;

    .line 457
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getZenRepeatType()I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimeRepeatType:I

    .line 458
    iget v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimeRepeatType:I

    if-ltz v3, :cond_1

    .line 459
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingRepeat:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimeRepeatEntryValues:[Ljava/lang/CharSequence;

    iget v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimeRepeatType:I

    aget-object v4, v4, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 460
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingRepeat:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingRepeatEntries:[Ljava/lang/CharSequence;

    iget v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimeRepeatType:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 462
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingRepeat:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v3, v6}, Lcn/nubia/commonui/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingRepeat:Lcn/nubia/commonui/preference/ListPreference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModeSettings$9;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$9;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 489
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->isDowntimeSupported(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDowntimeSupported:Z

    .line 490
    iget-boolean v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDowntimeSupported:Z

    if-nez v3, :cond_2

    .line 491
    const-string v3, "downtime"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notification/ZenModeSettings;->removePreference(Ljava/lang/String;)V

    .line 493
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 495
    .local v0, "mgr":Landroid/app/FragmentManager;
    new-instance v3, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStart:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    .line 496
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStart:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    const-string v4, "start_time"

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 497
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStart:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    const v4, 0x7f0c0a4d

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setTitle(I)V

    .line 499
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStart:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModeSettings$10;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$10;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setCallback(Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference$Callback;)V

    .line 506
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDowntime:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStart:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 507
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStart:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingRepeat:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v4}, Lcn/nubia/commonui/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 509
    new-instance v3, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    .line 510
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    const-string v4, "end_time"

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 511
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    const v4, 0x7f0c0a4e

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setTitle(I)V

    .line 512
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModeSettings$11;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$11;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setCallback(Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference$Callback;)V

    .line 519
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDowntime:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 520
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingRepeat:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v4}, Lcn/nubia/commonui/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 521
    return-void

    .line 386
    .end local v0    # "mgr":Landroid/app/FragmentManager;
    .end local v2    # "type":I
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportant:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mRepeatCalls:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 387
    iput-object v6, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mCalls:Landroid/preference/nubia/CheckBoxPreference;

    goto/16 :goto_0
.end method

.method private timingRepeatDays(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 658
    packed-switch p1, :pswitch_data_0

    .line 677
    :goto_0
    return-void

    .line 660
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getCurrentDay()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 661
    .local v0, "currentDay":I
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode_current_date"

    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getCurrentDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 663
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->TIMING_REPEAT_DAYS:[I

    goto :goto_0

    .line 666
    .end local v0    # "currentDay":I
    :pswitch_1
    sget-object v1, Lcom/android/settings_ex/notification/ZenModeSettings;->EVERYDAY:[I

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->TIMING_REPEAT_DAYS:[I

    goto :goto_0

    .line 669
    :pswitch_2
    sget-object v1, Lcom/android/settings_ex/notification/ZenModeSettings;->WEEK_DAYS:[I

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->TIMING_REPEAT_DAYS:[I

    goto :goto_0

    .line 672
    :pswitch_3
    sget-object v1, Lcom/android/settings_ex/notification/ZenModeSettings;->WEEKEND_DAYS:[I

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->TIMING_REPEAT_DAYS:[I

    goto :goto_0

    .line 658
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateAllowContactsPref()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportantSettings:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getAllowContactsType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportantSettings:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mAllowConacts:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportantSettings:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mAllowConacts:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateControls()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDisableListeners:Z

    .line 323
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->updateSwitchControl()V

    .line 324
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->updateInterruptContents()V

    .line 325
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->updateStarredPref()V

    .line 326
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDowntimeSupported:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->updateAllowContactsPref()V

    .line 328
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->updateImportantSettingsPref()V

    .line 329
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->updateDays()V

    .line 331
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->updateEndSummary()V

    .line 332
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->addOrRemovePref()V

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDisableListeners:Z

    .line 334
    return-void
.end method

.method private updateDays()V
    .locals 5

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getZenRepeatType()I

    move-result v1

    .line 262
    .local v1, "type":I
    if-gez v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingRepeat:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingRepeatEntries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingRepeat:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimeRepeatEntryValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingRepeat:Lcn/nubia/commonui/preference/ListPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/preference/ListPreference;->notifyDependencyChange(Z)V

    .line 268
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v2}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->getSheduleInfo()Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    .line 269
    .local v0, "info":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    if-eqz v0, :cond_0

    .line 270
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStart:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    iget v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget v4, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setTime(II)V

    .line 271
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    iget v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget v4, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setTime(II)V

    goto :goto_0
.end method

.method private updateEndSummary()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 299
    iget-boolean v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDowntimeSupported:Z

    if-nez v5, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v5}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->getSheduleInfo()Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    .line 301
    .local v1, "info":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    if-eqz v1, :cond_0

    .line 302
    iget v5, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    mul-int/lit8 v5, v5, 0x3c

    iget v6, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int v3, v5, v6

    .line 303
    .local v3, "startMin":I
    iget v5, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/lit8 v5, v5, 0x3c

    iget v6, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int v0, v5, v6

    .line 304
    .local v0, "endMin":I
    if-lt v3, v0, :cond_3

    const/4 v2, 0x1

    .line 306
    .local v2, "nextDay":Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    if-eqz v2, :cond_2

    const v4, 0x7f0c0e92

    :cond_2
    invoke-virtual {v5, v4}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setSummaryFormat(I)V

    goto :goto_0

    .end local v2    # "nextDay":Z
    :cond_3
    move v2, v4

    .line 304
    goto :goto_1
.end method

.method private updateImportantSettingsPref()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->isAllowMessages()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->isAllowEvents()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->isAllowCalls()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportantSettings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportantSettings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateInterruptContents()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mCalls:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mCalls:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v1}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->isAllowCalls()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mRepeatCalls:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v1}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->isAllowRepeatCallers()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mMessages:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v1}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->isAllowMessages()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTelSetting:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v2}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->getAllowCallsFrom()I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEvents:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v1}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->isAllowEvents()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 222
    return-void
.end method

.method private updateStarredPref()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportantSettings:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->isAllowCalls()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->isAllowMessages()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportantSettings:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTelSetting:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 239
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->updateAllowContactsPref()V

    .line 247
    :cond_1
    :goto_0
    return-void

    .line 241
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getAllowContactsType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 242
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportantSettings:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mAllowConacts:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mImportantSettings:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTelSetting:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 540
    const v0, 0x7f0c0943

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 181
    const/16 v0, 0x4c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 149
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    const-string v0, "ZenModeSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 153
    const v0, 0x7f080090

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->addPreferencesFromResource(I)V

    .line 155
    new-instance v0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/notification/ZenModeSettingsModel;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings_ex/notification/ZenModeSettingsModel;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;-><init>(Landroid/content/Context;Lcom/android/settings_ex/notification/IZenModeSettingsModel;Lcom/android/settings_ex/notification/ZenModeListener;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    .line 156
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->initViews()V

    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->updateZenMode(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->updateZenModeConfig(Z)V

    .line 159
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPause()V

    .line 176
    const-string v0, "ZenModeSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->unRegisterObserver()V

    .line 178
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 163
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onResume()V

    .line 164
    const-string v0, "ZenModeSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->updateZenMode(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->updateZenModeConfig(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->registerObserver()V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->finish()V

    .line 171
    :cond_0
    return-void
.end method

.method public onZenModeChanged()V
    .locals 2

    .prologue
    .line 186
    const-string v0, "ZenModeSettings"

    const-string v1, "onZenModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->updateControls()V

    .line 188
    return-void
.end method

.method public onZenModeConfigChanged()V
    .locals 2

    .prologue
    .line 192
    const-string v0, "ZenModeSettings"

    const-string v1, "onZenModeConfigChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->updateControls()V

    .line 194
    return-void
.end method

.method public updateSwitchControl()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "timing_zen_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 199
    .local v1, "timingZenMode":I
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingZenMode:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v1, v2, :cond_1

    :goto_0
    invoke-virtual {v4, v2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "downtime"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 201
    .local v0, "downtime":Landroid/preference/PreferenceCategory;
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingZenMode:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDowntime:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 206
    :cond_0
    :goto_1
    const-string v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isZenModeOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v4}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->isZenModeOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mZenModeSwitch:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v3}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->isZenModeOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 208
    return-void

    .end local v0    # "downtime":Landroid/preference/PreferenceCategory;
    :cond_1
    move v2, v3

    .line 199
    goto :goto_0

    .line 203
    .restart local v0    # "downtime":Landroid/preference/PreferenceCategory;
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingZenMode:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method
