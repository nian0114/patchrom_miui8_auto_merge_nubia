.class Lcom/android/server/pm/DefaultDocumentAppHelper$DefaultDocumentObserver;
.super Landroid/database/ContentObserver;
.source "DefaultDocumentAppHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/DefaultDocumentAppHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultDocumentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/DefaultDocumentAppHelper;


# direct methods
.method constructor <init>(Lcom/android/server/pm/DefaultDocumentAppHelper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/DefaultDocumentAppHelper$DefaultDocumentObserver;->this$0:Lcom/android/server/pm/DefaultDocumentAppHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/server/pm/DefaultDocumentAppHelper$DefaultDocumentObserver;->this$0:Lcom/android/server/pm/DefaultDocumentAppHelper;

    # getter for: Lcom/android/server/pm/DefaultDocumentAppHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/pm/DefaultDocumentAppHelper;->access$000(Lcom/android/server/pm/DefaultDocumentAppHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "default_document"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/server/pm/DefaultDocumentAppHelper$DefaultDocumentObserver;->this$0:Lcom/android/server/pm/DefaultDocumentAppHelper;

    # invokes: Lcom/android/server/pm/DefaultDocumentAppHelper;->updateDefaultPackage()V
    invoke-static {v0}, Lcom/android/server/pm/DefaultDocumentAppHelper;->access$100(Lcom/android/server/pm/DefaultDocumentAppHelper;)V

    return-void
.end method
