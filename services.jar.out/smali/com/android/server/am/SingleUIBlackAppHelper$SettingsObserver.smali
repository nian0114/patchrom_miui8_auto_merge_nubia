.class Lcom/android/server/am/SingleUIBlackAppHelper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SingleUIBlackAppHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SingleUIBlackAppHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/am/SingleUIBlackAppHelper;


# direct methods
.method constructor <init>(Lcom/android/server/am/SingleUIBlackAppHelper;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/android/server/am/SingleUIBlackAppHelper$SettingsObserver;->this$0:Lcom/android/server/am/SingleUIBlackAppHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/am/SingleUIBlackAppHelper$SettingsObserver;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/am/SingleUIBlackAppHelper$SettingsObserver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "single_ui_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "single_ui_black_list"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/am/SingleUIBlackAppHelper$SettingsObserver;->this$0:Lcom/android/server/am/SingleUIBlackAppHelper;

    iget-object v2, p0, Lcom/android/server/am/SingleUIBlackAppHelper$SettingsObserver;->context:Landroid/content/Context;

    # invokes: Lcom/android/server/am/SingleUIBlackAppHelper;->updateSettings(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/android/server/am/SingleUIBlackAppHelper;->access$100(Lcom/android/server/am/SingleUIBlackAppHelper;Landroid/content/Context;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/am/SingleUIBlackAppHelper$SettingsObserver;->this$0:Lcom/android/server/am/SingleUIBlackAppHelper;

    iget-object v1, p0, Lcom/android/server/am/SingleUIBlackAppHelper$SettingsObserver;->context:Landroid/content/Context;

    # invokes: Lcom/android/server/am/SingleUIBlackAppHelper;->updateSettings(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/am/SingleUIBlackAppHelper;->access$100(Lcom/android/server/am/SingleUIBlackAppHelper;Landroid/content/Context;)V

    return-void
.end method
