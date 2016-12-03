.class public Lcom/android/phone/NBSimStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NBSimStateChangeReceiver.java"


# static fields
.field private static SLEEP_TIME:I

.field private static mBlockRemove:Z

.field private static mFirstSlotState:Ljava/lang/String;

.field private static mSecondSlotState:Ljava/lang/String;

.field private static final mStateChangeListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/NBSimStateChangeInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/phone/NBSimStateChangeReceiver;->mStateChangeListener:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/NBSimStateChangeReceiver;->mBlockRemove:Z

    const/16 v0, 0x12c

    sput v0, Lcom/android/phone/NBSimStateChangeReceiver;->SLEEP_TIME:I

    const-string v0, "INIT_STATE"

    sput-object v0, Lcom/android/phone/NBSimStateChangeReceiver;->mFirstSlotState:Ljava/lang/String;

    const-string v0, "INIT_STATE"

    sput-object v0, Lcom/android/phone/NBSimStateChangeReceiver;->mSecondSlotState:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static addStateChangeListener(Lcom/android/phone/NBSimStateChangeInterface;)V
    .locals 2
    .param p0, "l"    # Lcom/android/phone/NBSimStateChangeInterface;

    .prologue
    sget-object v1, Lcom/android/phone/NBSimStateChangeReceiver;->mStateChangeListener:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/NBSimStateChangeReceiver;->mStateChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/phone/NBSimStateChangeReceiver;->mStateChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hasStateChanged(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "iccStates"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .local v1, "changed":Z
    const-string v3, "ABSENT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "READY"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    move v0, v2

    .local v0, "bIccAbsentOrInsert":Z
    :goto_0
    if-eqz v0, :cond_2

    if-nez p2, :cond_4

    sget-object v3, Lcom/android/phone/NBSimStateChangeReceiver;->mFirstSlotState:Ljava/lang/String;

    const-string v4, "INIT_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sput-object p1, Lcom/android/phone/NBSimStateChangeReceiver;->mFirstSlotState:Ljava/lang/String;

    :cond_1
    :goto_1
    if-nez p2, :cond_5

    sget-object v3, Lcom/android/phone/NBSimStateChangeReceiver;->mFirstSlotState:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sput-object p1, Lcom/android/phone/NBSimStateChangeReceiver;->mFirstSlotState:Ljava/lang/String;

    const/4 v1, 0x1

    :cond_2
    :goto_2
    return v1

    .end local v0    # "bIccAbsentOrInsert":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "bIccAbsentOrInsert":Z
    :cond_4
    if-ne p2, v2, :cond_1

    sget-object v3, Lcom/android/phone/NBSimStateChangeReceiver;->mSecondSlotState:Ljava/lang/String;

    const-string v4, "INIT_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sput-object p1, Lcom/android/phone/NBSimStateChangeReceiver;->mSecondSlotState:Ljava/lang/String;

    goto :goto_1

    :cond_5
    if-ne p2, v2, :cond_2

    sget-object v2, Lcom/android/phone/NBSimStateChangeReceiver;->mSecondSlotState:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sput-object p1, Lcom/android/phone/NBSimStateChangeReceiver;->mSecondSlotState:Ljava/lang/String;

    const/4 v1, 0x1

    goto :goto_2
.end method

.method private notifyStateChangeListener()V
    .locals 4

    .prologue
    sget-object v3, Lcom/android/phone/NBSimStateChangeReceiver;->mStateChangeListener:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_0
    sput-boolean v2, Lcom/android/phone/NBSimStateChangeReceiver;->mBlockRemove:Z

    sget-object v2, Lcom/android/phone/NBSimStateChangeReceiver;->mStateChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/NBSimStateChangeInterface;

    .local v1, "listener":Lcom/android/phone/NBSimStateChangeInterface;
    invoke-interface {v1}, Lcom/android/phone/NBSimStateChangeInterface;->stateChange()V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/phone/NBSimStateChangeInterface;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    sput-boolean v2, Lcom/android/phone/NBSimStateChangeReceiver;->mBlockRemove:Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static removeStateChangeListener(Lcom/android/phone/NBSimStateChangeInterface;)V
    .locals 4
    .param p0, "l"    # Lcom/android/phone/NBSimStateChangeInterface;

    .prologue
    :goto_0
    sget-boolean v1, Lcom/android/phone/NBSimStateChangeReceiver;->mBlockRemove:Z

    if-eqz v1, :cond_0

    :try_start_0
    sget v1, Lcom/android/phone/NBSimStateChangeReceiver;->SLEEP_TIME:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v2, Lcom/android/phone/NBSimStateChangeReceiver;->mStateChangeListener:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_1
    sget-object v1, Lcom/android/phone/NBSimStateChangeReceiver;->mStateChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/phone/NBSimStateChangeReceiver;->mStateChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "iccStates":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "phone"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, "phoneId":I
    invoke-direct {p0, v1, v2}, Lcom/android/phone/NBSimStateChangeReceiver;->hasStateChanged(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBSimStateChangeReceiver;->notifyStateChangeListener()V

    goto :goto_0
.end method
