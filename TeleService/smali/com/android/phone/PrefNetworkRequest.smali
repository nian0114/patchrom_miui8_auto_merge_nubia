.class public Lcom/android/phone/PrefNetworkRequest;
.super Lcom/android/phone/SyncQueue$SyncRequest;
.source "PrefNetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;
    }
.end annotation


# static fields
.field private static final sSyncQueue:Lcom/android/phone/SyncQueue;


# instance fields
.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroid/os/Message;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mNBDsdsBase:Lcom/android/phone/NBDsdsBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/phone/SyncQueue;

    invoke-direct {v0}, Lcom/android/phone/SyncQueue;-><init>()V

    sput-object v0, Lcom/android/phone/PrefNetworkRequest;->sSyncQueue:Lcom/android/phone/SyncQueue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILandroid/os/Message;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slot"    # I
    .param p3, "networkMode"    # I
    .param p4, "callback"    # Landroid/os/Message;

    .prologue
    sget-object v0, Lcom/android/phone/PrefNetworkRequest;->sSyncQueue:Lcom/android/phone/SyncQueue;

    invoke-direct {p0, v0}, Lcom/android/phone/SyncQueue$SyncRequest;-><init>(Lcom/android/phone/SyncQueue;)V

    new-instance v0, Lcom/android/phone/PrefNetworkRequest$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PrefNetworkRequest$1;-><init>(Lcom/android/phone/PrefNetworkRequest;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/PrefNetworkRequest;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/phone/PrefNetworkRequest;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/phone/PrefNetworkRequest;->mCallback:Landroid/os/Message;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-static {}, Lcom/android/phone/NBDsdsFactory;->getInstance()Lcom/android/phone/NBDsdsFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NBDsdsFactory;->getNBDsds()Lcom/android/phone/NBDsdsBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PrefNetworkRequest;->mNBDsdsBase:Lcom/android/phone/NBDsdsBase;

    invoke-virtual {p0, p2, p3}, Lcom/android/phone/PrefNetworkRequest;->addCommands(II)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PrefNetworkRequest;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PrefNetworkRequest;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/PrefNetworkRequest;->handleSetPreferredNetwork(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/PrefNetworkRequest;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PrefNetworkRequest;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/PrefNetworkRequest;->handleGetPreferredNetwork(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/PrefNetworkRequest;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PrefNetworkRequest;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/PrefNetworkRequest;->request(I)V

    return-void
.end method

.method private addCommandForPrimaryIfNeeded(II)V
    .locals 3
    .param p1, "slot"    # I
    .param p2, "networkMode"    # I

    .prologue
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->isSupportLtePlusC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/phone/NBDsdsUtils;->isCardPresent(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v0

    if-eq p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    new-instance v1, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;-><init>(Lcom/android/phone/PrefNetworkRequest;IILcom/android/phone/PrefNetworkRequest$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add command for primary : slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", network = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " !"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private getOtherNetwork(I)I
    .locals 3
    .param p1, "otherSlot"    # I

    .prologue
    const/4 v1, 0x1

    .local v1, "otherNetwork":I
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->isSupportLtePlusC()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/android/phone/NBPreferedNetworkMode;

    iget-object v2, p0, Lcom/android/phone/PrefNetworkRequest;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/phone/NBPreferedNetworkMode;-><init>(Landroid/content/Context;)V

    .local v0, "nbPreferedNetworkMode":Lcom/android/phone/NBPreferedNetworkMode;
    invoke-static {p1}, Lcom/android/phone/NBDsdsUtils;->isCdmaCard(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/android/phone/NBPreferedNetworkMode;->getUserNetworkMode(I)I

    move-result v1

    .end local v0    # "nbPreferedNetworkMode":Lcom/android/phone/NBPreferedNetworkMode;
    :goto_0
    return v1

    .restart local v0    # "nbPreferedNetworkMode":Lcom/android/phone/NBPreferedNetworkMode;
    :cond_0
    invoke-static {}, Lcom/android/phone/NBPreferedNetworkMode;->getGSMNetworkMode()I

    move-result v1

    goto :goto_0

    .end local v0    # "nbPreferedNetworkMode":Lcom/android/phone/NBPreferedNetworkMode;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private handleGetPreferredNetwork(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "index":I
    iget-object v4, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;

    .local v1, "command":Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    const/4 v5, 0x0

    aget v3, v4, v5

    .local v3, "modemNetworkMode":I
    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v1}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/android/phone/PrefNetworkRequest;->savePrefNetworkInSetting(II)V

    .end local v3    # "modemNetworkMode":I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get perferred network for slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v1}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " done, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-direct {p0, v2}, Lcom/android/phone/PrefNetworkRequest;->request(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/phone/PrefNetworkRequest;->mCallback:Landroid/os/Message;

    invoke-direct {p0, v4}, Lcom/android/phone/PrefNetworkRequest;->response(Landroid/os/Message;)V

    invoke-virtual {p0}, Lcom/android/phone/PrefNetworkRequest;->end()V

    goto :goto_0
.end method

.method private handleSetPreferredNetwork(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "index":I
    iget-object v3, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;

    .local v1, "command":Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v1}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v1}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " done, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/PrefNetworkRequest;->mCallback:Landroid/os/Message;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PrefNetworkRequest;->mCallback:Landroid/os/Message;

    iget-object v3, p0, Lcom/android/phone/PrefNetworkRequest;->mCallback:Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/phone/PrefNetworkRequest;->mNBDsdsBase:Lcom/android/phone/NBDsdsBase;

    iget-object v3, v3, Lcom/android/phone/NBDsdsBase;->mPhones:[Lcom/android/internal/telephony/Phone;

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v1}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/phone/PrefNetworkRequest;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/phone/PrefNetworkRequest;->request(I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/phone/PrefNetworkRequest;->mCallback:Landroid/os/Message;

    invoke-direct {p0, v3}, Lcom/android/phone/PrefNetworkRequest;->response(Landroid/os/Message;)V

    invoke-virtual {p0}, Lcom/android/phone/PrefNetworkRequest;->end()V

    goto :goto_0
.end method

.method private static final logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "pref_network_request"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_network_request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private request(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    iget-object v1, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;

    .local v0, "command":Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save network mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v0}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v0}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to DB first"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v0}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v0}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/PrefNetworkRequest;->mNBDsdsBase:Lcom/android/phone/NBDsdsBase;

    iget-object v1, v1, Lcom/android/phone/NBDsdsBase;->mPhones:[Lcom/android/internal/telephony/Phone;

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v0}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    aget-object v1, v1, v2

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v0}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/PrefNetworkRequest;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void
.end method

.method private response(Landroid/os/Message;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Message;

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    const-string v0, "pref_network_request"

    const-string v1, "can\'t response the result, replyTo and target are all null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private savePrefNetworkInSetting(II)V
    .locals 2
    .param p1, "slot"    # I
    .param p2, "networkMode"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/PrefNetworkRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, p1, p2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method


# virtual methods
.method protected addCommands(II)V
    .locals 5
    .param p1, "slot"    # I
    .param p2, "networkMode"    # I

    .prologue
    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    if-eq v0, p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/phone/PrefNetworkRequest;->getOtherNetwork(I)I

    move-result v1

    .local v1, "networkForUnprimary":I
    iget-object v2, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    new-instance v3, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v1, v4}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;-><init>(Lcom/android/phone/PrefNetworkRequest;IILcom/android/phone/PrefNetworkRequest$1;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PrefNetworkRequest;->savePrefNetworkInSetting(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add command for Unprimary : slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", network = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    .end local v1    # "networkForUnprimary":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "index":I
    :cond_1
    if-ltz p1, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge p1, v2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/phone/PrefNetworkRequest;->addCommandForPrimaryIfNeeded(II)V

    invoke-direct {p0, p1, p2}, Lcom/android/phone/PrefNetworkRequest;->savePrefNetworkInSetting(II)V

    :cond_2
    return-void
.end method

.method protected start()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "no command sent"

    invoke-static {v1}, Lcom/android/phone/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/PrefNetworkRequest;->mCallback:Landroid/os/Message;

    invoke-direct {p0, v1}, Lcom/android/phone/PrefNetworkRequest;->response(Landroid/os/Message;)V

    invoke-virtual {p0}, Lcom/android/phone/PrefNetworkRequest;->end()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    iget-object v2, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;

    .local v0, "command":Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to set network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v0}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v0}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/PrefNetworkRequest;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
