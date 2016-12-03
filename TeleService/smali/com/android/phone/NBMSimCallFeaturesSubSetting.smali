.class public Lcom/android/phone/NBMSimCallFeaturesSubSetting;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "NBMSimCallFeaturesSubSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;,
        Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field private static final FORWARDING_SETTINGS_REASONS:[I

.field private static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonCallTime:Landroid/preference/Preference;

.field private mCLIRButton:Lcom/android/phone/CLIRListPreference;

.field private mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

.field private mCdmaCallForward:Landroid/preference/PreferenceScreen;

.field private mCdmaCallWaiting:Landroid/preference/PreferenceScreen;

.field private mChangingVMorFwdDueToProviderChange:Z

.field private mContactListIntent:Landroid/content/Intent;

.field private mCurrentDialogId:I

.field private mExpectedChangeResultReasons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForeground:Z

.field private mForwardingChangeResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncResult;",
            ">;"
        }
    .end annotation
.end field

.field private mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mFwdChangesRequireRollback:Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field private mInitIndex:I

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field private mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneId:I

.field private final mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousVMProviderKey:Ljava/lang/String;

.field private mReadingSettingsForDefaultProvider:Z

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mRingtoneLookupComplete:Landroid/os/Handler;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private final mSimStateChangeListener:Lcom/android/phone/NBSimStateChangeInterface;

.field private mSubId:I

.field private mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;

.field private mSubscriptionPrefEXPAND:Landroid/preference/PreferenceScreen;

.field private mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;

.field private mVMChangeCompletedSuccessfully:Z

.field private mVMOrFwdSetError:I

.field private mVMProviderSettingsForced:Z

.field private final mVMProvidersData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceMail:Landroid/preference/Preference;

.field private mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailNotificationRingtone:Landroid/preference/Preference;

.field private mVoicemailNotificationVibrate:Landroid/preference/nubia/phone/CheckBoxPreference;

.field private mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

