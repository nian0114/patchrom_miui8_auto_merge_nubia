.class public Lcom/android/settings_ex/accessibility/AccessibilitySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/DialogCreatable;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/accessibility/AccessibilitySettings$7;,
        Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mCaptureScreenPreference:Landroid/preference/nubia/CheckBoxPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mDynamicEffect:Landroid/preference/nubia/CheckBoxPreference;

.field private mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

.field private final mHandler:Landroid/os/Handler;

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoServicesMessagePreference:Landroid/preference/Preference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenCaptureObserver:Landroid/database/ContentObserver;

.field private mSelectLongPressTimeoutPreference:Lcn/nubia/commonui/preference/ListPreference;

.field private mSensorAdjustFingerprint:Landroid/preference/PreferenceScreen;

.field private mSensorAdjustGravity:Landroid/preference/PreferenceScreen;

.field private mSensorAdjustMagnetic:Landroid/preference/PreferenceScreen;

.field private mSensorAdjustProximity:Landroid/preference/PreferenceScreen;

.field private mServicesCategory:Landroid/preference/PreferenceCategory;

.field private final mSettingsContentObserver:Lcom/android/settings_ex/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSystemsCategory:Landroid/preference/PreferenceCategory;

.field private mToggleFastOnFlashLightPreference:Landroid/preference/nubia/CheckBoxPreference;

.field private mToggleFirstScreenNegativePreference:Landroid/preference/nubia/CheckBoxPreference;

.field private mToggleLargeTextPreference:Landroid/preference/nubia/CheckBoxPreference;

.field private mToggleLockScreenRotationPreference:Landroid/preference/nubia/CheckBoxPreference;

.field private mTogglePowerButtonEndsCallPreference:Landroid/preference/nubia/CheckBoxPreference;

