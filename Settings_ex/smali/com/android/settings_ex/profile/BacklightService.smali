.class public Lcom/android/settings_ex/profile/BacklightService;
.super Landroid/app/Service;
.source "BacklightService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/profile/BacklightService$LocalBinder;
    }
.end annotation


# static fields
.field private static mLock:Ljava/lang/Object;


# instance fields
.field private binder:Landroid/os/IBinder;

.field private cycle:J

.field private level:I

.field private mBreathThread:Ljava/lang/Thread;

.field private maxBrightness:I

.field private minBrightness:I

.field private period:F

.field private pm:Landroid/os/PowerManager;

.field private sleep:I

.field private start:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/profile/BacklightService;->start:Z

    .line 29
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings_ex/profile/BacklightService$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/profile/BacklightService$1;-><init>(Lcom/android/settings_ex/profile/BacklightService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/settings_ex/profile/BacklightService;->mBreathThread:Ljava/lang/Thread;

    .line 122
    new-instance v0, Lcom/android/settings_ex/profile/BacklightService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/profile/BacklightService$LocalBinder;-><init>(Lcom/android/settings_ex/profile/BacklightService;)V

    iput-object v0, p0, Lcom/android/settings_ex/profile/BacklightService;->binder:Landroid/os/IBinder;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/profile/BacklightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/BacklightService;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/android/settings_ex/profile/BacklightService;->start:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/profile/BacklightService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/BacklightService;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/settings_ex/profile/BacklightService;->setBacklightOn()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/profile/BacklightService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/BacklightService;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/settings_ex/profile/BacklightService;->setBacklightOff()V

    return-void
.end method

.method private setBacklightOff()V
    .locals 6

    .prologue
    .line 65
    iget v2, p0, Lcom/android/settings_ex/profile/BacklightService;->level:I

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/settings_ex/profile/BacklightService;->start:Z

    if-eqz v2, :cond_0

    .line 66
    sget-object v3, Lcom/android/settings_ex/profile/BacklightService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/profile/BacklightService;->pm:Landroid/os/PowerManager;

    iget v4, p0, Lcom/android/settings_ex/profile/BacklightService;->period:F

    int-to-float v5, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/android/settings_ex/profile/BacklightService;->minBrightness:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/os/PowerManager;->setBacklightBrightness(I)V

    .line 68
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :try_start_1
    iget v2, p0, Lcom/android/settings_ex/profile/BacklightService;->sleep:I

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 75
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method private setBacklightOn()V
    .locals 6

    .prologue
    .line 51
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/settings_ex/profile/BacklightService;->level:I

    if-ge v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings_ex/profile/BacklightService;->start:Z

    if-eqz v2, :cond_0

    .line 52
    sget-object v3, Lcom/android/settings_ex/profile/BacklightService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/profile/BacklightService;->pm:Landroid/os/PowerManager;

    iget v4, p0, Lcom/android/settings_ex/profile/BacklightService;->period:F

    int-to-float v5, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/android/settings_ex/profile/BacklightService;->minBrightness:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/os/PowerManager;->setBacklightBrightness(I)V

    .line 54
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :try_start_1
    iget v2, p0, Lcom/android/settings_ex/profile/BacklightService;->sleep:I

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 62
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 104
    const-string v0, "cycle"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/settings_ex/profile/BacklightService;->cycle:J

    .line 105
    const-string v0, "level"

    const/16 v1, 0xfe

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/profile/BacklightService;->level:I

    .line 106
    const-string v0, "min_brightness"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/profile/BacklightService;->minBrightness:I

    .line 107
    const-string v0, "max_brightness"

    const/16 v1, 0xff

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/profile/BacklightService;->maxBrightness:I

    .line 109
    iget v0, p0, Lcom/android/settings_ex/profile/BacklightService;->maxBrightness:I

    iget v1, p0, Lcom/android/settings_ex/profile/BacklightService;->minBrightness:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings_ex/profile/BacklightService;->level:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings_ex/profile/BacklightService;->period:F

    .line 111
    iget-wide v0, p0, Lcom/android/settings_ex/profile/BacklightService;->cycle:J

    iget v2, p0, Lcom/android/settings_ex/profile/BacklightService;->level:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ex/profile/BacklightService;->sleep:I

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/profile/BacklightService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 83
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profile/BacklightService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings_ex/profile/BacklightService;->pm:Landroid/os/PowerManager;

    .line 84
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/profile/BacklightService;->start:Z

    .line 119
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 120
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
