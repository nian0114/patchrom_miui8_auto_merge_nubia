.class Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$3;
.super Ljava/lang/Object;
.source "FingerprintIdentifyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->showFingerprintExistAlertDialog()V
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
    .line 213
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->startAuthenticate()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->access$600(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)V

    .line 217
    return-void
.end method
