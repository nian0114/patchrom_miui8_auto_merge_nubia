.class Lcom/android/settings_ex/msim/NBMTKMsimPresenter$1;
.super Landroid/os/Handler;
.source "NBMTKMsimPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/msim/NBMTKMsimPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/msim/NBMTKMsimPresenter;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/msim/NBMTKMsimPresenter;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$1;->this$0:Lcom/android/settings_ex/msim/NBMTKMsimPresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 31
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 37
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$1;->this$0:Lcom/android/settings_ex/msim/NBMTKMsimPresenter;

    # invokes: Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->onCardStateModified()V
    invoke-static {v0}, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->access$000(Lcom/android/settings_ex/msim/NBMTKMsimPresenter;)V

    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter$1;->this$0:Lcom/android/settings_ex/msim/NBMTKMsimPresenter;

    iget-object v0, v0, Lcom/android/settings_ex/msim/NBMTKMsimPresenter;->mMsimView:Lcom/android/settings_ex/msim/INBMsimView;

    invoke-interface {v0}, Lcom/android/settings_ex/msim/INBMsimView;->dismissMaskDialog()V

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
