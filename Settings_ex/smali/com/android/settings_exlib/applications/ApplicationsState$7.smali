.class final Lcom/android/settings_exlib/applications/ApplicationsState$7;
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
    .line 1264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Z
    .locals 7
    .param p1, "entry"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1274
    sget-boolean v5, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_VIRTUAL_BOX:Z

    if-nez v5, :cond_2

    .line 1275
    iget-object v5, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1277
    .local v0, "UserId":I
    :try_start_0
    invoke-static {}, Lcom/cmx/cmplus/SmartContainerManagerNative;->get()Lcom/cmx/cmplus/ISmartContainerManager;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/cmx/cmplus/ISmartContainerManager;->getContainerInfo(I)Lcom/cmx/cmplus/ContainerInfo;

    move-result-object v1

    .line 1278
    .local v1, "ci":Lcom/cmx/cmplus/ContainerInfo;
    iget v5, p0, Lcom/android/settings_exlib/applications/ApplicationsState$7;->mCurrentUser:I

    if-eq v0, v5, :cond_0

    .line 1279
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cmx/cmplus/ContainerInfo;->isVirtualBox()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 1290
    .end local v0    # "UserId":I
    .end local v1    # "ci":Lcom/cmx/cmplus/ContainerInfo;
    :cond_0
    :goto_0
    return v4

    .restart local v0    # "UserId":I
    .restart local v1    # "ci":Lcom/cmx/cmplus/ContainerInfo;
    :cond_1
    move v4, v3

    .line 1282
    goto :goto_0

    .line 1284
    .end local v1    # "ci":Lcom/cmx/cmplus/ContainerInfo;
    :catch_0
    move-exception v2

    .line 1285
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ApplicationsState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container service error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1290
    .end local v0    # "UserId":I
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v5, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    iget v6, p0, Lcom/android/settings_exlib/applications/ApplicationsState$7;->mCurrentUser:I

    if-eq v5, v6, :cond_3

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public init()V
    .locals 1

    .prologue
    .line 1268
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$7;->mCurrentUser:I

    .line 1269
    return-void
.end method
