.class public Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;
.super Ljava/lang/Thread;
.source "DefaultAppUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/DefaultAppUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyThread"
.end annotation


# instance fields
.field private callback:Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;

.field private interruptListener:Lcom/android/settings_ex/applications/DefaultAppUtils$InterruptListener;

.field private isFinished:Z

.field private volatile isInterrupted:Z


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->callback:Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->isInterrupted:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->isFinished:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;Lcom/android/settings_ex/applications/DefaultAppUtils$InterruptListener;)Lcom/android/settings_ex/applications/DefaultAppUtils$InterruptListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;
    .param p1, "x1"    # Lcom/android/settings_ex/applications/DefaultAppUtils$InterruptListener;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->interruptListener:Lcom/android/settings_ex/applications/DefaultAppUtils$InterruptListener;

    return-object p1
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->isInterrupted:Z

    .line 29
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 30
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->callback:Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->callback:Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;

    invoke-interface {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;->doTask()V

    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->callback:Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;

    invoke-interface {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;->onFinishTask()V

    .line 37
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->isFinished:Z

    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->interruptListener:Lcom/android/settings_ex/applications/DefaultAppUtils$InterruptListener;

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->interruptListener:Lcom/android/settings_ex/applications/DefaultAppUtils$InterruptListener;

    invoke-interface {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$InterruptListener;->onInterrupt()V

    .line 41
    :cond_1
    return-void
.end method