.field private mVoicemailSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting$1;-><init>(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)V

    iput-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPreferences:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mInitIndex:I

    new-instance v0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting$2;-><init>(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)V

    iput-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSimStateChangeListener:Lcom/android/phone/NBSimStateChangeInterface;

    iput-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    iput-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iput-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iput-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    iput v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCurrentDialogId:I

    iput-boolean v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    iput-boolean v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    iput-boolean v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMChangeCompletedSuccessfully:Z

    iput-boolean v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    iput v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mReadingSettingsForDefaultProvider:Z

    new-instance v0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting$3;-><init>(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)V

    iput-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mGetOptionComplete:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$4;

    invoke-direct {v0, p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting$4;-><init>(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)V

    iput-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSetOptionComplete:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$5;

    invoke-direct {v0, p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting$5;-><init>(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)V

    iput-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mRevertOptionComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailNotificationRingtone:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100()[Lcom/android/internal/telephony/CallForwardInfo;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->setVMNumberWithCarrier()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    .prologue
    iget-boolean v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/phone/NBMSimCallFeaturesSubSetting;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->handleSetVMOrFwdMessage()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->onRevertDone()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    .prologue
    iget v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubId:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->initGsmButton(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)Lcom/android/phone/CallWaitingCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    sget-object v0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Landroid/os/AsyncResult;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting;
    .param p1, "x1"    # Landroid/os/AsyncResult;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)Landroid/os/AsyncResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    .prologue
    iget-boolean v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMChangeCompletedSuccessfully:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMChangeCompletedSuccessfully:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->checkForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkForwardingCompleted()Z
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .local v2, "result":Z
    :cond_0
    :goto_0
    return v2

    .end local v2    # "result":Z
    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "result":Z
    iget-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .local v1, "reason":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkFwdChangeSuccess()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .local v1, "exception":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .end local v1    # "exception":Ljava/lang/Throwable;
    :cond_1
    return-object v3
.end method

.method private checkVMChangeSuccess()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteSettingsForVoicemailProvider(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#FWDSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#Length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private dismissDialogSafely(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getCurrentVoicemailProviderKey()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "key":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "key":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static goUpToLastLevelSetting(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "phoneId"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.NBSelectSubscription"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "PACKAGE"

    const-string v2, "com.android.phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TARGET_CLASS"

    const-string v2, "com.android.phone.NBMSimCallFeaturesSubSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static goUpToTopLevelSetting(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "phoneId"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private handleCWButton(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    iget v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubId:I

    new-instance v2, Lcom/android/phone/NBMSimCallFeaturesSubSetting$8;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting$8;-><init>(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/android/phone/NBPhoneUtils;->requestEnableDataDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    .local v0, "isShow":Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "objValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setCW(Z)V

    const/4 v1, 0x1

    :goto_0
    return v1

    .restart local p1    # "objValue":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "idx"    # I

    .prologue
    const/16 v6, 0x25a

    const/4 v9, 0x0

    const/4 v2, 0x0

    .local v2, "error":Ljava/lang/Throwable;
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    :cond_0
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2    # "error":Ljava/lang/Throwable;
    check-cast v2, Ljava/lang/Throwable;

    .restart local v2    # "error":Ljava/lang/Throwable;
    :cond_1
    iget-object v5, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v5, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v2, :cond_4

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {p0, v6}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->dismissDialogSafely(I)V

    const/16 v5, 0x192

    invoke-direct {p0, v5}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->showVMDialog(I)V

    goto :goto_0

    :cond_4
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v5

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .local v0, "cfInfoArray":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v3, 0x0

    .local v3, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_5

    aget-object v5, v0, v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    aget-object v3, v0, v4

    :cond_5
    if-nez v3, :cond_a

    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    .end local v3    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .restart local v3    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    sget-object v5, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v5, v5, p2

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    const/4 v5, 0x1

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v3, v5, p2

    const/4 v1, 0x1

    .local v1, "done":Z
    const/4 v4, 0x0

    :goto_3
    iget-object v5, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v5, v5

    if-ge v4, v5, :cond_7

    iget-object v5, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v4

    if-nez v5, :cond_c

    const/4 v1, 0x0

    :cond_7
    if-eqz v1, :cond_2

    invoke-direct {p0, v6}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->dismissDialogSafely(I)V

    iget-boolean v5, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mReadingSettingsForDefaultProvider:Z

    if-eqz v5, :cond_8

    const-string v5, ""

    new-instance v6, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    iget-object v7, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v5, v6}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V

    iput-boolean v9, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mReadingSettingsForDefaultProvider:Z

    :cond_8
    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_0

    .end local v1    # "done":Z
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_a
    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    :cond_b
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    goto :goto_2

    .restart local v1    # "done":Z
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private handleSetVMOrFwdMessage()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .local v2, "success":Z
    const/4 v1, 0x0

    .local v1, "fwdFailure":Z
    const-string v0, ""

    .local v0, "exceptionMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x1

    :cond_0
    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :cond_1
    if-eqz v2, :cond_2

    const/16 v3, 0x258

    invoke-direct {p0, v3}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->handleVMAndFwdSetSuccess(I)V

    :goto_0
    return-void

    :cond_2
    if-eqz v1, :cond_3

    const-string v3, "NBMSimCallFeaturesSubSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to change fowarding setting. Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x191

    invoke-direct {p0, v3}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0

    :cond_3
    const-string v3, "NBMSimCallFeaturesSubSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to change voicemail. Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x190

    invoke-direct {p0, v3}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0
.end method

.method private handleVMAndFwdSetSuccess(I)V
    .locals 1
    .param p1, "msg"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    invoke-direct {p0, p1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->showVMDialog(I)V

    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->updateVoiceNumberField()V

    return-void
.end method

.method private handleVMBtnClickRequest()V
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V

    return-void
.end method

.method private handleVMOrFwdSetError(I)V
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    iput-boolean v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->switchToPreviousVoicemailProvider()V

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    invoke-direct {p0, p1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->showVMDialog(I)V

    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->updateVoiceNumberField()V

    goto :goto_0
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 6
    .param p1, "infos"    # [Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "reason"    # I

    .prologue
    const/4 v4, 0x0

    .local v4, "result":Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .local v2, "info":Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_1

    move-object v4, v2

    .end local v0    # "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v1    # "i$":I
    .end local v2    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3    # "len$":I
    :cond_0
    return-object v4

    .restart local v0    # "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v1    # "i$":I
    .restart local v2    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initCallTimer()V
    .locals 2

    .prologue
    const-string v0, "button_call_timer_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mButtonCallTime:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mButtonCallTime:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mButtonCallTime:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhoneId:I

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mButtonCallTime:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private initCdmaPreference(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    const-string v0, "button_cdma_cf_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCdmaCallForward:Landroid/preference/PreferenceScreen;

    const-string v0, "button_cdma_cw_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCdmaCallWaiting:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCdmaCallForward:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCdmaCallWaiting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCdmaCallForward:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCdmaCallWaiting:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private initGsmBundle(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubId:I

    new-instance v2, Lcom/android/phone/NBMSimCallFeaturesSubSetting$7;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting$7;-><init>(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Landroid/os/Bundle;)V

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/android/phone/NBPhoneUtils;->requestEnableDataDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    .local v0, "isShow":Z
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->initGsmButton(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private initGsmButton(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZLcom/android/internal/telephony/Phone;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mInitIndex:I

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, p0, v4, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZLcom/android/internal/telephony/Phone;)V

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, p0, v4, v2}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZLcom/android/internal/telephony/Phone;)V

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v1}, Lcom/android/phone/CLIRListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .local v0, "clirArray":[I
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/CLIRListPreference;->handleGetCLIRResult([I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZLcom/android/internal/telephony/Phone;)V

    goto :goto_0
.end method

.method private initGsmPreference(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v3, 0x0

    const-string v1, "button_fdn_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;

    const-string v1, "button_cf_expand_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubscriptionPrefEXPAND:Landroid/preference/PreferenceScreen;

    const-string v1, "button_cb_expand_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .local v0, "subscriptionPrefCBExpand":Landroid/preference/PreferenceScreen;
    const-string v1, "button_cw_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallWaitingCheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    const-string v1, "button_clir_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CLIRListPreference;

    iput-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubscriptionPrefEXPAND:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhoneId:I

    invoke-static {v1, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubscriptionPrefEXPAND:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhoneId:I

    invoke-static {v1, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhoneId:I

    invoke-static {v1, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initPreference()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .local v0, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->initCallTimer()V

    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->initVoiceMail()V

    invoke-direct {p0, v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->initCdmaPreference(Landroid/preference/PreferenceScreen;)V

    invoke-direct {p0, v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->initGsmPreference(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method private initVoiceMail()V
    .locals 3

    .prologue
    const-string v1, "button_nubia_voicemail_category_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoiceMail:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoiceMail:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoiceMail:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhoneId:I

    invoke-static {v1, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoiceMail:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    const-string v1, "button_voicemail_category_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .local v0, "voiceMailPref":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private initVoiceMailProviders()V
    .locals 22

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const-string v19, "vm_numbers"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    const/4 v14, 0x0

    .local v14, "providerToIgnore":Ljava/lang/String;
    const-string v18, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_0
    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->clear()V

    const v18, 0x7f0b010c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "myCarrier":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, ""

    new-instance v20, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProvider;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v10, v2}, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProvider;-><init>(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .local v12, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .local v7, "intent":Landroid/content/Intent;
    const-string v18, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v7, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .local v15, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v9, v18, 0x1

    .local v9, "len":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_3

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .local v16, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .local v3, "currentActivityInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    add-int/lit8 v9, v9, -0x1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, "nameForDisplay":Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .local v13, "providerIntent":Landroid/content/Intent;
    const-string v18, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProvider;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v13}, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProvider;-><init>(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v3    # "currentActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "nameForDisplay":Ljava/lang/String;
    .end local v13    # "providerIntent":Landroid/content/Intent;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    new-array v4, v9, [Ljava/lang/String;

    .local v4, "entries":[Ljava/lang/String;
    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v17, v0

    .local v17, "values":[Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v10, v4, v18

    const/16 v18, 0x0

    const-string v19, ""

    aput-object v19, v17, v18

    const/4 v5, 0x1

    .local v5, "entryIdx":I
    const/4 v6, 0x0

    :goto_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_5

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProvider;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProvider;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v4, v5

    aput-object v8, v17, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v8    # "key":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/phone/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 2
    .param p1, "oldInfo"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "newInfo"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    const/4 v0, 0x1

    .local v0, "result":Z
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    iget-object v7, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#VMNumber"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "vmNumberSetting":Ljava/lang/String;
    if-nez v6, :cond_0

    const-string v7, "NBMSimCallFeaturesSubSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VoiceMailProvider settings for the key \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " was not found. Returning null."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v5

    :cond_0
    sget-object v0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .local v0, "cfi":[Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "fwdKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Length"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .local v2, "fwdLen":I
    if-lez v2, :cond_1

    new-array v0, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "settingKey":Ljava/lang/String;
    new-instance v7, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v7}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v7, v0, v3

    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Status"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Reason"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    aget-object v7, v0, v3

    const/4 v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    aget-object v7, v0, v3

    const/16 v8, 0x91

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Number"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Time"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x14

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .end local v3    # "i":I
    .end local v4    # "settingKey":Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    invoke-direct {v5, p0, v6, v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    .local v5, "settings":Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "NBMSimCallFeaturesSubSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;

    .prologue
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newSettings"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    .prologue
    iget-object v7, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    move-result-object v0

    .local v0, "curSettings":Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    invoke-virtual {p2, v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#VMNumber"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p2, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "fwdKey":Ljava/lang/String;
    iget-object v5, p2, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .local v5, "s":[Lcom/android/internal/telephony/CallForwardInfo;
    sget-object v7, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v5, v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    array-length v8, v5

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, v5

    if-ge v4, v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "settingKey":Ljava/lang/String;
    aget-object v2, v5, v4

    .local v2, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Status"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Reason"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Number"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .end local v2    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v4    # "i":I
    .end local v6    # "settingKey":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method private onRevertDone()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->updateVoiceNumberField()V

    iget v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->showVMDialog(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    :cond_0
    return-void
.end method

.method private resetForwardingChangeState()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newSettings"    # Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    .prologue
    const/4 v5, 0x0

    iget-object v1, p2, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    :cond_0
    iget-object v1, p2, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    :cond_1
    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v2, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v1, v2, :cond_2

    const/16 v1, 0x2bc

    invoke-direct {p0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->showVMDialog(I)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V

    iput-boolean v5, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMChangeCompletedSuccessfully:Z

    iput-boolean v5, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    iput v5, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mReadingSettingsForDefaultProvider:Z

    sget-object v1, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f6

    invoke-virtual {v3, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/16 v1, 0x25a

    invoke-direct {p0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .end local v0    # "i":I
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_0
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    iput-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_3

    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->resetForwardingChangeState()V

    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v7, v0, v8

    .local v7, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v6

    .local v6, "doUpdate":Z
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    :goto_1
    iget v2, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v10, 0x1f5

    iget v11, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v5, v10, v11, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v1, v9

    goto :goto_1

    .end local v6    # "doUpdate":Z
    .end local v7    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    :cond_2
    const/16 v0, 0x259

    invoke-direct {p0, v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    .end local v8    # "i":I
    :goto_2
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->setVMNumberWithCarrier()V

    goto :goto_2
.end method

.method private setVMNumberWithCarrier()V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private showDialogIfForeground(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    iget-boolean v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForeground:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showVMDialog(I)V
    .locals 1
    .param p1, "msgStatus"    # I

    .prologue
    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x1f6

    invoke-direct {p0, v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x192 -> :sswitch_2
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_3
    .end sparse-switch
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    invoke-virtual {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .local v6, "adapter":Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private startCdmaCallForwardActivity()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/NBCdmaCallForwardSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhoneId:I

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    invoke-virtual {p0, v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->startActivity(Landroid/content/Intent;)V

    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0b0311

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private startCdmaCallWatingActivity()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/NBCdmaCallWaitingSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhoneId:I

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    invoke-virtual {p0, v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->startActivity(Landroid/content/Intent;)V

    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0b0311

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private switchToPreviousVoicemailProvider()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMChangeCompletedSuccessfully:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_5

    :cond_0
    const/16 v0, 0x25b

    invoke-direct {p0, v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    move-result-object v9

    .local v9, "prevSettings":Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    if-nez v9, :cond_1

    const-string v0, "NBMSimCallFeaturesSubSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoiceMailProviderSettings for the key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" becomes null, which is unexpected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMChangeCompletedSuccessfully:Z

    if-eqz v0, :cond_2

    iget-object v0, v9, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    const-string v0, "NBMSimCallFeaturesSubSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VM change is already completed successfully.Have to revert VM back to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " again."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_6

    const-string v0, "NBMSimCallFeaturesSubSetting"

    const-string v1, "Requested to rollback Fwd changes."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v9, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .local v8, "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v8, :cond_6

    iget-object v11, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    .local v11, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->resetForwardingChangeState()V

    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v8

    if-ge v7, v0, :cond_6

    aget-object v6, v8, v7

    .local v6, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    iget v0, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/AsyncResult;

    .local v10, "result":Landroid/os/AsyncResult;
    if-eqz v10, :cond_3

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x3

    :goto_1
    iget v2, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v13, 0x1f5

    invoke-virtual {v5, v13, v7, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    move v1, v12

    goto :goto_1

    .end local v6    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7    # "i":I
    .end local v8    # "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v9    # "prevSettings":Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    .end local v10    # "result":Landroid/os/AsyncResult;
    .end local v11    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->onRevertDone()V

    :cond_6
    return-void
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .locals 7
    .param p1, "currentProviderSetting"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProvider;

    .local v1, "provider":Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProvider;
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v4, 0x7f0b010b

    invoke-virtual {p0, v4}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailNotificationVibrate:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/nubia/phone/CheckBoxPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, v1, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .local v2, "providerName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v3, v2}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v4, v1, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailNotificationVibrate:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/nubia/phone/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateVoiceNumberField()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    .local v0, "summary":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v0    # "summary":Ljava/lang/String;
    :cond_2
    const v1, 0x7f0b027d

    invoke-virtual {p0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_8

    const/4 v8, 0x0

    .local v8, "failure":Z
    iget-boolean v12, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    .local v12, "isVMProviderSettingsForced":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    const/4 v14, 0x0

    .local v14, "vmNum":Ljava/lang/String;
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_2

    const/4 v8, 0x1

    :cond_0
    :goto_0
    if-eqz v8, :cond_7

    if-eqz v12, :cond_1

    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->switchToPreviousVoicemailProvider()V

    .end local v8    # "failure":Z
    .end local v12    # "isVMProviderSettingsForced":Z
    .end local v14    # "vmNum":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .restart local v8    # "failure":Z
    .restart local v12    # "isVMProviderSettingsForced":Z
    .restart local v14    # "vmNum":Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "com.android.phone.Signout"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v12, :cond_4

    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v13

    .local v13, "victim":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v11, "i":Landroid/content/Intent;
    const-string v1, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v11, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v11}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .end local v11    # "i":Landroid/content/Intent;
    .end local v13    # "victim":Ljava/lang/String;
    :cond_5
    const-string v1, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    :cond_6
    const/4 v8, 0x1

    goto :goto_0

    :cond_7
    iput-boolean v12, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    const-string v1, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "fwdNum":Ljava/lang/String;
    const-string v1, "com.android.phone.ForwardingNumberTime"

    const/16 v2, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .local v10, "fwdNumTime":I
    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    invoke-direct {v2, p0, v14, v9, v10}, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v1, v2}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V

    goto :goto_1

    .end local v8    # "failure":Z
    .end local v9    # "fwdNum":Ljava/lang/String;
    .end local v10    # "fwdNumTime":I
    .end local v12    # "isVMProviderSettingsForced":Z
    .end local v14    # "vmNum":Ljava/lang/String;
    :cond_8
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_c

    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_1

    const/4 v7, 0x0

    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_a
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v1

    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_c
    invoke-super/range {p0 .. p3}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v1, 0x1f6

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const-string v0, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->finish()V

    :cond_1
    :goto_1
    return-void

    :pswitch_1
    iget v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->finish()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f08001a

    invoke-virtual {p0, v2}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->addPreferencesFromResource(I)V

    new-instance v2, Lcom/android/phone/SubscriptionInfoHelper;

    invoke-virtual {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/phone/SubscriptionInfoHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;

    invoke-virtual {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getSubIdFromIntent(Landroid/content/Intent;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settings onCreate subscription ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubId:I

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    iput v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhoneId:I

    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .local v1, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v2, "button_voicemail_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0, v4, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v3, 0x7f0b020c

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    const-string v2, "button_voicemail_provider_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/phone/preference/ListPreference;

    iput-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v2, p0}, Lcn/nubia/commonui/phone/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v2, p0}, Lcn/nubia/commonui/phone/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v2, "button_voicemail_setting_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const-string v2, "button_voicemail_notification_ringtone_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailNotificationRingtone:Landroid/preference/Preference;

    const-string v2, "button_voicemail_notification_vibrate_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/nubia/phone/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailNotificationVibrate:Landroid/preference/nubia/phone/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailNotificationVibrate:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/nubia/phone/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->initVoiceMailProviders()V

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mContactListIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mContactListIntent:Landroid/content/Intent;

    const-string v3, "vnd.android.cursor.item/phone"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-nez p1, :cond_2

    const-string v2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-le v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->updateVoiceNumberField()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    new-instance v2, Lcom/android/phone/NBMSimCallFeaturesSubSetting$6;

    invoke-direct {v2, p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting$6;-><init>(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)V

    iput-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getSupportActionBar()Lcn/nubia/commonui/phone/actionbar/app/ActionBar;

    move-result-object v0

    .local v0, "actionBar":Lcn/nubia/commonui/phone/actionbar/app/ActionBar;
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/phone/NBPhoneUtils;->displayDualCardUi()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/actionbar/app/ActionBar;->hide()V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->initPreference()V

    invoke-direct {p0, p1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->initGsmBundle(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSimStateChangeListener:Lcom/android/phone/NBSimStateChangeInterface;

    invoke-static {v2}, Lcom/android/phone/NBSimStateChangeReceiver;->addStateChangeListener(Lcom/android/phone/NBSimStateChangeInterface;)V

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->showStatusBarPic(Landroid/app/Activity;)V

    return-void

    .end local v0    # "actionBar":Lcn/nubia/commonui/phone/actionbar/app/ActionBar;
    :cond_4
    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/phone/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "actionBar":Lcn/nubia/commonui/phone/actionbar/app/ActionBar;
    :cond_5
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/phone/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/16 v9, 0x25b

    const/16 v8, 0x259

    const/4 v7, 0x0

    const v6, 0x7f0b0102

    const/16 v5, 0x1f4

    if-eq p1, v5, :cond_0

    const/16 v5, 0x190

    if-eq p1, v5, :cond_0

    const/16 v5, 0x1f5

    if-eq p1, v5, :cond_0

    const/16 v5, 0x1f6

    if-eq p1, v5, :cond_0

    const/16 v5, 0x258

    if-ne p1, v5, :cond_1

    :cond_0
    new-instance v0, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, "b":Lcn/nubia/commonui/phone/app/AlertDialog$Builder;
    const v4, 0x7f0b00f7

    .local v4, "titleId":I
    sparse-switch p1, :sswitch_data_0

    const v3, 0x7f0b00fc

    .local v3, "msgId":I
    invoke-virtual {v0, v6, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/phone/app/AlertDialog;

    move-result-object v1

    .local v1, "dialog":Lcn/nubia/commonui/phone/app/AlertDialog;
    invoke-virtual {v1}, Lcn/nubia/commonui/phone/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .end local v0    # "b":Lcn/nubia/commonui/phone/app/AlertDialog$Builder;
    .end local v1    # "dialog":Lcn/nubia/commonui/phone/app/AlertDialog;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "msgId":I
    .end local v4    # "titleId":I
    :goto_1
    return-object v1

    .restart local v0    # "b":Lcn/nubia/commonui/phone/app/AlertDialog$Builder;
    .restart local v4    # "titleId":I
    :sswitch_0
    const v3, 0x7f0b0106

    .restart local v3    # "msgId":I
    const v4, 0x7f0b00bb

    invoke-virtual {v0, v6, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    goto :goto_0

    .end local v3    # "msgId":I
    :sswitch_1
    const v3, 0x7f0b010a

    .restart local v3    # "msgId":I
    const v4, 0x7f0b00bb

    invoke-virtual {v0, v6, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    goto :goto_0

    .end local v3    # "msgId":I
    :sswitch_2
    const v3, 0x7f0b0107

    .restart local v3    # "msgId":I
    invoke-virtual {v0, v6, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    goto :goto_0

    .end local v3    # "msgId":I
    :sswitch_3
    const v3, 0x7f0b0108

    .restart local v3    # "msgId":I
    invoke-virtual {v0, v6, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    goto :goto_0

    .end local v3    # "msgId":I
    :sswitch_4
    const v3, 0x7f0b0109

    .restart local v3    # "msgId":I
    const v5, 0x7f0b0278

    invoke-virtual {v0, v5, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    const v5, 0x7f0b0279

    invoke-virtual {v0, v5, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    goto :goto_0

    .end local v0    # "b":Lcn/nubia/commonui/phone/app/AlertDialog$Builder;
    .end local v3    # "msgId":I
    .end local v4    # "titleId":I
    :cond_1
    if-eq p1, v8, :cond_2

    const/16 v5, 0x25a

    if-eq p1, v5, :cond_2

    if-ne p1, v9, :cond_5

    :cond_2
    new-instance v1, Lcn/nubia/commonui/phone/app/ProgressDialog;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/phone/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .local v1, "dialog":Lcn/nubia/commonui/phone/app/ProgressDialog;
    const v5, 0x7f0b00f4

    invoke-virtual {p0, v5}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/nubia/commonui/phone/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcn/nubia/commonui/phone/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v1, v7}, Lcn/nubia/commonui/phone/app/ProgressDialog;->setCancelable(Z)V

    if-ne p1, v8, :cond_3

    const v5, 0x7f0b00f9

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/nubia/commonui/phone/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-ne p1, v9, :cond_4

    const v5, 0x7f0b00fa

    goto :goto_2

    :cond_4
    const v5, 0x7f0b00f8

    goto :goto_2

    .end local v1    # "dialog":Lcn/nubia/commonui/phone/app/ProgressDialog;
    :cond_5
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x1f5 -> :sswitch_3
        0x1f6 -> :sswitch_4
        0x258 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSimStateChangeListener:Lcom/android/phone/NBSimStateChangeInterface;

    invoke-static {v0}, Lcom/android/phone/NBSimStateChangeReceiver;->removeStateChangeListener(Lcom/android/phone/NBSimStateChangeInterface;)V

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 1
    .param p1, "preference"    # Lcom/android/phone/EditPhoneNumberPreference;
    .param p2, "buttonClicked"    # I

    .prologue
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->handleVMBtnClickRequest()V

    goto :goto_0
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "reading"    # Z

    .prologue
    iget v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mInitIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mInitIndex:I

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPreferences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mInitIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .local v0, "pref":Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/phone/CLIRListPreference;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/phone/CLIRListPreference;

    .end local v0    # "pref":Landroid/preference/Preference;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZLcom/android/internal/telephony/Phone;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    return-void
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 3
    .param p1, "preference"    # Lcom/android/phone/EditPhoneNumberPreference;

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->updateVoiceNumberField()V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .local v0, "vmDisplay":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b00bd

    invoke-virtual {p0, v2}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;

    invoke-static {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;Lcom/android/phone/SubscriptionInfoHelper;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForeground:Z

    invoke-static {p0}, Lcn/nubia/umeng/NBMobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-ne p1, v3, :cond_3

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .local v0, "newProviderKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .end local v0    # "newProviderKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .restart local v0    # "newProviderKey":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    move-result-object v1

    .local v1, "newProviderSettings":Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    if-nez v1, :cond_2

    const-string v3, "NBMSimCallFeaturesSubSetting"

    const-string v4, "Saved preferences not found - invoking config"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    iget-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v3}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V

    goto :goto_0

    .end local v0    # "newProviderKey":Ljava/lang/String;
    .end local v1    # "newProviderSettings":Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    :cond_3
    iget-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailNotificationVibrate:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-ne p1, v3, :cond_4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "button_voicemail_notification_vibrate_key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailNotificationVibrate:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/nubia/phone/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    if-ne p1, v3, :cond_0

    invoke-direct {p0, p2}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->handleCWButton(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-ne p1, v2, :cond_2

    invoke-virtual {p1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCdmaCallForward:Landroid/preference/PreferenceScreen;

    if-ne p1, v2, :cond_3

    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->startCdmaCallForwardActivity()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCdmaCallWaiting:Landroid/preference/PreferenceScreen;

    if-ne p1, v2, :cond_4

    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->startCdmaCallWatingActivity()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mButtonCallTime:Landroid/preference/Preference;

    if-ne p1, v0, :cond_6

    const-string v0, "CS_CallTimers"

    invoke-static {p0, v0}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mVoiceMail:Landroid/preference/Preference;

    if-ne p1, v0, :cond_5

    const-string v0, "CS_VoicemailSettings"

    invoke-static {p0, v0}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    iput p1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCurrentDialogId:I

    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mForeground:Z

    invoke-direct {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .local v3, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "screen":Landroid/preference/PreferenceScreen;
    :cond_0
    iget-object v4, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/Thread;

    iget-object v5, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    invoke-static {p0}, Lcn/nubia/umeng/NBMobclickAgent;->onResume(Landroid/content/Context;)V

    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v0, v0, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v0}, Lcom/android/phone/CLIRListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v1, v1, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
