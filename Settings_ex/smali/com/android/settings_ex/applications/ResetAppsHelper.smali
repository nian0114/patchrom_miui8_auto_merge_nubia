.class public Lcom/android/settings_ex/applications/ResetAppsHelper;
.super Ljava/lang/Object;
.source "ResetAppsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final mAom:Landroid/app/AppOpsManager;

.field private final mIPm:Landroid/content/pm/IPackageManager;

.field private final mNm:Landroid/app/INotificationManager;

.field private final mNpm:Landroid/net/NetworkPolicyManager;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mResetDialog:Lcn/nubia/commonui/app/AlertDialog;


# direct methods
.method static synthetic access$000(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ResetAppsHelper;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/app/INotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ResetAppsHelper;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mNm:Landroid/app/INotificationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ResetAppsHelper;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ResetAppsHelper;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mAom:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ResetAppsHelper;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mNpm:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mResetDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eq v0, p1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ResetAppsHelper$1;-><init>(Lcom/android/settings_ex/applications/ResetAppsHelper;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mResetDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mResetDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 101
    :cond_0
    return-void
.end method
