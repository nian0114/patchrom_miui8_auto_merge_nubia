.class public Lcom/android/phone/NBNetworkModeFactory;
.super Ljava/lang/Object;
.source "NBNetworkModeFactory.java"


# static fields
.field private static sInstance:Lcom/android/phone/NBNetworkModeFactory;


# instance fields
.field private mCdmaNetworkMode:Lcom/android/phone/NBCDMANetworkMode;

.field private mGsmNetworkMode:Lcom/android/phone/NBGSMNetworkMode;

.field private sMadeNetworkMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/phone/NBNetworkModeFactory;

    invoke-direct {v0}, Lcom/android/phone/NBNetworkModeFactory;-><init>()V

    sput-object v0, Lcom/android/phone/NBNetworkModeFactory;->sInstance:Lcom/android/phone/NBNetworkModeFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NBNetworkModeFactory;->sMadeNetworkMode:Z

    return-void
.end method

.method public static getDefault()Lcom/android/phone/NBNetworkModeFactory;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/phone/NBNetworkModeFactory;->sInstance:Lcom/android/phone/NBNetworkModeFactory;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getNetworkMode(I)Lcom/android/phone/NBNetworkMode;
    .locals 1
    .param p1, "modeType"    # I

    .prologue
    monitor-enter p0

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/NBNetworkModeFactory;->mCdmaNetworkMode:Lcom/android/phone/NBCDMANetworkMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBNetworkModeFactory;->mCdmaNetworkMode:Lcom/android/phone/NBCDMANetworkMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/NBNetworkModeFactory;->mGsmNetworkMode:Lcom/android/phone/NBGSMNetworkMode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNetworkMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/phone/NBNetworkModeFactory;->sMadeNetworkMode:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/NBNetworkModeFactory;->sMadeNetworkMode:Z

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getHardwareId()I

    move-result v0

    .local v0, "hardwareId":I
    new-instance v1, Lcom/android/phone/NBGSMNetworkMode;

    invoke-direct {v1, v0}, Lcom/android/phone/NBGSMNetworkMode;-><init>(I)V

    iput-object v1, p0, Lcom/android/phone/NBNetworkModeFactory;->mGsmNetworkMode:Lcom/android/phone/NBGSMNetworkMode;

    and-int/lit8 v1, v0, 0x1

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/android/phone/NBCDMANetworkMode;

    invoke-direct {v1, v0}, Lcom/android/phone/NBCDMANetworkMode;-><init>(I)V

    iput-object v1, p0, Lcom/android/phone/NBNetworkModeFactory;->mCdmaNetworkMode:Lcom/android/phone/NBCDMANetworkMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "hardwareId":I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .restart local v0    # "hardwareId":I
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/android/phone/NBNetworkModeFactory;->mCdmaNetworkMode:Lcom/android/phone/NBCDMANetworkMode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "hardwareId":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
