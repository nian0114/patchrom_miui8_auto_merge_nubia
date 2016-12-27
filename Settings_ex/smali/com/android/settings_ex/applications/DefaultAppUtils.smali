.class public Lcom/android/settings_ex/applications/DefaultAppUtils;
.super Ljava/lang/Object;
.source "DefaultAppUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;,
        Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;,
        Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;,
        Lcom/android/settings_ex/applications/DefaultAppUtils$InterruptListener;,
        Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field public static browserIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;",
            ">;"
        }
    .end annotation
.end field

.field public static cameraIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;",
            ">;"
        }
    .end annotation
.end field

.field public static documentFileTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;",
            ">;"
        }
    .end annotation
.end field

.field public static documentIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;",
            ">;"
        }
    .end annotation
.end field

.field public static emailIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;",
            ">;"
        }
    .end annotation
.end field

.field public static galleryIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;",
            ">;"
        }
    .end annotation
.end field

.field public static homeIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;",
            ">;"
        }
    .end annotation
.end field

.field private static mCallBack:Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;

.field public static musicIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;",
            ">;"
        }
    .end annotation
.end field

.field public static phoneIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;",
            ">;"
        }
    .end annotation
.end field

.field private static sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

.field private static sThreadLock:Ljava/lang/Object;

.field public static videoPlayerIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-string v0, "DefaultApp"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->DEBUG:Z

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThreadLock:Ljava/lang/Object;

    .line 165
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$2;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->documentFileTypes:Ljava/util/ArrayList;

    .line 256
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$3;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$3;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->homeIntentList:Ljava/util/ArrayList;

    .line 262
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$4;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$4;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->phoneIntentList:Ljava/util/ArrayList;

    .line 269
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$5;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$5;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->browserIntentList:Ljava/util/ArrayList;

    .line 281
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$6;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$6;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->cameraIntentList:Ljava/util/ArrayList;

    .line 291
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$7;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$7;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->galleryIntentList:Ljava/util/ArrayList;

    .line 310
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$8;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$8;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->musicIntentList:Ljava/util/ArrayList;

    .line 316
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$9;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$9;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->emailIntentList:Ljava/util/ArrayList;

    .line 322
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$10;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$10;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->videoPlayerIntentList:Ljava/util/ArrayList;

    .line 328
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$11;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$11;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->documentIntentList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    return-void
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThreadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;)Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    .prologue
    .line 17
    sput-object p0, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    return-object p0
.end method

.method static synthetic access$500()Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->mCallBack:Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/android/settings_ex/applications/DefaultAppUtils;->formTestFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/android/settings_ex/applications/DefaultAppUtils;->formTestContentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/android/settings_ex/applications/DefaultAppUtils;->isNeedRemove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static equal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static formTestContentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "postfix"    # Ljava/lang/String;

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content:///testPath/testTxt."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formTestFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "postfix"    # Ljava/lang/String;

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///storage/testPath/testTxt."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isNeedRemove(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 343
    const-string v0, "dot"

    invoke-static {v0, p0}, Lcom/android/settings_ex/applications/DefaultAppUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "docm"

    invoke-static {v0, p0}, Lcom/android/settings_ex/applications/DefaultAppUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "xlt"

    invoke-static {v0, p0}, Lcom/android/settings_ex/applications/DefaultAppUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isThreadInterrupted()Z
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    # getter for: Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->isInterrupted:Z
    invoke-static {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->access$000(Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;)Z

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized startThread(Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;)V
    .locals 5
    .param p0, "callback"    # Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;

    .prologue
    .line 68
    const-class v1, Lcom/android/settings_ex/applications/DefaultAppUtils;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThreadLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :try_start_1
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;-><init>(Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;)V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    .line 71
    const-string v0, "DefaultAppUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!sThread.isAlive() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->start()V

    .line 73
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 75
    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    :try_start_3
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    # getter for: Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->isInterrupted:Z
    invoke-static {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->access$000(Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    # getter for: Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->isFinished:Z
    invoke-static {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->access$100(Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    const-string v0, "DefaultAppUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interrupting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sput-object p0, Lcom/android/settings_ex/applications/DefaultAppUtils;->mCallBack:Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 75
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 81
    :cond_2
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    if-eqz v0, :cond_3

    .line 82
    sput-object p0, Lcom/android/settings_ex/applications/DefaultAppUtils;->mCallBack:Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;

    .line 83
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->interrupt()V

    .line 84
    const-string v0, "DefaultAppUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interrupt thread : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    # getter for: Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->isFinished:Z
    invoke-static {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->access$100(Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    new-instance v2, Lcom/android/settings_ex/applications/DefaultAppUtils$1;

    invoke-direct {v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$1;-><init>()V

    # setter for: Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->interruptListener:Lcom/android/settings_ex/applications/DefaultAppUtils$InterruptListener;
    invoke-static {v0, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->access$202(Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;Lcom/android/settings_ex/applications/DefaultAppUtils$InterruptListener;)Lcom/android/settings_ex/applications/DefaultAppUtils$InterruptListener;

    goto :goto_0

    .line 101
    :cond_3
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;-><init>(Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;)V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    .line 102
    const-string v0, "DefaultAppUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sThread == null , start new thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppUtils;->sThread:Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$MyThread;->start()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method
