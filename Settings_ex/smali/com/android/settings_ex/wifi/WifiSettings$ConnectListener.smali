.class Lcom/android/settings_ex/wifi/WifiSettings$ConnectListener;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectListener"
.end annotation


# instance fields
.field mWifiSettings:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings_ex/wifi/WifiSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 1
    .param p1, "settings"    # Lcom/android/settings_ex/wifi/WifiSettings;

    .prologue
    .line 1342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1343
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$ConnectListener;->mWifiSettings:Ljava/lang/ref/WeakReference;

    .line 1344
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 1352
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$ConnectListener;->mWifiSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/wifi/WifiSettings;

    .line 1353
    .local v1, "settings":Lcom/android/settings_ex/wifi/WifiSettings;
    if-eqz v1, :cond_0

    .line 1354
    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1355
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1356
    const v2, 0x7f0c02cb

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1361
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 1349
    return-void
.end method
