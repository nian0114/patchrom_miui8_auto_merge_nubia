.class Lcom/android/settings_ex/nfc/AndroidBeam$1;
.super Landroid/os/Handler;
.source "AndroidBeam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nfc/AndroidBeam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nfc/AndroidBeam;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nfc/AndroidBeam;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ex/nfc/AndroidBeam$1;->this$0:Lcom/android/settings_ex/nfc/AndroidBeam;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private resendMessageDelayed()V
    .locals 4

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam$1;->this$0:Lcom/android/settings_ex/nfc/AndroidBeam;

    # getter for: Lcom/android/settings_ex/nfc/AndroidBeam;->mStartShow:Z
    invoke-static {v1}, Lcom/android/settings_ex/nfc/AndroidBeam;->access$300(Lcom/android/settings_ex/nfc/AndroidBeam;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 95
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 96
    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/settings_ex/nfc/AndroidBeam$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 98
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 68
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/nfc/AndroidBeam$1;->this$0:Lcom/android/settings_ex/nfc/AndroidBeam;

    iget-object v3, p0, Lcom/android/settings_ex/nfc/AndroidBeam$1;->this$0:Lcom/android/settings_ex/nfc/AndroidBeam;

    # getter for: Lcom/android/settings_ex/nfc/AndroidBeam;->num:I
    invoke-static {v3}, Lcom/android/settings_ex/nfc/AndroidBeam;->access$000(Lcom/android/settings_ex/nfc/AndroidBeam;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x7

    # setter for: Lcom/android/settings_ex/nfc/AndroidBeam;->num:I
    invoke-static {v2, v3}, Lcom/android/settings_ex/nfc/AndroidBeam;->access$002(Lcom/android/settings_ex/nfc/AndroidBeam;I)I

    .line 72
    iget-object v2, p0, Lcom/android/settings_ex/nfc/AndroidBeam$1;->this$0:Lcom/android/settings_ex/nfc/AndroidBeam;

    # getter for: Lcom/android/settings_ex/nfc/AndroidBeam;->num:I
    invoke-static {v2}, Lcom/android/settings_ex/nfc/AndroidBeam;->access$000(Lcom/android/settings_ex/nfc/AndroidBeam;)I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 77
    iget-object v2, p0, Lcom/android/settings_ex/nfc/AndroidBeam$1;->this$0:Lcom/android/settings_ex/nfc/AndroidBeam;

    # getter for: Lcom/android/settings_ex/nfc/AndroidBeam;->mShowImageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/settings_ex/nfc/AndroidBeam;->access$100(Lcom/android/settings_ex/nfc/AndroidBeam;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/settings_ex/nfc/AndroidBeam$1;->this$0:Lcom/android/settings_ex/nfc/AndroidBeam;

    # getter for: Lcom/android/settings_ex/nfc/AndroidBeam;->mShowImageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/settings_ex/nfc/AndroidBeam;->access$100(Lcom/android/settings_ex/nfc/AndroidBeam;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/nfc/AndroidBeam$1;->this$0:Lcom/android/settings_ex/nfc/AndroidBeam;

    # getter for: Lcom/android/settings_ex/nfc/AndroidBeam;->showimgs:[I
    invoke-static {v3}, Lcom/android/settings_ex/nfc/AndroidBeam;->access$200(Lcom/android/settings_ex/nfc/AndroidBeam;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/nfc/AndroidBeam$1;->this$0:Lcom/android/settings_ex/nfc/AndroidBeam;

    # getter for: Lcom/android/settings_ex/nfc/AndroidBeam;->num:I
    invoke-static {v4}, Lcom/android/settings_ex/nfc/AndroidBeam;->access$000(Lcom/android/settings_ex/nfc/AndroidBeam;)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 82
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    .local v0, "curretTimeMillis":J
    iget-object v2, p0, Lcom/android/settings_ex/nfc/AndroidBeam$1;->this$0:Lcom/android/settings_ex/nfc/AndroidBeam;

    iget-wide v2, v2, Lcom/android/settings_ex/nfc/AndroidBeam;->mLastUpdataTimeMillis:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x320

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/android/settings_ex/nfc/AndroidBeam$1;->this$0:Lcom/android/settings_ex/nfc/AndroidBeam;

    # operator++ for: Lcom/android/settings_ex/nfc/AndroidBeam;->num:I
    invoke-static {v2}, Lcom/android/settings_ex/nfc/AndroidBeam;->access$008(Lcom/android/settings_ex/nfc/AndroidBeam;)I

    .line 85
    iget-object v2, p0, Lcom/android/settings_ex/nfc/AndroidBeam$1;->this$0:Lcom/android/settings_ex/nfc/AndroidBeam;

    iput-wide v0, v2, Lcom/android/settings_ex/nfc/AndroidBeam;->mLastUpdataTimeMillis:J

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/nfc/AndroidBeam$1;->resendMessageDelayed()V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
