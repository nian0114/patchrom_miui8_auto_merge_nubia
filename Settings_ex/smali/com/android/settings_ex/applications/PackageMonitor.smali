.class public Lcom/android/settings_ex/applications/PackageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "PackageMonitor.java"


# instance fields
.field mAppearingPackages:[Ljava/lang/String;

.field mChangeType:I

.field mChangeUserId:I

.field mContext:Landroid/content/Context;

.field mDisappearingPackages:[Ljava/lang/String;

.field mModifiedPackages:[Ljava/lang/String;

.field mSomePackagesChanged:Z

.field mTempArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mChangeUserId:I

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mTempArray:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/PackageMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/PackageMonitor;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/settings_ex/applications/PackageMonitor;->enSureDefaultIsSet()V

    return-void
.end method

.method private enSureDefaultIsSet()V
    .locals 5

    .prologue
    .line 305
    new-instance v1, Lcom/android/settings_ex/applications/DefaultAppManager;

    iget-object v2, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/android/settings_ex/applications/DefaultAppManager;-><init>(Landroid/content/Context;Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 306
    .local v1, "manager":Lcom/android/settings_ex/applications/DefaultAppManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 307
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppUtils;->isThreadInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    :cond_0
    return-void

    .line 310
    :cond_1
    sget-object v2, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->message:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v3

    aget-object v3, v3, v0

    if-eq v2, v3, :cond_2

    .line 311
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applications/DefaultAppManager;->setType(Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 312
    invoke-virtual {v1}, Lcom/android/settings_ex/applications/DefaultAppManager;->enSureDefaultIsSet()V

    .line 306
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private onPackageChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 291
    new-instance v0, Lcom/android/settings_ex/applications/PackageMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/PackageMonitor$2;-><init>(Lcom/android/settings_ex/applications/PackageMonitor;)V

    .line 301
    .local v0, "callback":Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;
    invoke-static {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils;->startThread(Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;)V

    .line 302
    return-void
.end method

.method private removeDefaultPackageIfNeeded(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 318
    iget-object v4, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 319
    .local v3, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_APP_TYPE:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 320
    sget-object v4, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_APP_TYPE:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "defaultPackage":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 322
    sget-object v4, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_APP_TYPE:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 323
    new-instance v2, Lcom/android/settings_ex/applications/DefaultAppManager;

    iget-object v4, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-direct {v2, v4, v5}, Lcom/android/settings_ex/applications/DefaultAppManager;-><init>(Landroid/content/Context;Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 324
    .local v2, "manager":Lcom/android/settings_ex/applications/DefaultAppManager;
    invoke-virtual {v2}, Lcom/android/settings_ex/applications/DefaultAppManager;->resetToDefault()V

    .line 319
    .end local v2    # "manager":Lcom/android/settings_ex/applications/DefaultAppManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    .end local v0    # "defaultPackage":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 205
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "pkg":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 205
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinishPackageChanges()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 31
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 114
    const-string v2, "PackageMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPackageAppeared : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v2, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_document"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "defautDocument":Ljava/lang/String;
    const-string v2, "cn.wps.moffice_eng"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "cn.nubia.wps_moffice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    new-instance v0, Lcom/android/settings_ex/applications/PackageMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/PackageMonitor$1;-><init>(Lcom/android/settings_ex/applications/PackageMonitor;)V

    .line 129
    .local v0, "callback":Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;
    invoke-static {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils;->startThread(Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;)V

    .line 134
    .end local v0    # "callback":Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/PackageMonitor;->onPackageChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .prologue
    .line 70
    if-eqz p3, :cond_1

    .line 71
    move-object v0, p3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 72
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    const/4 v4, 0x1

    .line 77
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    return v4

    .line 71
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 105
    const-string v0, "PackageMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageDisappeared : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/PackageMonitor;->removeDefaultPackageIfNeeded(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/PackageMonitor;->onPackageChanged(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string v0, "PackageMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageModified : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/PackageMonitor;->onPackageChanged(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 37
    return-void
.end method

.method public onPackageRemovedAllUsers(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 44
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 50
    return-void
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 47
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x3

    const/16 v9, -0x2710

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 211
    iput-object p1, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mContext:Landroid/content/Context;

    .line 212
    const-string v4, "PackageMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive intent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mChangeUserId:I

    .line 215
    iget v4, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mChangeUserId:I

    if-ne v4, v9, :cond_0

    .line 216
    const-string v4, "PackageMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent broadcast does not contain user handle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_0
    return-void

    .line 219
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 220
    iput-boolean v7, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mSomePackagesChanged:Z

    .line 222
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 224
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/applications/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "pkg":Ljava/lang/String;
    const-string v4, "android.intent.extra.UID"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 229
    .local v3, "uid":I
    iput-boolean v8, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mSomePackagesChanged:Z

    .line 230
    if-eqz v2, :cond_1

    .line 231
    iget-object v4, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    .line 232
    iget-object v4, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v2, v4, v7

    .line 233
    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 234
    iget-object v4, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    .line 235
    iput v8, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mChangeType:I

    .line 236
    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/applications/PackageMonitor;->onPackageUpdateFinished(Ljava/lang/String;I)V

    .line 237
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 242
    :goto_1
    iget v4, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v2, v4}, Lcom/android/settings_ex/applications/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    .line 282
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_1
    :goto_2
    iget-boolean v4, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mSomePackagesChanged:Z

    if-eqz v4, :cond_2

    .line 283
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/PackageMonitor;->onSomePackagesChanged()V

    .line 286
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/PackageMonitor;->onFinishPackageChanges()V

    .line 287
    iput v9, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mChangeUserId:I

    goto :goto_0

    .line 239
    .restart local v2    # "pkg":Ljava/lang/String;
    .restart local v3    # "uid":I
    :cond_3
    iput v10, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mChangeType:I

    .line 240
    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/applications/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    goto :goto_1

    .line 244
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_4
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 245
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/applications/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 246
    .restart local v2    # "pkg":Ljava/lang/String;
    const-string v4, "android.intent.extra.UID"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 247
    .restart local v3    # "uid":I
    if-eqz v2, :cond_1

    .line 248
    iget-object v4, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 249
    iget-object v4, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v2, v4, v7

    .line 250
    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 251
    iput v8, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mChangeType:I

    .line 252
    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/applications/PackageMonitor;->onPackageUpdateStarted(Ljava/lang/String;I)V

    .line 264
    :cond_5
    :goto_3
    iget v4, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v2, v4}, Lcom/android/settings_ex/applications/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    goto :goto_2

    .line 254
    :cond_6
    iput v10, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mChangeType:I

    .line 258
    iput-boolean v8, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mSomePackagesChanged:Z

    .line 259
    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/applications/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 260
    const-string v4, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 261
    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/applications/PackageMonitor;->onPackageRemovedAllUsers(Ljava/lang/String;I)V

    goto :goto_3

    .line 266
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_7
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 267
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/applications/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 268
    .restart local v2    # "pkg":Ljava/lang/String;
    const-string v4, "android.intent.extra.UID"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 269
    .restart local v3    # "uid":I
    const-string v4, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "components":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 272
    iget-object v4, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    .line 273
    iget-object v4, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v2, v4, v7

    .line 274
    iput v10, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mChangeType:I

    .line 275
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/settings_ex/applications/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 276
    iput-boolean v8, p0, Lcom/android/settings_ex/applications/PackageMonitor;->mSomePackagesChanged:Z

    .line 278
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onSomePackagesChanged()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method
