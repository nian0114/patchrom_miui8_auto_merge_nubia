.class Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$4;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;)V
    .locals 0

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$4;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 1275
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$4;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings_ex/applications/InstalledAppDetails;

    move-result-object v0

    # getter for: Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$900(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1278
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$4;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings_ex/applications/InstalledAppDetails;

    move-result-object v0

    # invokes: Lcom/android/settings_ex/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$800(Lcom/android/settings_ex/applications/InstalledAppDetails;ZZ)V

    .line 1280
    return-void
.end method
