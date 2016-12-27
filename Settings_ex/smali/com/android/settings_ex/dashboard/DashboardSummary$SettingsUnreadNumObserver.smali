.class Lcom/android/settings_ex/dashboard/DashboardSummary$SettingsUnreadNumObserver;
.super Landroid/database/ContentObserver;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsUnreadNumObserver"
.end annotation


# instance fields
.field private UNREAD_NUMBER_URI:Landroid/net/Uri;

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings_ex/dashboard/DashboardSummary;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/dashboard/DashboardSummary;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$SettingsUnreadNumObserver;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummary;

    .line 382
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 377
    const-string v0, "system_update_unreadnumber"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$SettingsUnreadNumObserver;->UNREAD_NUMBER_URI:Landroid/net/Uri;

    .line 383
    iput-object p2, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$SettingsUnreadNumObserver;->context:Landroid/content/Context;

    .line 384
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 388
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 389
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$SettingsUnreadNumObserver;->UNREAD_NUMBER_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$SettingsUnreadNumObserver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "system_update_unreadnumber"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 393
    .local v0, "count":I
    const-string v1, "DashboardSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "system update unreadnumber count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$SettingsUnreadNumObserver;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings_ex/SettingsQuryUnreadName;->sendSettingsUnreadNumToLaucher(Landroid/content/Context;I)V

    .line 395
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$SettingsUnreadNumObserver;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummary;

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$SettingsUnreadNumObserver;->context:Landroid/content/Context;

    # invokes: Lcom/android/settings_ex/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/dashboard/DashboardSummary;->access$000(Lcom/android/settings_ex/dashboard/DashboardSummary;Landroid/content/Context;)V

    .line 397
    .end local v0    # "count":I
    :cond_0
    return-void
.end method

.method public registObserver(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$SettingsUnreadNumObserver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 401
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 402
    const-string v1, "system_update_unreadnumber"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
