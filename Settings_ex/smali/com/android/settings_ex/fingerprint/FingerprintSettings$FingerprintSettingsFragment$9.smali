.class Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$9;
.super Ljava/lang/Thread;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->runOnOtherThread()V
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
    .line 801
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$9;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 805
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 806
    const-string v1, "FingerprintSettingsFragment"

    const-string v2, "pre postEnroll  "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$9;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$1000(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    move-result v0

    .line 808
    .local v0, "result":I
    const-string v1, "FingerprintSettingsFragment"

    const-string v2, "after postEnroll  "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    if-gez v0, :cond_0

    .line 810
    const-string v1, "FingerprintSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postEnroll failed: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_0
    return-void
.end method
