.class Lcom/android/settings_ex/applications/PackageMonitor$2;
.super Ljava/lang/Object;
.source "PackageMonitor.java"

# interfaces
.implements Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/PackageMonitor;->onPackageChanged(Ljava/lang/String;)V
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
    .line 291
    iput-object p1, p0, Lcom/android/settings_ex/applications/PackageMonitor$2;->this$0:Lcom/android/settings_ex/applications/PackageMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/settings_ex/applications/PackageMonitor$2;->this$0:Lcom/android/settings_ex/applications/PackageMonitor;

    # invokes: Lcom/android/settings_ex/applications/PackageMonitor;->enSureDefaultIsSet()V
    invoke-static {v0}, Lcom/android/settings_ex/applications/PackageMonitor;->access$000(Lcom/android/settings_ex/applications/PackageMonitor;)V

    .line 299
    return-void
.end method

.method public onFinishTask()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method
