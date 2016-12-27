.class public Lcom/android/settings_ex/dual/DualSuppportAppAdpater;
.super Landroid/widget/BaseAdapter;
.source "DualSuppportAppAdpater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/dual/DualSuppportAppAdpater$1;,
        Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;
    }
.end annotation


# instance fields
.field private mAppUtils:Lcom/android/settings_ex/dual/DualgetpkgUtils;

.field private mContext:Landroid/content/Context;

.field private mDualUtils:Lcom/android/settings_ex/dual/DualInstanceUtils;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/dual/DualApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/dual/DualApplicationInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "listData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/dual/DualApplicationInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->mInflater:Landroid/view/LayoutInflater;

    .line 31
    iput-object p2, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->mListData:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->mContext:Landroid/content/Context;

    .line 33
    iput p3, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->mUid:I

    .line 34
    new-instance v0, Lcom/android/settings_ex/dual/DualgetpkgUtils;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/dual/DualgetpkgUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->mAppUtils:Lcom/android/settings_ex/dual/DualgetpkgUtils;

    .line 35
    new-instance v0, Lcom/android/settings_ex/dual/DualInstanceUtils;

    invoke-direct {v0}, Lcom/android/settings_ex/dual/DualInstanceUtils;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->mDualUtils:Lcom/android/settings_ex/dual/DualInstanceUtils;

    .line 36
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, "count":I
    iget-object v3, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->mListData:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 42
    iget-object v3, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/dual/DualApplicationInfo;

    .line 43
    .local v0, "appInfo":Lcom/android/settings_ex/dual/DualApplicationInfo;
    invoke-virtual {v0}, Lcom/android/settings_ex/dual/DualApplicationInfo;->getItemCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 44
    goto :goto_0

    .line 46
    .end local v0    # "appInfo":Lcom/android/settings_ex/dual/DualApplicationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 47
    const/4 v1, 0x0

    .line 49
    .end local v1    # "count":I
    :cond_1
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 55
    iget-object v6, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->mListData:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->getCount()I

    move-result v6

    if-le p1, v6, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-object v5

    .line 58
    :cond_1
    const/4 v1, 0x0

    .line 59
    .local v1, "appInfoFirstIndex":I
    iget-object v6, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/dual/DualApplicationInfo;

    .line 60
    .local v0, "appInfo":Lcom/android/settings_ex/dual/DualApplicationInfo;
    invoke-virtual {v0}, Lcom/android/settings_ex/dual/DualApplicationInfo;->getItemCount()I

    move-result v4

    .line 61
    .local v4, "size":I
    sub-int v2, p1, v1

    .line 62
    .local v2, "appInfoIndex":I
    if-ge v2, v4, :cond_2

    .line 63
    invoke-virtual {v0, v2}, Lcom/android/settings_ex/dual/DualApplicationInfo;->getItem(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 65
    :cond_2
    add-int/2addr v1, v4

    .line 66
    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 72
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 77
    iget-object v6, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->mListData:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->getCount()I

    move-result v6

    if-le p1, v6, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v5

    .line 80
    :cond_1
    const/4 v1, 0x0

    .line 81
    .local v1, "appInfoFirstIndex":I
    iget-object v6, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/dual/DualApplicationInfo;

    .line 82
    .local v0, "appInfo":Lcom/android/settings_ex/dual/DualApplicationInfo;
    invoke-virtual {v0}, Lcom/android/settings_ex/dual/DualApplicationInfo;->getItemCount()I

    move-result v4

    .line 83
    .local v4, "size":I
    sub-int v2, p1, v1

    .line 84
    .local v2, "categoryIndex":I
    if-nez v2, :cond_2

    .line 85
    const/4 v5, 0x0

    goto :goto_0

    .line 87
    :cond_2
    add-int/2addr v1, v4

    .line 88
    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->getItemViewType(I)I

    move-result v1

    .line 100
    .local v1, "itemViewType":I
    packed-switch v1, :pswitch_data_0

    .line 138
    :goto_0
    return-object p2

    .line 103
    :pswitch_0
    if-nez p2, :cond_0

    .line 104
    iget-object v5, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040091

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 106
    :cond_0
    const v5, 0x7f12018a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 107
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, "itemValue":Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 112
    .end local v0    # "itemValue":Ljava/lang/String;
    .end local v3    # "textView":Landroid/widget/TextView;
    :pswitch_1
    const/4 v4, 0x0

    .line 113
    .local v4, "viewHolder":Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;
    if-nez p2, :cond_1

    .line 114
    iget-object v5, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040090

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 115
    new-instance v4, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;

    .end local v4    # "viewHolder":Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;
    invoke-direct {v4, p0, v7}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;-><init>(Lcom/android/settings_ex/dual/DualSuppportAppAdpater;Lcom/android/settings_ex/dual/DualSuppportAppAdpater$1;)V

    .line 116
    .restart local v4    # "viewHolder":Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;
    const v5, 0x7f120187

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    # setter for: Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->isDualTitle:Landroid/widget/TextView;
    invoke-static {v4, v5}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->access$102(Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 117
    const v5, 0x7f120189

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    # setter for: Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->dualAppName:Landroid/widget/TextView;
    invoke-static {v4, v5}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->access$202(Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 118
    const v5, 0x7f120186

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    # setter for: Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->dualAppIcon:Landroid/widget/ImageView;
    invoke-static {v4, v5}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->access$302(Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 119
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "pkgName":Ljava/lang/String;
    # getter for: Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->dualAppName:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->access$200(Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->mAppUtils:Lcom/android/settings_ex/dual/DualgetpkgUtils;

    invoke-virtual {v6, v2}, Lcom/android/settings_ex/dual/DualgetpkgUtils;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    # getter for: Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->dualAppIcon:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->access$300(Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->mAppUtils:Lcom/android/settings_ex/dual/DualgetpkgUtils;

    invoke-virtual {v6, v2}, Lcom/android/settings_ex/dual/DualgetpkgUtils;->getPkgDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    # getter for: Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->isDualTitle:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->access$100(Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0c0d90

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 127
    iget-object v5, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->mDualUtils:Lcom/android/settings_ex/dual/DualInstanceUtils;

    iget-object v6, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2, v6}, Lcom/android/settings_ex/dual/DualInstanceUtils;->isPackageCloned(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 128
    # getter for: Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->isDualTitle:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->access$100(Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    # getter for: Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->dualAppIcon:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->access$300(Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 130
    # getter for: Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->dualAppName:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->access$200(Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0

    .line 121
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "viewHolder":Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;
    check-cast v4, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;

    .restart local v4    # "viewHolder":Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;
    goto :goto_1

    .line 132
    .restart local v2    # "pkgName":Ljava/lang/String;
    :cond_2
    # getter for: Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->dualAppName:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->access$200(Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x3e851eb8    # 0.26f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 133
    # getter for: Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->dualAppIcon:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->access$300(Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x42

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 134
    # getter for: Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->isDualTitle:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->access$100(Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
