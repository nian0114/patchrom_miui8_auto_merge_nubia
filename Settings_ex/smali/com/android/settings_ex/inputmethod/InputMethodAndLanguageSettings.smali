.class public Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;
.implements Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;


# instance fields
.field private mDefaultInputMethodSelectorVisibility:I

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mGameControllerCategory:Landroid/preference/PreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

.field private final mHardKeyboardPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mIm:Landroid/hardware/input/InputManager;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

.field private mIntentWaitingForResult:Landroid/content/Intent;

.field private mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

.field private mLanguagePref:Landroid/preference/Preference;

.field private mSettingsObserver:Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

.field private mShowsOnlyFullImeAndKeyboardList:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 659
    new-instance v0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$4;

    invoke-direct {v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$4;-><init>()V

    sput-object v0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    .line 634
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;
    .param p1, "x1"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getLocaleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z

    move-result v0

    return v0
.end method

.method private static getLocaleName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 348
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v0, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 349
    .local v0, "currentLocale":Ljava/util/Locale;
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v3

    .line 350
    .local v3, "locales":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 351
    .local v2, "locale":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    invoke-virtual {v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 357
    .end local v2    # "locale":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static haveInputDeviceWithVibrator()Z
    .locals 4

    .prologue
    .line 624
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    .line 625
    .local v1, "devices":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 626
    aget v3, v1, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 627
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 628
    const/4 v3, 0x1

    .line 631
    .end local v0    # "device":Landroid/view/InputDevice;
    :goto_1
    return v3

    .line 625
    .restart local v0    # "device":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 631
    .end local v0    # "device":Landroid/view/InputDevice;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 493
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 494
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "previously_enabled_subtypes"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "imesAndSubtypesString":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    return-object v3
.end method

.method private restorePreviouslyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 4
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;

    move-result-object v1

    .line 481
    .local v1, "imeToEnabledSubtypeIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, "imiId":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 483
    .local v0, "enabledSubtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 489
    :goto_0
    return-void

    .line 486
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V

    .line 487
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->enableInputMethodSubtypesOf(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method private saveEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 9
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 464
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 465
    .local v0, "enabledSubtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v8, 0x1

    invoke-virtual {v7, p1, v8}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v1

    .line 467
    .local v1, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 468
    .local v5, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 469
    .local v6, "subtypeId":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 471
    .end local v5    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6    # "subtypeId":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;

    move-result-object v3

    .line 473
    .local v3, "imeToEnabledSubtypeIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 474
    .local v4, "imiId":Ljava/lang/String;
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    invoke-direct {p0, v3}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V

    .line 476
    return-void
.end method

.method private savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 500
    .local p1, "subtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 501
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 502
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->buildInputMethodsAndSubtypesString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, "imesAndSubtypesString":Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "previously_enabled_subtypes"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 505
    return-void
.end method

.method private showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3
    .param p1, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 582
    new-instance v0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;-><init>(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 584
    .local v0, "fragment":Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 585
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "keyboardLayout"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method private updateCurrentImeName()V
    .locals 5

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 509
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "current_input_method"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 511
    .local v2, "curPref":Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 512
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 514
    .local v1, "curIme":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 515
    monitor-enter p0

    .line 516
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 517
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateGameControllers()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 611
    invoke-static {}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 612
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 614
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "vibrate_input_devices"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    .line 616
    .local v0, "pref":Landroid/preference/nubia/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_input_devices"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 621
    .end local v0    # "pref":Landroid/preference/nubia/CheckBoxPreference;
    :goto_1
    return-void

    .line 616
    .restart local v0    # "pref":Landroid/preference/nubia/CheckBoxPreference;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 619
    .end local v0    # "pref":Landroid/preference/nubia/CheckBoxPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateHardKeyboards()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 528
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 529
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 530
    .local v2, "devices":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v2

    if-ge v3, v10, :cond_3

    .line 531
    aget v10, v2, v3

    invoke-static {v10}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 532
    .local v1, "device":Landroid/view/InputDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 535
    invoke-virtual {v1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v5

    .line 536
    .local v5, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v5}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v7

    .line 538
    .local v7, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-eqz v7, :cond_1

    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v7}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v6

    .line 541
    .local v6, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :goto_1
    new-instance v8, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, v10, v9}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 542
    .local v8, "pref":Landroid/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 543
    if-eqz v6, :cond_2

    .line 544
    invoke-virtual {v6}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 548
    :goto_2
    new-instance v10, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$3;

    invoke-direct {v10, p0, v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$3;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 555
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    .end local v5    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v6    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v7    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v8    # "pref":Landroid/preference/PreferenceScreen;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v5    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local v7    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :cond_1
    move-object v6, v9

    .line 538
    goto :goto_1

    .line 546
    .restart local v6    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .restart local v8    # "pref":Landroid/preference/PreferenceScreen;
    :cond_2
    const v10, 0x7f0c05c0

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_2

    .line 559
    .end local v1    # "device":Landroid/view/InputDevice;
    .end local v5    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v6    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v7    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v8    # "pref":Landroid/preference/PreferenceScreen;
    :cond_3
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 560
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_3
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-lez v4, :cond_5

    .line 561
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    .line 562
    .local v8, "pref":Landroid/preference/Preference;
    invoke-virtual {v8}, Landroid/preference/Preference;->getOrder()I

    move-result v9

    const/16 v10, 0x3e8

    if-ge v9, v10, :cond_4

    .line 563
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    move v4, v3

    .line 565
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    .line 567
    .end local v4    # "i":I
    .end local v8    # "pref":Landroid/preference/Preference;
    .restart local v3    # "i":I
    :cond_5
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 568
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 569
    .local v0, "count":I
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_6

    .line 570
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/Preference;

    .line 571
    .restart local v8    # "pref":Landroid/preference/Preference;
    invoke-virtual {v8, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 572
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 569
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 575
    .end local v8    # "pref":Landroid/preference/Preference;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 579
    .end local v0    # "count":I
    :goto_5
    return-void

    .line 577
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5
.end method

.method private updateInputDevices()V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateHardKeyboards()V

    .line 524
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateGameControllers()V

    .line 525
    return-void
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 389
    iget-object v14, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    monitor-enter v14

    .line 391
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .line 392
    .local v0, "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 428
    .end local v0    # "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    .end local v9    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 394
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 395
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v11

    .line 396
    .local v11, "permittedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 403
    .local v1, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v10

    .line 405
    .local v10, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-nez v10, :cond_2

    move v6, v12

    .line 406
    .local v6, "N":I
    :goto_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v6, :cond_4

    .line 407
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 408
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v11, :cond_1

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    move v4, v13

    .line 410
    .local v4, "isAllowedByOrganization":Z
    :goto_3
    new-instance v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    const/4 v3, 0x1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V

    .line 413
    .restart local v0    # "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 405
    .end local v0    # "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "isAllowedByOrganization":Z
    .end local v6    # "N":I
    .end local v8    # "i":I
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_1

    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v6    # "N":I
    .restart local v8    # "i":I
    :cond_3
    move v4, v12

    .line 408
    goto :goto_3

    .line 415
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_4
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v7

    .line 416
    .local v7, "collator":Ljava/text/Collator;
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$2;

    invoke-direct {v5, p0, v7}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$2;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;Ljava/text/Collator;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 422
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v6, :cond_5

    .line 423
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .line 424
    .restart local v0    # "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 425
    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/preference/Preference;)V

    .line 426
    invoke-virtual {v0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    .line 422
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 428
    .end local v0    # "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    :cond_5
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    .line 434
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v5}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v5

    const/4 v12, 0x0

    invoke-static {p0, v3, v5, v12}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 437
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0x39

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 600
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 602
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    const-string v2, "input_device_identifier"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 605
    .local v0, "inputDeviceIdentifier":Landroid/hardware/input/InputDeviceIdentifier;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 606
    invoke-direct {p0, v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 608
    .end local v0    # "inputDeviceIdentifier":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v5, 0x7f080036

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->addPreferencesFromResource(I)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "voice_category"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 120
    .local v0, "activity":Landroid/app/Activity;
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 121
    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    .line 124
    const v5, 0x7f0c005f

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 131
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "phone_language"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 147
    :goto_1
    const-string v5, "hard_keyboard"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    .line 148
    const-string v5, "keyboard_settings_category"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    .line 150
    const-string v5, "game_controller_settings_category"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    .line 153
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 155
    .local v4, "startingIntent":Landroid/content/Intent;
    const-string v5, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    .line 157
    iget-boolean v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v5, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 163
    iget-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 168
    :cond_0
    const-string v5, "input"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/InputManager;

    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    .line 169
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 172
    const-string v5, "spellcheckers_settings"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 173
    .local v3, "spellChecker":Landroid/preference/Preference;
    if-eqz v3, :cond_1

    .line 175
    invoke-static {v3}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/preference/Preference;)V

    .line 176
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v2, "intent":Landroid/content/Intent;
    const-class v5, Lcom/android/settings_ex/SubSettings;

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 178
    const-string v5, ":settings:show_fragment"

    const-class v6, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v5, ":settings:show_fragment_title_resid"

    const v6, 0x7f0c08d8

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 185
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    .line 186
    new-instance v5, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    iget-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6, v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    .line 187
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 192
    const-string v5, "input_device_identifier"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 194
    .local v1, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    iget-boolean v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    .line 195
    invoke-direct {p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 197
    :cond_2
    return-void

    .line 133
    .end local v1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v3    # "spellChecker":Landroid/preference/Preference;
    .end local v4    # "startingIntent":Landroid/content/Intent;
    :cond_3
    const-string v5, "phone_language"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    goto/16 :goto_1

    .line 126
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 308
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 313
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 318
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 291
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 293
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 294
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->pause()V

    .line 300
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v0}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v2, v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 303
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 323
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 342
    :goto_0
    return v2

    .line 326
    :cond_0
    instance-of v4, p2, Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_3

    .line 327
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 342
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0

    .line 329
    :cond_2
    const-string v3, "current_input_method"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 330
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 332
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker(Z)V

    goto :goto_1

    .line 334
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    instance-of v4, p2, Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v4, :cond_1

    move-object v1, p2

    .line 335
    check-cast v1, Landroid/preference/nubia/CheckBoxPreference;

    .line 336
    .local v1, "pref":Landroid/preference/nubia/CheckBoxPreference;
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string v5, "vibrate_input_devices"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-ne v1, v4, :cond_1

    .line 337
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_input_devices"

    invoke-virtual {v1}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v3

    :cond_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    .line 339
    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 250
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 252
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v4}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->resume()V

    .line 253
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 255
    const-string v4, "spellcheckers_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 256
    .local v2, "spellChecker":Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 257
    const-string v4, "textservices"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textservice/TextServicesManager;

    .line 259
    .local v3, "tsm":Landroid/view/textservice/TextServicesManager;
    invoke-virtual {v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 260
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v1, :cond_3

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 261
    invoke-virtual {v3}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    .line 262
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 268
    .end local v1    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v3    # "tsm":Landroid/view/textservice/TextServicesManager;
    :cond_0
    :goto_1
    iget-boolean v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-nez v4, :cond_2

    .line 269
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    if-eqz v4, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getLocaleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "localeName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 275
    .end local v0    # "localeName":Ljava/lang/String;
    :cond_1
    const-string v4, "key_user_dictionary_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->removePreference(Ljava/lang/String;)V

    .line 281
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 285
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v4}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 286
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews()V

    .line 287
    return-void

    .line 260
    .restart local v1    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .restart local v3    # "tsm":Landroid/view/textservice/TextServicesManager;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 264
    :cond_4
    const v4, 0x7f0c0a59

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method

.method public onSaveInputMethodPreference(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V
    .locals 6
    .param p1, "pref"    # Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .prologue
    .line 441
    invoke-virtual {p1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    .line 442
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {p1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 445
    invoke-direct {p0, v2}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->saveEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const/4 v0, 0x1

    .line 449
    .local v0, "hasHardwareKeyboard":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v5

    invoke-static {p0, v4, v5, v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 452
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v4}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 453
    invoke-virtual {p1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 456
    invoke-direct {p0, v2}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->restorePreviouslyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    .line 458
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .line 459
    .local v3, "p":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    invoke-virtual {v3}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    goto :goto_1

    .line 447
    .end local v0    # "hasHardwareKeyboard":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "p":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 461
    .restart local v0    # "hasHardwareKeyboard":Z
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public onSetupKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3
    .param p1, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 590
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 592
    const-string v1, "input_device_identifier"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 594
    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 595
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 596
    return-void
.end method
