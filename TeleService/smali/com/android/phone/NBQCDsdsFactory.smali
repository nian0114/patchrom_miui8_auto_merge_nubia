.class public Lcom/android/phone/NBQCDsdsFactory;
.super Ljava/lang/Object;
.source "NBQCDsdsFactory.java"


# static fields
.field private static mNBQCDsdsFactory:Lcom/android/phone/NBQCDsdsFactory;


# instance fields
.field private mNBQCLTEPlusC:Lcom/android/phone/NBQCLTEPlusC;

.field private mNBQCUnLTEPlusC:Lcom/android/phone/NBQCUnLTEPlusC;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/phone/NBQCDsdsFactory;
    .locals 2

    .prologue
    const-class v1, Lcom/android/phone/NBQCDsdsFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/NBQCDsdsFactory;->mNBQCDsdsFactory:Lcom/android/phone/NBQCDsdsFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/NBQCDsdsFactory;

    invoke-direct {v0}, Lcom/android/phone/NBQCDsdsFactory;-><init>()V

    sput-object v0, Lcom/android/phone/NBQCDsdsFactory;->mNBQCDsdsFactory:Lcom/android/phone/NBQCDsdsFactory;

    :cond_0
    sget-object v0, Lcom/android/phone/NBQCDsdsFactory;->mNBQCDsdsFactory:Lcom/android/phone/NBQCDsdsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getQCDsds()Lcom/android/phone/NBQCDsdsBase;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->isSupportLtePlusC()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBQCDsdsFactory;->mNBQCLTEPlusC:Lcom/android/phone/NBQCLTEPlusC;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBQCDsdsFactory;->mNBQCLTEPlusC:Lcom/android/phone/NBQCLTEPlusC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/NBQCDsdsFactory;->mNBQCUnLTEPlusC:Lcom/android/phone/NBQCUnLTEPlusC;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeQCDsds(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->isSupportLtePlusC()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/phone/NBQCLTEPlusC;

    invoke-direct {v0, p1}, Lcom/android/phone/NBQCLTEPlusC;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/NBQCDsdsFactory;->mNBQCLTEPlusC:Lcom/android/phone/NBQCLTEPlusC;

    iget-object v0, p0, Lcom/android/phone/NBQCDsdsFactory;->mNBQCUnLTEPlusC:Lcom/android/phone/NBQCUnLTEPlusC;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NBQCDsdsFactory;->mNBQCUnLTEPlusC:Lcom/android/phone/NBQCUnLTEPlusC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/phone/NBQCUnLTEPlusC;

    invoke-direct {v0, p1}, Lcom/android/phone/NBQCUnLTEPlusC;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/NBQCDsdsFactory;->mNBQCUnLTEPlusC:Lcom/android/phone/NBQCUnLTEPlusC;

    iget-object v0, p0, Lcom/android/phone/NBQCDsdsFactory;->mNBQCLTEPlusC:Lcom/android/phone/NBQCLTEPlusC;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NBQCDsdsFactory;->mNBQCLTEPlusC:Lcom/android/phone/NBQCLTEPlusC;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeQCDsds()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/NBQCDsdsFactory;->mNBQCUnLTEPlusC:Lcom/android/phone/NBQCUnLTEPlusC;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NBQCDsdsFactory;->mNBQCUnLTEPlusC:Lcom/android/phone/NBQCUnLTEPlusC;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBQCDsdsFactory;->mNBQCLTEPlusC:Lcom/android/phone/NBQCLTEPlusC;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NBQCDsdsFactory;->mNBQCLTEPlusC:Lcom/android/phone/NBQCLTEPlusC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
