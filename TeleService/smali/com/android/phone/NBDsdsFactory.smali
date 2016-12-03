.class public Lcom/android/phone/NBDsdsFactory;
.super Ljava/lang/Object;
.source "NBDsdsFactory.java"


# static fields
.field private static isMakeInstance:Z

.field private static mNBDsdsFactory:Lcom/android/phone/NBDsdsFactory;


# instance fields
.field private isMTK:Z

.field private mNBMTDsds:Lcom/android/phone/NBMTDsds;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/NBDsdsFactory;->isMakeInstance:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NBDsdsFactory;->isMTK:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/phone/NBDsdsFactory;
    .locals 2

    .prologue
    const-class v1, Lcom/android/phone/NBDsdsFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/NBDsdsFactory;->mNBDsdsFactory:Lcom/android/phone/NBDsdsFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/NBDsdsFactory;

    invoke-direct {v0}, Lcom/android/phone/NBDsdsFactory;-><init>()V

    sput-object v0, Lcom/android/phone/NBDsdsFactory;->mNBDsdsFactory:Lcom/android/phone/NBDsdsFactory;

    :cond_0
    sget-object v0, Lcom/android/phone/NBDsdsFactory;->mNBDsdsFactory:Lcom/android/phone/NBDsdsFactory;
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
.method public declared-synchronized getNBDsds()Lcom/android/phone/NBDsdsBase;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/phone/NBDsdsFactory;->isMTK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBDsdsFactory;->mNBMTDsds:Lcom/android/phone/NBMTDsds;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBDsdsFactory;->mNBMTDsds:Lcom/android/phone/NBMTDsds;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/phone/NBQCDsdsFactory;->getInstance()Lcom/android/phone/NBQCDsdsFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NBQCDsdsFactory;->getQCDsds()Lcom/android/phone/NBQCDsdsBase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNBDsds(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/phone/NBDsdsFactory;->isMakeInstance:Z

    if-nez v0, :cond_0

    const-string v0, "NBDsdsFactory"

    const-string v1, "---makeNBDsds make NBDSDS!---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/NBDsdsFactory;->isMakeInstance:Z

    iget-boolean v0, p0, Lcom/android/phone/NBDsdsFactory;->isMTK:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/phone/NBMTDsds;

    invoke-direct {v0, p1}, Lcom/android/phone/NBMTDsds;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/NBDsdsFactory;->mNBMTDsds:Lcom/android/phone/NBMTDsds;

    invoke-static {}, Lcom/android/phone/NBQCDsdsFactory;->getInstance()Lcom/android/phone/NBQCDsdsFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NBQCDsdsFactory;->removeQCDsds()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/phone/NBQCDsdsFactory;->getInstance()Lcom/android/phone/NBQCDsdsFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/NBQCDsdsFactory;->makeQCDsds(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NBDsdsFactory;->mNBMTDsds:Lcom/android/phone/NBMTDsds;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
