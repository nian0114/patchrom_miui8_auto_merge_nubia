.class Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$2;
.super Ljava/lang/Object;
.source "ConfirmLockPIN.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    # invokes: Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->shouldAutoShowSoftKeyboard()Z
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->access$200(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    # invokes: Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->resetState()V
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->access$100(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)V

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->access$400(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->access$300(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
