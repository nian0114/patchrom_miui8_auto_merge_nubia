.class Lcom/android/settings_ex/DataUsageAppList$2;
.super Ljava/lang/Object;
.source "DataUsageAppList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DataUsageAppList;->initBottomView(Landroid/view/View;)V
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
    .line 187
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageAppList$2;->this$0:Lcom/android/settings_ex/DataUsageAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppList$2;->this$0:Lcom/android/settings_ex/DataUsageAppList;

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageAppList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 191
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "start"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 192
    .local v4, "start":J
    const-string v1, "end"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 193
    .local v2, "end":J
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppList$2;->this$0:Lcom/android/settings_ex/DataUsageAppList;

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageAppList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/16 v6, 0x65

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageAppList$2;->this$0:Lcom/android/settings_ex/DataUsageAppList;

    # getter for: Lcom/android/settings_ex/DataUsageAppList;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;
    invoke-static {v7}, Lcom/android/settings_ex/DataUsageAppList;->access$000(Lcom/android/settings_ex/DataUsageAppList;)Lcom/android/settings_ex/DataUsageUtilitys;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings_ex/DataUsageUtilitys;->getNetworkTemplate()Landroid/net/NetworkTemplate;

    move-result-object v7

    invoke-static {v7, v4, v5, v2, v3}, Lcom/android/settings_ex/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageAppList$2;->this$0:Lcom/android/settings_ex/DataUsageAppList;

    # getter for: Lcom/android/settings_ex/DataUsageAppList;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    invoke-static {v8}, Lcom/android/settings_ex/DataUsageAppList;->access$200(Lcom/android/settings_ex/DataUsageAppList;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 198
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppList$2;->this$0:Lcom/android/settings_ex/DataUsageAppList;

    # getter for: Lcom/android/settings_ex/DataUsageAppList;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageAppList;->access$300(Lcom/android/settings_ex/DataUsageAppList;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppList$2;->this$0:Lcom/android/settings_ex/DataUsageAppList;

    # getter for: Lcom/android/settings_ex/DataUsageAppList;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageAppList;->access$000(Lcom/android/settings_ex/DataUsageAppList;)Lcom/android/settings_ex/DataUsageUtilitys;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageUtilitys;->getAdapter()Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppList$2;->this$0:Lcom/android/settings_ex/DataUsageAppList;

    # getter for: Lcom/android/settings_ex/DataUsageAppList;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageAppList;->access$300(Lcom/android/settings_ex/DataUsageAppList;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageAppList$2;->this$0:Lcom/android/settings_ex/DataUsageAppList;

    # getter for: Lcom/android/settings_ex/DataUsageAppList;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;
    invoke-static {v6}, Lcom/android/settings_ex/DataUsageAppList;->access$000(Lcom/android/settings_ex/DataUsageAppList;)Lcom/android/settings_ex/DataUsageUtilitys;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings_ex/DataUsageUtilitys;->getAdapter()Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppList$2;->this$0:Lcom/android/settings_ex/DataUsageAppList;

    # getter for: Lcom/android/settings_ex/DataUsageAppList;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageAppList;->access$000(Lcom/android/settings_ex/DataUsageAppList;)Lcom/android/settings_ex/DataUsageUtilitys;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageUtilitys;->bindAdapter()V

    .line 202
    return-void
.end method
