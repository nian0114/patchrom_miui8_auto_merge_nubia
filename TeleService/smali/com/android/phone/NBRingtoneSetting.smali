.class public Lcom/android/phone/NBRingtoneSetting;
.super Ljava/lang/Object;
.source "NBRingtoneSetting.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultOneRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;

.field private mDefaultTwoRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;

.field private mOneNubiaRingtonePreference:Landroid/preference/Preference;

.field private final mRingtoneLookupComplete:Landroid/os/Handler;

.field private mTwoNubiaRingtonePreference:Landroid/preference/Preference;

.field private summaryOne:Ljava/lang/CharSequence;

.field private summaryTwo:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "contex"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/phone/NBRingtoneSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NBRingtoneSetting$1;-><init>(Lcom/android/phone/NBRingtoneSetting;)V

    iput-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/phone/NBRingtoneSetting;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NBRingtoneSetting;)Lcom/android/phone/NBDefaultRingtonePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBRingtoneSetting;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mDefaultOneRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/NBRingtoneSetting;)Lcom/android/phone/NBDefaultRingtonePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBRingtoneSetting;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mDefaultTwoRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/NBRingtoneSetting;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBRingtoneSetting;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/NBRingtoneSetting;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBRingtoneSetting;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBRingtoneSetting;->summaryOne:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/NBRingtoneSetting;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBRingtoneSetting;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/NBRingtoneSetting;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBRingtoneSetting;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBRingtoneSetting;->summaryTwo:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private handleRingToneClick(I)V
    .locals 5
    .param p1, "subcription"    # I

    .prologue
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.NUBIA_MUSIC_PICK"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/NBRingtoneSetting;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Landroid/media/RingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .local v2, "ringtoneUri":Landroid/net/Uri;
    const-string v4, "URL_VALUE"

    if-nez v2, :cond_0

    const-string v3, "content://media/internal/audio/media/10000"

    :goto_0
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/NBRingtoneSetting;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    if-nez p1, :cond_1

    const/16 v4, 0xb

    :goto_1
    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/16 v4, 0xc

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "Exception throw ActivityNotFoundException"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v3, v4}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private initRingtonesPreference(Landroid/preference/PreferenceScreen;I)V
    .locals 5
    .param p1, "root"    # Landroid/preference/PreferenceScreen;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v4, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.NUBIA_MUSIC_PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/phone/NBRingtoneSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .local v1, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/android/phone/NBPhoneUtils;->displayDualCardUi()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/phone/NBRingtoneSetting;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/phone/NBRingtoneSetting;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/NBRingtoneSetting;->mDefaultOneRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/phone/NBRingtoneSetting;->mDefaultTwoRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/phone/NBRingtoneSetting;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/phone/NBRingtoneSetting;->mDefaultOneRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/phone/NBRingtoneSetting;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/phone/NBRingtoneSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setRingtone(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "subId"    # I

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .local v0, "ringtoneUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/phone/NBRingtoneSetting;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, v0}, Landroid/media/RingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/phone/NBRingtoneSetting;->mContext:Landroid/content/Context;

    const-string v2, "CS_PhoneRingtone"

    invoke-static {v1, v2}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .end local v0    # "ringtoneUri":Landroid/net/Uri;
    :cond_0
    return-void
.end method


# virtual methods
.method public customRingtoneClick(Landroid/preference/Preference;I)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/NBRingtoneSetting;->handleRingToneClick(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/phone/NBRingtoneSetting;->handleRingToneClick(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/phone/NBRingtoneSetting;->handleRingToneClick(I)V

    goto :goto_0
.end method

.method public initNubiaRingtones(Lcom/android/phone/CallFeaturesSetting;Landroid/preference/PreferenceScreen;I)V
    .locals 2
    .param p1, "callFeaturesSetting"    # Lcom/android/phone/CallFeaturesSetting;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;
    .param p3, "phoneId"    # I

    .prologue
    invoke-static {}, Lcom/android/phone/NBPhoneUtils;->displayDualCardUi()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "defualt_one_ringtone_key"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NBDefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mDefaultOneRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;

    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mDefaultOneRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mDefaultOneRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/NBDefaultRingtonePreference;->setSubId(I)V

    :cond_0
    const-string v0, "defualt_two_ringtone_key"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NBDefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mDefaultTwoRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;

    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mDefaultTwoRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mDefaultTwoRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NBDefaultRingtonePreference;->setSubId(I)V

    :cond_1
    const-string v0, "button_one_ringtone_nubia_key"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/phone/NBRingtoneSetting;->summaryOne:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    const-string v0, "button_two_ringtone_nubia_key"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/phone/NBRingtoneSetting;->summaryTwo:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_3
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/android/phone/NBRingtoneSetting;->initRingtonesPreference(Landroid/preference/PreferenceScreen;I)V

    return-void

    :cond_4
    const-string v0, "defualt_one_ringtone_key"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NBDefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mDefaultOneRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;

    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mDefaultOneRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mDefaultOneRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;

    invoke-virtual {v0, p3}, Lcom/android/phone/NBDefaultRingtonePreference;->setSubId(I)V

    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mDefaultOneRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;

    invoke-virtual {v0, p1}, Lcom/android/phone/NBDefaultRingtonePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_5
    const-string v0, "button_one_ringtone_nubia_key"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/phone/NBRingtoneSetting;->summaryOne:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method public ringtoneClickResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/phone/NBRingtoneSetting;->setRingtone(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/android/phone/NBRingtoneSetting;->setRingtone(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public updateNubiaRingtonename(Lcom/android/internal/telephony/Phone;I)V
    .locals 7
    .param p1, "mPhone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mDefaultOneRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NBRingtoneSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/NBRingtoneSetting;->mDefaultOneRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;

    const/16 v4, 0xd

    invoke-static {}, Lcom/android/phone/NBPhoneUtils;->displayDualCardUi()Z

    move-result v5

    if-ne v5, v2, :cond_4

    move v5, v6

    :goto_0
    invoke-static/range {v0 .. v5}, Lcom/android/phone/common/util/SettingsUtil;->updateRingtoneName(Landroid/content/Context;Landroid/os/Handler;ILandroid/preference/Preference;II)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mDefaultTwoRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NBRingtoneSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/NBRingtoneSetting;->mDefaultTwoRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;

    const/16 v4, 0xe

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/android/phone/common/util/SettingsUtil;->updateRingtoneName(Landroid/content/Context;Landroid/os/Handler;ILandroid/preference/Preference;II)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NBRingtoneSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/NBRingtoneSetting;->mOneNubiaRingtonePreference:Landroid/preference/Preference;

    const/16 v4, 0xf

    invoke-static {}, Lcom/android/phone/NBPhoneUtils;->displayDualCardUi()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_1
    invoke-static/range {v0 .. v5}, Lcom/android/phone/common/util/SettingsUtil;->updateRingtoneName(Landroid/content/Context;Landroid/os/Handler;ILandroid/preference/Preference;II)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NBRingtoneSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/NBRingtoneSetting;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;

    const/16 v4, 0x10

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/android/phone/common/util/SettingsUtil;->updateRingtoneName(Landroid/content/Context;Landroid/os/Handler;ILandroid/preference/Preference;II)V

    :cond_3
    return-void

    :cond_4
    move v5, p2

    goto :goto_0

    :cond_5
    move v5, p2

    goto :goto_1
.end method
