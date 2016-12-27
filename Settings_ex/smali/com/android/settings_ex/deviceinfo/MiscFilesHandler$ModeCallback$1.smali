.class Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$1;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;

.field final synthetic val$actionMode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;Landroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$1;->this$1:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;

    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$1;->val$actionMode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 143
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$1;->this$1:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$1;->this$1:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;

    iget-object v2, v2, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-virtual {v2}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    move v6, v3

    .line 145
    .local v6, "checked":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$1;->this$1:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v7

    .line 146
    .local v7, "lv":Landroid/widget/ListView;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$1;->this$1:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 147
    invoke-virtual {v7, v0, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    .end local v0    # "i":I
    .end local v6    # "checked":Z
    .end local v7    # "lv":Landroid/widget/ListView;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 151
    .restart local v0    # "i":I
    .restart local v6    # "checked":Z
    .restart local v7    # "lv":Landroid/widget/ListView;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$1;->this$1:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$1;->val$actionMode:Landroid/view/ActionMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 152
    return-void
.end method
