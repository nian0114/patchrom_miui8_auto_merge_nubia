.class Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "errMsgId"    # I
    .param p3, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 232
    .local v0, "activity":Landroid/app/Activity;
    const-string v1, "FingerprintSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRemovalError errString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errMsgId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    if-eqz v0, :cond_0

    .line 235
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 238
    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 4
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 223
    const-string v0, "FingerprintSettingsFragment"

    const-string v1, "onRemovalSucceeded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$000(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 226
    return-void
.end method
