.class Lcom/android/settings_ex/applications/AppTypeListActivity$2;
.super Landroid/os/Handler;
.source "AppTypeListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/AppTypeListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/AppTypeListActivity;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$2;->this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$2;->this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;

    # invokes: Lcom/android/settings_ex/applications/AppTypeListActivity;->refreshUI()V
    invoke-static {v0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->access$300(Lcom/android/settings_ex/applications/AppTypeListActivity;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$2;->this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;

    # getter for: Lcom/android/settings_ex/applications/AppTypeListActivity;->resetBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->access$400(Lcom/android/settings_ex/applications/AppTypeListActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
