.class Lcom/android/settings_ex/TrustedCredentialsSettings$5;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

.field final synthetic val$certHolder:Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$5;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$5;->val$certHolder:Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 799
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$5;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 819
    :goto_0
    return-void

    .line 801
    :cond_0
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$5;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 802
    .local v1, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$5;->val$certHolder:Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$5;->val$certHolder:Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    # invokes: Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)I
    invoke-static {v2, v3}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->access$3200(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 803
    const v2, 0x1040013

    new-instance v3, Lcom/android/settings_ex/TrustedCredentialsSettings$5$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$5$1;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings$5;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 811
    const v2, 0x1040009

    new-instance v3, Lcom/android/settings_ex/TrustedCredentialsSettings$5$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$5$2;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings$5;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 817
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 818
    .local v0, "alert":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0
.end method
