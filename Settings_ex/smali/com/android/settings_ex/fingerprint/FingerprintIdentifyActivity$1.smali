.class Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$1;
.super Ljava/lang/Object;
.source "FingerprintIdentifyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->updateImage()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->access$000(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)V

    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mAnimationRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->access$100(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->mAnimationRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->access$100(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    return-void
.end method
