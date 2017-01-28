.class Lcom/android/internal/app/NubiaResolverListActivity$ItemClickListener;
.super Ljava/lang/Object;
.source "NubiaResolverListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NubiaResolverListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/NubiaResolverListActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/NubiaResolverListActivity;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/NubiaResolverListActivity$ItemClickListener;->this$0:Lcom/android/internal/app/NubiaResolverListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity$ItemClickListener;->this$0:Lcom/android/internal/app/NubiaResolverListActivity;

    iget-object v0, v0, Lcom/android/internal/app/NubiaResolverListActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p3, v1, v2}, Lcom/android/internal/app/NubiaResolverController;->startSelected(IZZ)V

    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity$ItemClickListener;->this$0:Lcom/android/internal/app/NubiaResolverListActivity;

    iget-object v0, v0, Lcom/android/internal/app/NubiaResolverListActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0}, Lcom/android/internal/app/NubiaResolverController;->getDisplayList()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v0, p3, -0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    move v0, p3

    :goto_0
    invoke-static {v1, v0, p3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity$ItemClickListener;->this$0:Lcom/android/internal/app/NubiaResolverListActivity;

    iget-object v0, v0, Lcom/android/internal/app/NubiaResolverListActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    iget-object v1, p0, Lcom/android/internal/app/NubiaResolverListActivity$ItemClickListener;->this$0:Lcom/android/internal/app/NubiaResolverListActivity;

    iget-object v1, v1, Lcom/android/internal/app/NubiaResolverListActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v1}, Lcom/android/internal/app/NubiaResolverController;->getDisplayList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NubiaResolverController;->saveDisplayListSort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity$ItemClickListener;->this$0:Lcom/android/internal/app/NubiaResolverListActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/NubiaResolverListActivity;->finish()V

    return-void

    :cond_0
    add-int/lit8 v0, p3, -0x1

    goto :goto_0
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
