.class public Lcom/android/phone/NBAirPlaneDialog;
.super Ljava/lang/Object;
.source "NBAirPlaneDialog.java"


# instance fields
.field private mDialog:Lcn/nubia/commonui/phone/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NBAirPlaneDialog;->mDialog:Lcn/nubia/commonui/phone/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBAirPlaneDialog;->mDialog:Lcn/nubia/commonui/phone/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBAirPlaneDialog;->mDialog:Lcn/nubia/commonui/phone/app/ProgressDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NBAirPlaneDialog;->mDialog:Lcn/nubia/commonui/phone/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public showDialog(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Lcom/android/phone/NBAirPlaneDialog;->dismissDialog()V

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f120161

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .local v0, "contextWrapper":Landroid/view/ContextThemeWrapper;
    new-instance v1, Lcn/nubia/commonui/phone/app/ProgressDialog;

    invoke-direct {v1, v0}, Lcn/nubia/commonui/phone/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/NBAirPlaneDialog;->mDialog:Lcn/nubia/commonui/phone/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/phone/NBAirPlaneDialog;->mDialog:Lcn/nubia/commonui/phone/app/ProgressDialog;

    const v2, 0x7f0b0364

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/phone/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/NBAirPlaneDialog;->mDialog:Lcn/nubia/commonui/phone/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/phone/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/android/phone/NBAirPlaneDialog;->mDialog:Lcn/nubia/commonui/phone/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/phone/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/android/phone/NBAirPlaneDialog;->mDialog:Lcn/nubia/commonui/phone/app/ProgressDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/phone/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, p0, Lcom/android/phone/NBAirPlaneDialog;->mDialog:Lcn/nubia/commonui/phone/app/ProgressDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/phone/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/android/phone/NBAirPlaneDialog;->mDialog:Lcn/nubia/commonui/phone/app/ProgressDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/phone/app/ProgressDialog;->show()V

    return-void
.end method
