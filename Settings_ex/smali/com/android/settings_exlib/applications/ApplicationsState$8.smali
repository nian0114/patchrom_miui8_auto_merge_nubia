.class final Lcom/android/settings_exlib/applications/ApplicationsState$8;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mCurrentUser:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Z
    .locals 6
    .param p1, "entry"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 1304
    iget-object v3, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1306
    .local v0, "UserId":I
    sget-boolean v3, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_VIRTUAL_BOX:Z

    if-nez v3, :cond_0

    .line 1308
    :try_start_0
    invoke-static {}, Lcom/cmx/cmplus/SmartContainerManagerNative;->get()Lcom/cmx/cmplus/ISmartContainerManager;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/cmx/cmplus/ISmartContainerManager;->getContainerInfo(I)Lcom/cmx/cmplus/ContainerInfo;

    move-result-object v1

    .line 1309
    .local v1, "ci":Lcom/cmx/cmplus/ContainerInfo;
    iget v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState$8;->mCurrentUser:I

    if-eq v0, v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cmx/cmplus/ContainerInfo;->isVirtualBox()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1312
    const/4 v3, 0x1

    .line 1318
    .end local v1    # "ci":Lcom/cmx/cmplus/ContainerInfo;
    :goto_0
    return v3

    .line 1314
    :catch_0
    move-exception v2

    .line 1315
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ApplicationsState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container service error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 1299
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$8;->mCurrentUser:I

    .line 1300
    return-void
.end method
