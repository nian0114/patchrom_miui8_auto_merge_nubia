.class Lcn/nubia/commonui/widget/NubiaDialogActivity$2;
.super Ljava/lang/Object;
.source "NubiaDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/NubiaDialogActivity;->initDialogView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/NubiaDialogActivity;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaDialogActivity;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity$2;->this$0:Lcn/nubia/commonui/widget/NubiaDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity$2;->this$0:Lcn/nubia/commonui/widget/NubiaDialogActivity;

    # getter for: Lcn/nubia/commonui/widget/NubiaDialogActivity;->mListener:Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;
    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->access$000(Lcn/nubia/commonui/widget/NubiaDialogActivity;)Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity$2;->this$0:Lcn/nubia/commonui/widget/NubiaDialogActivity;

    # getter for: Lcn/nubia/commonui/widget/NubiaDialogActivity;->mListener:Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;
    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->access$000(Lcn/nubia/commonui/widget/NubiaDialogActivity;)Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;->OnPositiveButtonClick()V

    .line 145
    :cond_0
    return-void
.end method
