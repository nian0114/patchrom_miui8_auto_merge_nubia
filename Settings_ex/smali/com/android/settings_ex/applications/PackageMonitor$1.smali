.class Lcom/android/settings_ex/applications/PackageMonitor$1;
.super Ljava/lang/Object;
.source "PackageMonitor.java"

# interfaces
.implements Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/PackageMonitor;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/PackageMonitor;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings_ex/applications/PackageMonitor$1;->this$0:Lcom/android/settings_ex/applications/PackageMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppManager;

    iget-object v1, p0, Lcom/android/settings_ex/applications/PackageMonitor$1;->this$0:Lcom/android/settings_ex/applications/PackageMonitor;

    iget-object v1, v1, Lcom/android/settings_ex/applications/PackageMonitor;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->document:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppManager;-><init>(Landroid/content/Context;Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 126
    .local v0, "manager":Lcom/android/settings_ex/applications/DefaultAppManager;
    const-string v1, "cn.wps.moffice_eng"

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager;->setDefaultApp(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public onFinishTask()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method
