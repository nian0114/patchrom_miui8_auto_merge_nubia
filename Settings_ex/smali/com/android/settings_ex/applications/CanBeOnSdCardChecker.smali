.class final Lcom/android/settings_ex/applications/CanBeOnSdCardChecker;
.super Ljava/lang/Object;
.source "ManageApplications.java"


# instance fields
.field final mPm:Landroid/content/pm/IPackageManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/CanBeOnSdCardChecker;->mPm:Landroid/content/pm/IPackageManager;

    .line 109
    return-void
.end method
