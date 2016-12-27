.class Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;
.super Landroid/os/AsyncTask;
.source "AppTypeListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/AppTypeListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppLabelTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mExactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/applications/AppTypeListActivity;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;->this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/applications/AppTypeListActivity;Lcom/android/settings_ex/applications/AppTypeListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/applications/AppTypeListActivity;
    .param p2, "x1"    # Lcom/android/settings_ex/applications/AppTypeListActivity$1;

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;-><init>(Lcom/android/settings_ex/applications/AppTypeListActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 222
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 226
    iget-object v5, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;->this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;

    invoke-virtual {v5}, Lcom/android/settings_ex/applications/AppTypeListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 227
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f0a008a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "appTypeArray":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;->mExactList:Ljava/util/ArrayList;

    .line 229
    new-instance v3, Lcom/android/settings_ex/applications/DefaultAppManager;

    iget-object v5, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;->this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;

    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-direct {v3, v5, v6}, Lcom/android/settings_ex/applications/DefaultAppManager;-><init>(Landroid/content/Context;Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 230
    .local v3, "manager":Lcom/android/settings_ex/applications/DefaultAppManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 240
    :cond_0
    const/4 v5, 0x0

    return-object v5

    .line 234
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/applications/DefaultAppManager;->setType(Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 235
    new-instance v1, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;

    iget-object v5, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;->this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;

    invoke-direct {v1, v5}, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;-><init>(Lcom/android/settings_ex/applications/AppTypeListActivity;)V

    .line 236
    .local v1, "entity":Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;
    aget-object v5, v0, v2

    iput-object v5, v1, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;->defaultAppType:Ljava/lang/String;

    .line 237
    invoke-virtual {v3}, Lcom/android/settings_ex/applications/DefaultAppManager;->getDefaultAppLabel()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;->defaultAppSummary:Ljava/lang/String;

    .line 238
    iget-object v5, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;->mExactList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 222
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;->this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;

    iget-object v1, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;->mExactList:Ljava/util/ArrayList;

    # setter for: Lcom/android/settings_ex/applications/AppTypeListActivity;->mAppEntityList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/settings_ex/applications/AppTypeListActivity;->access$002(Lcom/android/settings_ex/applications/AppTypeListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppLabelTask;->this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;

    # getter for: Lcom/android/settings_ex/applications/AppTypeListActivity;->mAdapter:Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->access$500(Lcom/android/settings_ex/applications/AppTypeListActivity;)Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;->notifyDataSetChanged()V

    .line 246
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 247
    return-void
.end method
