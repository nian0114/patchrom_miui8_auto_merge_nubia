.class Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;
.super Landroid/database/ContentObserver;
.source "NubiaOverlayDisplayWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NubiaOverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MutiWindowContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 822
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .line 823
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 824
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 827
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 828
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "ss_multi_window_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 830
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-virtual {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->updateSUMode()V

    .line 831
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->updateSUMode()V

    .line 841
    return-void
.end method

.method unobserve()V
    .locals 2

    .prologue
    .line 834
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 835
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 836
    return-void
.end method
