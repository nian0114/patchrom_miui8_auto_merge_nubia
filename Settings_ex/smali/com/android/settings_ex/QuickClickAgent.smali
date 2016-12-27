.class public Lcom/android/settings_ex/QuickClickAgent;
.super Ljava/lang/Object;
.source "QuickClickAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;
    }
.end annotation


# instance fields
.field private final MSG_CHANGE_DELARY:J

.field private final MSG_SWITCH_CHANGE:I

.field private final NORMAL_CLICK_DELARY:J

.field private final TAG:Ljava/lang/String;

.field private clickList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private clickTime:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private clickedTodoListener:Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;

.field private currentClickTime:J

.field private isNomalClick:Z

.field private lastClickTime:J

.field switchChangeHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "QuickClickAgent"

    iput-object v0, p0, Lcom/android/settings_ex/QuickClickAgent;->TAG:Ljava/lang/String;

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/QuickClickAgent;->MSG_SWITCH_CHANGE:I

    .line 13
    const-wide/16 v0, 0x384

    iput-wide v0, p0, Lcom/android/settings_ex/QuickClickAgent;->MSG_CHANGE_DELARY:J

    .line 14
    const-wide/16 v0, 0x4b0

    iput-wide v0, p0, Lcom/android/settings_ex/QuickClickAgent;->NORMAL_CLICK_DELARY:J

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/QuickClickAgent;->isNomalClick:Z

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/QuickClickAgent;->clickList:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/QuickClickAgent;->clickTime:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Lcom/android/settings_ex/QuickClickAgent$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/QuickClickAgent$1;-><init>(Lcom/android/settings_ex/QuickClickAgent;)V

    iput-object v0, p0, Lcom/android/settings_ex/QuickClickAgent;->switchChangeHandler:Landroid/os/Handler;

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/QuickClickAgent;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/QuickClickAgent;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/android/settings_ex/QuickClickAgent;->clickList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/QuickClickAgent;)Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/QuickClickAgent;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/android/settings_ex/QuickClickAgent;->clickedTodoListener:Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;

    return-object v0
.end method

.method private isLastClickIsLongtimeAgo(J)Z
    .locals 5
    .param p1, "currentTime"    # J

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/QuickClickAgent;->clickTime:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ex/QuickClickAgent;->clickTime:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNormalClick()Z
    .locals 4

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/android/settings_ex/QuickClickAgent;->currentClickTime:J

    iget-wide v2, p0, Lcom/android/settings_ex/QuickClickAgent;->lastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4b0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isNeedInterrupt(Z)Z
    .locals 4
    .param p1, "isHopeOpen"    # Z

    .prologue
    const/4 v1, 0x1

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/QuickClickAgent;->clickList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/QuickClickAgent;->clickList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/QuickClickAgent;->clickList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings_ex/QuickClickAgent;->clickList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/QuickClickAgent;->isLastClickIsLongtimeAgo(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    const-string v0, "QuickClickAgent"

    const-string v2, "**isNeedInterrupt ** open"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 143
    :goto_0
    return v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/QuickClickAgent;->clickList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings_ex/QuickClickAgent;->clickList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/QuickClickAgent;->isLastClickIsLongtimeAgo(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    const-string v0, "QuickClickAgent"

    const-string v2, "**isNeedInterrupt ** close"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 139
    goto :goto_0

    .line 143
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSwitchChanged(Z)V
    .locals 6
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    .line 52
    :try_start_0
    const-string v3, "QuickClickAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "click down "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings_ex/QuickClickAgent;->currentClickTime:J

    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/QuickClickAgent;->isNormalClick()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings_ex/QuickClickAgent;->isNomalClick:Z

    .line 55
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 56
    .local v1, "msg":Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 58
    iget-object v2, p0, Lcom/android/settings_ex/QuickClickAgent;->switchChangeHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 59
    iget-boolean v2, p0, Lcom/android/settings_ex/QuickClickAgent;->isNomalClick:Z

    if-eqz v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/android/settings_ex/QuickClickAgent;->switchChangeHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    iget-object v2, p0, Lcom/android/settings_ex/QuickClickAgent;->clickList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 62
    iget-object v2, p0, Lcom/android/settings_ex/QuickClickAgent;->clickTime:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 66
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/QuickClickAgent;->clickList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v2, p0, Lcom/android/settings_ex/QuickClickAgent;->clickTime:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-wide v2, p0, Lcom/android/settings_ex/QuickClickAgent;->currentClickTime:J

    iput-wide v2, p0, Lcom/android/settings_ex/QuickClickAgent;->lastClickTime:J

    .line 73
    .end local v1    # "msg":Landroid/os/Message;
    :goto_2
    return-void

    .line 54
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 64
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/QuickClickAgent;->switchChangeHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x384

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 69
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "QuickClickAgent"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public removeDelayMsg()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/QuickClickAgent;->switchChangeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/QuickClickAgent;->switchChangeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    const-string v0, "QuickClickAgent"

    const-string v1, "message has removed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    return-void
.end method

.method public setClickedTodoListener(Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;)V
    .locals 0
    .param p1, "lsn"    # Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    iput-object p1, p0, Lcom/android/settings_ex/QuickClickAgent;->clickedTodoListener:Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;

    .line 83
    :cond_0
    return-void
.end method
