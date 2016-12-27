.class Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$MyAuthenticationCallback;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintIdentifyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAuthenticationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$MyAuthenticationCallback;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;
    .param p2, "x1"    # Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$1;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$MyAuthenticationCallback;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 154
    const-string v0, "FingerprintIdentifyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationError ------ , errString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .prologue
    .line 167
    const-string v0, "FingerprintIdentifyActivity"

    const-string v1, "onAuthenticationFailed ------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$MyAuthenticationCallback;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->startEnrollActivity()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)V

    .line 170
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 160
    const-string v0, "FingerprintIdentifyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationHelp ------ , helpString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$MyAuthenticationCallback;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->startEnrollActivity()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)V

    .line 163
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 2
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .prologue
    .line 176
    const-string v0, "FingerprintIdentifyActivity"

    const-string v1, "onAuthenticationSucceeded ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity$MyAuthenticationCallback;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->showFingerprintExistAlertDialog()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;->access$500(Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;)V

    .line 179
    return-void
.end method
