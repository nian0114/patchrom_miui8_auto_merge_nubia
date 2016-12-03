.class public Lcom/android/phone/NBRespondViaSmsManager;
.super Ljava/lang/Object;
.source "NBRespondViaSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBRespondViaSmsManager$Settings;
    }
.end annotation


# static fields
.field private static final mPrefrencesFlagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/phone/NBRespondViaSmsManager$1;

    invoke-direct {v0}, Lcom/android/phone/NBRespondViaSmsManager$1;-><init>()V

    sput-object v0, Lcom/android/phone/NBRespondViaSmsManager;->mPrefrencesFlagMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000([Z)V
    .locals 0
    .param p0, "x0"    # [Z

    .prologue
    invoke-static {p0}, Lcom/android/phone/NBRespondViaSmsManager;->getReponsesChangedFlag([Z)V

    return-void
.end method

.method static synthetic access$100()Lcom/android/phone/SubscriptionInfoHelper;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/phone/NBRespondViaSmsManager;->mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/SubscriptionInfoHelper;)Lcom/android/phone/SubscriptionInfoHelper;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SubscriptionInfoHelper;

    .prologue
    sput-object p0, Lcom/android/phone/NBRespondViaSmsManager;->mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/phone/NBRespondViaSmsManager;->updateSharedPreferenceFlag(Ljava/lang/String;)V

    return-void
.end method

.method private static getReponsesChangedFlag([Z)V
    .locals 5
    .param p0, "returnArray"    # [Z

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const-string v2, "respond_via_sms_prefs_flag"

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/PhoneGlobals;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "flagPrefs":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/android/phone/NBRespondViaSmsManager;->mPrefrencesFlagMap:Ljava/util/HashMap;

    const-string v2, "canned_response_pref_1"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, p0, v4

    const/4 v2, 0x1

    sget-object v1, Lcom/android/phone/NBRespondViaSmsManager;->mPrefrencesFlagMap:Ljava/util/HashMap;

    const-string v3, "canned_response_pref_2"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, p0, v2

    const/4 v2, 0x2

    sget-object v1, Lcom/android/phone/NBRespondViaSmsManager;->mPrefrencesFlagMap:Ljava/util/HashMap;

    const-string v3, "canned_response_pref_3"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, p0, v2

    const/4 v2, 0x3

    sget-object v1, Lcom/android/phone/NBRespondViaSmsManager;->mPrefrencesFlagMap:Ljava/util/HashMap;

    const-string v3, "canned_response_pref_4"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, p0, v2

    const/4 v2, 0x4

    sget-object v1, Lcom/android/phone/NBRespondViaSmsManager;->mPrefrencesFlagMap:Ljava/util/HashMap;

    const-string v3, "canned_response_pref_5"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, p0, v2

    const/4 v2, 0x5

    sget-object v1, Lcom/android/phone/NBRespondViaSmsManager;->mPrefrencesFlagMap:Ljava/util/HashMap;

    const-string v3, "canned_response_pref_6"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, p0, v2

    const/4 v2, 0x6

    sget-object v1, Lcom/android/phone/NBRespondViaSmsManager;->mPrefrencesFlagMap:Ljava/util/HashMap;

    const-string v3, "canned_response_pref_7"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, p0, v2

    return-void
.end method

.method private static setSharedPreferenceFlag(Ljava/lang/String;)V
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    const-string v4, "respond_via_sms_prefs_flag"

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/PhoneGlobals;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1, p0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "value":Z
    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x1

    invoke-interface {v0, p0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private static updateSharedPreferenceFlag(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    sget-object v1, Lcom/android/phone/NBRespondViaSmsManager;->mPrefrencesFlagMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "flagKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/phone/NBRespondViaSmsManager;->setSharedPreferenceFlag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
