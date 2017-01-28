.class public Lcn/nubia/server/appmgmt/CABCController;
.super Ljava/lang/Object;
.source "CABCController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;,
        Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;,
        Lcn/nubia/server/appmgmt/CABCController$RemoveStackRunnable;,
        Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;,
        Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;,
        Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;,
        Lcn/nubia/server/appmgmt/CABCController$XmlData;
    }
.end annotation


# static fields
.field private static final ATTR_APP_MODE:Ljava/lang/String; = "app_mode"

.field private static final ATTR_APP_NAME:Ljava/lang/String; = "app_name"

.field private static final ATTR_DEFAULT_MODE:Ljava/lang/String; = "default_mode"

.field private static final CABC_DEFAULT_MODE:I = 0x1b

.field private static final CABC_MANAGER_FILE:Ljava/lang/String; = "security_cabc_manager.xml"

.field private static final CABC_MOVING_IMAGE:I = 0x1a

.field private static final CABC_OFF:I = 0x17

.field private static final CABC_STILL_IMAGE:I = 0x19

.field private static final CABC_UI_IMAGE:I = 0x18

.field private static final NUBIA_CABC_CONTROL_URI:Ljava/lang/String; = "content://cn.nubia.security.power/cabc_control_table"

.field private static final TABLE_CABC_MODE_COLUMN:Ljava/lang/String; = "mode"

.field private static final TABLE_CABC_PKG_COLUMN:Ljava/lang/String; = "package"

.field private static final TABLE_CABC_TYPE_COLUMN:Ljava/lang/String; = "type"

.field private static final TABLE_TYPE_VALUE_APP:Ljava/lang/String; = "app"

.field private static final TABLE_TYPE_VALUE_DEFAULT:Ljava/lang/String; = "default"

.field private static final TAG:Ljava/lang/String; = "CABCController"

.field private static final TAG_APP_SETTING:Ljava/lang/String; = "app_setting"

.field private static final TAG_DEFAULT_SETTING:Ljava/lang/String; = "default_setting"

.field private static final TAG_SETTINGS:Ljava/lang/String; = "settings"


# instance fields
.field private mAdjustCABCRunnable:Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;

.field private mAppCABCModes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppCABCModesLock:Ljava/lang/Object;

.field private mCABCFile:Ljava/io/File;

.field private mCABCSettingFile:Ljava/io/File;

.field private mContext:Landroid/content/Context;

.field private mDefaultCABCMode:I

.field private mDumpDebugLog:Z

.field private mExecutingMagicBookAnimation:Z

.field private mHandler:Landroid/os/Handler;

.field private mQueryCABCRunnable:Ljava/lang/Runnable;

.field private mResumedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mScreenStateReceiver:Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;

.field private mStatusBarExpanding:Z

.field private mSupportCABCControl:Z

