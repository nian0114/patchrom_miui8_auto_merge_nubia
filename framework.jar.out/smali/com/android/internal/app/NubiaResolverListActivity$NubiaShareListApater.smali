.class Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;
.super Landroid/widget/BaseAdapter;
.source "NubiaResolverListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NubiaResolverListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NubiaShareListApater"
.end annotation


# instance fields
.field private mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterLastUsed:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/internal/app/NubiaResolverListActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/NubiaResolverListActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "launchedFromUid"    # I
    .param p7, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p3, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->this$0:Lcom/android/internal/app/NubiaResolverListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 251
    # setter for: Lcom/android/internal/app/NubiaResolverListActivity;->mIntents:Ljava/util/List;
    invoke-static {p1, p3}, Lcom/android/internal/app/NubiaResolverListActivity;->access$002(Lcom/android/internal/app/NubiaResolverListActivity;Ljava/util/List;)Ljava/util/List;

    .line 252
    iput-object p4, p0, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->mInitialIntents:[Landroid/content/Intent;

    .line 253
    iput-object p5, p0, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->mBaseResolveList:Ljava/util/List;

    .line 254
    # setter for: Lcom/android/internal/app/NubiaResolverListActivity;->mLaunchedFromUid:I
    invoke-static {p1, p6}, Lcom/android/internal/app/NubiaResolverListActivity;->access$102(Lcom/android/internal/app/NubiaResolverListActivity;I)I

    .line 255
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->mInflater:Landroid/view/LayoutInflater;

    .line 256
    iput-boolean p7, p0, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->mFilterLastUsed:Z

    .line 257
    invoke-direct {p0}, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->rebuildList()V

    .line 258
    return-void
.end method

.method private final bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/NubiaResolverListActivity$ViewHolder;

    .line 310
    .local v0, "holder":Lcom/android/internal/app/NubiaResolverListActivity$ViewHolder;
    iget-object v1, v0, Lcom/android/internal/app/NubiaResolverListActivity$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    instance-of v1, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    new-instance v1, Lcom/android/internal/app/NubiaResolverListActivity$LoadAdapterIconTask;

    iget-object v2, p0, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->this$0:Lcom/android/internal/app/NubiaResolverListActivity;

    invoke-direct {v1, v2, p2, p0}, Lcom/android/internal/app/NubiaResolverListActivity$LoadAdapterIconTask;-><init>(Lcom/android/internal/app/NubiaResolverListActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/BaseAdapter;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/NubiaResolverListActivity$LoadAdapterIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 317
    :cond_0
    iget-object v1, v0, Lcom/android/internal/app/NubiaResolverListActivity$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    return-void
.end method

.method private rebuildList()V
    .locals 5

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->this$0:Lcom/android/internal/app/NubiaResolverListActivity;

    iget-object v1, v0, Lcom/android/internal/app/NubiaResolverListActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->this$0:Lcom/android/internal/app/NubiaResolverListActivity;

    # getter for: Lcom/android/internal/app/NubiaResolverListActivity;->mIntents:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/NubiaResolverListActivity;->access$000(Lcom/android/internal/app/NubiaResolverListActivity;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->mInitialIntents:[Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->mBaseResolveList:Ljava/util/List;

    iget-boolean v4, p0, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->mFilterLastUsed:Z

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/app/NubiaResolverController;->rebuildList(Ljava/util/ArrayList;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->this$0:Lcom/android/internal/app/NubiaResolverListActivity;

    iget-object v0, v0, Lcom/android/internal/app/NubiaResolverListActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0}, Lcom/android/internal/app/NubiaResolverController;->getDisplayList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->mDisplayList:Ljava/util/List;

    .line 265
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 287
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 293
    if-nez p2, :cond_1

    .line 294
    iget-object v2, p0, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->this$0:Lcom/android/internal/app/NubiaResolverListActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x3030027

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 296
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/android/internal/app/NubiaResolverListActivity$ViewHolder;

    invoke-direct {v0, v1}, Lcom/android/internal/app/NubiaResolverListActivity$ViewHolder;-><init>(Landroid/view/View;)V

    .line 297
    .local v0, "holder":Lcom/android/internal/app/NubiaResolverListActivity$ViewHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 301
    .end local v0    # "holder":Lcom/android/internal/app/NubiaResolverListActivity$ViewHolder;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->mDisplayList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 304
    :cond_0
    return-object v1

    .line 299
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    move-object v1, p2

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public handlePackagesChanged()V
    .locals 1

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->rebuildList()V

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->notifyDataSetChanged()V

    .line 270
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->this$0:Lcom/android/internal/app/NubiaResolverListActivity;

    iget-object v0, v0, Lcom/android/internal/app/NubiaResolverListActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0}, Lcom/android/internal/app/NubiaResolverController;->getDisplayInfoCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->this$0:Lcom/android/internal/app/NubiaResolverListActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/NubiaResolverListActivity;->finish()V

    .line 273
    :cond_0
    return-void
.end method
