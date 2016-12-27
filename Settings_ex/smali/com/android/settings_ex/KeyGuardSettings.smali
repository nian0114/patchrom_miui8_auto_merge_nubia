.class public Lcom/android/settings_ex/KeyGuardSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "KeyGuardSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private entries_tidy:[Ljava/lang/CharSequence;

.field private lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field public mLockAfter:Landroid/preference/PreferenceScreen;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPocketEnableObserver:Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;

.field private mPocketetPreference:Landroid/preference/nubia/CheckBoxPreference;

.field private mProfileHelper:Lztemt/profilehelper/ProfileHelper;

.field private mScreenStylePreference:Landroid/preference/Preference;

.field private mScreenTimeOutPref:Landroid/preference/Preference;

.field private values_tidy:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings_ex/KeyGuardSettings;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/KeyGuardSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/KeyGuardSettings;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings_ex/KeyGuardSettings;->updatePocketSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/KeyGuardSettings;)Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/KeyGuardSettings;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings_ex/KeyGuardSettings;->mPocketEnableObserver:Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 4

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/settings_ex/KeyGuardSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 209
    .local v1, "root":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 212
    :cond_0
    const v2, 0x7f08005b

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/KeyGuardSettings;->addPreferencesFromResource(I)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings_ex/KeyGuardSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 216
    invoke-virtual {p0}, Lcom/android/settings_ex/KeyGuardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/KeyGuardSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v2, v3}, Lcom/android/settings_ex/KeyGuardSettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    .line 218
    .local v0, "resid":I
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/KeyGuardSettings;->addPreferencesFromResource(I)V

    .line 220
    const-string v2, "lock_after_timeout"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings_ex/KeyGuardSettings;->mLockAfter:Landroid/preference/PreferenceScreen;

    .line 222
    iget-object v2, p0, Lcom/android/settings_ex/KeyGuardSettings;->mLockAfter:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/android/settings_ex/KeyGuardSettings;->setupLockAfterPreference()V

    .line 224
    invoke-direct {p0}, Lcom/android/settings_ex/KeyGuardSettings;->updateLockAfterPreferenceSummary()V

    .line 226
    :cond_1
    const-string v2, "lock_after_timeout"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/KeyGuardSettings;->removePreference(Ljava/lang/String;)V

    .line 227
    return-object v1
.end method

