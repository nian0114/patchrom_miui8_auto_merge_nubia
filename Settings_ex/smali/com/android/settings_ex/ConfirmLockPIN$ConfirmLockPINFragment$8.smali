.class Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$8;
.super Ljava/lang/Object;
.source "ConfirmLockPIN.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->afterTextChanged(Landroid/text/Editable;)V
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
    .line 534
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$8;->this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$8;->this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    # invokes: Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->handleNext()V
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->access$1200(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)V

    .line 537
    return-void
.end method
