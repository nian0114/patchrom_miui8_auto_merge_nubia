.class Lcom/android/internal/app/ResolverActivity$ItemClickListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v6}, Lcom/android/internal/app/ResolverActivity;->readCheckedPosFromSharedPreferences()I

    move-result v0

    .local v0, "checkedPos":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_1

    move v1, v4

    .local v1, "hasValidSelection":Z
    :goto_0
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v6, p1, p3}, Lcom/android/internal/app/ResolverActivity;->getRealPosition(Landroid/widget/AdapterView;I)I

    move-result v3

    .local v3, "realPosition":I
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z
    invoke-static {v6}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mLastSelected:I
    invoke-static {v6}, Lcom/android/internal/app/ResolverActivity;->access$400(Lcom/android/internal/app/ResolverActivity;)I

    move-result v6

    if-eq v6, v3, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V
    invoke-static {v5, v1, v3, v4}, Lcom/android/internal/app/ResolverActivity;->access$500(Lcom/android/internal/app/ResolverActivity;ZIZ)V

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # setter for: Lcom/android/internal/app/ResolverActivity;->mLastSelected:I
    invoke-static {v4, v3}, Lcom/android/internal/app/ResolverActivity;->access$402(Lcom/android/internal/app/ResolverActivity;I)I

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4, v3}, Lcom/android/internal/app/ResolverActivity;->writeCheckedPosToSharedPreferences(I)V

    return-void

    .end local v1    # "hasValidSelection":Z
    .end local v3    # "realPosition":I
    :cond_1
    move v1, v5

    goto :goto_0

    .restart local v1    # "hasValidSelection":Z
    .restart local v3    # "realPosition":I
    :cond_2
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mMoreDisplayFlag:Z
    invoke-static {v6}, Lcom/android/internal/app/ResolverActivity;->access$100(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0xf

    if-ne v6, v3, :cond_3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.INTENT"

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$700(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    const-class v5, Lcom/android/internal/app/NubiaResolverListActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_1

    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v6, v3, v5, v4}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, v4, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v4}, Lcom/android/internal/app/NubiaResolverController;->getDisplayList()Ljava/util/List;

    move-result-object v5

    add-int/lit8 v4, v3, -0x1

    const/4 v6, 0x2

    if-ge v4, v6, :cond_4

    move v4, v3

    :goto_2
    invoke-static {v5, v4, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v5, v5, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v5}, Lcom/android/internal/app/NubiaResolverController;->getDisplayList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/app/ResolverActivity;->saveDisplayListSort(Ljava/util/List;)V

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v3, -0x1

    goto :goto_2
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    return v0
.end method
