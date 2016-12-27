.class public final Lcom/android/settings_ex/wifi/WifiAttentionDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiAttentionDialog.java"


# static fields
.field public static ADDNETWORK_SSID_EXTRA:Ljava/lang/String;


# instance fields
.field private mSsid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "addnetwork_ssid"

    sput-object v0, Lcom/android/settings_ex/wifi/WifiAttentionDialog;->ADDNETWORK_SSID_EXTRA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createDialog()V
    .locals 5

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiAttentionDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 34
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0c0f73

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiAttentionDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 35
    const v1, 0x7f0c0f74

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiAttentionDialog;->mSsid:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/wifi/WifiAttentionDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 36
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiAttentionDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 38
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiAttentionDialog;->setupAlert()V

    .line 39
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiAttentionDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 27
    .local v0, "i":Landroid/content/Intent;
    sget-object v1, Lcom/android/settings_ex/wifi/WifiAttentionDialog;->ADDNETWORK_SSID_EXTRA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiAttentionDialog;->mSsid:Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiAttentionDialog;->createDialog()V

    .line 30
    return-void
.end method
