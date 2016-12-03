.class public Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBQCMDataSlotSetting;
.super Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;
.source "NBQCMDataSlotSetting.java"


# static fields
.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBQCMDataSlotSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBQCMDataSlotSetting;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static make(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v1, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBQCMDataSlotSetting;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBQCMDataSlotSetting;->sInstance:Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBQCMDataSlotSetting;

    if-eqz v0, :cond_0

    const-string v0, "NBQCMDataSlotSetting"

    const-string v2, "NBQCLDataSlotSetting.make() should only be called once"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    new-instance v0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBQCMDataSlotSetting;

    invoke-direct {v0, p0}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBQCMDataSlotSetting;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBQCMDataSlotSetting;->sInstance:Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBQCMDataSlotSetting;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected isSwitchSubId()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method
