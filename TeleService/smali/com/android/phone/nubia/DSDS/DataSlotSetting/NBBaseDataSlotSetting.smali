.class abstract Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;
.super Ljava/lang/Object;
.source "NBBaseDataSlotSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;,
        Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotSettingHandler;
    }
.end annotation


# instance fields
.field private final isSwitchSub2Slot:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mSlot2SubMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mSlot2SubMap:Ljava/util/HashMap;

    new-instance v2, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotSettingHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotSettingHandler;-><init>(Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$1;)V

    iput-object v2, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->isSwitchSubId()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->isSwitchSub2Slot:Z

    iput-object v3, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string v2, "NBDataSlotSetting"

    const-string v3, "NBDataSlotSetting init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .local v1, "numPhones":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mSlot2SubMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    const/4 v6, -0x1

    invoke-direct {v4, p0, v5, v6, v0}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;-><init>(Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;Landroid/os/Handler;II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->isSwitchSub2Slot:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->doSwitchSubToSlotInit()V

    :goto_1
    const-string v2, "NBDataSlotSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSwitchSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->isSwitchSub2Slot:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->doNonSwitchSubToSlotInit()V

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->onSubStateChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->onDataSwitchChange(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;

    .prologue
    iget-object v0, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private clearSubId()V
    .locals 6

    .prologue
    iget-object v3, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mSlot2SubMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;

    .local v0, "dataSlotCO":Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;
    iget-object v3, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;->setSubId(I)V

    goto :goto_0

    .end local v0    # "dataSlotCO":Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;>;"
    :cond_0
    const-string v3, "NBDataSlotSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearSubId mSlot2SubMap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mSlot2SubMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private doNonSwitchSubToSlotInit()V
    .locals 7

    .prologue
    iget-object v3, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mSlot2SubMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "phoneId":I
    iget-object v3, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_data"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v3, -0x1

    invoke-direct {p0, v3, v2}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->updataDataSubId(II)V

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;>;"
    .end local v2    # "phoneId":I
    :cond_0
    return-void
.end method

.method private doSwitchSubToSlotInit()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    new-instance v2, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$1;

    invoke-direct {v2, p0}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$1;-><init>(Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;)V

    .local v2, "mOnSubscriptionsChangedListener":Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    iget-object v5, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v5, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mSlot2SubMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "phoneId":I
    iget-object v5, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    aget v4, v5, v8

    .local v4, "phoneSubId":I
    iget-object v5, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile_data"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v8, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v5, -0x1

    invoke-direct {p0, v5, v3}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->updataDataSubId(II)V

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;>;"
    .end local v3    # "phoneId":I
    .end local v4    # "phoneSubId":I
    :cond_0
    return-void
.end method

.method private onDataSwitchChange(II)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->updataDataSubId(II)V

    return-void
.end method

.method private onSubStateChange()V
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->clearSubId()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-direct {p0, v1}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->updateSubId(Landroid/telephony/SubscriptionInfo;)V

    goto :goto_0
.end method

.method private updataDataSubId(II)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->isSwitchSub2Slot:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, "retVal":I
    :goto_0
    const-string v2, "NBDataSlotSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updataDataSubId subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nubia_mobile_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    .end local v1    # "retVal":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "retVal":I
    goto :goto_0
.end method

.method private updateSubId(Landroid/telephony/SubscriptionInfo;)V
    .locals 6
    .param p1, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    const-string v3, "NBDataSlotSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSubId subInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    .local v1, "phoneId":I
    iget-object v3, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mSlot2SubMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;

    .local v0, "dataSlotCO":Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;
    if-nez v0, :cond_0

    const-string v3, "NBDataSlotSetting"

    const-string v4, "updateSubId dataSlotCO is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .local v2, "subId":I
    invoke-virtual {v0}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;->getSubId()I

    move-result v3

    if-ne v3, v2, :cond_1

    const-string v3, "NBDataSlotSetting"

    const-string v4, "subid not change updateSubId return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v3, "NBDataSlotSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSubId subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dataSlotCO.getSubId()= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {v0, v2}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;->setSubId(I)V

    iget-object v3, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0, v2, v1}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->updataDataSubId(II)V

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    const-string v0, "NBDataSlotSetting"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract isSwitchSubId()Z
.end method
