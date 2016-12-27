.class public Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WarningEditorFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1472
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 1476
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1485
    :goto_0
    return-void

    .line 1478
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1479
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "template"

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary;->access$2100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1481
    new-instance v1, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;-><init>()V

    .line 1482
    .local v1, "dialog":Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1483
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1484
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "warningEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 1472
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;
    .locals 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1489
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 1490
    .local v9, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/DataUsageSummary;

    .line 1491
    .local v7, "target":Lcom/android/settings_ex/DataUsageSummary;
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;
    invoke-static {v7}, Lcom/android/settings_ex/DataUsageSummary;->access$2200(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-result-object v5

    .line 1493
    .local v5, "editor":Lcom/android/settings_ex/net/NetworkPolicyEditor;
    new-instance v8, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v8, v9}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1494
    .local v8, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-virtual {v8}, Lcn/nubia/commonui/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 1496
    .local v10, "dialogInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04006c

    const/4 v3, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v2, v3, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 1497
    .local v14, "view":Landroid/view/View;
    const v2, 0x7f12012a

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    .line 1499
    .local v4, "bytesPicker":Landroid/widget/NumberPicker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "template"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkTemplate;

    .line 1500
    .local v6, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5, v6}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v16

    .line 1501
    .local v16, "warningBytes":J
    invoke-virtual {v5, v6}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v12

    .line 1503
    .local v12, "limitBytes":J
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1504
    const-wide/32 v2, 0x100000

    div-long v2, v12, v2

    long-to-int v2, v2

    const-wide/32 v18, 0x100000

    div-long v18, v16, v18

    move-wide/from16 v0, v18

    long-to-int v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1505
    .local v11, "max":I
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-eqz v2, :cond_1

    .line 1506
    const/4 v2, 0x1

    if-le v11, v2, :cond_0

    .line 1507
    const-wide/32 v2, 0x100000

    div-long v2, v12, v2

    long-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1514
    :goto_0
    const-wide/32 v2, 0x100000

    div-long v2, v16, v2

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1515
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1517
    const v2, 0x7f0c0892

    invoke-virtual {v8, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1518
    invoke-virtual {v8, v14}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1520
    const v15, 0x7f0c0891

    new-instance v2, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment$1;-><init>(Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings_ex/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings_ex/DataUsageSummary;)V

    invoke-virtual {v8, v15, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1533
    invoke-virtual {v8}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 1509
    :cond_0
    const-wide/32 v2, 0x100000

    div-long v2, v16, v2

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 1512
    :cond_1
    const v2, 0x7fffffff

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0
.end method
