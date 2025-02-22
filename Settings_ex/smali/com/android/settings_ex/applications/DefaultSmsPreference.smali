.class public Lcom/android/settings_ex/applications/DefaultSmsPreference;
.super Lcom/android/settings_ex/AppListPreference;
.source "DefaultSmsPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/applications/DefaultSmsPreference;->loadSmsApps()V

    .line 37
    return-void
.end method

.method private getDefaultPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultSmsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 54
    .local v0, "appName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 57
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 72
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v1

    return v1
.end method

.method private loadSmsApps()V
    .locals 8

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultSmsPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v6

    .line 43
    .local v6, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v0

    .line 44
    .local v0, "count":I
    new-array v4, v0, [Ljava/lang/String;

    .line 45
    .local v4, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 46
    .local v1, "i":I
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 47
    .local v5, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    iget-object v7, v5, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v7, v4, v1

    move v1, v2

    .line 48
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 49
    .end local v5    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/DefaultSmsPreference;->getDefaultPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v4, v7}, Lcom/android/settings_ex/applications/DefaultSmsPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected persistString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/applications/DefaultSmsPreference;->getDefaultPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultSmsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultSmsPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultSmsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 66
    const/4 v0, 0x1

    return v0
.end method
