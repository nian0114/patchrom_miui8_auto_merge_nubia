.class public Lcom/android/settings_ex/DisplaySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;


# instance fields
.field private final KEY_DIVIDER:Ljava/lang/String;

.field private mCameraDoubleTapPowerGesturePreference:Landroid/preference/nubia/CheckBoxPreference;

.field private mCameraGesturePreference:Landroid/preference/nubia/CheckBoxPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDozePreference:Landroid/preference/nubia/CheckBoxPreference;

.field private mFontSizePreference:Landroid/preference/Preference;

.field private mImageEnhance:Landroid/preference/Preference;

.field private mLiftToWakePreference:Landroid/preference/nubia/CheckBoxPreference;

.field private mNightModePreference:Lcn/nubia/commonui/preference/ListPreference;

.field private mPocketEnableObserver:Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;

.field private mPocketetPreference:Landroid/preference/nubia/CheckBoxPreference;

.field private mProfileHelper:Lztemt/profilehelper/ProfileHelper;

.field private mRotatePreference:Landroid/preference/nubia/CheckBoxPreference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenSaverPreference:Landroid/preference/Preference;

.field private mScreenStylePreference:Landroid/preference/Preference;

.field private mScreenTimeOutPref:Landroid/preference/Preference;

.field private mTapToWakePreference:Landroid/preference/nubia/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 803
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$2;

    invoke-direct {v0}, Lcom/android/settings_ex/DisplaySettings$2;-><init>()V

    sput-object v0, Lcom/android/settings_ex/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 100
    const-string v0, "preference_divider"

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->KEY_DIVIDER:Ljava/lang/String;

    .line 119
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 128
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DisplaySettings$1;-><init>(Lcom/android/settings_ex/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateRotationCheckbox()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updatePocketSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/DisplaySettings;)Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mPocketEnableObserver:Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method private static isCameraGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x0

    .line 411
    const v2, 0x10e00a2

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 413
    .local v0, "configSet":Z
    :goto_0
    return v1

    .end local v0    # "configSet":Z
    :cond_0
    move v0, v1

    .line 411
    goto :goto_0
.end method

.method private static isDozeAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 394
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string v1, "debug.doze.component"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 399
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 394
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 399
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isExistLockScreenStyle()Z
    .locals 4

    .prologue
    .line 362
    const/4 v1, 0x0

    .line 363
    .local v1, "isExit":Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 364
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "cn.nubia.gallerylockscreen"

    const-string v3, "cn.nubia.gallerylockscreen.settings.SettingsActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 366
    const/4 v1, 0x1

    .line 368
    :cond_0
    return v1
.end method

