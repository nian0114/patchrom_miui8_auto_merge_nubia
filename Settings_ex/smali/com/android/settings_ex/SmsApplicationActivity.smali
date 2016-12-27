.class public Lcom/android/settings_ex/SmsApplicationActivity;
.super Lcn/nubia/commonui/widget/NubiaDialogActivity;
.source "SmsApplicationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SmsApplicationActivity$MyAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/SimpleAdapter;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastIndex:I

.field private mListView:Landroid/widget/ListView;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;-><init>()V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/SmsApplicationActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SmsApplicationActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/SmsApplicationActivity;->mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/SmsApplicationActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SmsApplicationActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/settings_ex/SmsApplicationActivity;->mLastIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/SmsApplicationActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SmsApplicationActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/SmsApplicationActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private removeBackupAndCloud(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 115
    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 117
    .local v0, "data":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    const-string v2, "cn.nubia.databackup"

    iget-object v3, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "cn.nubia.flycow"

    iget-object v3, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.baidu.xcloud"

    iget-object v3, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "cn.nubia.zbiglauncher.preset"

    iget-object v3, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 124
    .end local v0    # "data":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_2
    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/SmsApplicationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 92
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v8

    .line 94
    .local v8, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-direct {p0, v8}, Lcom/android/settings_ex/SmsApplicationActivity;->removeBackupAndCloud(Ljava/util/Collection;)V

    .line 95
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 98
    .local v7, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, v7, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    .line 100
    .local v5, "packageName":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    .line 101
    .local v0, "appName":Ljava/lang/String;
    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 102
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    const-string v9, "app_image"

    invoke-interface {v4, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v9, "app_label"

    invoke-interface {v4, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v9, "app_pkname"

    invoke-interface {v4, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v0    # "appName":Ljava/lang/String;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_0

    .line 110
    .end local v7    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_0
    return-object v3
.end method

.method public getLastIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "pkname"    # Ljava/lang/String;

    .prologue
    .line 183
    const/4 v1, -0x1

    .line 184
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/SmsApplicationActivity;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 185
    iget-object v2, p0, Lcom/android/settings_ex/SmsApplicationActivity;->mData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "app_pkname"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    move v1, v0

    .line 184
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_1
    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 51
    const v0, 0x7f0d005c

    const v1, 0x7f0d005b

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/SmsApplicationActivity;->setThemes(II)V

    .line 52
    invoke-super {p0, p1}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/SmsApplicationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow;

    const v1, 0x7f0e0065

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 54
    const v0, 0x7f040131

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SmsApplicationActivity;->setContentView(I)V

    .line 55
    iput-object p0, p0, Lcom/android/settings_ex/SmsApplicationActivity;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {p0, v8}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v7

    .line 57
    .local v7, "componentName":Landroid/content/ComponentName;
    if-eqz v7, :cond_0

    .line 58
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SmsApplicationActivity;->mPackageName:Ljava/lang/String;

    .line 60
    :cond_0
    new-instance v0, Lcom/android/settings_ex/SmsApplicationActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SmsApplicationActivity$1;-><init>(Lcom/android/settings_ex/SmsApplicationActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SmsApplicationActivity;->setOnButtonClickListener(Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings_ex/SmsApplicationActivity;->getData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SmsApplicationActivity;->mData:Ljava/util/List;

    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/SmsApplicationActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SmsApplicationActivity;->getLastIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/SmsApplicationActivity;->mLastIndex:I

    .line 76
    const v0, 0x7f0c0496

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SmsApplicationActivity;->setTitle(I)V

    .line 77
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SmsApplicationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings_ex/SmsApplicationActivity;->mListView:Landroid/widget/ListView;

    .line 78
    new-instance v0, Lcom/android/settings_ex/SmsApplicationActivity$MyAdapter;

    iget-object v2, p0, Lcom/android/settings_ex/SmsApplicationActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/SmsApplicationActivity;->mData:Ljava/util/List;

    const v4, 0x7f040031

    new-array v5, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "app_image"

    aput-object v6, v5, v1

    const-string v1, "app_label"

    aput-object v1, v5, v8

    new-array v6, v9, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/SmsApplicationActivity$MyAdapter;-><init>(Lcom/android/settings_ex/SmsApplicationActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/settings_ex/SmsApplicationActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/SmsApplicationActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ex/SmsApplicationActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/SmsApplicationActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/SmsApplicationActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 84
    return-void

    .line 78
    :array_0
    .array-data 4
        0x7f1200c3
        0x7f1200c4
    .end array-data
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
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
    .line 195
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/android/settings_ex/SmsApplicationActivity;->mLastIndex:I

    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/SmsApplicationActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 198
    return-void
.end method