.field private mXmlOperator:Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mResumedPackages:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    const/16 v0, 0x19

    iput v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDefaultCABCMode:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModesLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/kernel/lcd_enhance/cabc"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mCABCFile:Ljava/io/File;

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mScreenOn:Z

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mStatusBarExpanding:Z

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mExecutingMagicBookAnimation:Z

    new-instance v0, Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;-><init>(Lcn/nubia/server/appmgmt/CABCController;Lcn/nubia/server/appmgmt/CABCController$1;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAdjustCABCRunnable:Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;

    new-instance v0, Lcn/nubia/server/appmgmt/CABCController$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/CABCController$1;-><init>(Lcn/nubia/server/appmgmt/CABCController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mQueryCABCRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcn/nubia/server/appmgmt/CABCController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mCABCFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    if-eqz v0, :cond_1

    const-string v0, "security_cabc_manager.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mCABCSettingFile:Ljava/io/File;

    new-instance v0, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mCABCSettingFile:Ljava/io/File;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;-><init>(Lcn/nubia/server/appmgmt/CABCController;Ljava/io/File;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mXmlOperator:Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/CABCController;->initSettings()V

    new-instance v0, Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;-><init>(Lcn/nubia/server/appmgmt/CABCController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mScreenStateReceiver:Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$1100(Lcn/nubia/server/appmgmt/CABCController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController;

    .prologue
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/CABCController;->loadCABCFromNubiaDb()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/CABCController;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/CABCController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mResumedPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/CABCController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController;

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$402(Lcn/nubia/server/appmgmt/CABCController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/CABCController;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/CABCController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController;

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/CABCController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController;

    .prologue
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/CABCController;->adjustCABCMode()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/CABCController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/CABCController;)Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAdjustCABCRunnable:Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/server/appmgmt/CABCController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private adjustCABCMode()V
    .locals 10

    .prologue
    const/16 v9, 0x1b

    const/16 v0, 0x1b

    .local v0, "bestMode":I
    iget-object v5, p0, Lcn/nubia/server/appmgmt/CABCController;->mResumedPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .local v4, "stackId":I
    iget-object v5, p0, Lcn/nubia/server/appmgmt/CABCController;->mResumedPackages:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "name":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModesLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "mode":I
    if-ge v2, v0, :cond_0

    move v0, v2

    .end local v2    # "mode":I
    :cond_0
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "stackId":I
    :cond_1
    iget-boolean v5, p0, Lcn/nubia/server/appmgmt/CABCController;->mStatusBarExpanding:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcn/nubia/server/appmgmt/CABCController;->mScreenOn:Z

    if-eqz v5, :cond_4

    const/16 v5, 0x18

    if-ge v5, v0, :cond_2

    const/16 v0, 0x18

    :cond_2
    :goto_1
    iget-boolean v5, p0, Lcn/nubia/server/appmgmt/CABCController;->mExecutingMagicBookAnimation:Z

    if-eqz v5, :cond_3

    const/16 v0, 0x18

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcn/nubia/server/appmgmt/CABCController;->mExecutingMagicBookAnimation:Z

    :cond_3
    iget-boolean v5, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcn/nubia/server/appmgmt/CABCController;->mResumedPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_7

    iget-object v5, p0, Lcn/nubia/server/appmgmt/CABCController;->mResumedPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .restart local v4    # "stackId":I
    iget-object v5, p0, Lcn/nubia/server/appmgmt/CABCController;->mResumedPackages:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .restart local v3    # "name":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModesLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    iget-object v5, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .restart local v2    # "mode":I
    const-string v5, "CABCController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "choosing CABC mode. stack id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", candidate "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " needs mode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "mode":I
    :goto_3
    monitor-exit v6

    goto :goto_2

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5

    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "stackId":I
    :cond_4
    const/16 v0, 0x18

    goto/16 :goto_1

    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "stackId":I
    :cond_5
    :try_start_2
    const-string v5, "CABCController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "choosing CABC mode. stack id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", candidate "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doesn\'t have mode request"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "stackId":I
    :cond_6
    if-ne v0, v9, :cond_9

    const-string v5, "CABCController"

    const-string v6, "Decide to use default CABC mode"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    if-ne v0, v9, :cond_a

    iget-boolean v5, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    if-eqz v5, :cond_8

    const-string v5, "CABCController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set CABC mode to default "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcn/nubia/server/appmgmt/CABCController;->mDefaultCABCMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget v5, p0, Lcn/nubia/server/appmgmt/CABCController;->mDefaultCABCMode:I

    invoke-direct {p0, v5}, Lcn/nubia/server/appmgmt/CABCController;->setCABCMode(I)V

    :goto_5
    return-void

    :cond_9
    const-string v5, "CABCController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Decide to use CABC mode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    iget-boolean v5, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    if-eqz v5, :cond_b

    const-string v5, "CABCController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set CABC mode to default "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/CABCController;->setCABCMode(I)V

    goto :goto_5
.end method

.method private initSettings()V
    .locals 2

    .prologue
    const-string v1, "security_cabc_manager.xml"

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mXmlOperator:Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/CABCController$XmlData;

    .local v0, "data":Lcn/nubia/server/appmgmt/CABCController$XmlData;
    if-eqz v0, :cond_0

    # getter for: Lcn/nubia/server/appmgmt/CABCController$XmlData;->value:I
    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController$XmlData;->access$000(Lcn/nubia/server/appmgmt/CABCController$XmlData;)I

    move-result v1

    iput v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mDefaultCABCMode:I

    # getter for: Lcn/nubia/server/appmgmt/CABCController$XmlData;->array:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController$XmlData;->access$100(Lcn/nubia/server/appmgmt/CABCController$XmlData;)Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    .end local v0    # "data":Lcn/nubia/server/appmgmt/CABCController$XmlData;
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/CABCController;->loadCABCFromNubiaDb()V

    goto :goto_0
.end method

.method private loadCABCFromNubiaDb()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/CABCController;->loadCABCSettings()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/CABCController;->loadDefaultSettings()V

    :cond_0
    return-void
.end method

.method private loadCABCSettings()Z
    .locals 18

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/appmgmt/CABCController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "content://cn.nubia.security.power/cabc_control_table"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .local v7, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    if-nez v7, :cond_2

    const/4 v2, 0x0

    if-eqz v7, :cond_0

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v7    # "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v2

    .restart local v7    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v16

    .local v16, "x2":Ljava/lang/Throwable;
    :try_start_2
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v7    # "c":Landroid/database/Cursor;
    .end local v16    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    const-string v2, "CABCController"

    const-string v3, "fail read from database"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v7    # "c":Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :cond_2
    :try_start_4
    const-string v2, "type"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .local v15, "typeIndex":I
    const-string v2, "package"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .local v13, "pkgIndex":I
    const-string v2, "mode"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .local v11, "modeIndex":I
    const/4 v2, -0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .local v8, "cacheModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .local v14, "type":Ljava/lang/String;
    const-string v2, "default"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .local v10, "mode":I
    move-object/from16 v0, p0

    iput v10, v0, Lcn/nubia/server/appmgmt/CABCController;->mDefaultCABCMode:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .end local v8    # "cacheModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "mode":I
    .end local v11    # "modeIndex":I
    .end local v13    # "pkgIndex":I
    .end local v14    # "type":Ljava/lang/String;
    .end local v15    # "typeIndex":I
    :catch_2
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v3

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    :goto_2
    if-eqz v7, :cond_4

    if-eqz v3, :cond_9

    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    :goto_3
    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .restart local v8    # "cacheModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11    # "modeIndex":I
    .restart local v13    # "pkgIndex":I
    .restart local v14    # "type":Ljava/lang/String;
    .restart local v15    # "typeIndex":I
    :cond_5
    :try_start_8
    const-string v2, "app"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .local v12, "pkg":Ljava/lang/String;
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .restart local v10    # "mode":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v8    # "cacheModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "mode":I
    .end local v11    # "modeIndex":I
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "pkgIndex":I
    .end local v14    # "type":Ljava/lang/String;
    .end local v15    # "typeIndex":I
    :catchall_1
    move-exception v2

    goto :goto_2

    .restart local v8    # "cacheModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11    # "modeIndex":I
    .restart local v13    # "pkgIndex":I
    .restart local v15    # "typeIndex":I
    :cond_6
    move-object/from16 v0, p0

    iput-object v8, v0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v7, :cond_7

    if-eqz v3, :cond_8

    :try_start_9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModesLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/appmgmt/CABCController;->mXmlOperator:Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;

    new-instance v4, Lcn/nubia/server/appmgmt/CABCController$XmlData;

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/server/appmgmt/CABCController;->mDefaultCABCMode:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcn/nubia/server/appmgmt/CABCController$XmlData;-><init>(Lcn/nubia/server/appmgmt/CABCController;ILandroid/util/ArrayMap;)V

    invoke-virtual {v2, v4}, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_3
    move-exception v16

    .restart local v16    # "x2":Ljava/lang/Throwable;
    :try_start_b
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v16    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .end local v8    # "cacheModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "modeIndex":I
    .end local v13    # "pkgIndex":I
    .end local v15    # "typeIndex":I
    :catch_4
    move-exception v16

    .restart local v16    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v16    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_3

    .restart local v8    # "cacheModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11    # "modeIndex":I
    .restart local v13    # "pkgIndex":I
    .restart local v15    # "typeIndex":I
    :catchall_2
    move-exception v2

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v2
.end method

.method private loadDefaultSettings()V
    .locals 4

    .prologue
    const/16 v0, 0x19

    iput v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDefaultCABCMode:I

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "cn.nubia.gallery3d"

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "cn.nubia.photoeditor"

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.android.systemui"

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "cn.nubia.minilauncher"

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "cn.nubia.video"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.qiyi.video"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "tv.pps.mobile"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.letv.android.client"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.letv.android.client.pad"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.ifeng.newvideo"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.cmcc.cmvideo"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.tudou.android"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.sohu.sohuvideo"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.baidu.video"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.tencent.qqlive"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.funshion.video.mobile"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.yingshi2345"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.qihoo.video"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.letv.android.client.samsungpad"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.pplive.androidphone"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.android.gallery3d"

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.baidu.cloud.gallery"

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "cn.bluecrane.album"

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.photosoft.android.tool0822"

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "cn.nubia.accounts"

    const/16 v3, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "cn.nubia.setupwizard"

    const/16 v3, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.android.provision"

    const/16 v3, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private readCurrentMode()I
    .locals 8

    .prologue
    const/16 v5, 0x1b

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/CABCController;->mCABCFile:Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-eqz v0, :cond_0

    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "CABCController"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v6, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_1
    move v4, v5

    goto :goto_0

    :catch_2
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .end local v2    # "line":Ljava/lang/String;
    :catch_3
    move-exception v4

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v6

    move-object v7, v6

    move-object v6, v4

    move-object v4, v7

    :goto_2
    if-eqz v0, :cond_5

    if-eqz v6, :cond_6

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :cond_5
    :goto_3
    :try_start_9
    throw v4

    :catch_4
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v4

    goto :goto_2
.end method

.method private setCABCMode(I)V
    .locals 8
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/CABCController;->readCurrentMode()I

    move-result v1

    .local v1, "currentCABCMode":I
    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    if-eqz v4, :cond_2

    const-string v4, "CABCController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "real set CABC mode to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/CABCController;->mCABCFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    if-eqz v5, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "CABCController"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_2
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_1
    if-eqz v0, :cond_4

    if-eqz v5, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    :goto_2
    :try_start_7
    throw v4

    :catch_3
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public dumpListArray(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const-string v2, "==========managed CABC apps=========="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModesLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default mode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcn/nubia/server/appmgmt/CABCController;->mDefaultCABCMode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "pkg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : mode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public noteActivityStackRemoved(I)V
    .locals 3
    .param p1, "stackId"    # I

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    const-string v0, "CABCController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity stack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/CABCController$RemoveStackRunnable;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/CABCController$RemoveStackRunnable;-><init>(Lcn/nubia/server/appmgmt/CABCController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public noteAppTransitionAnimation(Z)V
    .locals 4
    .param p1, "execute"    # Z

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_2

    const-string v0, "CABCController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute app transition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mAdjustCABCRunnable:Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public noteMagicBookAnimation(Z)V
    .locals 4
    .param p1, "execute"    # Z

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_2

    const-string v0, "CABCController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "magic book animation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mExecutingMagicBookAnimation:Z

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mAdjustCABCRunnable:Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    const-string v0, "CABCController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pausing activity, stack id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;

    invoke-direct {v1, p0, p2, p3}, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/CABCController;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    const-string v0, "CABCController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumed app die, stack id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;

    invoke-direct {v1, p0, p2, p3}, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/CABCController;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z

    .prologue
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    if-eqz v1, :cond_2

    const-string v1, "CABCController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resuming activity, stack id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;

    invoke-direct {v0, p0, p2, p3, p5}, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/CABCController;ILjava/lang/String;Z)V

    .local v0, "nrar":Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public noteStatusBarExpanding(Z)V
    .locals 3
    .param p1, "expanding"    # Z

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    const-string v0, "CABCController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status bar expanding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/CABCController;->mStatusBarExpanding:Z

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mAdjustCABCRunnable:Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setDebugLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    return-void
.end method

.method public updateNubiaData()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mQueryCABCRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mQueryCABCRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
