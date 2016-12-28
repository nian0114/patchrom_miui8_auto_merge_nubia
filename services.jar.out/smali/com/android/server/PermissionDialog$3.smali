.class Lcom/android/server/PermissionDialog$3;
.super Landroid/os/Handler;
.source "PermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PermissionDialog;


# direct methods
.method constructor <init>(Lcom/android/server/PermissionDialog;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private appSupportsRuntimePermissions()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .local v3, "result":Z
    iget-object v4, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/PermissionDialog;->access$300(Lcom/android/server/PermissionDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/PermissionDialog;->access$800(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2200

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x16

    if-le v4, v5, :cond_1

    const/4 v3, 0x1

    :cond_0
    :goto_1
    return v3

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "PermissionDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/PermissionDialog;->access$800(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getRequestedPermissions(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/PermissionDialog;->access$300(Lcom/android/server/PermissionDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x1000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRequested(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "requestedPermissions"    # [Ljava/lang/String;

    .prologue
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, "requestedPermission":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .end local v3    # "requestedPermission":Ljava/lang/String;
    :goto_1
    return v4

    .restart local v3    # "requestedPermission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "requestedPermission":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isSystemApp()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .local v3, "result":Z
    iget-object v4, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/PermissionDialog;->access$300(Lcom/android/server/PermissionDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/PermissionDialog;->access$800(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2200

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_2

    :cond_0
    const/4 v3, 0x1

    :cond_1
    :goto_1
    return v3

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "PermissionDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/PermissionDialog;->access$800(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private linkingGreatPermission([Ljava/lang/String;I)V
    .locals 18
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    const/4 v7, 0x1

    .local v7, "isSetIgnored":Z
    const/4 v6, 0x1

    .local v6, "isSetAsked":Z
    move-object/from16 v0, p1

    array-length v15, v0

    new-array v10, v15, [I

    .local v10, "ops":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v15, v0

    if-ge v3, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v15}, Lcom/android/server/PermissionDialog;->access$900(Lcom/android/server/PermissionDialog;)Landroid/app/AppOpsManager;

    aget-object v15, p1, v3

    invoke-static {v15}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v15

    aput v15, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v15}, Lcom/android/server/PermissionDialog;->access$900(Lcom/android/server/PermissionDialog;)Landroid/app/AppOpsManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/PermissionDialog;->mUid:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/PermissionDialog;->access$700(Lcom/android/server/PermissionDialog;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/PermissionDialog;->access$800(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1, v10}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v12

    .local v12, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    .local v11, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$OpEntry;

    .local v9, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v15, 0x1

    :goto_2
    and-int/2addr v7, v15

    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/PermissionDialog;->mModeAsk:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/PermissionDialog;->access$1000(Lcom/android/server/PermissionDialog;)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    const/4 v15, 0x1

    :goto_3
    and-int/2addr v6, v15

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    goto :goto_3

    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v11    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/server/PermissionDialog;->access$800(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/PermissionDialog$3;->getRequestedPermissions(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .local v14, "requestedPermissions":[Ljava/lang/String;
    move-object/from16 v2, p1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_4
    if-ge v4, v8, :cond_5

    aget-object v13, v2, v4

    .local v13, "permission":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/PermissionDialog$3;->isRequested(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    .end local v13    # "permission":Ljava/lang/String;
    :cond_5
    return-void

    .restart local v13    # "permission":Ljava/lang/String;
    :cond_6
    if-nez v7, :cond_7

    if-eqz v6, :cond_8

    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/android/server/PermissionDialog$3;->setGreatPermissionModeIgnoreFixed(ILjava/lang/String;)V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/PermissionDialog$3;->setGreatPermissionModeAllowFixed(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private notifyOperation(IZ)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "remember"    # Z

    .prologue
    :try_start_0
    const-string v3, "com.android.server.AppOpsService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "AppOpsService":Ljava/lang/Class;
    const-string v3, "notifyOperation"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, "notifyOperation":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mService:Lcom/android/server/AppOpsService;
    invoke-static {v3}, Lcom/android/server/PermissionDialog;->access$500(Lcom/android/server/PermissionDialog;)Lcom/android/server/AppOpsService;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mCode:I
    invoke-static {v6}, Lcom/android/server/PermissionDialog;->access$600(Lcom/android/server/PermissionDialog;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mUid:I
    invoke-static {v6}, Lcom/android/server/PermissionDialog;->access$700(Lcom/android/server/PermissionDialog;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/PermissionDialog;->access$800(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "AppOpsService":Ljava/lang/Class;
    .end local v2    # "notifyOperation":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setGreatPermissionModeAllowFixed(Ljava/lang/String;)V
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/PermissionDialog;->access$300(Lcom/android/server/PermissionDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/PermissionDialog;->access$800(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v2}, Lcom/android/server/PermissionDialog;->access$1100(Lcom/android/server/PermissionDialog;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    const/4 v3, 0x3

    .local v3, "flagMask":I
    iget-object v1, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/PermissionDialog;->access$800(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v1}, Lcom/android/server/PermissionDialog;->access$1100(Lcom/android/server/PermissionDialog;)Landroid/os/UserHandle;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    return-void
.end method

.method private setGreatPermissionModeIgnoreFixed(ILjava/lang/String;)V
    .locals 6
    .param p1, "currentModeFixed"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    iget-object v1, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/PermissionDialog;->access$300(Lcom/android/server/PermissionDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/PermissionDialog;->access$800(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v2}, Lcom/android/server/PermissionDialog;->access$1100(Lcom/android/server/PermissionDialog;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/PermissionDialog;->access$800(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v1}, Lcom/android/server/PermissionDialog;->access$1100(Lcom/android/server/PermissionDialog;)Landroid/os/UserHandle;

    move-result-object v5

    move-object v1, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-void
.end method

.method private setSmallPermissionFixed(ILjava/lang/String;)V
    .locals 6
    .param p1, "currentModeFixed"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/server/PermissionDialog;->access$1200(Lcom/android/server/PermissionDialog;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/PermissionDialog;->access$800(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v1}, Lcom/android/server/PermissionDialog;->access$1100(Lcom/android/server/PermissionDialog;)Landroid/os/UserHandle;

    move-result-object v5

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/server/PermissionDialog;->access$1200(Lcom/android/server/PermissionDialog;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/PermissionDialog;->access$800(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v1}, Lcom/android/server/PermissionDialog;->access$1100(Lcom/android/server/PermissionDialog;)Landroid/os/UserHandle;

    move-result-object v5

    move-object v1, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private tryToLinkingGreatPermission(I)V
    .locals 9
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/PermissionDialog$3;->isSystemApp()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/PermissionDialog$3;->appSupportsRuntimePermissions()Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v0, Lcom/android/server/PermissionDialog;->PERMISSION_HAS_CHILDREN:[[Ljava/lang/String;

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v7, v0, v3

    .local v7, "permissions":[Ljava/lang/String;
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v5, :cond_3

    aget-object v6, v1, v2

    .local v6, "permission":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v8}, Lcom/android/server/PermissionDialog;->access$900(Lcom/android/server/PermissionDialog;)Landroid/app/AppOpsManager;

    iget-object v8, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mCode:I
    invoke-static {v8}, Lcom/android/server/PermissionDialog;->access$600(Lcom/android/server/PermissionDialog;)I

    move-result v8

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-direct {p0, v7, p1}, Lcom/android/server/PermissionDialog$3;->linkingGreatPermission([Ljava/lang/String;I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v6    # "permission":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_1

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "permissions":[Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v8}, Lcom/android/server/PermissionDialog;->access$900(Lcom/android/server/PermissionDialog;)Landroid/app/AppOpsManager;

    iget-object v8, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mCode:I
    invoke-static {v8}, Lcom/android/server/PermissionDialog;->access$600(Lcom/android/server/PermissionDialog;)I

    move-result v8

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcom/android/server/PermissionDialog$3;->setSmallPermissionFixed(ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x3e8

    const/16 v9, 0xf

    const/16 v8, 0x8

    iget-object v3, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mChoice:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/server/PermissionDialog;->access$100(Lcom/android/server/PermissionDialog;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .local v2, "remember":Z
    const/4 v0, 0x0

    .local v0, "isTimeDown":Z
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    const/4 v1, 0x1

    .local v1, "mode":I
    const/4 v2, 0x0

    :goto_0
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PermissionDialog;->access$000(Lcom/android/server/PermissionDialog;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PermissionDialog;->access$000(Lcom/android/server/PermissionDialog;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, v1, v2}, Lcom/android/server/PermissionDialog$3;->notifyOperation(IZ)V

    iget-object v3, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    invoke-virtual {v3}, Lcom/android/server/PermissionDialog;->dismiss()V

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/PermissionDialog$3;->tryToLinkingGreatPermission(I)V

    :cond_0
    return-void

    .end local v1    # "mode":I
    :sswitch_0
    const/4 v1, 0x0

    .restart local v1    # "mode":I
    goto :goto_0

    .end local v1    # "mode":I
    :sswitch_1
    const/4 v1, 0x1

    .restart local v1    # "mode":I
    goto :goto_0

    .end local v1    # "mode":I
    :sswitch_2
    const/4 v1, 0x1

    .restart local v1    # "mode":I
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # operator-- for: Lcom/android/server/PermissionDialog;->mCountDown:I
    invoke-static {v3}, Lcom/android/server/PermissionDialog;->access$210(Lcom/android/server/PermissionDialog;)I

    iget-object v3, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mCountDown:I
    invoke-static {v3}, Lcom/android/server/PermissionDialog;->access$200(Lcom/android/server/PermissionDialog;)I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PermissionDialog;->access$000(Lcom/android/server/PermissionDialog;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PermissionDialog;->access$000(Lcom/android/server/PermissionDialog;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    iget-object v3, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mCancel:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/server/PermissionDialog;->access$400(Lcom/android/server/PermissionDialog;)Landroid/widget/Button;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/PermissionDialog;->access$300(Lcom/android/server/PermissionDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x30c004e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mCountDown:I
    invoke-static {v7}, Lcom/android/server/PermissionDialog;->access$200(Lcom/android/server/PermissionDialog;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PermissionDialog;->access$000(Lcom/android/server/PermissionDialog;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PermissionDialog$3;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PermissionDialog;->access$000(Lcom/android/server/PermissionDialog;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .end local v1    # "mode":I
    :sswitch_3
    const/4 v1, 0x1

    .restart local v1    # "mode":I
    const/4 v2, 0x0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_3
        0xf -> :sswitch_2
    .end sparse-switch
.end method
