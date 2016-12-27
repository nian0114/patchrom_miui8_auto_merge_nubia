.class final Lcom/android/settings_ex/DataUsageSummary$16;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1959
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    const v4, 0x7f0c0854

    .line 1962
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1964
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1967
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1968
    .local v0, "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1969
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1970
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1973
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1974
    .restart local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string v3, "data_usage_enable_mobile"

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1975
    const v3, 0x7f0c087f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1976
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1977
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1980
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1981
    .restart local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string v3, "data_usage_disable_mobile_limit"

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1982
    const v3, 0x7f0c0874

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1983
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1984
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1987
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1988
    .restart local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string v3, "data_usage_cycle"

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1989
    const v3, 0x7f0c085b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1990
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1991
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1993
    return-object v2
.end method
