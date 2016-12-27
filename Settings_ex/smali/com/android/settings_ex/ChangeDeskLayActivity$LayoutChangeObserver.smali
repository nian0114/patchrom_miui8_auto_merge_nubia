.class Lcom/android/settings_ex/ChangeDeskLayActivity$LayoutChangeObserver;
.super Landroid/database/ContentObserver;
.source "ChangeDeskLayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChangeDeskLayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutChangeObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings_ex/ChangeDeskLayActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/ChangeDeskLayActivity;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/settings_ex/ChangeDeskLayActivity$LayoutChangeObserver;->this$0:Lcom/android/settings_ex/ChangeDeskLayActivity;

    .line 236
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 237
    iput-object p2, p0, Lcom/android/settings_ex/ChangeDeskLayActivity$LayoutChangeObserver;->mContext:Landroid/content/Context;

    .line 238
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 242
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 243
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity$LayoutChangeObserver;->this$0:Lcom/android/settings_ex/ChangeDeskLayActivity;

    iget-object v1, p0, Lcom/android/settings_ex/ChangeDeskLayActivity$LayoutChangeObserver;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/settings_ex/ChangeDeskLayActivity;->updateLayoutUriAndData(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/ChangeDeskLayActivity;->access$000(Lcom/android/settings_ex/ChangeDeskLayActivity;Landroid/content/Context;)V

    .line 244
    return-void
.end method

.method public registObserver(Z)V
    .locals 3
    .param p1, "regist"    # Z

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/settings_ex/ChangeDeskLayActivity$LayoutChangeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 248
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 249
    # getter for: Lcom/android/settings_ex/ChangeDeskLayActivity;->SET_LAYOUT_CHANGE:Landroid/net/Uri;
    invoke-static {}, Lcom/android/settings_ex/ChangeDeskLayActivity;->access$100()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
