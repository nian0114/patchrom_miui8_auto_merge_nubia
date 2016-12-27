.class Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V
    .locals 0

    .prologue
    .line 729
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 16
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 733
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    if-nez v13, :cond_0

    .line 734
    const-string v13, "BluetoothSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onClick() called for other View: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :goto_0
    return-void

    .line 738
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .line 740
    .local v3, "device":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v13}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 741
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v13

    const v14, 0x7f1200ce

    invoke-virtual {v13, v14}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v11

    check-cast v11, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    .line 744
    .local v11, "profileFragment":Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {v13}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$200(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 745
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {v13}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$200(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 746
    .local v10, "parent":Landroid/view/ViewGroup;
    if-eqz v10, :cond_1

    .line 747
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {v13}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$200(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 751
    .end local v10    # "parent":Landroid/view/ViewGroup;
    :cond_1
    if-nez v11, :cond_2

    .line 752
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v13}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 753
    .local v9, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    const v14, 0x7f04003b

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    # setter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {v13, v14}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$202(Lcom/android/settings_ex/bluetooth/BluetoothSettings;Landroid/view/View;)Landroid/view/View;

    .line 754
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v13

    const v14, 0x7f1200ce

    invoke-virtual {v13, v14}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v11

    .end local v11    # "profileFragment":Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;
    check-cast v11, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    .line 759
    .restart local v11    # "profileFragment":Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;
    const v13, 0x7f04003c

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 760
    .local v8, "header":Landroid/view/View;
    invoke-virtual {v11}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getListView()Landroid/widget/ListView;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 763
    .end local v8    # "header":Landroid/view/View;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {v13}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$200(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/view/View;

    move-result-object v6

    .line 764
    .local v6, "dialogLayout":Landroid/view/View;
    new-instance v12, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v12, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 765
    .local v12, "settingsDialog":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-virtual {v11, v3}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->setDevice(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V

    .line 766
    const v13, 0x7f12008f

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 767
    .local v4, "deviceName":Landroid/widget/EditText;
    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 769
    move-object v7, v11

    .line 770
    .local v7, "dpsFragment":Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 771
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v12, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 772
    const v13, 0x7f0c0223

    invoke-virtual {v12, v13}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 773
    const v13, 0x7f0c0138

    new-instance v14, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v6, v3, v2}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;Landroid/view/View;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;Landroid/content/Context;)V

    invoke-virtual {v12, v13, v14}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 786
    const v13, 0x7f0c0139

    new-instance v14, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3, v1, v2}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;Landroid/app/Activity;Landroid/content/Context;)V

    invoke-virtual {v12, v13, v14}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 799
    new-instance v13, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1, v7}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$3;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;Landroid/app/Activity;Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;)V

    invoke-virtual {v12, v13}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 808
    invoke-virtual {v12}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v5

    .line 809
    .local v5, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v5}, Lcn/nubia/commonui/app/AlertDialog;->create()V

    .line 810
    invoke-virtual {v5}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 811
    new-instance v13, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5$4;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;Lcn/nubia/commonui/app/AlertDialog;)V

    invoke-virtual {v4, v13}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 832
    invoke-virtual {v5}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const v14, 0x20008

    invoke-virtual {v13, v14}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0
.end method
