.class Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/ApplicationsState;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/applications/ApplicationsState;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/applications/ApplicationsState;Lcom/android/settings_ex/applications/ApplicationsState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/applications/ApplicationsState;
    .param p2, "x1"    # Lcom/android/settings_ex/applications/ApplicationsState$1;

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settings_ex/applications/ApplicationsState;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 309
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "actionStr":Ljava/lang/String;
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 311
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 312
    .local v3, "data":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 313
    .local v7, "pkgName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v8, v7}, Lcom/android/settings_ex/applications/ApplicationsState;->addPackage(Ljava/lang/String;)V

    .line 342
    .end local v3    # "data":Landroid/net/Uri;
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 315
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 316
    .restart local v3    # "data":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 317
    .restart local v7    # "pkgName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v8, v7}, Lcom/android/settings_ex/applications/ApplicationsState;->removePackage(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    .end local v3    # "data":Landroid/net/Uri;
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_2
    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 319
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 320
    .restart local v3    # "data":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 321
    .restart local v7    # "pkgName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v8, v7}, Lcom/android/settings_ex/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    goto :goto_0

    .line 322
    .end local v3    # "data":Landroid/net/Uri;
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_3
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 330
    :cond_4
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 331
    .local v6, "pkgList":[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v8, v6

    if-eqz v8, :cond_0

    .line 335
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 336
    .local v2, "avail":Z
    if-eqz v2, :cond_0

    .line 337
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v7, v1, v4

    .line 338
    .restart local v7    # "pkgName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v8, v7}, Lcom/android/settings_ex/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    .line 337
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method registerReceiver()V
    .locals 3

    .prologue
    .line 293
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 300
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    return-void
.end method

.method unregisterReceiver()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 306
    return-void
.end method
