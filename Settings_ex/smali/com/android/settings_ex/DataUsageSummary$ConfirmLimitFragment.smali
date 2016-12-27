.class public Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLimitFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1340
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 13
    .param p0, "parent"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 1345
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1382
    :cond_0
    :goto_0
    return-void

    .line 1347
    :cond_1
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary;->access$2200(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-result-object v10

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary;->access$2100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v8

    .line 1348
    .local v8, "policy":Landroid/net/NetworkPolicy;
    if-eqz v8, :cond_0

    .line 1350
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1352
    .local v9, "res":Landroid/content/res/Resources;
    iget-wide v10, v8, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-float v10, v10

    const v11, 0x3f99999a    # 1.2f

    mul-float/2addr v10, v11

    float-to-long v6, v10

    .line 1356
    .local v6, "minLimitBytes":J
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary;->access$2300(Lcom/android/settings_ex/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    .line 1357
    .local v1, "currentTab":Ljava/lang/String;
    const-string v10, "3g"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1358
    const v10, 0x7f0c0895

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1359
    .local v3, "message":Ljava/lang/CharSequence;
    const-wide v10, 0x140000000L

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1374
    .local v4, "limitBytes":J
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1375
    .local v0, "args":Landroid/os/Bundle;
    const-string v10, "message"

    invoke-virtual {v0, v10, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1376
    const-string v10, "limitBytes"

    invoke-virtual {v0, v10, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1378
    new-instance v2, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;

    invoke-direct {v2}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;-><init>()V

    .line 1379
    .local v2, "dialog":Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;
    invoke-virtual {v2, v0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1380
    const/4 v10, 0x0

    invoke-virtual {v2, p0, v10}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1381
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    const-string v11, "confirmLimit"

    invoke-virtual {v2, v10, v11}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1360
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "dialog":Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v4    # "limitBytes":J
    :cond_2
    const-string v10, "4g"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1361
    const v10, 0x7f0c0895

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1362
    .restart local v3    # "message":Ljava/lang/CharSequence;
    const-wide v10, 0x140000000L

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .restart local v4    # "limitBytes":J
    goto :goto_1

    .line 1363
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v4    # "limitBytes":J
    :cond_3
    const-string v10, "mobile"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1364
    const v10, 0x7f0c0895

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1365
    .restart local v3    # "message":Ljava/lang/CharSequence;
    const-wide v10, 0x140000000L

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .restart local v4    # "limitBytes":J
    goto :goto_1

    .line 1366
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v4    # "limitBytes":J
    :cond_4
    const-string v10, "SIM"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1367
    const v10, 0x7f0c0895

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1368
    .restart local v3    # "message":Ljava/lang/CharSequence;
    const-wide v10, 0x140000000L

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .restart local v4    # "limitBytes":J
    goto :goto_1

    .line 1371
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v4    # "limitBytes":J
    :cond_5
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown current tab: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method


# virtual methods
.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 1340
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1386
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1388
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1389
    .local v4, "message":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "limitBytes"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1391
    .local v2, "limitBytes":J
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1392
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v5, 0x7f0c0894

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1393
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1395
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment$1;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment$1;-><init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;J)V

    invoke-virtual {v0, v5, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1406
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
