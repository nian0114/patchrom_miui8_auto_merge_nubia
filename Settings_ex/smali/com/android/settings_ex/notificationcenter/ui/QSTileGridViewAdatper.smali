.class Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;
.super Landroid/widget/BaseAdapter;
.source "QSTileGridViewAdatper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mDataSourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "dataSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;->mDataSourceList:Ljava/util/List;

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;->inflater:Landroid/view/LayoutInflater;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;->mDataSourceList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;->mDataSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;->mDataSourceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 39
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "viewholder":Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;
    if-nez p2, :cond_0

    .line 46
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040159

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 48
    new-instance v0, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;

    .end local v0    # "viewholder":Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;
    invoke-direct {v0, p0, p2}, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;-><init>(Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;Landroid/view/View;)V

    .line 49
    .restart local v0    # "viewholder":Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;->mDataSourceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;->update(Ljava/util/HashMap;I)V

    .line 54
    return-object p2

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "viewholder":Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;
    check-cast v0, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;

    .restart local v0    # "viewholder":Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;
    goto :goto_0
.end method
