.class public Lcom/android/phone/NBVoiceMailSetting;
.super Lcn/nubia/commonui/phone/preference/PreferenceActivity;
.source "NBVoiceMailSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;,
        Lcom/android/phone/NBVoiceMailSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field private static final FORWARDING_SETTINGS_REASONS:[I

.field private static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mChangingVMorFwdDueToProviderChange:Z

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

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field private mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneId:I

.field private mPreviousVMProviderKey:Ljava/lang/String;

.field private mReadingSettingsForDefaultProvider:Z

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mRingtoneLookupComplete:Landroid/os/Handler;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

.field private mVMChangeCompletedSuccessfully:Z

.field private mVMOrFwdSetError:I

.field private mVMProviderSettingsForced:Z

.field private final mVMProvidersData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/NBVoiceMailSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailNotificationRingtone:Landroid/preference/Preference;

.field private mVoicemailNotificationVibrate:Landroid/preference/nubia/phone/CheckBoxPreference;

.field private mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/NBVoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/NBVoiceMailSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/NBVoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

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

    invoke-direct {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/phone/NBVoiceMailSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NBVoiceMailSetting$1;-><init>(Lcom/android/phone/NBVoiceMailSetting;)V

    iput-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    iput-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iput-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iput-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    iput v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mCurrentDialogId:I

    iput-boolean v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMProviderSettingsForced:Z

    iput-boolean v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    iput-boolean v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMChangeCompletedSuccessfully:Z

    iput-boolean v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mFwdChangesRequireRollback:Z

    iput v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMOrFwdSetError:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mReadingSettingsForDefaultProvider:Z

    new-instance v0, Lcom/android/phone/NBVoiceMailSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NBVoiceMailSetting$2;-><init>(Lcom/android/phone/NBVoiceMailSetting;)V

    iput-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mGetOptionComplete:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/NBVoiceMailSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/NBVoiceMailSetting$3;-><init>(Lcom/android/phone/NBVoiceMailSetting;)V

    iput-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mSetOptionComplete:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/NBVoiceMailSetting$4;

    invoke-direct {v0, p0}, Lcom/android/phone/NBVoiceMailSetting$4;-><init>(Lcom/android/phone/NBVoiceMailSetting;)V

    iput-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NBVoiceMailSetting;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBVoiceMailSetting;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailNotificationRingtone:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100()[Lcom/android/internal/telephony/CallForwardInfo;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/phone/NBVoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/NBVoiceMailSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBVoiceMailSetting;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->handleSetVMOrFwdMessage()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/NBVoiceMailSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBVoiceMailSetting;

    .prologue
    iget-boolean v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mFwdChangesRequireRollback:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/NBVoiceMailSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBVoiceMailSetting;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->checkForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/NBVoiceMailSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBVoiceMailSetting;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->onRevertDone()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/NBVoiceMailSetting;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBVoiceMailSetting;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/NBVoiceMailSetting;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBVoiceMailSetting;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    sget-object v0, Lcom/android/phone/NBVoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/NBVoiceMailSetting;Landroid/os/AsyncResult;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBVoiceMailSetting;
    .param p1, "x1"    # Landroid/os/AsyncResult;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NBVoiceMailSetting;->handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/NBVoiceMailSetting;)Landroid/os/AsyncResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBVoiceMailSetting;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/NBVoiceMailSetting;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBVoiceMailSetting;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/NBVoiceMailSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBVoiceMailSetting;

    .prologue
    iget-boolean v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMChangeCompletedSuccessfully:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/NBVoiceMailSetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBVoiceMailSetting;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMChangeCompletedSuccessfully:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/NBVoiceMailSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBVoiceMailSetting;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/NBVoiceMailSetting;Ljava/lang/Integer;Landroid/os/AsyncResult;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBVoiceMailSetting;
    .param p1, "x1"    # Ljava/lang/Integer;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NBVoiceMailSetting;->handleForwardingChange(Ljava/lang/Integer;Landroid/os/AsyncResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/NBVoiceMailSetting;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBVoiceMailSetting;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/NBVoiceMailSetting;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBVoiceMailSetting;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBVoiceMailSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method private checkForwardingCompleted()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .local v0, "result":Z
    :goto_0
    return v0

    .end local v0    # "result":Z
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->isChangeResultReasonsAvailable()Z

    move-result v0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method private checkFwdChangeSuccess()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/NBVoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

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

    move-result-object v4

    if-nez v4, :cond_2

    const-string v3, ""

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .end local v1    # "exception":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-object v3

    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .restart local v1    # "exception":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private checkVMChangeSuccess()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

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

.method private createDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const v4, 0x7f0b0102

    new-instance v0, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, "b":Lcn/nubia/commonui/phone/app/AlertDialog$Builder;
    const v3, 0x7f0b00f7

    .local v3, "titleId":I
    sparse-switch p1, :sswitch_data_0

    const v2, 0x7f0b00fc

    .local v2, "msgId":I
    invoke-virtual {v0, v4, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/phone/NBVoiceMailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    invoke-virtual {p0, v2}, Lcom/android/phone/NBVoiceMailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/phone/app/AlertDialog;

    move-result-object v1

    .local v1, "dialog":Lcn/nubia/commonui/phone/app/AlertDialog;
    invoke-virtual {v1}, Lcn/nubia/commonui/phone/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    return-object v1

    .end local v1    # "dialog":Lcn/nubia/commonui/phone/app/AlertDialog;
    .end local v2    # "msgId":I
    :sswitch_0
    const v2, 0x7f0b0106

    .restart local v2    # "msgId":I
    const v3, 0x7f0b00bb

    invoke-virtual {v0, v4, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    goto :goto_0

    .end local v2    # "msgId":I
    :sswitch_1
    const v2, 0x7f0b010a

    .restart local v2    # "msgId":I
    const v3, 0x7f0b00bb

    invoke-virtual {v0, v4, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    goto :goto_0

    .end local v2    # "msgId":I
    :sswitch_2
    const v2, 0x7f0b0107

    .restart local v2    # "msgId":I
    invoke-virtual {v0, v4, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    goto :goto_0

    .end local v2    # "msgId":I
    :sswitch_3
    const v2, 0x7f0b0108

    .restart local v2    # "msgId":I
    invoke-virtual {v0, v4, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    goto :goto_0

    .end local v2    # "msgId":I
    :sswitch_4
    const v2, 0x7f0b0109

    .restart local v2    # "msgId":I
    const v4, 0x7f0b0278

    invoke-virtual {v0, v4, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    const v4, 0x7f0b0279

    invoke-virtual {v0, v4, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    goto :goto_0

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

.method private deleteSettingsForVoicemailProvider(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    :cond_0
    return-void
.end method

.method private dismissDialogSafely(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/phone/NBVoiceMailSetting;->dismissDialog(I)V

    return-void
.end method

.method private fwdChangesRollback(Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;)V
    .locals 13
    .param p1, "prevSettings"    # Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;

    .prologue
    const/4 v11, 0x0

    iget-object v8, p1, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .local v8, "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    if-nez v8, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/android/phone/NBVoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .local v10, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->resetForwardingChangeState()V

    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v8

    if-ge v7, v0, :cond_0

    aget-object v6, v8, v7

    .local v6, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    iget v0, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/AsyncResult;

    .local v9, "result":Landroid/os/AsyncResult;
    if-eqz v9, :cond_2

    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    :goto_1
    iget v2, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/NBVoiceMailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v12, 0x1f5

    invoke-virtual {v5, v12, v7, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move v1, v11

    goto :goto_1
.end method

.method private getCurrentVoicemailProviderKey()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

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

.method private handForwardingReadResult()V
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->isForwardingReadResultsAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x25a

    invoke-direct {p0, v0}, Lcom/android/phone/NBVoiceMailSetting;->dismissDialogSafely(I)V

    iget-boolean v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mReadingSettingsForDefaultProvider:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    new-instance v1, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/NBVoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, v2, v3}, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;-><init>(Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NBVoiceMailSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mReadingSettingsForDefaultProvider:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->saveVoiceMailAndForwardingNumberStage()V

    :cond_1
    return-void
.end method

.method private handleForwardingChange(Ljava/lang/Integer;Landroid/os/AsyncResult;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "result"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/phone/NBVoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->checkForwardingCompleted()Z

    move-result v0

    .local v0, "completed":Z
    if-nez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->setVMNumberWithCarrier()V

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/android/phone/NBVoiceMailSetting;->mFwdChangesRequireRollback:Z

    iget-object v3, p0, Lcom/android/phone/NBVoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    iput-boolean v4, p0, Lcom/android/phone/NBVoiceMailSetting;->mFwdChangesRequireRollback:Z

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method private handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "idx"    # I

    .prologue
    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/phone/NBVoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/NBVoiceMailSetting;->isReadResultGetException(Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v3

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .local v0, "cfInfoArray":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v1, 0x0

    .local v1, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    aget-object v1, v0, v2

    :cond_2
    if-nez v1, :cond_5

    new-instance v1, Lcom/android/internal/telephony/CallForwardInfo;

    .end local v1    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {v1}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .restart local v1    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    iput v4, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    sget-object v3, Lcom/android/phone/NBVoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v3, v3, p2

    iput v3, v1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    const/4 v3, 0x1

    iput v3, v1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/phone/NBVoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v1, v3, p2

    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->handForwardingReadResult()V

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-object v3, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_6
    iput v4, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    goto :goto_2
.end method

.method private handleSetVMOrFwdMessage()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->isVMAndFwdSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/NBVoiceMailSetting;->handleVMAndFwdSetSuccess(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->isFwdChangeSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x191

    invoke-direct {p0, v0}, Lcom/android/phone/NBVoiceMailSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/phone/NBVoiceMailSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0
.end method

.method private handleVMAndFwdSetSuccess(I)V
    .locals 1
    .param p1, "msg"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    invoke-direct {p0, p1}, Lcom/android/phone/NBVoiceMailSetting;->showVMDialog(I)V

    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->updateVoiceNumberField()V

    return-void
.end method

.method private handleVMBtnClickRequest()V
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/NBVoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, v2, v3}, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;-><init>(Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NBVoiceMailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;)V

    return-void
.end method

.method private handleVMOrFwdSetError(I)V
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMOrFwdSetError:I

    iput-boolean v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->switchToPreviousVoicemailProvider()V

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    invoke-direct {p0, p1}, Lcom/android/phone/NBVoiceMailSetting;->showVMDialog(I)V

    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->updateVoiceNumberField()V

    goto :goto_0
.end method

.method private handleVoiceMailProviderCfgIdResult(ZZLandroid/content/Intent;)V
    .locals 5
    .param p1, "isFailure"    # Z
    .param p2, "isVMProviderSettingsForced"    # Z
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->switchToPreviousVoicemailProvider()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p2, p0, Lcom/android/phone/NBVoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    const-string v3, "com.android.phone.VoicemailNumber"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "vmNum":Ljava/lang/String;
    const-string v3, "com.android.phone.ForwardingNumber"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "fwdNum":Ljava/lang/String;
    const-string v3, "com.android.phone.ForwardingNumberTime"

    const/16 v4, 0x14

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, "fwdNumTime":I
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;

    invoke-direct {v4, v2, v0, v1}, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v3, v4}, Lcom/android/phone/NBVoiceMailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;)V

    goto :goto_0
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 6
    .param p1, "infos"    # [Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "reason"    # I

    .prologue
    if-nez p1, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    .local v4, "result":Lcom/android/internal/telephony/CallForwardInfo;
    move-object v0, p1

    .local v0, "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .local v2, "info":Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_2

    move-object v4, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initPreference()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/phone/NBVoiceMailSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .local v0, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v1, "button_voicemail_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBVoiceMailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v4, 0x7f0b020c

    invoke-virtual {v1, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    :cond_0
    const-string v1, "button_voicemail_provider_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBVoiceMailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/phone/preference/ListPreference;

    iput-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/phone/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v1, p0}, Lcn/nubia/commonui/phone/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "button_voicemail_notification_ringtone_key"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/phone/NBVoiceMailSetting;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/NBVoiceMailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailNotificationRingtone:Landroid/preference/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "button_voicemail_notification_ringtone_key"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mPhoneId:I

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/NBVoiceMailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "button_voicemail_notification_vibrate_key"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/phone/NBVoiceMailSetting;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/NBVoiceMailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/nubia/phone/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailNotificationVibrate:Landroid/preference/nubia/phone/CheckBoxPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "button_voicemail_notification_vibrate_key"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/phone/NBVoiceMailSetting;->mPhoneId:I

    if-nez v4, :cond_4

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/NBVoiceMailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailNotificationVibrate:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailNotificationVibrate:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/nubia/phone/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->initVoiceMailProviders()V

    :cond_2
    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method private initRingtoneRunnable()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/phone/NBVoiceMailSetting$5;

    invoke-direct {v0, p0}, Lcom/android/phone/NBVoiceMailSetting$5;-><init>(Lcom/android/phone/NBVoiceMailSetting;)V

    iput-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private initVMProviders(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILandroid/content/pm/PackageManager;)V
    .locals 10
    .param p1, "carrier"    # Ljava/lang/String;
    .param p3, "providerToIgnore"    # Ljava/lang/String;
    .param p4, "len"    # I
    .param p5, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    iget-object v6, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    const-string v7, ""

    new-instance v8, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProvider;

    const/4 v9, 0x0

    invoke-direct {v8, p1, v9}, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProvider;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .local v0, "currentActivityInfo":Landroid/content/pm/ActivityInfo;
    invoke-direct {p0, v0}, Lcom/android/phone/NBVoiceMailSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v2

    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 p4, p4, -0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5, p5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "nameForDisplay":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .local v4, "providerIntent":Landroid/content/Intent;
    const-string v6, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    new-instance v7, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProvider;

    invoke-direct {v7, v3, v4}, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProvider;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v0    # "currentActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "nameForDisplay":Ljava/lang/String;
    .end local v4    # "providerIntent":Landroid/content/Intent;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-direct {p0, p4, p1, p2}, Lcom/android/phone/NBVoiceMailSetting;->initVoicemailProviders(ILjava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method private initVoiceMailProviders()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/phone/NBVoiceMailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v7, "vm_numbers"

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    .local v3, "providerToIgnore":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/NBVoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/NBVoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v7, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBVoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v7, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lcom/android/phone/NBVoiceMailSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;)V

    :cond_1
    const v0, 0x7f0b010c

    invoke-virtual {p0, v0}, Lcom/android/phone/NBVoiceMailSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "myCarrier":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/NBVoiceMailSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    .local v4, "len":I
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/NBVoiceMailSetting;->initVMProviders(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILandroid/content/pm/PackageManager;)V

    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/NBVoiceMailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    return-void
.end method

.method private initVoicemailProviders(ILjava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "len"    # I
    .param p2, "carrier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    new-array v0, p1, [Ljava/lang/String;

    .local v0, "entries":[Ljava/lang/String;
    new-array v4, p1, [Ljava/lang/String;

    .local v4, "values":[Ljava/lang/String;
    aput-object p2, v0, v6

    const-string v5, ""

    aput-object v5, v4, v6

    const/4 v1, 0x1

    .local v1, "entryIdx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v5}, Lcom/android/phone/NBVoiceMailSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v3

    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProvider;

    iget-object v5, v5, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProvider;->name:Ljava/lang/String;

    aput-object v5, v0, v1

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v5, v0}, Lcn/nubia/commonui/phone/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v5, v4}, Lcn/nubia/commonui/phone/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/NBVoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/NBVoiceMailSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isChangeResultReasonsAvailable()Z
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .local v1, "reason":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .end local v1    # "reason":Ljava/lang/Integer;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isForwardingReadResultsAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isFwdChangeSuccess()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isReadResultGetException(Landroid/os/AsyncResult;)Z
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v0, 0x0

    .local v0, "error":Ljava/lang/Throwable;
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0    # "error":Ljava/lang/Throwable;
    check-cast v0, Ljava/lang/Throwable;

    .restart local v0    # "error":Ljava/lang/Throwable;
    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/16 v1, 0x25a

    invoke-direct {p0, v1}, Lcom/android/phone/NBVoiceMailSetting;->dismissDialogSafely(I)V

    const/16 v1, 0x192

    invoke-direct {p0, v1}, Lcom/android/phone/NBVoiceMailSetting;->showVMDialog(I)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
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

.method private isVMAndFwdSetSuccess()Z
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->isFwdChangeSuccess()Z

    move-result v0

    .local v0, "success":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    iget-object v7, p0, Lcom/android/phone/NBVoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    :goto_0
    return-object v5

    :cond_0
    sget-object v0, Lcom/android/phone/NBVoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

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
    iget-object v7, p0, Lcom/android/phone/NBVoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    iget-object v8, p0, Lcom/android/phone/NBVoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    iget-object v8, p0, Lcom/android/phone/NBVoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    iget-object v8, p0, Lcom/android/phone/NBVoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    iget-object v8, p0, Lcom/android/phone/NBVoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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
    new-instance v5, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;

    invoke-direct {v5, v6, v0}, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;-><init>(Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    .local v5, "settings":Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;
    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "NBVoiceMailSetting"

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

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newSettings"    # Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;

    .prologue
    iget-object v7, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/NBVoiceMailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;

    move-result-object v0

    .local v0, "curSettings":Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;
    invoke-virtual {p2, v0}, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/NBVoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    iget-object v8, p2, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

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
    iget-object v5, p2, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .local v5, "s":[Lcom/android/internal/telephony/CallForwardInfo;
    sget-object v7, Lcom/android/phone/NBVoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

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

.method private needSaveVoiceMailSettings(Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;)Z
    .locals 2
    .param p1, "newSettings"    # Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;

    .prologue
    iget-object v0, p1, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/phone/NBVoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/NBVoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v0, v1, :cond_2

    const/16 v0, 0x2bc

    invoke-direct {p0, v0}, Lcom/android/phone/NBVoiceMailSetting;->showVMDialog(I)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onRevertDone()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/NBVoiceMailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->updateVoiceNumberField()V

    iget v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMOrFwdSetError:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/android/phone/NBVoiceMailSetting;->showVMDialog(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMOrFwdSetError:I

    :cond_0
    return-void
.end method

.method private onVoiceMailPrefIdResult(ILandroid/content/Intent;)V
    .locals 8
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/NBVoiceMailSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/NBVoiceMailSetting;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    if-eqz v6, :cond_0

    if-eqz v3, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .local v7, "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_1
    if-eqz v6, :cond_4

    if-eqz v3, :cond_5

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_2
    throw v0

    :catch_2
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private onVoiceMailProviderCfgIdResult(ILandroid/content/Intent;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .local v0, "failure":Z
    iget-boolean v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMProviderSettingsForced:Z

    .local v1, "isVMProviderSettingsForced":Z
    iput-boolean v4, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMProviderSettingsForced:Z

    const/4 v2, 0x0

    .local v2, "vmNum":Ljava/lang/String;
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    if-nez p2, :cond_4

    :cond_0
    const/4 v0, 0x1

    :cond_1
    const-string v3, "com.android.phone.VoicemailNumber"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    invoke-direct {p0, v0, v1, p2}, Lcom/android/phone/NBVoiceMailSetting;->handleVoiceMailProviderCfgIdResult(ZZLandroid/content/Intent;)V

    :goto_0
    return-void

    :cond_4
    const-string v3, "com.android.phone.Signout"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->startAddVoiceMail()V

    goto :goto_0
.end method

.method private resetForwardingChangeState()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newSettings"    # Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;

    .prologue
    const/4 v5, 0x0

    invoke-direct {p0, p2}, Lcom/android/phone/NBVoiceMailSetting;->needSaveVoiceMailSettings(Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NBVoiceMailSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;)V

    iput-boolean v5, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMChangeCompletedSuccessfully:Z

    iput-boolean v5, p0, Lcom/android/phone/NBVoiceMailSetting;->mFwdChangesRequireRollback:Z

    iput v5, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMOrFwdSetError:I

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mReadingSettingsForDefaultProvider:Z

    sget-object v1, Lcom/android/phone/NBVoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/phone/NBVoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/NBVoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/phone/NBVoiceMailSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f6

    invoke-virtual {v3, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x25a

    invoke-direct {p0, v1}, Lcom/android/phone/NBVoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .end local v0    # "i":I
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->saveVoiceMailAndForwardingNumberStage()V

    goto :goto_0
.end method

.method private saveVoiceMailAndForwardingNumberStage()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    iput-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v3, Lcom/android/phone/NBVoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v2, v3, :cond_1

    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->resetForwardingChangeState()V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v0, v2, v1

    .local v0, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {p0, v1, v0}, Lcom/android/phone/NBVoiceMailSetting;->updateForwarding(ILcom/android/internal/telephony/CallForwardInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    :cond_0
    const/16 v2, 0x259

    invoke-direct {p0, v2}, Lcom/android/phone/NBVoiceMailSetting;->showDialogIfForeground(I)V

    .end local v1    # "i":I
    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->setVMNumberWithCarrier()V

    goto :goto_1
.end method

.method private setVMNumberWithCarrier()V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/NBVoiceMailSetting;->mSetOptionComplete:Landroid/os/Handler;

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
    iget-boolean v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mForeground:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/NBVoiceMailSetting;->showDialog(I)V

    :cond_0
    return-void
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

    invoke-direct {p0, v0}, Lcom/android/phone/NBVoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/android/phone/NBVoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x1f6

    invoke-direct {p0, v0}, Lcom/android/phone/NBVoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/phone/NBVoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/NBVoiceMailSetting;->showDialogIfForeground(I)V

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
    invoke-virtual {p0}, Lcom/android/phone/NBVoiceMailSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

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

    invoke-virtual {p0}, Lcom/android/phone/NBVoiceMailSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/NBVoiceMailSetting;->getListView()Landroid/widget/ListView;

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

.method private startAddVoiceMail()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v1

    .local v1, "victim":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/NBVoiceMailSetting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private switchToPreviousVoicemailProvider()V
    .locals 6

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMChangeCompletedSuccessfully:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mFwdChangesRequireRollback:Z

    if-eqz v1, :cond_4

    :cond_2
    const/16 v1, 0x25b

    invoke-direct {p0, v1}, Lcom/android/phone/NBVoiceMailSetting;->showDialogIfForeground(I)V

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/NBVoiceMailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;

    move-result-object v0

    .local v0, "prevSettings":Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;
    iget-boolean v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMChangeCompletedSuccessfully:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NBVoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/NBVoiceMailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v5, 0x1f4

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_3
    iget-boolean v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mFwdChangesRequireRollback:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/phone/NBVoiceMailSetting;->fwdChangesRollback(Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;)V

    goto :goto_0

    .end local v0    # "prevSettings":Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->onRevertDone()V

    goto :goto_0
.end method

.method private updateForwarding(ILcom/android/internal/telephony/CallForwardInfo;)V
    .locals 10
    .param p1, "reason"    # I
    .param p2, "fi"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NBVoiceMailSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/phone/NBVoiceMailSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v6

    .local v6, "doUpdate":Z
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    :goto_0
    iget v2, p2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, p2, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v7, p0, Lcom/android/phone/NBVoiceMailSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v8, 0x1f5

    iget v9, p2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v7, v8, v9, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    :cond_0
    return-void

    :cond_1
    move v1, v5

    goto :goto_0
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .locals 7
    .param p1, "currentProviderSetting"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProvider;

    .local v1, "provider":Lcom/android/phone/NBVoiceMailSetting$VoiceMailProvider;
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    const v4, 0x7f0b010b

    invoke-virtual {p0, v4}, Lcom/android/phone/NBVoiceMailSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/NBVoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3, v5}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/NBVoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setIntent(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailNotificationVibrate:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/nubia/phone/CheckBoxPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, v1, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .local v2, "providerName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v3, v2}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/NBVoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3, v6}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/NBVoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v4, v1, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setIntent(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailNotificationVibrate:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/nubia/phone/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateVoiceNumberField()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    .local v0, "summary":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v0    # "summary":Ljava/lang/String;
    :cond_2
    const v1, 0x7f0b027d

    invoke-virtual {p0, v1}, Lcom/android/phone/NBVoiceMailSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/phone/NBVoiceMailSetting;->onVoiceMailProviderCfgIdResult(ILandroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/android/phone/NBVoiceMailSetting;->onVoiceMailPrefIdResult(ILandroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    invoke-virtual {p0}, Lcom/android/phone/NBVoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/NBVoiceMailSetting;->finish()V

    :cond_1
    :goto_1
    return-void

    :pswitch_1
    iget v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->saveVoiceMailAndForwardingNumberStage()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/NBVoiceMailSetting;->finish()V

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

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/android/phone/NBVoiceMailSetting;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/NBVoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mPhoneId:I

    iget v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mPhoneId:I

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getPhoneFromPhoneId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voice mail settings onCreate  --mPhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/NBVoiceMailSetting;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->initPreference()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBVoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-le v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-direct {p0, v1}, Lcom/android/phone/NBVoiceMailSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->updateVoiceNumberField()V

    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->initRingtoneRunnable()V

    iput-boolean v3, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMProviderSettingsForced:Z

    invoke-virtual {p0}, Lcom/android/phone/NBVoiceMailSetting;->getSupportActionBar()Lcn/nubia/commonui/phone/actionbar/app/ActionBar;

    move-result-object v0

    .local v0, "actionBar":Lcn/nubia/commonui/phone/actionbar/app/ActionBar;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/phone/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->showStatusBarPic(Landroid/app/Activity;)V

    return-void

    .end local v0    # "actionBar":Lcn/nubia/commonui/phone/actionbar/app/ActionBar;
    :cond_2
    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/NBVoiceMailSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/phone/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/16 v3, 0x25b

    const/16 v2, 0x259

    const/16 v1, 0x1f4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x190

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1f5

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1f6

    if-eq p1, v1, :cond_0

    const/16 v1, 0x258

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/NBVoiceMailSetting;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    if-eq p1, v2, :cond_2

    const/16 v1, 0x25a

    if-eq p1, v1, :cond_2

    if-ne p1, v3, :cond_5

    :cond_2
    new-instance v0, Lcn/nubia/commonui/phone/app/ProgressDialog;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/phone/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .local v0, "dialog":Lcn/nubia/commonui/phone/app/ProgressDialog;
    const v1, 0x7f0b00f4

    invoke-virtual {p0, v1}, Lcom/android/phone/NBVoiceMailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/ProgressDialog;->setCancelable(Z)V

    if-ne p1, v2, :cond_3

    const v1, 0x7f0b00f9

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/phone/NBVoiceMailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_4

    const v1, 0x7f0b00fa

    goto :goto_1

    :cond_4
    const v1, 0x7f0b00f8

    goto :goto_1

    .end local v0    # "dialog":Lcn/nubia/commonui/phone/app/ProgressDialog;
    :cond_5
    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
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
    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->handleVMBtnClickRequest()V

    goto :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 3
    .param p1, "preference"    # Lcom/android/phone/EditPhoneNumberPreference;

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->updateVoiceNumberField()V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .local v0, "vmDisplay":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b00bd

    invoke-virtual {p0, v2}, Lcom/android/phone/NBVoiceMailSetting;->getString(I)Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/android/phone/NBVoiceMailSetting;->onBackPressed()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mForeground:Z

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailProviders:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-ne p1, v2, :cond_3

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .local v0, "newProviderKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .end local v0    # "newProviderKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .restart local v0    # "newProviderKey":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/NBVoiceMailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/phone/NBVoiceMailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;

    move-result-object v1

    .local v1, "newProviderSettings":Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;
    if-nez v1, :cond_2

    iput-boolean v5, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMProviderSettingsForced:Z

    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-direct {p0, v2}, Lcom/android/phone/NBVoiceMailSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_0

    :cond_2
    iput-boolean v5, p0, Lcom/android/phone/NBVoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NBVoiceMailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;)V

    goto :goto_0

    .end local v0    # "newProviderKey":Ljava/lang/String;
    .end local v1    # "newProviderSettings":Lcom/android/phone/NBVoiceMailSetting$VoiceMailProviderSettings;
    :cond_3
    iget-object v2, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailNotificationVibrate:Landroid/preference/nubia/phone/CheckBoxPreference;

    if-ne p1, v2, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "button_voicemail_notification_vibrate_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/NBVoiceMailSetting;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NBVoiceMailSetting;->mVoicemailNotificationVibrate:Landroid/preference/nubia/phone/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/nubia/phone/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v1, :cond_0

    invoke-virtual {p1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/NBVoiceMailSetting;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/NBVoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/phone/NBVoiceMailSetting;->mVMProviderSettingsForced:Z

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    iput p1, p0, Lcom/android/phone/NBVoiceMailSetting;->mCurrentDialogId:I

    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    invoke-super {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onResume()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/phone/NBVoiceMailSetting;->mForeground:Z

    invoke-direct {p0}, Lcom/android/phone/NBVoiceMailSetting;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBVoiceMailSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

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
    iget-object v4, p0, Lcom/android/phone/NBVoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/Thread;

    iget-object v5, p0, Lcom/android/phone/NBVoiceMailSetting;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
