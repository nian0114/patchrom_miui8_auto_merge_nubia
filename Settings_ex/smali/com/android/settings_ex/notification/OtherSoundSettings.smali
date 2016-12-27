.class public Lcom/android/settings_ex/notification/OtherSoundSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OtherSoundSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/OtherSoundSettings$SettingsObserver;,
        Lcom/android/settings_ex/notification/OtherSoundSettings$SoundEffectsThread;
    }
.end annotation


# static fields
.field private static final PREFS:[Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_DIAL_PAD_TONES:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_DOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_EMERGENCY_TONE:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_TOUCH_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

.field private static mThandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPowerOnOffSound:Landroid/preference/nubia/CheckBoxPreference;

.field private final mSettingsObserver:Lcom/android/settings_ex/notification/OtherSoundSettings$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 75
    new-instance v0, Lcom/android/settings_ex/notification/OtherSoundSettings$1;

    const-string v2, "dial_pad_tones"

    const-string v3, "dtmf_tone"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/OtherSoundSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings_ex/notification/SettingPref;

    .line 83
    new-instance v0, Lcom/android/settings_ex/notification/SettingPref;

    const-string v2, "screen_locking_sounds"

    const-string v3, "lockscreen_sounds_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    .line 86
    new-instance v3, Lcom/android/settings_ex/notification/OtherSoundSettings$2;

    const-string v5, "docking_sounds"

    const-string v6, "dock_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/android/settings_ex/notification/OtherSoundSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    .line 94
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "volume_change_thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ex/notification/OtherSoundSettings;->mThandlerThread:Landroid/os/HandlerThread;

    .line 123
    new-instance v0, Lcom/android/settings_ex/notification/OtherSoundSettings$3;

    const-string v2, "touch_sounds"

    const-string v3, "sound_effects_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/OtherSoundSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    .line 132
    new-instance v3, Lcom/android/settings_ex/notification/OtherSoundSettings$4;

    const-string v5, "dock_audio_media"

    const-string v6, "dock_audio_media_enabled"

    new-array v8, v1, [I

    fill-array-data v8, :array_0

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings_ex/notification/OtherSoundSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings_ex/notification/SettingPref;

    .line 153
    new-instance v3, Lcom/android/settings_ex/notification/OtherSoundSettings$5;

    const-string v5, "emergency_tone"

    const-string v6, "emergency_tone"

    new-array v8, v10, [I

    fill-array-data v8, :array_1

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings_ex/notification/OtherSoundSettings$5;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings_ex/notification/SettingPref;

    .line 177
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings_ex/notification/SettingPref;

    sget-object v2, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v9

    sget-object v2, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v4

    sget-object v2, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v1, v0, v10

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    .line 276
    new-instance v0, Lcom/android/settings_ex/notification/OtherSoundSettings$7;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/OtherSoundSettings$7;-><init>()V

    sput-object v0, Lcom/android/settings_ex/notification/OtherSoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

    return-void

    .line 132
    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 153
    :array_1
    .array-data 4
        0x1
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 185
    new-instance v0, Lcom/android/settings_ex/notification/OtherSoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/OtherSoundSettings$SettingsObserver;-><init>(Lcom/android/settings_ex/notification/OtherSoundSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/OtherSoundSettings$SettingsObserver;

    .line 246
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/android/settings_ex/notification/OtherSoundSettings;->hasDockSettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings_ex/notification/OtherSoundSettings;->mThandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/notification/OtherSoundSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/OtherSoundSettings;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()[Lcom/android/settings_ex/notification/SettingPref;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/notification/OtherSoundSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/OtherSoundSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static hasDockSettings(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 299
    const/16 v0, 0x49

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 193
    sget-object v4, Lcom/android/settings_ex/notification/OtherSoundSettings;->mThandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 195
    sget-object v4, Lcom/android/settings_ex/notification/OtherSoundSettings;->mThandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 198
    :cond_0
    const v4, 0x7f08004c

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/notification/OtherSoundSettings;->addPreferencesFromResource(I)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    .line 201
    const-string v4, "power_on_off_sound"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings_ex/notification/OtherSoundSettings;->mPowerOnOffSound:Landroid/preference/nubia/CheckBoxPreference;

    .line 202
    iget-object v4, p0, Lcom/android/settings_ex/notification/OtherSoundSettings;->mPowerOnOffSound:Landroid/preference/nubia/CheckBoxPreference;

    new-instance v5, Lcom/android/settings_ex/notification/OtherSoundSettings$6;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/notification/OtherSoundSettings$6;-><init>(Lcom/android/settings_ex/notification/OtherSoundSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    sget-object v0, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    .local v0, "arr$":[Lcom/android/settings_ex/notification/SettingPref;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 210
    .local v3, "pref":Lcom/android/settings_ex/notification/SettingPref;
    invoke-virtual {v3, p0}, Lcom/android/settings_ex/notification/SettingPref;->init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v3    # "pref":Lcom/android/settings_ex/notification/SettingPref;
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 229
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 230
    sget-object v0, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    .local v0, "arr$":[Lcom/android/settings_ex/notification/SettingPref;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 231
    .local v3, "pref":Lcom/android/settings_ex/notification/SettingPref;
    invoke-virtual {v3}, Lcom/android/settings_ex/notification/SettingPref;->release()V

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v3    # "pref":Lcom/android/settings_ex/notification/SettingPref;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 223
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 224
    iget-object v0, p0, Lcom/android/settings_ex/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/OtherSoundSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/OtherSoundSettings$SettingsObserver;->register(Z)V

    .line 225
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 216
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/notification/OtherSoundSettings;->mPowerOnOffSound:Landroid/preference/nubia/CheckBoxPreference;

    const-string v1, "1"

    const-string v2, "persist.sys.power.sound"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/OtherSoundSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/OtherSoundSettings$SettingsObserver;->register(Z)V

    .line 219
    return-void
.end method