.method private static isLiftToWakeAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 389
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 390
    .local v0, "sensors":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isTapToWakeAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 403
    const v0, 0x11200a1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isThemeSelectExist()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 796
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 797
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "cn.nubia.thememanager"

    const-string v5, "cn.nubia.thememanager.activity.ThemeSelectActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 800
    .local v1, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private updateFontSizePreference(Landroid/preference/Preference;)V
    .locals 8
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 849
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DisplaySettings;->floatToIndex(F)I

    move-result v2

    .line 855
    .local v2, "index":I
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 856
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0a0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 857
    .local v1, "fontSizeNames":[Ljava/lang/String;
    const v4, 0x7f0c037f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v1, v2

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 859
    return-void

    .line 851
    .end local v1    # "fontSizeNames":[Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "DisplaySettings"

    const-string v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updatePocketSettings()V
    .locals 4

    .prologue
    .line 787
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_palmrejection"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 789
    .local v1, "isPocketProfile":I
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mPocketetPreference:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    .end local v1    # "isPocketProfile":I
    :goto_1
    return-void

    .line 789
    .restart local v1    # "isPocketProfile":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 790
    .end local v1    # "isPocketProfile":I
    :catch_0
    move-exception v0

    .line 791
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private updateRotationCheckbox()V
    .locals 2

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mRotatePreference:Landroid/preference/nubia/CheckBoxPreference;

    if-nez v0, :cond_1

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 779
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mRotatePreference:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 780
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mRotatePreference:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 651
    :cond_0
    return-void
.end method

.method private updateSetLockScreenSytleSummary()V
    .locals 5

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cn.nubia.lockscreen.style"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 374
    .local v0, "styleId":I
    if-nez v0, :cond_0

    const v2, 0x7f0c0e5e

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "summary":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenStylePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 377
    return-void

    .line 374
    .end local v1    # "summary":Ljava/lang/String;
    :cond_0
    const v2, 0x7f0c0e5d

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateState()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 592
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateScreenSaverSummary()V

    .line 593
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePreference:Landroid/preference/Preference;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DisplaySettings;->updateFontSizePreference(Landroid/preference/Preference;)V

    .line 600
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateRotationCheckbox()V

    .line 603
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wake_gesture_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 605
    .local v2, "value":I
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v2, :cond_6

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 609
    .end local v2    # "value":I
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 610
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "doze_enabled"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 611
    .restart local v2    # "value":I
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v2, :cond_7

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 614
    .end local v2    # "value":I
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mTapToWakePreference:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 615
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "double_tap_to_wake"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 616
    .restart local v2    # "value":I
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mTapToWakePreference:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v2, :cond_8

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 621
    .end local v2    # "value":I
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mCameraGesturePreference:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v3, :cond_3

    .line 622
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "camera_gesture_disabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 623
    .restart local v2    # "value":I
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mCameraGesturePreference:Landroid/preference/nubia/CheckBoxPreference;

    if-nez v2, :cond_9

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 627
    .end local v2    # "value":I
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v3, :cond_4

    .line 628
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "camera_double_tap_power_gesture_disabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 630
    .restart local v2    # "value":I
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/nubia/CheckBoxPreference;

    if-nez v2, :cond_a

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 634
    .end local v2    # "value":I
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mPocketetPreference:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v3, :cond_5

    .line 636
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "motion_palmrejection"

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 638
    .local v1, "isPocketMode":I
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mPocketetPreference:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v1, :cond_b

    :goto_5
    invoke-virtual {v3, v4}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    .end local v1    # "isPocketMode":I
    :cond_5
    :goto_6
    return-void

    .restart local v2    # "value":I
    :cond_6
    move v3, v5

    .line 605
    goto :goto_0

    :cond_7
    move v3, v5

    .line 611
    goto :goto_1

    :cond_8
    move v3, v5

    .line 616
    goto :goto_2

    :cond_9
    move v3, v5

    .line 623
    goto :goto_3

    :cond_a
    move v3, v5

    .line 630
    goto :goto_4

    .end local v2    # "value":I
    .restart local v1    # "isPocketMode":I
    :cond_b
    move v4, v5

    .line 638
    goto :goto_5

    .line 639
    .end local v1    # "isPocketMode":I
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .param p1, "val"    # F

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, "indices":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 489
    .local v2, "lastVal":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 490
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 491
    .local v3, "thisVal":F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 492
    add-int/lit8 v4, v0, -0x1

    .line 496
    .end local v3    # "thisVal":F
    :goto_1
    return v4

    .line 494
    .restart local v3    # "thisVal":F
    :cond_0
    move v2, v3

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 496
    .end local v3    # "thisVal":F
    :cond_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 773
    const v0, 0x7f0c0941

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 189
    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 194
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 198
    .local v0, "activity":Landroid/app/Activity;
    const v8, 0x7f080028

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->addPreferencesFromResource(I)V

    .line 199
    invoke-static {}, Lcom/android/settings_ex/Utils;->isThemeSupported()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->isThemeSelectExist()Z

    move-result v8

    if-nez v8, :cond_4

    .line 200
    :cond_0
    const-string v8, "ui_style"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 213
    :goto_0
    const-string v8, "screen_timeout_v5"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeOutPref:Landroid/preference/Preference;

    .line 214
    const-string v8, "screen_timeout_v5"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSaturNotSupported()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {}, Lcom/android/settings_ex/Utils;->isHueNotSupported()Z

    move-result v8

    if-nez v8, :cond_6

    .line 234
    const-string v8, "image_enhance"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mImageEnhance:Landroid/preference/Preference;

    .line 235
    const-string v8, "image_enhance_hue"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 243
    :goto_1
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mImageEnhance:Landroid/preference/Preference;

    if-eqz v8, :cond_1

    .line 244
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mImageEnhance:Landroid/preference/Preference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 246
    :cond_1
    const-string v8, "font_size_v5"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePreference:Landroid/preference/Preference;

    .line 247
    const-string v8, "screensaver"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    .line 248
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 250
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 251
    const-string v8, "lift_to_wake"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/preference/nubia/CheckBoxPreference;

    .line 252
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v8, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 264
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings_ex/DisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 265
    const-string v8, "tap_to_wake"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mTapToWakePreference:Landroid/preference/nubia/CheckBoxPreference;

    .line 266
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mTapToWakePreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v8, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 271
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings_ex/DisplaySettings;->isCameraGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 272
    const-string v8, "camera_gesture"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mCameraGesturePreference:Landroid/preference/nubia/CheckBoxPreference;

    .line 273
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mCameraGesturePreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v8, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 278
    :goto_4
    const-string v8, "camera_double_tap_power_gesture"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 280
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 281
    const-string v8, "auto_rotate"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mRotatePreference:Landroid/preference/nubia/CheckBoxPreference;

    .line 282
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mRotatePreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v8, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 325
    :goto_5
    const-string v8, "night_mode"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcn/nubia/commonui/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModePreference:Lcn/nubia/commonui/preference/ListPreference;

    .line 326
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModePreference:Lcn/nubia/commonui/preference/ListPreference;

    if-eqz v8, :cond_2

    .line 327
    const-string v8, "uimode"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/UiModeManager;

    .line 329
    .local v6, "uiManager":Landroid/app/UiModeManager;
    invoke-virtual {v6}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v1

    .line 330
    .local v1, "currentNightMode":I
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModePreference:Lcn/nubia/commonui/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 331
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModePreference:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v8, p0}, Lcn/nubia/commonui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 334
    .end local v1    # "currentNightMode":I
    .end local v6    # "uiManager":Landroid/app/UiModeManager;
    :cond_2
    new-instance v8, Lztemt/profilehelper/ProfileHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, v10}, Lztemt/profilehelper/ProfileHelper;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mProfileHelper:Lztemt/profilehelper/ProfileHelper;

    .line 335
    const-string v8, "pocket_mode"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mPocketetPreference:Landroid/preference/nubia/CheckBoxPreference;

    .line 337
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "motion_palmrejection"

    invoke-static {v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 339
    .local v3, "isPocketMode":I
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mPocketetPreference:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v3, :cond_c

    move v8, v9

    :goto_6
    invoke-virtual {v10, v8}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v3    # "isPocketMode":I
    :goto_7
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mPocketetPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v8, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 344
    new-instance v8, Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    invoke-direct {v8, p0, v9}, Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;-><init>(Lcom/android/settings_ex/DisplaySettings;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mPocketEnableObserver:Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;

    .line 345
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mPocketEnableObserver:Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;

    invoke-virtual {v8}, Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;->register()V

    .line 346
    const-string v8, "preference_divider"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 347
    const-string v8, "pocket_mode"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 349
    const-string v8, "lock_screen_style"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenStylePreference:Landroid/preference/Preference;

    .line 350
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenStylePreference:Landroid/preference/Preference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 351
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->isExistLockScreenStyle()Z

    move-result v8

    if-nez v8, :cond_3

    .line 352
    const-string v8, "lock_screen_style"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 354
    :cond_3
    const-string v8, "lock_screen_style"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 359
    return-void

    .line 202
    :cond_4
    const-string v8, "ui_style"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 203
    .local v7, "uiStylePref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "theme_style_key"

    invoke-static {v8, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 204
    .local v5, "theme":I
    if-ne v5, v9, :cond_5

    const v4, 0x7f0c0d27

    .line 205
    .local v4, "resUIStyle":I
    :goto_8
    invoke-virtual {v7, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 204
    .end local v4    # "resUIStyle":I
    :cond_5
    const v4, 0x7f0c0d26

    goto :goto_8

    .line 236
    .end local v5    # "theme":I
    .end local v7    # "uiStylePref":Landroid/preference/Preference;
    :cond_6
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSaturNotSupported()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/android/settings_ex/Utils;->isHueNotSupported()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 237
    const-string v8, "image_enhance_hue"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 238
    const-string v8, "image_enhance"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 240
    :cond_7
    const-string v8, "image_enhance_hue"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mImageEnhance:Landroid/preference/Preference;

    .line 241
    const-string v8, "image_enhance"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 254
    :cond_8
    const-string v8, "lift_to_wake"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 268
    :cond_9
    const-string v8, "tap_to_wake"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 275
    :cond_a
    const-string v8, "camera_gesture"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 284
    :cond_b
    const-string v8, "auto_rotate"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 339
    .restart local v3    # "isPocketMode":I
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 340
    .end local v3    # "isPocketMode":I
    :catch_0
    move-exception v2

    .line 341
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 572
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 573
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mPocketEnableObserver:Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;->unregister()V

    .line 574
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 519
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 520
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 521
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 668
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 686
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p1, v5, :cond_0

    move-object v5, p2

    .line 687
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 688
    .local v4, "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wake_gesture_enabled"

    if-eqz v4, :cond_8

    move v5, v6

    :goto_0
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 690
    .end local v4    # "value":Z
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p1, v5, :cond_1

    move-object v5, p2

    .line 691
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 692
    .restart local v4    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "doze_enabled"

    if-eqz v4, :cond_9

    move v5, v6

    :goto_1
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 694
    .end local v4    # "value":Z
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/DisplaySettings;->mTapToWakePreference:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p1, v5, :cond_2

    move-object v5, p2

    .line 695
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 696
    .restart local v4    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "double_tap_to_wake"

    if-eqz v4, :cond_a

    move v5, v6

    :goto_2
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 698
    .end local v4    # "value":Z
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/DisplaySettings;->mCameraGesturePreference:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p1, v5, :cond_3

    move-object v5, p2

    .line 699
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 700
    .restart local v4    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "camera_gesture_disabled"

    if-eqz v4, :cond_b

    move v5, v7

    :goto_3
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 703
    .end local v4    # "value":Z
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p1, v5, :cond_4

    move-object v5, p2

    .line 704
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 705
    .restart local v4    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "camera_double_tap_power_gesture_disabled"

    if-eqz v4, :cond_c

    move v5, v7

    :goto_4
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 708
    .end local v4    # "value":Z
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModePreference:Lcn/nubia/commonui/preference/ListPreference;

    if-ne p1, v5, :cond_5

    .line 710
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 711
    .local v4, "value":I
    const-string v5, "uimode"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/UiModeManager;

    .line 713
    .local v3, "uiManager":Landroid/app/UiModeManager;
    invoke-virtual {v3, v4}, Landroid/app/UiModeManager;->setNightMode(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    .end local v3    # "uiManager":Landroid/app/UiModeManager;
    .end local v4    # "value":I
    :cond_5
    :goto_5
    const-string v5, "auto_rotate"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v5, p2

    .line 719
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 720
    .local v4, "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v4, :cond_d

    move v5, v6

    :goto_6
    invoke-static {v8, v5}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    .line 723
    .end local v4    # "value":Z
    :cond_6
    iget-object v5, p0, Lcom/android/settings_ex/DisplaySettings;->mPocketetPreference:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p1, v5, :cond_7

    .line 724
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 725
    .restart local v4    # "value":Z
    if-eqz v4, :cond_e

    .line 726
    iget-object v5, p0, Lcom/android/settings_ex/DisplaySettings;->mProfileHelper:Lztemt/profilehelper/ProfileHelper;

    invoke-virtual {v5, v6}, Lztemt/profilehelper/ProfileHelper;->setProfilePocketEnable(Z)V

    .line 732
    .end local v4    # "value":Z
    :cond_7
    :goto_7
    return v6

    .restart local v4    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_8
    move v5, v7

    .line 688
    goto/16 :goto_0

    :cond_9
    move v5, v7

    .line 692
    goto/16 :goto_1

    :cond_a
    move v5, v7

    .line 696
    goto :goto_2

    :cond_b
    move v5, v6

    .line 700
    goto :goto_3

    :cond_c
    move v5, v6

    .line 705
    goto :goto_4

    .line 714
    .end local v4    # "value":Z
    :catch_0
    move-exception v1

    .line 715
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "DisplaySettings"

    const-string v8, "could not persist night mode setting"

    invoke-static {v5, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "value":Z
    :cond_d
    move v5, v7

    .line 720
    goto :goto_6

    .line 728
    .end local p2    # "objValue":Ljava/lang/Object;
    :cond_e
    iget-object v5, p0, Lcom/android/settings_ex/DisplaySettings;->mProfileHelper:Lztemt/profilehelper/ProfileHelper;

    invoke-virtual {v5, v7}, Lztemt/profilehelper/ProfileHelper;->setProfilePocketEnable(Z)V

    goto :goto_7
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 745
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenStylePreference:Landroid/preference/Preference;

    if-ne p1, v2, :cond_1

    .line 746
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 747
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "cn.nubia.gallerylockscreen"

    const-string v3, "cn.nubia.gallerylockscreen.settings.SettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 750
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 751
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 753
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mImageEnhance:Landroid/preference/Preference;

    if-ne p1, v2, :cond_0

    .line 754
    invoke-static {}, Lcom/android/settings_ex/Utils;->isHueNotSupported()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/settings_ex/Utils;->isSaturNotSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 755
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 756
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings_ex/Utils;->isNewImageEnhanceSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 757
    const-string v2, "com.android.settings_ex"

    const-string v3, "com.android.settings_ex.ImageEnhanceSettings3"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    :goto_1
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 763
    :catch_1
    move-exception v0

    .line 764
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 759
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v2, "com.android.settings_ex"

    const-string v3, "com.android.settings_ex.ImageEnhanceSettings2"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 664
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 14

    .prologue
    const v13, 0x7f0c0f50

    const v12, 0x7f0c0b9b

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 524
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 525
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateState()V

    .line 526
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 528
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v6, v7}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 529
    const-string v6, "screen_off_timeout"

    const v7, 0xea60

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    div-int/lit16 v5, v6, 0x3e8

    .line 531
    .local v5, "tempId":I
    const/16 v6, 0x258

    if-le v5, v6, :cond_3

    .line 532
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeOutPref:Landroid/preference/Preference;

    const v7, 0x7f0c0f58

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 538
    :goto_0
    const-string v6, "persist.sys.image.enhance"

    const-string v7, "w"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 539
    .local v4, "saturationType":Ljava/lang/String;
    const-string v6, "persist.sys.image.colortmp"

    const-string v7, "n"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "hueType":Ljava/lang/String;
    invoke-virtual {p0, v13}, Lcom/android/settings_ex/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 541
    .local v3, "saturation":Ljava/lang/String;
    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "hue":Ljava/lang/String;
    const-string v6, "i"

    invoke-virtual {v6, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 543
    const v6, 0x7f0c0f51

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 550
    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/settings_ex/Utils;->isNewImageEnhanceSupported()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mImageEnhance:Landroid/preference/Preference;

    if-eqz v6, :cond_2

    .line 551
    invoke-static {}, Lcom/android/settings_ex/Utils;->isHueNotSupported()Z

    move-result v6

    if-nez v6, :cond_a

    .line 552
    const-string v6, "c"

    invoke-virtual {v6, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 553
    const v6, 0x7f0c0b9a

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 559
    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSaturNotSupported()Z

    move-result v6

    if-nez v6, :cond_9

    .line 560
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mImageEnhance:Landroid/preference/Preference;

    const v7, 0x7f0c0b9d

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v10

    aput-object v0, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/android/settings_ex/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 568
    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateSetLockScreenSytleSummary()V

    .line 569
    return-void

    .line 533
    .end local v0    # "hue":Ljava/lang/String;
    .end local v1    # "hueType":Ljava/lang/String;
    .end local v3    # "saturation":Ljava/lang/String;
    .end local v4    # "saturationType":Ljava/lang/String;
    :cond_3
    const/16 v6, 0x3c

    if-ge v5, v6, :cond_4

    .line 534
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeOutPref:Landroid/preference/Preference;

    const v7, 0x7f0c0f59

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/settings_ex/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 536
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeOutPref:Landroid/preference/Preference;

    const v7, 0x7f0c0f5a

    new-array v8, v11, [Ljava/lang/Object;

    div-int/lit8 v9, v5, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/settings_ex/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 544
    .restart local v0    # "hue":Ljava/lang/String;
    .restart local v1    # "hueType":Ljava/lang/String;
    .restart local v3    # "saturation":Ljava/lang/String;
    .restart local v4    # "saturationType":Ljava/lang/String;
    :cond_5
    const-string v6, "n"

    invoke-virtual {v6, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 545
    invoke-virtual {p0, v13}, Lcom/android/settings_ex/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 546
    :cond_6
    const-string v6, "w"

    invoke-virtual {v6, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 547
    const v6, 0x7f0c0f4f

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 554
    :cond_7
    const-string v6, "n"

    invoke-virtual {v6, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 555
    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 556
    :cond_8
    const-string v6, "w"

    invoke-virtual {v6, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 557
    const v6, 0x7f0c0b9c

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 562
    :cond_9
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mImageEnhance:Landroid/preference/Preference;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 564
    :cond_a
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSaturNotSupported()Z

    move-result v6

    if-nez v6, :cond_2

    .line 565
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mImageEnhance:Landroid/preference/Preference;

    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method
