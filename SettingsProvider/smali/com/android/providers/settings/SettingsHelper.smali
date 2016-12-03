.class public Lcom/android/providers/settings/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/SettingsHelper$SettingsLookup;
    }
.end annotation


# static fields
.field private static final sBroadcastOnRestore:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGlobalLookup:Lcom/android/providers/settings/SettingsHelper$SettingsLookup;

.field private static sSecureLookup:Lcom/android/providers/settings/SettingsHelper$SettingsLookup;

.field private static sSystemLookup:Lcom/android/providers/settings/SettingsHelper$SettingsLookup;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    sput-object v0, Lcom/android/providers/settings/SettingsHelper;->sBroadcastOnRestore:Landroid/util/ArraySet;

    .line 66
    sget-object v0, Lcom/android/providers/settings/SettingsHelper;->sBroadcastOnRestore:Landroid/util/ArraySet;

    const-string v1, "enabled_notification_listeners"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/android/providers/settings/SettingsHelper;->sBroadcastOnRestore:Landroid/util/ArraySet;

    const-string v1, "enabled_accessibility_services"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/android/providers/settings/SettingsHelper;->sBroadcastOnRestore:Landroid/util/ArraySet;

    const-string v1, "enabled_input_methods"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Lcom/android/providers/settings/SettingsHelper$1;

    invoke-direct {v0}, Lcom/android/providers/settings/SettingsHelper$1;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsHelper;->sSystemLookup:Lcom/android/providers/settings/SettingsHelper$SettingsLookup;

    .line 81
    new-instance v0, Lcom/android/providers/settings/SettingsHelper$2;

    invoke-direct {v0}, Lcom/android/providers/settings/SettingsHelper$2;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsHelper;->sSecureLookup:Lcom/android/providers/settings/SettingsHelper$SettingsLookup;

    .line 87
    new-instance v0, Lcom/android/providers/settings/SettingsHelper$3;

    invoke-direct {v0}, Lcom/android/providers/settings/SettingsHelper$3;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsHelper;->sGlobalLookup:Lcom/android/providers/settings/SettingsHelper$SettingsLookup;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    .line 95
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 97
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 99
    return-void
.end method

.method private getCanonicalRingtoneValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 226
    .local v1, "ringtoneUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 227
    .local v0, "canonicalUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private isAlreadyConfiguredCriticalAccessibilitySetting(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 236
    const-string v2, "accessibility_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "accessibility_script_injection"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "speak_password"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "touch_exploration_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 240
    goto :goto_0

    .line 241
    :cond_3
    const-string v2, "touch_exploration_granted_accessibility_services"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "enabled_accessibility_services"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 243
    :cond_4
    iget-object v2, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 246
    goto :goto_0
.end method

