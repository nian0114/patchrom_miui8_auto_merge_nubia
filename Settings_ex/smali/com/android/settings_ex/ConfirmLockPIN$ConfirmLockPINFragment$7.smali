.class Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$7;
.super Ljava/lang/Object;
.source "ConfirmLockPIN.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;
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
    .line 494
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$7;->this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment$7;->this$0:Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;->access$1100(Lcom/android/settings_ex/ConfirmLockPIN$ConfirmLockPINFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    return-void
.end method
