.class Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$1;
.super Ljava/lang/Object;
.source "ConfirmLockPIN.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->startEnterAnimation()V
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
    .line 245
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$1;->this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$1;->this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mBlockImm:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->access$002(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;Z)Z

    .line 249
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$1;->this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    # invokes: Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->resetState()V
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->access$100(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)V

    .line 250
    return-void
.end method
