.class final Lcom/android/settings_ex/sim/SimSettings$2;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 865
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 869
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 872
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/SearchIndexableResource;>;"
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 873
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 874
    .local v1, "sir":Landroid/provider/SearchIndexableResource;
    const v2, 0x7f080067

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 875
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    .end local v1    # "sir":Landroid/provider/SearchIndexableResource;
    :cond_0
    return-object v0
.end method
