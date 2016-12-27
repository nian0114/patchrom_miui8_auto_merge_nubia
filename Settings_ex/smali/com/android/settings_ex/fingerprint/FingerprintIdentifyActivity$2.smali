.class Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$2;
.super Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
.source "FingerprintIdentifyActivity.java"


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
    .line 112
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$2;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 128
    const-string v0, "FingerprintIdentifyActivity"

    const-string v1, "onEnrollmentError ----- ********** "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 123
    const-string v0, "FingerprintIdentifyActivity"

    const-string v1, "onEnrollmentHelp ----- ********** "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public onEnrollmentProgress(I)V
    .locals 2
    .param p1, "remaining"    # I

    .prologue
    .line 116
    const-string v0, "FingerprintIdentifyActivity"

    const-string v1, "onEnrollmentProgress ----- ********** "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$2;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->startEnrollActivity()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)V

    .line 119
    return-void
.end method