.method private setAutoRestore(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 251
    :try_start_0
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 253
    .local v0, "bm":Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_0

    .line 254
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v0    # "bm":Landroid/app/backup/IBackupManager;
    :cond_0
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 284
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 286
    .local v0, "power":Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v0    # "power":Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setGpsLocation(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-object v3, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 261
    .local v2, "um":Landroid/os/UserManager;
    const-string v3, "no_share_location"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    :goto_0
    return-void

    .line 264
    :cond_0
    const-string v0, "gps"

    .line 265
    .local v0, "GPS":Ljava/lang/String;
    const-string v3, "gps"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "gps,"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ",gps"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ",gps,"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 270
    .local v1, "enabled":Z
    :goto_1
    iget-object v3, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gps"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 265
    .end local v1    # "enabled":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setRingtone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 207
    if-nez p2, :cond_0

    .line 222
    :goto_0
    return-void

    .line 208
    :cond_0
    const/4 v2, 0x0

    .line 209
    .local v2, "ringtoneUri":Landroid/net/Uri;
    const-string v3, "_silent"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 210
    const/4 v2, 0x0

    .line 219
    :cond_1
    const-string v3, "ringtone"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 221
    .local v1, "ringtoneType":I
    :goto_1
    iget-object v3, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 212
    .end local v1    # "ringtoneType":I
    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 213
    .local v0, "canonicalUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 214
    if-nez v2, :cond_1

    goto :goto_0

    .line 219
    .end local v0    # "canonicalUri":Landroid/net/Uri;
    :cond_3
    const/4 v1, 0x2

    goto :goto_1
.end method

.method private setSoundEffects(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 275
    if-eqz p1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_0
.end method


# virtual methods
.method applyAudioSettings()V
    .locals 2

    .prologue
    .line 351
    new-instance v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    .line 352
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->reloadAudioSettings()V

    .line 353
    return-void
.end method

.method getLocaleData()[B
    .locals 6

    .prologue
    .line 295
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 296
    .local v0, "conf":Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 297
    .local v2, "loc":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "localeString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "country":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 302
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    return-object v4
.end method

.method public onBackupValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string v0, "ringtone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "notification_sound"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    if-nez p2, :cond_4

    .line 178
    const-string v0, "ringtone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    const-string p2, "_silent"

    .line 196
    .end local p2    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2

    .line 185
    .restart local p2    # "value":Ljava/lang/String;
    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    .line 189
    :cond_3
    const-string p2, "_silent"

    goto :goto_0

    .line 192
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsHelper;->getCanonicalRingtoneValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public restoreValue(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "contentValues"    # Landroid/content/ContentValues;
    .param p4, "destination"    # Landroid/net/Uri;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "value"    # Ljava/lang/String;

    .prologue
    .line 113
    const/4 v2, 0x0

    .line 114
    .local v2, "oldValue":Ljava/lang/String;
    const/4 v3, 0x0

    .line 117
    .local v3, "sendBroadcast":Z
    sget-object v5, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 118
    sget-object v4, Lcom/android/providers/settings/SettingsHelper;->sSecureLookup:Lcom/android/providers/settings/SettingsHelper$SettingsLookup;

    .line 125
    .local v4, "table":Lcom/android/providers/settings/SettingsHelper$SettingsLookup;
    :goto_0
    sget-object v5, Lcom/android/providers/settings/SettingsHelper;->sBroadcastOnRestore:Landroid/util/ArraySet;

    invoke-virtual {v5, p5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    const/4 v5, 0x0

    invoke-interface {v4, p2, p5, v5}, Lcom/android/providers/settings/SettingsHelper$SettingsLookup;->lookup(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 127
    const/4 v3, 0x1

    .line 131
    :cond_0
    :try_start_0
    const-string v5, "screen_brightness"

    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 132
    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/providers/settings/SettingsHelper;->setBrightness(I)V

    .line 151
    :cond_1
    :goto_1
    invoke-virtual {p3}, Landroid/content/ContentValues;->clear()V

    .line 152
    const-string v5, "name"

    invoke-virtual {p3, v5, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v5, "value"

    invoke-virtual {p3, v5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2, p4, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    if-eqz v3, :cond_2

    .line 163
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.os.action.SETTING_RESTORED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "setting_name"

    invoke-virtual {v5, v6, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "new_value"

    invoke-virtual {v5, v6, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "previous_value"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 168
    .local v1, "intent":Landroid/content/Intent;
    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-virtual {p1, v1, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 171
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_2
    return-void

    .line 119
    .end local v4    # "table":Lcom/android/providers/settings/SettingsHelper$SettingsLookup;
    :cond_3
    sget-object v5, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 120
    sget-object v4, Lcom/android/providers/settings/SettingsHelper;->sSystemLookup:Lcom/android/providers/settings/SettingsHelper$SettingsLookup;

    .restart local v4    # "table":Lcom/android/providers/settings/SettingsHelper$SettingsLookup;
    goto :goto_0

    .line 122
    .end local v4    # "table":Lcom/android/providers/settings/SettingsHelper$SettingsLookup;
    :cond_4
    sget-object v4, Lcom/android/providers/settings/SettingsHelper;->sGlobalLookup:Lcom/android/providers/settings/SettingsHelper$SettingsLookup;

    .restart local v4    # "table":Lcom/android/providers/settings/SettingsHelper$SettingsLookup;
    goto :goto_0

    .line 134
    :cond_5
    :try_start_1
    const-string v5, "sound_effects_enabled"

    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 135
    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    const/4 v5, 0x1

    :goto_3
    invoke-direct {p0, v5}, Lcom/android/providers/settings/SettingsHelper;->setSoundEffects(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 162
    if-eqz v3, :cond_2

    .line 163
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.os.action.SETTING_RESTORED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "setting_name"

    invoke-virtual {v5, v6, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "new_value"

    invoke-virtual {v5, v6, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "previous_value"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 168
    .restart local v1    # "intent":Landroid/content/Intent;
    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-virtual {p1, v1, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_2

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 137
    :cond_7
    :try_start_2
    const-string v5, "location_providers_allowed"

    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 138
    invoke-direct {p0, p6}, Lcom/android/providers/settings/SettingsHelper;->setGpsLocation(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    if-eqz v3, :cond_2

    .line 163
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.os.action.SETTING_RESTORED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "setting_name"

    invoke-virtual {v5, v6, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "new_value"

    invoke-virtual {v5, v6, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "previous_value"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 168
    .restart local v1    # "intent":Landroid/content/Intent;
    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-virtual {p1, v1, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 140
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_8
    :try_start_3
    const-string v5, "backup_auto_restore"

    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 141
    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    const/4 v5, 0x1

    :goto_4
    invoke-direct {p0, v5}, Lcom/android/providers/settings/SettingsHelper;->setAutoRestore(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 162
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_9

    .line 163
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.os.action.SETTING_RESTORED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "setting_name"

    invoke-virtual {v6, v7, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "new_value"

    invoke-virtual {v6, v7, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "previous_value"

    invoke-virtual {v6, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 168
    .restart local v1    # "intent":Landroid/content/Intent;
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v7, 0x0

    invoke-virtual {p1, v1, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 169
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_9
    throw v5

    .line 141
    :cond_a
    const/4 v5, 0x0

    goto :goto_4

    .line 142
    :cond_b
    :try_start_4
    invoke-direct {p0, p5}, Lcom/android/providers/settings/SettingsHelper;->isAlreadyConfiguredCriticalAccessibilitySetting(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v5

    if-eqz v5, :cond_c

    .line 162
    if-eqz v3, :cond_2

    .line 163
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.os.action.SETTING_RESTORED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "setting_name"

    invoke-virtual {v5, v6, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "new_value"

    invoke-virtual {v5, v6, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "previous_value"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 168
    .restart local v1    # "intent":Landroid/content/Intent;
    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-virtual {p1, v1, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 144
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_c
    :try_start_5
    const-string v5, "ringtone"

    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "notification_sound"

    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 146
    :cond_d
    invoke-direct {p0, p5, p6}, Lcom/android/providers/settings/SettingsHelper;->setRingtone(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 162
    if-eqz v3, :cond_2

    .line 163
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.os.action.SETTING_RESTORED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "setting_name"

    invoke-virtual {v5, v6, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "new_value"

    invoke-virtual {v5, v6, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "previous_value"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 168
    .restart local v1    # "intent":Landroid/content/Intent;
    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-virtual {p1, v1, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method setLocaleData([BI)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 315
    iget-object v7, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 319
    .local v2, "conf":Landroid/content/res/Configuration;
    iget-boolean v7, v2, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v7, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v7, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "availableLocales":[Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, p1, v8, p2}, Ljava/lang/String;-><init>([BII)V

    const/16 v8, 0x5f

    const/16 v9, 0x2d

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 324
    .local v6, "localeCode":Ljava/lang/String;
    const/4 v5, 0x0

    .line 325
    .local v5, "loc":Ljava/util/Locale;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, v1

    if-ge v4, v7, :cond_2

    .line 326
    aget-object v7, v1, v4

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 327
    invoke-static {v6}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    .line 331
    :cond_2
    if-eqz v5, :cond_0

    .line 334
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 335
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 336
    .local v3, "config":Landroid/content/res/Configuration;
    iput-object v5, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 338
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 340
    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v3    # "config":Landroid/content/res/Configuration;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 325
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