.field private mToggleSpeakPasswordPreference:Landroid/preference/nubia/CheckBoxPreference;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 784
    new-instance v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$6;

    invoke-direct {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings$6;-><init>()V

    sput-object v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    .line 136
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings$1;-><init>(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 148
    new-instance v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings$2;-><init>(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 176
    new-instance v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$3;

    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings$3;-><init>(Lcom/android/settings_ex/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings_ex/accessibility/SettingsContentObserver;

    .line 185
    new-instance v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings$4;-><init>(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 234
    new-instance v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings$5;-><init>(Lcom/android/settings_ex/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mScreenCaptureObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->loadInstalledServices()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateCaptureScreenCheckbox()V

    return-void
.end method

.method private handleCaptureScreenPreferenceClick()V
    .locals 3

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_volume_screenshot"

    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mCaptureScreenPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleDisplayMagnificationPreferenceScreenClick()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 461
    iget-object v3, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 462
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "title"

    const v4, 0x7f0c0638

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v3, "summary"

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0639

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 466
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 472
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-super {p0, v1, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 474
    return-void

    :cond_0
    move v1, v2

    .line 466
    goto :goto_0
.end method

.method private handleDynamicEffectPreferenceClick()V
    .locals 3

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dynamic_effect"

    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mDynamicEffect:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 400
    return-void

    .line 398
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 2

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 434
    return-void

    .line 432
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleLongPressTimeoutPreferenceChange(Ljava/lang/String;)V
    .locals 3
    .param p1, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 307
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 309
    return-void
.end method

.method private handleToggleEnableAccessibilityGesturePreferenceClick()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 443
    iget-object v3, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 444
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "title"

    const v4, 0x7f0c063a

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v3, "summary"

    const v4, 0x7f0c063d

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_accessibility_global_gesture_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 456
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-super {p0, v1, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 458
    return-void

    :cond_0
    move v1, v2

    .line 450
    goto :goto_0
.end method

.method private handleToggleFastOnFlashlightPreferenceClick()V
    .locals 3

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "long_press_fast_on_flash_light"

    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleFastOnFlashLightPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 410
    return-void

    .line 408
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleToggleFirstScreenNegativePreferenceClick()V
    .locals 3

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "extra_first_screen_negative"

    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleFirstScreenNegativePreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 405
    return-void

    .line 403
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleToggleLargeTextPreferenceClick()V
    .locals 2

    .prologue
    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fa66666    # 1.3f

    :goto_0
    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 416
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_1
    return-void

    .line 414
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 429
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleToggleSpeakPasswordPreferenceClick()V
    .locals 3

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speak_password"

    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 440
    return-void

    .line 437
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 8

    .prologue
    .line 477
    const-string v5, "services_category"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    .line 478
    const-string v5, "system_category"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    .line 481
    const-string v5, "first_screen_negative"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleFirstScreenNegativePreference:Landroid/preference/nubia/CheckBoxPreference;

    .line 482
    const-string v5, "long_press_on_flashlight"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleFastOnFlashLightPreference:Landroid/preference/nubia/CheckBoxPreference;

    .line 485
    const-string v5, "toggle_large_text_preference"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/nubia/CheckBoxPreference;

    .line 486
    iget-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 488
    const-string v5, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/nubia/CheckBoxPreference;

    .line 489
    const/16 v5, 0x1a

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 491
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 496
    :cond_1
    const-string v5, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/nubia/CheckBoxPreference;

    .line 497
    iget-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 498
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 499
    iget-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 504
    :cond_2
    const-string v5, "toggle_speak_password_preference"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/nubia/CheckBoxPreference;

    .line 507
    const-string v5, "select_long_press_timeout_preference"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcn/nubia/commonui/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Lcn/nubia/commonui/preference/ListPreference;

    .line 508
    iget-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v5, p0}, Lcn/nubia/commonui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 509
    iget-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 510
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0036

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 512
    .local v4, "timeoutValues":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    .line 513
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0035

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, "timeoutTitles":[Ljava/lang/String;
    array-length v3, v4

    .line 516
    .local v3, "timeoutValueCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 517
    iget-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    aget-object v6, v4, v0

    aget-object v7, v2, v0

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    .end local v0    # "i":I
    .end local v2    # "timeoutTitles":[Ljava/lang/String;
    .end local v3    # "timeoutValueCount":I
    .end local v4    # "timeoutValues":[Ljava/lang/String;
    :cond_3
    const-string v5, "captioning_preference_screen"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 526
    const-string v5, "screen_magnification_preference_screen"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 530
    const-string v5, "enable_global_gesture_preference_screen"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 532
    iget-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 534
    const-string v5, "dynamic_effect"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mDynamicEffect:Landroid/preference/nubia/CheckBoxPreference;

    .line 535
    const-string v5, "toggle_capture_screen_preference"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mCaptureScreenPreference:Landroid/preference/nubia/CheckBoxPreference;

    .line 537
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->isSensorAppPresent()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 539
    const-string v5, "sensor_adjust"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 540
    .local v1, "sensor":Landroid/preference/PreferenceCategory;
    const-string v5, "sensor_adjust_gravity"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 542
    const-string v5, "sensor_adjust_magnetic"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSensorAdjustMagnetic:Landroid/preference/PreferenceScreen;

    .line 543
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->isSupportProximity()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 544
    const-string v5, "sensor_adjust_proximity"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSensorAdjustProximity:Landroid/preference/PreferenceScreen;

    .line 552
    .end local v1    # "sensor":Landroid/preference/PreferenceCategory;
    :goto_1
    return-void

    .line 547
    .restart local v1    # "sensor":Landroid/preference/PreferenceCategory;
    :cond_4
    const-string v5, "sensor_adjust_proximity"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 550
    .end local v1    # "sensor":Landroid/preference/PreferenceCategory;
    :cond_5
    const-string v5, "sensor_adjust"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isSensorAppPresent()Z
    .locals 4

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 557
    .local v1, "p":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "cn.nubia.sensor"

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    const/4 v2, 0x1

    .line 561
    :goto_0
    return v2

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSupportProximity()Z
    .locals 3

    .prologue
    .line 840
    :try_start_0
    const-string v1, "tmd2772"

    const-string v2, "/sys/class/proximity/proximity/chip_name"

    invoke-static {v2}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 842
    :goto_0
    return v1

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadInstalledServices()V
    .locals 8

    .prologue
    .line 758
    sget-object v4, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 759
    .local v4, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 761
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 764
    .local v3, "installedServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-nez v3, :cond_1

    .line 777
    :cond_0
    return-void

    .line 768
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 769
    .local v2, "installedServiceInfoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 770
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 772
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    .local v1, "installedService":Landroid/content/ComponentName;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 769
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 847
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 850
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 852
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method private toSensorPage(Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;)V
    .locals 5
    .param p1, "category"    # Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    .prologue
    .line 367
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 368
    .local v2, "mIntent":Landroid/content/Intent;
    const-string v0, "cn.nubia.sensor.SensorActivity$ProximityAdjustActivity"

    .line 369
    .local v0, "className":Ljava/lang/String;
    sget-object v3, Lcom/android/settings_ex/accessibility/AccessibilitySettings$7;->$SwitchMap$com$android$settings$accessibility$AccessibilitySettings$Page:[I

    invoke-virtual {p1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 383
    :goto_0
    const-string v3, "cn.nubia.sensor"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_1
    return-void

    .line 371
    :pswitch_0
    const-string v0, "cn.nubia.sensor.SensorActivity$GravityAdjustActivity"

    .line 372
    goto :goto_0

    .line 374
    :pswitch_1
    const-string v0, "cn.nubia.sensor.SensorActivity$CompassCaliActivity"

    .line 375
    goto :goto_0

    .line 377
    :pswitch_2
    const-string v0, "cn.nubia.sensor.SensorActivity$ProximityAdjustActivity"

    .line 378
    goto :goto_0

    .line 380
    :pswitch_3
    const-string v0, "cn.nubia.sensor.SensorActivity$FingerprintActivity"

    goto :goto_0

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateAllPreferences()V
    .locals 0

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    .line 567
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateSystemPreferences()V

    .line 568
    return-void
.end method

.method private updateCaptureScreenCheckbox()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 780
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mCaptureScreenPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_volume_screenshot"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 782
    return-void
.end method

.method private updateFeatureSummary(Ljava/lang/String;Landroid/preference/Preference;)V
    .locals 3
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 743
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 745
    .local v0, "enabled":Z
    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x7f0c0653

    :goto_1
    invoke-virtual {p2, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 747
    return-void

    .end local v0    # "enabled":Z
    :cond_0
    move v0, v1

    .line 743
    goto :goto_0

    .line 745
    .restart local v0    # "enabled":Z
    :cond_1
    const v1, 0x7f0c0654

    goto :goto_1
.end method

.method private updateLockScreenRotationCheckbox()V
    .locals 3

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 751
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 752
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 755
    :cond_0
    return-void

    .line 752
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateServicesPreferences()V
    .locals 26

    .prologue
    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    .line 581
    .local v4, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v12

    .line 583
    .local v12, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/settings_ex/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v8

    .line 585
    .local v8, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v14

    .line 587
    .local v14, "permittedServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "accessibility_enabled"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    const/4 v3, 0x1

    .line 590
    .local v3, "accessibilityEnabled":Z
    :goto_0
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "count":I
    :goto_1
    if-ge v10, v6, :cond_a

    .line 591
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 593
    .local v11, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 595
    .local v15, "preference":Landroid/preference/PreferenceScreen;
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    .line 598
    .local v22, "title":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    .line 599
    .local v19, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    .local v5, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 604
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 605
    if-eqz v3, :cond_5

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    const/16 v17, 0x1

    .line 608
    .local v17, "serviceEnabled":Z
    :goto_2
    if-eqz v17, :cond_6

    .line 609
    const v23, 0x7f0c0653

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 615
    .local v18, "serviceEnabledString":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v19

    iget-object v13, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 616
    .local v13, "packageName":Ljava/lang/String;
    if-eqz v14, :cond_0

    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    :cond_0
    const/16 v16, 0x1

    .line 618
    .local v16, "serviceAllowed":Z
    :goto_4
    if-nez v16, :cond_1

    if-eqz v17, :cond_8

    :cond_1
    const/16 v23, 0x1

    :goto_5
    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 621
    if-eqz v16, :cond_9

    .line 622
    move-object/from16 v21, v18

    .line 626
    .local v21, "summaryString":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 628
    invoke-virtual {v15, v10}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 629
    const-class v23, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 632
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 634
    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 635
    .local v9, "extras":Landroid/os/Bundle;
    const-string v23, "preference_key"

    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v23, "checked"

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 637
    const-string v23, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v7

    .line 640
    .local v7, "description":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 641
    const v23, 0x7f0c0682

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 643
    :cond_2
    const-string v23, "summary"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v20

    .line 646
    .local v20, "settingsClassName":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 647
    const-string v23, "settings_title"

    const v24, 0x7f0c0652

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v23, "settings_component_name"

    new-instance v24, Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_3
    const-string v23, "component_name"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 590
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 587
    .end local v3    # "accessibilityEnabled":Z
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "count":I
    .end local v7    # "description":Ljava/lang/String;
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v10    # "i":I
    .end local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "preference":Landroid/preference/PreferenceScreen;
    .end local v16    # "serviceAllowed":Z
    .end local v17    # "serviceEnabled":Z
    .end local v18    # "serviceEnabledString":Ljava/lang/String;
    .end local v19    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v20    # "settingsClassName":Ljava/lang/String;
    .end local v21    # "summaryString":Ljava/lang/String;
    .end local v22    # "title":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 605
    .restart local v3    # "accessibilityEnabled":Z
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "count":I
    .restart local v10    # "i":I
    .restart local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v15    # "preference":Landroid/preference/PreferenceScreen;
    .restart local v19    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v22    # "title":Ljava/lang/String;
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 611
    .restart local v17    # "serviceEnabled":Z
    :cond_6
    const v23, 0x7f0c0654

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "serviceEnabledString":Ljava/lang/String;
    goto/16 :goto_3

    .line 616
    .restart local v13    # "packageName":Ljava/lang/String;
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 618
    .restart local v16    # "serviceAllowed":Z
    :cond_8
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 624
    :cond_9
    const v23, 0x7f0c0655

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "summaryString":Ljava/lang/String;
    goto/16 :goto_6

    .line 660
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "preference":Landroid/preference/PreferenceScreen;
    .end local v16    # "serviceAllowed":Z
    .end local v17    # "serviceEnabled":Z
    .end local v18    # "serviceEnabledString":Ljava/lang/String;
    .end local v19    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v21    # "summaryString":Ljava/lang/String;
    .end local v22    # "title":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v23

    if-nez v23, :cond_c

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    if-nez v23, :cond_b

    .line 662
    new-instance v23, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const v24, 0x7f0401c1

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const v24, 0x7f0c0681

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 670
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 672
    :cond_c
    return-void
.end method

.method private updateSystemPreferences()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 675
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleFirstScreenNegativePreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "extra_first_screen_negative"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 677
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleFastOnFlashLightPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "long_press_fast_on_flash_light"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 681
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :goto_2
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    const v10, 0x3fa66666    # 1.3f

    cmpl-float v6, v6, v10

    if-nez v6, :cond_3

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 690
    const/16 v6, 0x1a

    invoke-static {v6}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "incall_power_button_behavior"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 696
    .local v1, "incallPowerBehavior":I
    const/4 v6, 0x2

    if-ne v1, v6, :cond_4

    move v3, v7

    .line 697
    .local v3, "powerButtonEndsCall":Z
    :goto_4
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v6, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 702
    .end local v1    # "incallPowerBehavior":I
    .end local v3    # "powerButtonEndsCall":Z
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    .line 705
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "speak_password"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v4, v7

    .line 708
    .local v4, "speakPasswordEnabled":Z
    :goto_5
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 711
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "long_press_timeout"

    iget v10, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 714
    .local v2, "longPressTimeout":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 715
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v6, v5}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 716
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v9, v6}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 719
    const-string v6, "accessibility_captioning_enabled"

    iget-object v9, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v6, v9}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 721
    const-string v6, "accessibility_display_magnification_enabled"

    iget-object v9, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v6, v9}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 726
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "enable_accessibility_global_gesture_enabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_6

    move v0, v7

    .line 729
    .local v0, "globalGestureEnabled":Z
    :goto_6
    if-eqz v0, :cond_7

    .line 730
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0c063b

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 736
    :goto_7
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateCaptureScreenCheckbox()V

    .line 738
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mDynamicEffect:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "dynamic_effect"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_8

    :goto_8
    invoke-virtual {v6, v7}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 740
    return-void

    .end local v0    # "globalGestureEnabled":Z
    .end local v2    # "longPressTimeout":I
    .end local v4    # "speakPasswordEnabled":Z
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    move v6, v8

    .line 675
    goto/16 :goto_0

    :cond_2
    move v6, v8

    .line 677
    goto/16 :goto_1

    :cond_3
    move v6, v8

    .line 686
    goto/16 :goto_3

    .restart local v1    # "incallPowerBehavior":I
    :cond_4
    move v3, v8

    .line 696
    goto :goto_4

    .end local v1    # "incallPowerBehavior":I
    :cond_5
    move v4, v8

    .line 705
    goto :goto_5

    .restart local v2    # "longPressTimeout":I
    .restart local v4    # "speakPasswordEnabled":Z
    .restart local v5    # "value":Ljava/lang/String;
    :cond_6
    move v0, v8

    .line 726
    goto :goto_6

    .line 733
    .restart local v0    # "globalGestureEnabled":Z
    :cond_7
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0c063c

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_7

    :cond_8
    move v7, v8

    .line 738
    goto :goto_8

    .line 683
    .end local v0    # "globalGestureEnabled":Z
    .end local v2    # "longPressTimeout":I
    .end local v4    # "speakPasswordEnabled":Z
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto/16 :goto_2
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 244
    const v0, 0x7f0c0948

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x2

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 250
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 252
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "system_category"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    const-string v1, "tts_settings_preference"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->initializeAllPreferences()V

    .line 255
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 257
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 277
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings_ex/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 282
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mScreenCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 285
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Lcn/nubia/commonui/preference/ListPreference;

    if-ne v0, p1, :cond_0

    .line 297
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->handleLongPressTimeoutPreferenceChange(Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x1

    .line 300
    :goto_0
    return v0

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 320
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v1, p2, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->handleToggleLargeTextPreferenceClick()V

    .line 363
    :goto_0
    return v0

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v1, p2, :cond_1

    .line 324
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    goto :goto_0

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v1, p2, :cond_2

    .line 327
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->handleLockScreenRotationPreferenceClick()V

    goto :goto_0

    .line 329
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v1, p2, :cond_3

    .line 330
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->handleToggleSpeakPasswordPreferenceClick()V

    goto :goto_0

    .line 332
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_4

    .line 333
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->handleToggleEnableAccessibilityGesturePreferenceClick()V

    goto :goto_0

    .line 335
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_5

    .line 336
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->handleDisplayMagnificationPreferenceScreenClick()V

    goto :goto_0

    .line 338
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mCaptureScreenPreference:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v1, p2, :cond_6

    .line 339
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->handleCaptureScreenPreferenceClick()V

    goto :goto_0

    .line 341
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mDynamicEffect:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v1, p2, :cond_7

    .line 342
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->handleDynamicEffectPreferenceClick()V

    goto :goto_0

    .line 344
    :cond_7
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleFirstScreenNegativePreference:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v1, p2, :cond_8

    .line 345
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->handleToggleFirstScreenNegativePreferenceClick()V

    goto :goto_0

    .line 347
    :cond_8
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSensorAdjustGravity:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_9

    .line 348
    sget-object v1, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;->Gravity:Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->toSensorPage(Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;)V

    goto :goto_0

    .line 350
    :cond_9
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSensorAdjustMagnetic:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_a

    .line 351
    sget-object v1, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;->Magnetic:Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->toSensorPage(Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;)V

    goto :goto_0

    .line 353
    :cond_a
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSensorAdjustProximity:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_b

    .line 354
    sget-object v1, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;->Proximity:Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->toSensorPage(Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;)V

    goto :goto_0

    .line 356
    :cond_b
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSensorAdjustFingerprint:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_c

    .line 357
    sget-object v1, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;->Fingerprint:Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->toSensorPage(Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;)V

    goto :goto_0

    .line 359
    :cond_c
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleFastOnFlashLightPreference:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v1, p2, :cond_d

    .line 360
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->handleToggleFastOnFlashlightPreferenceClick()V

    goto :goto_0

    .line 363
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 261
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 262
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->loadInstalledServices()V

    .line 263
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateAllPreferences()V

    .line 265
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings_ex/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 272
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 291
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 292
    return-void
.end method
