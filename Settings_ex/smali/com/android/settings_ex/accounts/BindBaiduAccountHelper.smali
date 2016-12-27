.class Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;
.super Ljava/lang/Object;
.source "BindBaiduAccountHelper.java"


# static fields
.field private static final BACKUP_SERVER_COMPONENT:Landroid/content/ComponentName;


# instance fields
.field private final conn:Landroid/content/ServiceConnection;

.field private mAccountAuthService:Lcom/android/account/IAccountAuth;

.field private mCallback:Lcom/android/account/IAccountInfoListener;

.field private final mContext:Landroid/content/Context;

.field private mExtendCallback:Lcom/android/settings_ex/accounts/ExtendCallback;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "cn.nubia.accounts"

    const-string v2, "cn.nubia.accounts.ZAccountAuthService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->BACKUP_SERVER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->BACKUP_SERVER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->mIntent:Landroid/content/Intent;

    .line 39
    new-instance v0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper$1;-><init>(Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->conn:Landroid/content/ServiceConnection;

    .line 69
    new-instance v0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper$2;-><init>(Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->mCallback:Lcom/android/account/IAccountInfoListener;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;)Lcom/android/account/IAccountAuth;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->mAccountAuthService:Lcom/android/account/IAccountAuth;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;Lcom/android/account/IAccountAuth;)Lcom/android/account/IAccountAuth;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;
    .param p1, "x1"    # Lcom/android/account/IAccountAuth;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->mAccountAuthService:Lcom/android/account/IAccountAuth;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;)Lcom/android/account/IAccountInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->mCallback:Lcom/android/account/IAccountInfoListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;)Lcom/android/settings_ex/accounts/ExtendCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->mExtendCallback:Lcom/android/settings_ex/accounts/ExtendCallback;

    return-object v0
.end method


# virtual methods
.method public bindService(Lcom/android/settings_ex/accounts/ExtendCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/settings_ex/accounts/ExtendCallback;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->mExtendCallback:Lcom/android/settings_ex/accounts/ExtendCallback;

    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->conn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 60
    return-void
.end method

.method public unbindService()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->conn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->mAccountAuthService:Lcom/android/account/IAccountAuth;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->mAccountAuthService:Lcom/android/account/IAccountAuth;

    .line 67
    :cond_0
    return-void
.end method
