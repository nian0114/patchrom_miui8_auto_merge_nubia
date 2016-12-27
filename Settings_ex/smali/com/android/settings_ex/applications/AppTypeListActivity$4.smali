.class Lcom/android/settings_ex/applications/AppTypeListActivity$4;
.super Ljava/lang/Object;
.source "AppTypeListActivity.java"

# interfaces
.implements Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/AppTypeListActivity;->resetToDefaults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/AppTypeListActivity;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$4;->this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .prologue
    .line 285
    new-instance v1, Lcom/android/settings_ex/applications/DefaultAppManager;

    iget-object v2, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$4;->this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;

    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/android/settings_ex/applications/DefaultAppManager;-><init>(Landroid/content/Context;Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 286
    .local v1, "manager":Lcom/android/settings_ex/applications/DefaultAppManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 287
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppUtils;->isThreadInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    :cond_0
    return-void

    .line 290
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applications/DefaultAppManager;->setType(Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 291
    invoke-virtual {v1}, Lcom/android/settings_ex/applications/DefaultAppManager;->resetToDefault()V

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onFinishTask()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$4;->this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;

    # getter for: Lcom/android/settings_ex/applications/AppTypeListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->access$700(Lcom/android/settings_ex/applications/AppTypeListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 282
    return-void
.end method
