.class Lcn/nubia/commonui/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/app/AlertController;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/app/AlertController;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController$1;->this$0:Lcn/nubia/commonui/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$1;->this$0:Lcn/nubia/commonui/app/AlertController;

    # getter for: Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcn/nubia/commonui/app/AlertController;->access$000(Lcn/nubia/commonui/app/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$1;->this$0:Lcn/nubia/commonui/app/AlertController;

    # getter for: Lcn/nubia/commonui/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcn/nubia/commonui/app/AlertController;->access$100(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$1;->this$0:Lcn/nubia/commonui/app/AlertController;

    # getter for: Lcn/nubia/commonui/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcn/nubia/commonui/app/AlertController;->access$100(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 139
    .local v0, "m":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 144
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$1;->this$0:Lcn/nubia/commonui/app/AlertController;

    # getter for: Lcn/nubia/commonui/app/AlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcn/nubia/commonui/app/AlertController;->access$700(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController$1;->this$0:Lcn/nubia/commonui/app/AlertController;

    # getter for: Lcn/nubia/commonui/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v3}, Lcn/nubia/commonui/app/AlertController;->access$600(Lcn/nubia/commonui/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 146
    return-void

    .line 131
    .end local v0    # "m":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$1;->this$0:Lcn/nubia/commonui/app/AlertController;

    # getter for: Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcn/nubia/commonui/app/AlertController;->access$200(Lcn/nubia/commonui/app/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$1;->this$0:Lcn/nubia/commonui/app/AlertController;

    # getter for: Lcn/nubia/commonui/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcn/nubia/commonui/app/AlertController;->access$300(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$1;->this$0:Lcn/nubia/commonui/app/AlertController;

    # getter for: Lcn/nubia/commonui/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcn/nubia/commonui/app/AlertController;->access$300(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0

    .line 133
    .end local v0    # "m":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$1;->this$0:Lcn/nubia/commonui/app/AlertController;

    # getter for: Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v1}, Lcn/nubia/commonui/app/AlertController;->access$400(Lcn/nubia/commonui/app/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$1;->this$0:Lcn/nubia/commonui/app/AlertController;

    # getter for: Lcn/nubia/commonui/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcn/nubia/commonui/app/AlertController;->access$500(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 134
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$1;->this$0:Lcn/nubia/commonui/app/AlertController;

    # getter for: Lcn/nubia/commonui/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcn/nubia/commonui/app/AlertController;->access$500(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0

    .line 136
    .end local v0    # "m":Landroid/os/Message;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0
.end method
