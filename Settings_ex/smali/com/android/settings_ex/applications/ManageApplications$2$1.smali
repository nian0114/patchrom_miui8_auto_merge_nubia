.class Lcom/android/settings_ex/applications/ManageApplications$2$1;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/ManageApplications$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/applications/ManageApplications$2;

.field final synthetic val$currentItem:I

.field final synthetic val$isNubiaSecurityExist:Z

.field final synthetic val$pop:Lcn/nubia/commonui/widget/NubiaMorePopup;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ManageApplications$2;IZLcn/nubia/commonui/widget/NubiaMorePopup;)V
    .locals 0

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$2$1;->this$1:Lcom/android/settings_ex/applications/ManageApplications$2;

    iput p2, p0, Lcom/android/settings_ex/applications/ManageApplications$2$1;->val$currentItem:I

    iput-boolean p3, p0, Lcom/android/settings_ex/applications/ManageApplications$2$1;->val$isNubiaSecurityExist:Z

    iput-object p4, p0, Lcom/android/settings_ex/applications/ManageApplications$2$1;->val$pop:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1067
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$2$1;->val$isNubiaSecurityExist:Z

    if-eqz v0, :cond_0

    .line 1068
    packed-switch p1, :pswitch_data_0

    .line 1120
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$2$1;->val$pop:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->dismiss()V

    .line 1121
    return-void

    .line 1070
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$2$1;->this$1:Lcom/android/settings_ex/applications/ManageApplications$2;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ManageApplications$2;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$1000(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/android/settings_ex/applications/ManageApplications;->launchAppOpsActivity(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$1300(Landroid/content/Context;)V

    goto :goto_0

    .line 1073
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$2$1;->this$1:Lcom/android/settings_ex/applications/ManageApplications$2;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ManageApplications$2;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$1000(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/android/settings_ex/applications/ManageApplications;->luanchAppTypeListActivity(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$1400(Landroid/content/Context;)V

    goto :goto_0

    .line 1076
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$2$1;->this$1:Lcom/android/settings_ex/applications/ManageApplications$2;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ManageApplications$2;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ManageApplications;->buildResetDialog()V

    goto :goto_0

    .line 1080
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 1082
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$2$1;->this$1:Lcom/android/settings_ex/applications/ManageApplications$2;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ManageApplications$2;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$1000(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/android/settings_ex/applications/ManageApplications;->luanchAppTypeListActivity(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$1400(Landroid/content/Context;)V

    goto :goto_0

    .line 1085
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$2$1;->this$1:Lcom/android/settings_ex/applications/ManageApplications$2;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ManageApplications$2;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ManageApplications;->buildResetDialog()V

    goto :goto_0

    .line 1068
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1080
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
