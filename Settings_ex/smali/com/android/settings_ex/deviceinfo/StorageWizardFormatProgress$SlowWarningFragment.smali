.class public Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;
.super Landroid/app/DialogFragment;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlowWarningFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 175
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 177
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;

    .line 179
    .local v4, "target":Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;
    # invokes: Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->getDiskDescription()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->access$300(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "descrip":Ljava/lang/String;
    # invokes: Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->getGenericDiskDescription()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->access$400(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "genericDescip":Ljava/lang/String;
    const v5, 0x7f0c0434

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 184
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment$1;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment$1;-><init>(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;)V

    invoke-virtual {v0, v5, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
