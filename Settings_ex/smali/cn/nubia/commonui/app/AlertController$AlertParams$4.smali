.class Lcn/nubia/commonui/app/AlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/app/AlertController$AlertParams;->createListView(Lcn/nubia/commonui/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/app/AlertController$AlertParams;

.field final synthetic val$dialog:Lcn/nubia/commonui/app/AlertController;

.field final synthetic val$listView:Lcn/nubia/commonui/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/app/AlertController$AlertParams;Lcn/nubia/commonui/app/AlertController$RecycleListView;Lcn/nubia/commonui/app/AlertController;)V
    .locals 0

    .prologue
    .line 966
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$4;->this$0:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$4;->val$listView:Lcn/nubia/commonui/app/AlertController$RecycleListView;

    iput-object p3, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$4;->val$dialog:Lcn/nubia/commonui/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 969
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$4;->this$0:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v0, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$4;->this$0:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v0, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$4;->val$listView:Lcn/nubia/commonui/app/AlertController$RecycleListView;

    invoke-virtual {v1, p3}, Lcn/nubia/commonui/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 972
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$4;->this$0:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v0, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$4;->val$dialog:Lcn/nubia/commonui/app/AlertController;

    # getter for: Lcn/nubia/commonui/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcn/nubia/commonui/app/AlertController;->access$600(Lcn/nubia/commonui/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$4;->val$listView:Lcn/nubia/commonui/app/AlertController$RecycleListView;

    invoke-virtual {v2, p3}, Lcn/nubia/commonui/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 974
    return-void
.end method
