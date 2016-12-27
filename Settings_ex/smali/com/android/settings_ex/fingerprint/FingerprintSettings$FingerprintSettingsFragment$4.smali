.class Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

.field final synthetic val$max:I

.field final synthetic val$maxSummary:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;ILjava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    iput p2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;->val$max:I

    iput-object p3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;->val$maxSummary:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->fingerprintCount:I
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)I

    move-result v0

    if-nez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needChangeUnlockSwitch:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$702(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Z)Z

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->chooseLockWhenAddFinger()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$800(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    .line 394
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->fingerprintCount:I
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)I

    move-result v0

    iget v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;->val$max:I

    if-lt v0, v1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;->val$maxSummary:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
