.class public final Lcom/android/settings_ex/wifi/WifiNoInternetDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiNoInternetDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAlwaysAllow:Landroid/widget/CheckBox;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiNoInternetDialog;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiNoInternetDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method private createDialog()V
    .locals 5

    .prologue
    .line 116
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const v4, 0x7f02014b

    invoke-virtual {v3, v4}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 119
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 120
    const v3, 0x7f0c02c8

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 121
    const v3, 0x7f0c0064

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 122
    const v3, 0x7f0c0065

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 123
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 124
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 127
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x1090031

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 129
    .local v1, "checkbox":Landroid/view/View;
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 131
    const v3, 0x1020304

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mAlwaysAllow:Landroid/widget/CheckBox;

    .line 132
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mAlwaysAllow:Landroid/widget/CheckBox;

    const v4, 0x7f0c02c9

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->setupAlert()V

    .line 135
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 147
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    const/4 v0, 0x1

    .line 148
    .local v0, "accept":Z
    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "Connect"

    .line 149
    .local v1, "action":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mAlwaysAllow:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 151
    .local v2, "always":Z
    packed-switch p2, :pswitch_data_0

    .line 160
    :goto_2
    return-void

    .line 147
    .end local v0    # "accept":Z
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "always":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    .restart local v0    # "accept":Z
    :cond_1
    const-string v1, "Ignore"

    goto :goto_1

    .line 154
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v2    # "always":Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v3, v4, v0, v2}, Landroid/net/ConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 155
    const-string v4, "WifiNoInternetDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " network="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_2

    const-string v3, " and remember"

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v3, ""

    goto :goto_3

    .line 151
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 56
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.conn.PROMPT_UNVALIDATED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "netId"

    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 59
    :cond_0
    const-string v4, "WifiNoInternetDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exiting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->finish()V

    .line 113
    :goto_0
    return-void

    .line 65
    :cond_1
    :try_start_0
    new-instance v4, Landroid/net/Network;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/net/Network;-><init>(I)V

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    if-nez v4, :cond_2

    .line 71
    const-string v4, "WifiNoInternetDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t determine network from \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' , exiting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->finish()V

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    goto :goto_1

    .line 78
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    .line 79
    .local v3, "request":Landroid/net/NetworkRequest;
    new-instance v4, Lcom/android/settings_ex/wifi/WifiNoInternetDialog$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/wifi/WifiNoInternetDialog$1;-><init>(Lcom/android/settings_ex/wifi/WifiNoInternetDialog;)V

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 98
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    .line 99
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v4, v3, v5}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 101
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 102
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_4

    .line 103
    :cond_3
    const-string v4, "WifiNoInternetDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not connected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->finish()V

    goto/16 :goto_0

    .line 107
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    .line 108
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 109
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    const-string v5, "^\"|\"$"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    .line 112
    :cond_5
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->createDialog()V

    goto/16 :goto_0

    .line 66
    .end local v2    # "ni":Landroid/net/NetworkInfo;
    .end local v3    # "request":Landroid/net/NetworkRequest;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 143
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 144
    return-void
.end method