.method private disableUnusableTimeouts(J)V
    .locals 9
    .param p1, "maxTimeout"    # J

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/settings_ex/KeyGuardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 297
    .local v0, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/KeyGuardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 299
    .local v6, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v6

    if-ge v1, v7, :cond_1

    .line 302
    aget-object v7, v6, v1

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 303
    .local v4, "timeout":J
    cmp-long v7, v4, p1

    if-gtz v7, :cond_0

    .line 304
    aget-object v7, v0, v1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    aget-object v7, v6, v1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v4    # "timeout":J
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    array-length v8, v0

    if-ne v7, v8, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    array-length v8, v6

    if-eq v7, v8, :cond_3

    .line 310
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    iput-object v7, p0, Lcom/android/settings_ex/KeyGuardSettings;->entries_tidy:[Ljava/lang/CharSequence;

    .line 312
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    iput-object v7, p0, Lcom/android/settings_ex/KeyGuardSettings;->values_tidy:[Ljava/lang/CharSequence;

    .line 315
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/KeyGuardSettings;->mLockAfter:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v8, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 316
    return-void

    .line 315
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "resid":I
    sget v1, Lcom/android/settings_ex/KeyGuardSettings;->MY_USER_ID:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    sget v1, Lcom/android/settings_ex/KeyGuardSettings;->MY_USER_ID:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const v0, 0x7f08005f

    .line 274
    :goto_0
    return v0

    .line 255
    :cond_0
    const v0, 0x7f08005c

    goto :goto_0

    .line 258
    :cond_1
    sget v1, Lcom/android/settings_ex/KeyGuardSettings;->MY_USER_ID:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 261
    :sswitch_0
    const v0, 0x7f080034

    .line 262
    goto :goto_0

    .line 265
    :sswitch_1
    const v0, 0x7f080035

    .line 266
    goto :goto_0

    .line 270
    :sswitch_2
    const v0, 0x7f080033

    goto :goto_0

    .line 258
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isExistLockScreenStyle()Z
    .locals 4

    .prologue
    .line 231
    const/4 v1, 0x0

    .line 232
    .local v1, "isExit":Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 233
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "cn.nubia.gallerylockscreen"

    const-string v3, "cn.nubia.gallerylockscreen.settings.SettingsActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0}, Lcom/android/settings_ex/KeyGuardSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 235
    const/4 v1, 0x1

    .line 237
    :cond_0
    return v1
.end method

.method private setInitPreference()V
    .locals 1

    .prologue
    .line 117
    const-string v0, "lock_screen_style"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/KeyGuardSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/KeyGuardSettings;->mScreenStylePreference:Landroid/preference/Preference;

    .line 118
    invoke-direct {p0}, Lcom/android/settings_ex/KeyGuardSettings;->isExistLockScreenStyle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const-string v0, "lock_screen_style"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/KeyGuardSettings;->removePreference(Ljava/lang/String;)V

    .line 121
    :cond_0
    const-string v0, "screen_timeout_v5"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/KeyGuardSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/KeyGuardSettings;->mScreenTimeOutPref:Landroid/preference/Preference;

    .line 122
    const-string v0, "pocket_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/KeyGuardSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/KeyGuardSettings;->mPocketetPreference:Landroid/preference/nubia/CheckBoxPreference;

    .line 124
    invoke-direct {p0}, Lcom/android/settings_ex/KeyGuardSettings;->updatePocketSettings()V

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/KeyGuardSettings;->mPocketetPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    return-void
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 279
    invoke-virtual {p0}, Lcom/android/settings_ex/KeyGuardSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 281
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/android/settings_ex/KeyGuardSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings_ex/KeyGuardSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 283
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/KeyGuardSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 285
    .local v4, "displayTimeout":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 290
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/KeyGuardSettings;->disableUnusableTimeouts(J)V

    .line 292
    :cond_0
    return-void

    .end local v0    # "adminTimeout":J
    .end local v4    # "displayTimeout":J
    :cond_1
    move-wide v0, v6

    .line 281
    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 15

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/settings_ex/KeyGuardSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 322
    .local v2, "currentTimeout":J
    invoke-virtual {p0}, Lcom/android/settings_ex/KeyGuardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0007

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 324
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/KeyGuardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0008

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v7

    .line 326
    .local v7, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 327
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v10, v7

    if-ge v4, v10, :cond_1

    .line 328
    aget-object v10, v7, v4

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 329
    .local v8, "timeout":J
    cmp-long v10, v2, v8

    if-ltz v10, :cond_0

    .line 330
    move v0, v4

    .line 327
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 333
    .end local v8    # "timeout":J
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/KeyGuardSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "is_trust_prfererence"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v5, 0x1

    .line 336
    .local v5, "isTrustPreference":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/KeyGuardSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "trust_agment_preference_title"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 338
    .local v6, "preferenceTitle":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 339
    iget-object v10, p0, Lcom/android/settings_ex/KeyGuardSettings;->mLockAfter:Landroid/preference/PreferenceScreen;

    const v11, 0x7f0c016a

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aget-object v14, v1, v0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v6, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/settings_ex/KeyGuardSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 346
    :goto_2
    return-void

    .line 333
    .end local v5    # "isTrustPreference":Z
    .end local v6    # "preferenceTitle":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 343
    .restart local v5    # "isTrustPreference":Z
    .restart local v6    # "preferenceTitle":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/android/settings_ex/KeyGuardSettings;->mLockAfter:Landroid/preference/PreferenceScreen;

    const v11, 0x7f0c0168

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aget-object v14, v1, v0

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/settings_ex/KeyGuardSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updatePocketSettings()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 150
    iget-object v1, p0, Lcom/android/settings_ex/KeyGuardSettings;->mPocketetPreference:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/settings_ex/KeyGuardSettings;->mPocketetPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/KeyGuardSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_palmrejection"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 154
    :cond_1
    return-void
.end method

.method private updateScreenTimeout()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings_ex/KeyGuardSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const v3, 0xea60

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    div-int/lit16 v0, v1, 0x3e8

    .line 131
    .local v0, "tempId":I
    const/16 v1, 0x258

    if-le v0, v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/settings_ex/KeyGuardSettings;->mScreenTimeOutPref:Landroid/preference/Preference;

    const v2, 0x7f0c0f58

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/KeyGuardSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 141
    :goto_0
    return-void

    .line 134
    :cond_0
    const/16 v1, 0x3c

    if-ge v0, v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/android/settings_ex/KeyGuardSettings;->mScreenTimeOutPref:Landroid/preference/Preference;

    const v2, 0x7f0c0f5b

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/KeyGuardSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/KeyGuardSettings;->mScreenTimeOutPref:Landroid/preference/Preference;

    const v2, 0x7f0c0f5c

    new-array v3, v4, [Ljava/lang/Object;

    div-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/KeyGuardSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSetLockScreenSytleSummary()V
    .locals 5

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/settings_ex/KeyGuardSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cn.nubia.lockscreen.style"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 243
    .local v0, "styleId":I
    if-nez v0, :cond_0

    const v2, 0x7f0c0e5e

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/KeyGuardSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "summary":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/KeyGuardSettings;->mScreenStylePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 246
    return-void

    .line 243
    .end local v1    # "summary":Ljava/lang/String;
    :cond_0
    const v2, 0x7f0c0e5d

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/KeyGuardSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x57

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 77
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    new-instance v0, Lztemt/profilehelper/ProfileHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/KeyGuardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lztemt/profilehelper/ProfileHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/KeyGuardSettings;->mProfileHelper:Lztemt/profilehelper/ProfileHelper;

    .line 65
    new-instance v0, Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;-><init>(Lcom/android/settings_ex/KeyGuardSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/KeyGuardSettings;->mPocketEnableObserver:Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;

    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/KeyGuardSettings;->mPocketEnableObserver:Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;->register()V

    .line 68
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/KeyGuardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/KeyGuardSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 69
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/KeyGuardSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ex/KeyGuardSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 70
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/KeyGuardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings_ex/KeyGuardSettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/KeyGuardSettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/KeyGuardSettings;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 72
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/KeyGuardSettings;->mPocketEnableObserver:Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;->unregister()V

    .line 147
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 163
    iget-object v1, p0, Lcom/android/settings_ex/KeyGuardSettings;->mPocketetPreference:Landroid/preference/nubia/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    .line 164
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 165
    .local v0, "value":Z
    if-eqz v0, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/settings_ex/KeyGuardSettings;->mProfileHelper:Lztemt/profilehelper/ProfileHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lztemt/profilehelper/ProfileHelper;->setProfilePocketEnable(Z)V

    .line 171
    .end local v0    # "value":Z
    :cond_0
    :goto_0
    return v3

    .line 168
    .restart local v0    # "value":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/KeyGuardSettings;->mProfileHelper:Lztemt/profilehelper/ProfileHelper;

    invoke-virtual {v1, v3}, Lztemt/profilehelper/ProfileHelper;->setProfilePocketEnable(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 177
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 178
    .local v8, "key":Ljava/lang/String;
    const-string v0, "unlock_set_or_change"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0c01c3

    const/16 v4, 0x7b

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/KeyGuardSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 204
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 184
    :cond_0
    const-string v0, "lock_after_timeout"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 186
    .local v5, "extras":Landroid/os/Bundle;
    const-string v0, "entries"

    iget-object v1, p0, Lcom/android/settings_ex/KeyGuardSettings;->entries_tidy:[Ljava/lang/CharSequence;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 187
    const-string v0, "values"

    iget-object v1, p0, Lcom/android/settings_ex/KeyGuardSettings;->values_tidy:[Ljava/lang/CharSequence;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 188
    const-class v0, Lcom/android/settings_ex/TimeOutLocking;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0167

    const/16 v4, 0x64

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/KeyGuardSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 191
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_1
    const-string v0, "lock_screen_style"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "cn.nubia.gallerylockscreen"

    const-string v1, "cn.nubia.gallerylockscreen.settings.SettingsActivity"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const v0, 0x186a1

    :try_start_0
    invoke-virtual {p0, v7, v0}, Lcom/android/settings_ex/KeyGuardSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v6

    .line 198
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 202
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 110
    invoke-direct {p0}, Lcom/android/settings_ex/KeyGuardSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 111
    invoke-direct {p0}, Lcom/android/settings_ex/KeyGuardSettings;->setInitPreference()V

    .line 112
    invoke-direct {p0}, Lcom/android/settings_ex/KeyGuardSettings;->updateSetLockScreenSytleSummary()V

    .line 113
    invoke-direct {p0}, Lcom/android/settings_ex/KeyGuardSettings;->updateScreenTimeout()V

    .line 114
    return-void
.end method
