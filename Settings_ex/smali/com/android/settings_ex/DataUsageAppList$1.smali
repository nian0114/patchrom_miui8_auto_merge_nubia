.class Lcom/android/settings_ex/DataUsageAppList$1;
.super Ljava/lang/Object;
.source "DataUsageAppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageAppList;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageAppList;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageAppList$1;->this$0:Lcom/android/settings_ex/DataUsageAppList;

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
    .line 124
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageUtilitys$AppItem;

    .line 127
    .local v0, "app":Lcom/android/settings_ex/DataUsageUtilitys$AppItem;
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageAppList$1;->this$0:Lcom/android/settings_ex/DataUsageAppList;

    # getter for: Lcom/android/settings_ex/DataUsageAppList;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageAppList;->access$000(Lcom/android/settings_ex/DataUsageAppList;)Lcom/android/settings_ex/DataUsageUtilitys;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/DataUsageUtilitys;->getUidDetailProvider()Lcom/android/settings_ex/net/UidDetailProvider;

    move-result-object v1

    .line 128
    .local v1, "provider":Lcom/android/settings_ex/net/UidDetailProvider;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageAppList$1;->this$0:Lcom/android/settings_ex/DataUsageAppList;

    # getter for: Lcom/android/settings_ex/DataUsageAppList;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageAppList;->access$000(Lcom/android/settings_ex/DataUsageAppList;)Lcom/android/settings_ex/DataUsageUtilitys;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/DataUsageUtilitys;->setCurrentApp(Lcom/android/settings_ex/DataUsageUtilitys$AppItem;)V

    .line 130
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageAppList$1;->this$0:Lcom/android/settings_ex/DataUsageAppList;

    # invokes: Lcom/android/settings_ex/DataUsageAppList;->showDataUsageAppDetail()V
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageAppList;->access$100(Lcom/android/settings_ex/DataUsageAppList;)V

    goto :goto_0
.end method
