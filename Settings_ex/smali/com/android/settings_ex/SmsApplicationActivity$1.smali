.class Lcom/android/settings_ex/SmsApplicationActivity$1;
.super Ljava/lang/Object;
.source "SmsApplicationActivity.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SmsApplicationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SmsApplicationActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SmsApplicationActivity;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings_ex/SmsApplicationActivity$1;->this$0:Lcom/android/settings_ex/SmsApplicationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnNegativeButtonClick()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/SmsApplicationActivity$1;->this$0:Lcom/android/settings_ex/SmsApplicationActivity;

    # getter for: Lcom/android/settings_ex/SmsApplicationActivity;->mData:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings_ex/SmsApplicationActivity;->access$000(Lcom/android/settings_ex/SmsApplicationActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SmsApplicationActivity$1;->this$0:Lcom/android/settings_ex/SmsApplicationActivity;

    # getter for: Lcom/android/settings_ex/SmsApplicationActivity;->mLastIndex:I
    invoke-static {v0}, Lcom/android/settings_ex/SmsApplicationActivity;->access$100(Lcom/android/settings_ex/SmsApplicationActivity;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SmsApplicationActivity$1;->this$0:Lcom/android/settings_ex/SmsApplicationActivity;

    # getter for: Lcom/android/settings_ex/SmsApplicationActivity;->mLastIndex:I
    invoke-static {v0}, Lcom/android/settings_ex/SmsApplicationActivity;->access$100(Lcom/android/settings_ex/SmsApplicationActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/SmsApplicationActivity$1;->this$0:Lcom/android/settings_ex/SmsApplicationActivity;

    # getter for: Lcom/android/settings_ex/SmsApplicationActivity;->mData:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings_ex/SmsApplicationActivity;->access$000(Lcom/android/settings_ex/SmsApplicationActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/SmsApplicationActivity$1;->this$0:Lcom/android/settings_ex/SmsApplicationActivity;

    # getter for: Lcom/android/settings_ex/SmsApplicationActivity;->mData:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings_ex/SmsApplicationActivity;->access$000(Lcom/android/settings_ex/SmsApplicationActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SmsApplicationActivity$1;->this$0:Lcom/android/settings_ex/SmsApplicationActivity;

    # getter for: Lcom/android/settings_ex/SmsApplicationActivity;->mLastIndex:I
    invoke-static {v1}, Lcom/android/settings_ex/SmsApplicationActivity;->access$100(Lcom/android/settings_ex/SmsApplicationActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "app_pkname"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SmsApplicationActivity$1;->this$0:Lcom/android/settings_ex/SmsApplicationActivity;

    # getter for: Lcom/android/settings_ex/SmsApplicationActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/SmsApplicationActivity;->access$200(Lcom/android/settings_ex/SmsApplicationActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SmsApplicationActivity$1;->this$0:Lcom/android/settings_ex/SmsApplicationActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/SmsApplicationActivity;->finish()V

    .line 72
    return-void
.end method

.method public OnPositiveButtonClick()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/SmsApplicationActivity$1;->this$0:Lcom/android/settings_ex/SmsApplicationActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/SmsApplicationActivity;->finish()V

    .line 64
    return-void
.end method
