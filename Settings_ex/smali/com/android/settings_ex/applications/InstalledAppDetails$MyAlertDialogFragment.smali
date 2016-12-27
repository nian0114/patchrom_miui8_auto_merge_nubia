.class public Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyAlertDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1187
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(II)Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;
    .locals 3
    .param p0, "id"    # I
    .param p1, "moveErrorCode"    # I

    .prologue
    .line 1191
    new-instance v1, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;-><init>()V

    .line 1192
    .local v1, "frag":Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1193
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1194
    const-string v2, "moveError"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1195
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1196
    return-object v1
.end method


# virtual methods
.method getOwner()Lcom/android/settings_ex/applications/InstalledAppDetails;
    .locals 1

    .prologue
    .line 1200
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/InstalledAppDetails;

    return-object v0
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 1187
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0c054e

    const/4 v9, 0x0

    const v6, 0x7f0c054d

    const v8, 0x7f0c054c

    .line 1205
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1206
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "moveError"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1207
    .local v1, "moveErrorCode":I
    packed-switch v0, :pswitch_data_0

    .line 1381
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1209
    :pswitch_0
    new-instance v3, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c054a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c054b

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$1;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v3, v8, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v9}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v3

    .line 1361
    :goto_0
    return-object v3

    .line 1226
    :pswitch_1
    new-instance v3, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0551

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0552

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$2;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v3, v8, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v9}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 1246
    :pswitch_2
    new-instance v3, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$3;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$3;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 1264
    :pswitch_3
    new-instance v3, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0553

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0554

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$4;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$4;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v3, v8, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 1283
    :pswitch_4
    new-instance v3, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c056a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c056b

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$5;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$5;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v3, v8, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v9}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 1302
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c056d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings_ex/applications/InstalledAppDetails;

    move-result-object v7

    # invokes: Lcom/android/settings_ex/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;
    invoke-static {v7, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$1100(Lcom/android/settings_ex/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1305
    .local v2, "msg":Ljava/lang/CharSequence;
    new-instance v3, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c056c

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 1312
    .end local v2    # "msg":Ljava/lang/CharSequence;
    :pswitch_6
    new-instance v3, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0570

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0572

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$6;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$6;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v3, v8, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v9}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 1333
    :pswitch_7
    new-instance v3, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0575

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0576

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$8;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$8;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v3, v8, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$7;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$7;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v3, v6, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 1361
    :pswitch_8
    new-instance v3, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0573

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0574

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$9;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$9;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v3, v8, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v9}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 1207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
