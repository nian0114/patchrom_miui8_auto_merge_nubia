.class public Lcom/android/settings_ex/wifi/WifiProgressDialog;
.super Lcn/nubia/commonui/app/ProgressDialog;
.source "WifiProgressDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSsid:Ljava/lang/String;

.field private mTracker:Lcom/android/settings_ex/wifi/WifiTracker;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/WifiTracker;Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tracker"    # Lcom/android/settings_ex/wifi/WifiTracker;
    .param p3, "lock"    # Landroid/os/PowerManager$WakeLock;
    .param p4, "ssid"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/commonui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiProgressDialog;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiProgressDialog;->mTracker:Lcom/android/settings_ex/wifi/WifiTracker;

    .line 32
    iput-object p3, p0, Lcom/android/settings_ex/wifi/WifiProgressDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 33
    iput-object p4, p0, Lcom/android/settings_ex/wifi/WifiProgressDialog;->mSsid:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiProgressDialog;)Lcom/android/settings_ex/wifi/WifiTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiProgressDialog;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiProgressDialog;->mTracker:Lcom/android/settings_ex/wifi/WifiTracker;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 39
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiProgressDialog;->setCancelable(Z)V

    .line 40
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 41
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiProgressDialog;->setProgressStyle(I)V

    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiProgressDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0b80

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiProgressDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0f75

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiProgressDialog;->mSsid:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiProgressDialog;->mContext:Landroid/content/Context;

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/wifi/WifiProgressDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiProgressDialog$1;-><init>(Lcom/android/settings_ex/wifi/WifiProgressDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/wifi/WifiProgressDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiProgressDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 52
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiProgressDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 60
    const-string v1, "WifiProgressDialog"

    const-string v2, "release attention wakelock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiProgressDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 63
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiProgressDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    invoke-super {p0}, Lcn/nubia/commonui/app/ProgressDialog;->onStop()V

    .line 69
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
