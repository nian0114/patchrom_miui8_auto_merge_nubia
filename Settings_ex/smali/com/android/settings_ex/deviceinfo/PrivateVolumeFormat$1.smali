.class Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat$1;
.super Ljava/lang/Object;
.source "PrivateVolumeFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat$1;->this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat$1;->this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat$1;->this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;

    # getter for: Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;->mDisk:Landroid/os/storage/DiskInfo;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;->access$000(Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;)Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v1, "format_private"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    const-string v1, "forget_uuid"

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat$1;->this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;

    # getter for: Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;->mVolume:Landroid/os/storage/VolumeInfo;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;->access$100(Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat$1;->this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;->startActivity(Landroid/content/Intent;)V

    .line 72
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat$1;->this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 73
    return-void
.end method
