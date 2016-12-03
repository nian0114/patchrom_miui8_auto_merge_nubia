.class public Lcom/android/phone/NBSoftsimController;
.super Ljava/lang/Object;
.source "NBSoftsimController.java"


# static fields
.field private static final mHandlerThread:Landroid/os/HandlerThread;

.field private static mLastMcc:Ljava/lang/String;

.field private static final mLock:Ljava/lang/Object;

.field private static mNewMcc:Ljava/lang/String;

.field private static sInstance:Lcom/android/phone/NBSoftsimController;

.field private static sNumPhones:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInCheckProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastMccTime:J

.field private mRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/phone/NBSoftsimController;->mLock:Ljava/lang/Object;

    const-string v0, ""

    sput-object v0, Lcom/android/phone/NBSoftsimController;->mLastMcc:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NBSoftsimHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/NBSoftsimController;->mHandlerThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/android/phone/NBSoftsimController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/phone/NBSoftsimController;->mRetryCount:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/phone/NBSoftsimController;->mInCheckProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Lcom/android/phone/NBSoftsimController$1;

    sget-object v2, Lcom/android/phone/NBSoftsimController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/phone/NBSoftsimController$1;-><init>(Lcom/android/phone/NBSoftsimController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/phone/NBSoftsimController;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/phone/NBSoftsimController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    sput v1, Lcom/android/phone/NBSoftsimController;->sNumPhones:I

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "curr_mcc"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/NBSoftsimController;->mLastMcc:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NBSoftsimController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBSoftsimController;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBSoftsimController;->doCheckAndBroadcastMccChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NBSoftsimController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBSoftsimController;

    .prologue
    iget v0, p0, Lcom/android/phone/NBSoftsimController;->mRetryCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/NBSoftsimController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBSoftsimController;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/phone/NBSoftsimController;->mRetryCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/android/phone/NBSoftsimController;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/phone/NBSoftsimController;

    .prologue
    iget v0, p0, Lcom/android/phone/NBSoftsimController;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/NBSoftsimController;->mRetryCount:I

    return v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/phone/NBSoftsimController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/NBSoftsimController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBSoftsimController;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBSoftsimController;->mInCheckProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/NBSoftsimController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBSoftsimController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBSoftsimController;->broadcastMccChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/NBSoftsimController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBSoftsimController;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBSoftsimController;->doGetMcc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/NBSoftsimController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBSoftsimController;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBSoftsimController;->doCheckSoftsimAndBroadcast()V

    return-void
.end method

.method private broadcastMccChange(Ljava/lang/String;)V
    .locals 4
    .param p1, "mcc"    # Ljava/lang/String;

    .prologue
    const-string v1, "NBSoftsimController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcast mcc change mcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nubia.action.ACTION_MCC_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "countryMccCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NBSoftsimController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastSoftsimRestart(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const-string v1, "NBSoftsimController"

    const-string v2, "broadcast softsim Restart "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nubia.action.RESTART_SOFTSIM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "slot"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NBSoftsimController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private checkBroadcastMccIfNeed(Lcom/android/internal/telephony/Phone;)Z
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/phone/NBSoftsimController;->isAllCardsAbsent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/NBSoftsimController;->isSignalGreat(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Lcom/android/phone/NBSoftsimController;->mLastMcc:Ljava/lang/String;

    sget-object v2, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NBSoftsimController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/NBSoftsimController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/phone/NBSoftsimController;->mInCheckProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput v0, p0, Lcom/android/phone/NBSoftsimController;->mRetryCount:I

    iget-object v0, p0, Lcom/android/phone/NBSoftsimController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    sput-object v0, Lcom/android/phone/NBSoftsimController;->mLastMcc:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/NBSoftsimController;->mLastMccTime:J

    invoke-direct {p0}, Lcom/android/phone/NBSoftsimController;->saveLastMccToSp()V

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private doCheckAndBroadcastMccChange()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/telephony/Phone;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .local v5, "phoneType":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-direct {p0, v4}, Lcom/android/phone/NBSoftsimController;->getGSMMcc(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    const-string v6, "NBSoftsimController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getGSMMcc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -- mLastMcc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/phone/NBSoftsimController;->mLastMcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/phone/NBSoftsimController;->isValidMcc(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/phone/NBSoftsimController;->getMccFromProp(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    sget-object v6, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/phone/NBSoftsimController;->isValidMcc(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/phone/NBSoftsimController;->checkBroadcastMccIfNeed(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_0

    .end local v0    # "arr$":[Lcom/android/internal/telephony/Phone;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v5    # "phoneType":I
    :goto_1
    return-void

    .restart local v0    # "arr$":[Lcom/android/internal/telephony/Phone;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v5    # "phoneType":I
    :cond_2
    if-ne v5, v9, :cond_0

    invoke-direct {p0, v4}, Lcom/android/phone/NBSoftsimController;->getCDMAMcc(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    const-string v6, "NBSoftsimController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCDMAMcc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -- mLastMcc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/phone/NBSoftsimController;->mLastMcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/phone/NBSoftsimController;->isValidMcc(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/phone/NBSoftsimController;->getMccFromProp(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    sget-object v6, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/phone/NBSoftsimController;->isValidMcc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_3
    invoke-direct {p0, v4}, Lcom/android/phone/NBSoftsimController;->checkBroadcastMccIfNeed(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v5    # "phoneType":I
    :cond_4
    iget-object v6, p0, Lcom/android/phone/NBSoftsimController;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/phone/NBSoftsimController;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "arr$":[Lcom/android/internal/telephony/Phone;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/IllegalStateException;
    iget-object v6, p0, Lcom/android/phone/NBSoftsimController;->mInCheckProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1
.end method

.method private doCheckSoftsimAndBroadcast()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/phone/NBSoftsimController;->sNumPhones:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NBSoftsimController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "softsim_iccid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "vcIccId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/phone/NBSoftsimController;->broadcastSoftsimRestart(I)V

    .end local v1    # "vcIccId":Ljava/lang/String;
    :cond_0
    return-void

    .restart local v1    # "vcIccId":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private doGetMcc()Ljava/lang/String;
    .locals 8

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/telephony/Phone;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .local v4, "phoneType":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-direct {p0, v3}, Lcom/android/phone/NBSoftsimController;->getGSMMcc(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    const-string v5, "NBSoftsimController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGSMMcc "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - mLastMcc "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/phone/NBSoftsimController;->mLastMcc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/phone/NBSoftsimController;->isValidMcc(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    sput-object v5, Lcom/android/phone/NBSoftsimController;->mLastMcc:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/phone/NBSoftsimController;->mLastMccTime:J

    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "phoneType":I
    :cond_0
    :goto_1
    sget-object v5, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/phone/NBSoftsimController;->isValidMcc(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/android/phone/NBSoftsimController;->getMccFromProp()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    sget-object v5, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/phone/NBSoftsimController;->isValidMcc(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    sput-object v5, Lcom/android/phone/NBSoftsimController;->mLastMcc:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/phone/NBSoftsimController;->mLastMccTime:J

    :cond_1
    sget-object v5, Lcom/android/phone/NBSoftsimController;->mLastMcc:Ljava/lang/String;

    return-object v5

    .restart local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v4    # "phoneType":I
    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    invoke-direct {p0, v3}, Lcom/android/phone/NBSoftsimController;->getCDMAMcc(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    const-string v5, "NBSoftsimController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCDMAMcc "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - mLastMcc "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/phone/NBSoftsimController;->mLastMcc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/phone/NBSoftsimController;->isValidMcc(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/phone/NBSoftsimController;->mNewMcc:Ljava/lang/String;

    sput-object v5, Lcom/android/phone/NBSoftsimController;->mLastMcc:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/phone/NBSoftsimController;->mLastMccTime:J

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private getCDMAMcc(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 8
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    move-result-object v5

    .local v5, "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-string v0, ""

    .local v0, "cdmaMcc":Ljava/lang/String;
    const v6, 0x7fffffff

    .local v6, "mcc":I
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .local v3, "ci":Landroid/telephony/CellInfo;
    instance-of v7, v3, Landroid/telephony/CellInfoLte;

    if-eqz v7, :cond_0

    move-object v2, v3

    check-cast v2, Landroid/telephony/CellInfoLte;

    .local v2, "cellInfoLte":Landroid/telephony/CellInfoLte;
    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    .local v1, "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/phone/NBSoftsimController;->isValidMcc(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .end local v1    # "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    .end local v2    # "cellInfoLte":Landroid/telephony/CellInfoLte;
    .end local v3    # "ci":Landroid/telephony/CellInfo;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method private getGSMMcc(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 12
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    move-result-object v9

    .local v9, "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-string v7, ""

    .local v7, "gsmMcc":Ljava/lang/String;
    const v10, 0x7fffffff

    .local v10, "mcc":I
    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CellInfo;

    .local v6, "ci":Landroid/telephony/CellInfo;
    instance-of v11, v6, Landroid/telephony/CellInfoGsm;

    if-eqz v11, :cond_2

    move-object v3, v6

    check-cast v3, Landroid/telephony/CellInfoGsm;

    .local v3, "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    .local v0, "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/phone/NBSoftsimController;->isValidMcc(I)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .end local v0    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    .end local v3    # "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    .end local v6    # "ci":Landroid/telephony/CellInfo;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    return-object v7

    .restart local v6    # "ci":Landroid/telephony/CellInfo;
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_2
    instance-of v11, v6, Landroid/telephony/CellInfoWcdma;

    if-eqz v11, :cond_3

    move-object v5, v6

    check-cast v5, Landroid/telephony/CellInfoWcdma;

    .local v5, "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    .local v2, "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/phone/NBSoftsimController;->isValidMcc(I)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .end local v2    # "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    .end local v5    # "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    :cond_3
    instance-of v11, v6, Landroid/telephony/CellInfoLte;

    if-eqz v11, :cond_0

    move-object v4, v6

    check-cast v4, Landroid/telephony/CellInfoLte;

    .local v4, "cellInfoLte":Landroid/telephony/CellInfoLte;
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    .local v1, "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/phone/NBSoftsimController;->isValidMcc(I)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/phone/NBSoftsimController;
    .locals 3

    .prologue
    const-class v1, Lcom/android/phone/NBSoftsimController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/NBSoftsimController;->sInstance:Lcom/android/phone/NBSoftsimController;

    if-nez v0, :cond_0

    const-string v0, "NBSoftsimController"

    const-string v2, "getInstance null"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/phone/NBSoftsimController;->sInstance:Lcom/android/phone/NBSoftsimController;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getMccFromProp()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const-string v3, ""

    .local v3, "operatorNumeric":Ljava/lang/String;
    const-string v1, ""

    .local v1, "operatorMcc":Ljava/lang/String;
    const-string v4, "gsm.current.mcc"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NBSoftsimController;->isValidMcc(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v1

    .end local v1    # "operatorMcc":Ljava/lang/String;
    .local v2, "operatorMcc":Ljava/lang/String;
    :goto_0
    return-object v2

    .end local v2    # "operatorMcc":Ljava/lang/String;
    .restart local v1    # "operatorMcc":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v4, Lcom/android/phone/NBSoftsimController;->sNumPhones:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/NBSoftsimController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v4, "NBSoftsimController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMccFromProp mcc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .end local v1    # "operatorMcc":Ljava/lang/String;
    .restart local v2    # "operatorMcc":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "operatorMcc":Ljava/lang/String;
    .restart local v1    # "operatorMcc":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getMccFromProp(I)Ljava/lang/String;
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v5, 0x3

    const-string v0, ""

    .local v0, "operatorMcc":Ljava/lang/String;
    const-string v3, "gsm.current.mcc"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NBSoftsimController;->isValidMcc(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    .end local v0    # "operatorMcc":Ljava/lang/String;
    .local v1, "operatorMcc":Ljava/lang/String;
    :goto_0
    return-object v1

    .end local v1    # "operatorMcc":Ljava/lang/String;
    .restart local v0    # "operatorMcc":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/phone/NBSoftsimController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v3, "NBSoftsimController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMccFromProp phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mcc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .end local v0    # "operatorMcc":Ljava/lang/String;
    .restart local v1    # "operatorMcc":Ljava/lang/String;
    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)Lcom/android/phone/NBSoftsimController;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/phone/NBSoftsimController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/NBSoftsimController;->sInstance:Lcom/android/phone/NBSoftsimController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/NBSoftsimController;

    invoke-direct {v0, p0}, Lcom/android/phone/NBSoftsimController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/NBSoftsimController;->sInstance:Lcom/android/phone/NBSoftsimController;

    :goto_0
    sget-object v0, Lcom/android/phone/NBSoftsimController;->sInstance:Lcom/android/phone/NBSoftsimController;

    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "NBSoftsimController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/NBSoftsimController;->sInstance:Lcom/android/phone/NBSoftsimController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isAllCardsAbsent()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/phone/NBSoftsimController;->sNumPhones:I

    if-ge v0, v2, :cond_1

    invoke-static {v0}, Lcom/android/phone/CardStateMonitor;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    .end local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :goto_1
    return v2

    .restart local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_1
    const-string v2, "NBSoftsimController"

    const-string v3, "all card absent!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isSignalGreat(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const-string v1, "NBSoftsimController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSignalGreat level= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string v0, " -1"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isValidMcc(I)Z
    .locals 1
    .param p1, "mcc"    # I

    .prologue
    const/16 v0, 0xc7

    if-ge v0, p1, :cond_0

    const/16 v0, 0x320

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidMcc(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mcc"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "validMcc":Z
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/NBSoftsimController;->isValidMcc(I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private saveLastMccToSp()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/phone/NBSoftsimController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "curr_mcc"

    sget-object v3, Lcom/android/phone/NBSoftsimController;->mLastMcc:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public checkAndBroadcastMccChange()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/NBSoftsimController;->mInCheckProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NBSoftsimController"

    const-string v1, "already in check mcc change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBSoftsimController;->mInCheckProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/phone/NBSoftsimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/NBSoftsimController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/android/phone/NBSoftsimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/NBSoftsimController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public checkSoftsimAndBroadcast()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBSoftsimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/NBSoftsimController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getMcc()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x1388

    iget-object v1, p0, Lcom/android/phone/NBSoftsimController;->mInCheckProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "NBSoftsimController"

    const-string v2, "getMcc already in check mcc change"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/phone/NBSoftsimController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/phone/NBSoftsimController;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_1
    sget-object v1, Lcom/android/phone/NBSoftsimController;->mLastMcc:Ljava/lang/String;

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/phone/NBSoftsimController;->mLastMccTime:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    sget-object v2, Lcom/android/phone/NBSoftsimController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/phone/NBSoftsimController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/NBSoftsimController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v1, Lcom/android/phone/NBSoftsimController;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2
.end method
