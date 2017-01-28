.class Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewPagerAdapter"
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

.field private final mContext:Landroid/content/Context;

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

.field private mHasExtendedInfo:Z

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastChosen:Landroid/content/pm/ResolveInfo;

.field private mLastChosenPosition:I

.field private final mLaunchedFromUid:I

.field private mMoreItem:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field mOrigResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V
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
    .local p3, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mLastChosenPosition:I

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mIntents:Ljava/util/List;

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mInitialIntents:[Landroid/content/Intent;

    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mBaseResolveList:Ljava/util/List;

    iput p6, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mLaunchedFromUid:I

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-boolean p7, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mFilterLastUsed:Z

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->rebuildList()V

    return-void
.end method

.method private rebuildList()V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mIntents:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mInitialIntents:[Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mBaseResolveList:Ljava/util/List;

    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mFilterLastUsed:Z

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/app/NubiaResolverController;->rebuildList(Ljava/util/ArrayList;[Landroid/content/Intent;Ljava/util/List;Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mDisplayList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mDisplayList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0}, Lcom/android/internal/app/NubiaResolverController;->getDisplayList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->onListRebuilt()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->buildViewList()V

    return-void
.end method


# virtual methods
.method buildViewList()V
    .locals 15

    .prologue
    const/16 v11, 0x10

    const/4 v14, 0x1

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mViewLists:Ljava/util/ArrayList;

    if-nez v10, :cond_0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mViewLists:Ljava/util/ArrayList;

    :cond_0
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "viewsdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;>;"
    const/4 v7, 0x0

    .local v7, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, "tempValue":I
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v11, :cond_1

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x30200fb

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .local v4, "mMoreIcon":Landroid/graphics/drawable/Drawable;
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x30c0054

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "mMoreLabel":Ljava/lang/CharSequence;
    new-instance v10, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-direct {v10, v4, v5}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iput-object v10, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mMoreItem:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mDisplayList:Ljava/util/List;

    const/16 v11, 0xf

    iget-object v12, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mMoreItem:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-interface {v10, v11, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # setter for: Lcom/android/internal/app/ResolverActivity;->mMoreDisplayFlag:Z
    invoke-static {v10, v14}, Lcom/android/internal/app/ResolverActivity;->access$102(Lcom/android/internal/app/ResolverActivity;Z)Z

    .end local v4    # "mMoreIcon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "mMoreLabel":Ljava/lang/CharSequence;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_3

    rem-int/lit8 v10, v2, 0x8

    if-nez v10, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .restart local v7    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {v3, v10}, Lcom/android/internal/app/ResolverActivity$ItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    .local v3, "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_4

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .local v8, "tmpdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x3030025

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .local v1, "gridview":Landroid/widget/GridView;
    new-instance v0, Lcom/android/internal/app/ResolverActivity$GridViewAdapter;

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v11, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v10, v11, v8, v12}, Lcom/android/internal/app/ResolverActivity$GridViewAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/LayoutInflater;)V

    .local v0, "gridAdapter":Lcom/android/internal/app/ResolverActivity$GridViewAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/GridView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, v14}, Landroid/widget/GridView;->setChoiceMode(I)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "gridAdapter":Lcom/android/internal/app/ResolverActivity$GridViewAdapter;
    .end local v1    # "gridview":Landroid/widget/GridView;
    .end local v8    # "tmpdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    :cond_4
    return-void
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    .end local p1    # "view":Landroid/view/View;
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method display(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "viewsdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .local v3, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .local v2, "sb":Ljava/lang/StringBuffer;
    const-string v4, "[\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "j":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getViewPagerHeight()I
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v7, -0x2

    .local v7, "totalHeight":I
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "size":I
    :goto_0
    if-ge v4, v6, :cond_2

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .local v2, "gridview":Landroid/widget/GridView;
    invoke-virtual {v2}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$GridViewAdapter;

    .local v1, "gridAdapter":Lcom/android/internal/app/ResolverActivity$GridViewAdapter;
    const/4 v8, 0x0

    invoke-virtual {v1, v12, v8, v2}, Lcom/android/internal/app/ResolverActivity$GridViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "ItemView":Landroid/view/View;
    invoke-virtual {v0, v12, v12}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .local v3, "height":I
    move v7, v3

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v8}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v13, :cond_0

    if-gt v6, v13, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$GridViewAdapter;->getCount()I

    move-result v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    .local v5, "raw":I
    mul-int v7, v3, v5

    .end local v5    # "raw":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v7, v3, 0x2

    .end local v0    # "ItemView":Landroid/view/View;
    .end local v1    # "gridAdapter":Lcom/android/internal/app/ResolverActivity$GridViewAdapter;
    .end local v2    # "gridview":Landroid/widget/GridView;
    .end local v3    # "height":I
    :cond_2
    return v7
.end method

.method public handlePackagesChanged()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->rebuildList()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    invoke-virtual {v0}, Lcom/android/internal/app/NubiaResolverController;->getDisplayInfoCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_0
    return-void
.end method

.method public hasExtendedInfo()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mHasExtendedInfo:Z

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    .end local p1    # "view":Landroid/view/View;
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/ViewPager;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ViewPagerAdapter;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onListRebuilt()V
    .locals 0

    .prologue
    return-void
.end method
