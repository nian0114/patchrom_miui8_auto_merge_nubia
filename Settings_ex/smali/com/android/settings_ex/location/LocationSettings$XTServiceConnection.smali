.class Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XTServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/location/LocationSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/location/LocationSettings;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/location/LocationSettings;Lcom/android/settings_ex/location/LocationSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/location/LocationSettings;
    .param p2, "x1"    # Lcom/android/settings_ex/location/LocationSettings$1;

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;-><init>(Lcom/android/settings_ex/location/LocationSettings;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 191
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    invoke-static {p2}, Lcom/android/location/XT/IXTSrv$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/location/XT/IXTSrv;

    move-result-object v4

    # setter for: Lcom/android/settings_ex/location/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v3, v4}, Lcom/android/settings_ex/location/LocationSettings;->access$302(Lcom/android/settings_ex/location/LocationSettings;Lcom/android/location/XT/IXTSrv;)Lcom/android/location/XT/IXTSrv;

    .line 192
    const-string v3, "LocationSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected, service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # getter for: Lcom/android/settings_ex/location/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v5}, Lcom/android/settings_ex/location/LocationSettings;->access$300(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/location/XT/IXTSrv;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # getter for: Lcom/android/settings_ex/location/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v3}, Lcom/android/settings_ex/location/LocationSettings;->access$300(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/location/XT/IXTSrv;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 195
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # getter for: Lcom/android/settings_ex/location/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v3}, Lcom/android/settings_ex/location/LocationSettings;->access$300(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/location/XT/IXTSrv;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/location/XT/IXTSrv;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "izatMenuTitle":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # getter for: Lcom/android/settings_ex/location/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v3}, Lcom/android/settings_ex/location/LocationSettings;->access$300(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/location/XT/IXTSrv;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/location/XT/IXTSrv;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "izatSubtitle":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # getter for: Lcom/android/settings_ex/location/LocationSettings;->mIZat:Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings_ex/location/LocationSettings;->access$000(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # getter for: Lcom/android/settings_ex/location/LocationSettings;->mIZat:Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings_ex/location/LocationSettings;->access$000(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    if-eqz v2, :cond_0

    .line 201
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # getter for: Lcom/android/settings_ex/location/LocationSettings;->mIZat:Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings_ex/location/LocationSettings;->access$000(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;

    move-result-object v3

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # getter for: Lcom/android/settings_ex/location/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v3}, Lcom/android/settings_ex/location/LocationSettings;->access$300(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/location/XT/IXTSrv;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # getter for: Lcom/android/settings_ex/location/LocationSettings;->mCallback:Lcom/android/location/XT/IXTSrvCb;
    invoke-static {v4}, Lcom/android/settings_ex/location/LocationSettings;->access$400(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/location/XT/IXTSrvCb;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/location/XT/IXTSrv;->registerCallback(Lcom/android/location/XT/IXTSrvCb;)V

    .line 205
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # getter for: Lcom/android/settings_ex/location/LocationSettings;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    invoke-static {v3}, Lcom/android/settings_ex/location/LocationSettings;->access$500(Lcom/android/settings_ex/location/LocationSettings;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v1    # "izatMenuTitle":Ljava/lang/String;
    .end local v2    # "izatSubtitle":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LocationSettings"

    const-string v4, "Failed connecting service!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # getter for: Lcom/android/settings_ex/location/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v0}, Lcom/android/settings_ex/location/LocationSettings;->access$300(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/location/XT/IXTSrv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # getter for: Lcom/android/settings_ex/location/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v0}, Lcom/android/settings_ex/location/LocationSettings;->access$300(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/location/XT/IXTSrv;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # getter for: Lcom/android/settings_ex/location/LocationSettings;->mCallback:Lcom/android/location/XT/IXTSrvCb;
    invoke-static {v1}, Lcom/android/settings_ex/location/LocationSettings;->access$400(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/location/XT/IXTSrvCb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/location/XT/IXTSrv;->unregisterCallback(Lcom/android/location/XT/IXTSrvCb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/location/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v0, v1}, Lcom/android/settings_ex/location/LocationSettings;->access$302(Lcom/android/settings_ex/location/LocationSettings;Lcom/android/location/XT/IXTSrv;)Lcom/android/location/XT/IXTSrv;

    .line 226
    :cond_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    goto :goto_0
.end method
