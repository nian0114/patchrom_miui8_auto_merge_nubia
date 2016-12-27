.class Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$1;
.super Landroid/os/Handler;
.source "ChooseLockPIN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$1;->this$0:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$1;->this$0:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$1;->this$0:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;->handleNext()V

    goto :goto_0
.end method
