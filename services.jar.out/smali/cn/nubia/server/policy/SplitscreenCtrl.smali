.class public Lcn/nubia/server/policy/SplitscreenCtrl;
.super Ljava/lang/Object;
.source "SplitscreenCtrl.java"

# interfaces
.implements Lcom/android/server/policy/ISettingListener;


# static fields
.field private static final DELAY_ACTION_BOTTOM_KEY:J = 0xaL

.field private static final KEY_SPLITSCREEN_SLIDE_UP:Ljava/lang/String; = "splitscreen_slide_up"

.field private static final POLICY_FLAG_MASK_KEY:I = -0x80000000


# instance fields
.field private final mBackKeyDelayRunnable:Ljava/lang/Runnable;

.field private mBottomKeyInjected:Z

.field private mBottomKeyLongPressed:Z

.field private mBottomSlideUp:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mHomeKeyDelayRunnable:Ljava/lang/Runnable;

.field private mIsKeyDown:Z

.field private final mMenuKeyDelayRunnable:Ljava/lang/Runnable;

.field private mSplitscreenMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mSplitscreenMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mIsKeyDown:Z

    new-instance v0, Lcn/nubia/server/policy/SplitscreenCtrl$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/SplitscreenCtrl$1;-><init>(Lcn/nubia/server/policy/SplitscreenCtrl;)V

    iput-object v0, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mHomeKeyDelayRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcn/nubia/server/policy/SplitscreenCtrl$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/SplitscreenCtrl$2;-><init>(Lcn/nubia/server/policy/SplitscreenCtrl;)V

    iput-object v0, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mMenuKeyDelayRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcn/nubia/server/policy/SplitscreenCtrl$3;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/SplitscreenCtrl$3;-><init>(Lcn/nubia/server/policy/SplitscreenCtrl;)V

    iput-object v0, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mBackKeyDelayRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/SplitscreenCtrl;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/SplitscreenCtrl;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/SplitscreenCtrl;->injectBottomKeyEvent(I)V

    return-void
.end method

.method private getDelayRunnable(I)Ljava/lang/Runnable;
    .locals 3
    .param p1, "keycode"    # I

    .prologue
    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown KeyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mBackKeyDelayRunnable:Ljava/lang/Runnable;

    :goto_0
    return-object v0

    :sswitch_1
    iget-object v0, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mMenuKeyDelayRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mHomeKeyDelayRunnable:Ljava/lang/Runnable;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method private injectBottomKeyEvent(I)V
    .locals 9
    .param p1, "keycode"    # I

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mBottomKeyInjected:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, "now":J
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-wide v4, v2

    move v7, p1

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-wide v4, v2

    move v7, p1

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    iput-boolean v0, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mBottomKeyLongPressed:Z

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mBottomKeyLongPressed:Z

    goto :goto_0
.end method

.method private onKeyUp(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mBottomKeyLongPressed:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mBottomKeyLongPressed:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mBottomSlideUp:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/SplitscreenCtrl;->getDelayRunnable(I)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendBroadcast(Landroid/view/KeyEvent;ZZ)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "down"    # Z
    .param p3, "up"    # Z

    .prologue
    const/4 v2, 0x3

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mIsKeyDown:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.powermo.SmartBar.homeDown"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "homeIntent":Landroid/content/Intent;
    const-string v1, "com.powermo.SmartBar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mIsKeyDown:Z

    .end local v0    # "homeIntent":Landroid/content/Intent;
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mIsKeyDown:Z

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.powermo.SmartBar.homeUp"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "homeIntent":Landroid/content/Intent;
    const-string v1, "com.powermo.SmartBar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mIsKeyDown:Z

    .end local v0    # "homeIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method public interceptBottomKey(Landroid/view/KeyEvent;Z)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "keyguardOn"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    move v0, v3

    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_4

    move v2, v3

    .local v2, "up":Z
    :goto_1
    iget-boolean v3, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mBottomKeyInjected:Z

    if-nez v3, :cond_0

    invoke-direct {p0, p1, v0, v2}, Lcn/nubia/server/policy/SplitscreenCtrl;->sendBroadcast(Landroid/view/KeyEvent;ZZ)V

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mBottomSlideUp:Z

    if-eqz v3, :cond_1

    iput-boolean v4, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mBottomSlideUp:Z

    :cond_1
    iget-object v3, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mSplitscreenMode:Z

    if-eqz v3, :cond_2

    if-eqz p2, :cond_5

    :cond_2
    :goto_2
    return v4

    .end local v0    # "down":Z
    .end local v2    # "up":Z
    :cond_3
    move v0, v4

    goto :goto_0

    .restart local v0    # "down":Z
    :cond_4
    move v2, v4

    goto :goto_1

    .restart local v2    # "up":Z
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .local v1, "keycode":I
    const/4 v3, 0x4

    if-eq v1, v3, :cond_6

    const/16 v3, 0x52

    if-eq v1, v3, :cond_6

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    :cond_6
    iget-boolean v3, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mBottomKeyInjected:Z

    if-eqz v3, :cond_7

    if-nez v0, :cond_2

    iput-boolean v4, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mBottomKeyInjected:Z

    iput-boolean v4, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mBottomSlideUp:Z

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/SplitscreenCtrl;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v3

    :goto_3
    move v4, v3

    goto :goto_2

    :cond_8
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/SplitscreenCtrl;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_3
.end method

.method public interceptMotionAfterPressKey(I)Z
    .locals 3
    .param p1, "policyFlags"    # I

    .prologue
    const/4 v0, 0x1

    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mSplitscreenMode:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mBottomSlideUp:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mBottomSlideUp:Z

    iget-object v1, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mBackKeyDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mMenuKeyDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mHomeKeyDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    const-string v0, "splitscreen_slide_up"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public systemReady(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public updateSettings()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "splitscreen_slide_up"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/server/policy/SplitscreenCtrl;->mSplitscreenMode:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
