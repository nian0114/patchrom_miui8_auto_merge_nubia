.class public Lcom/android/phone/NBQCMBNAlertDialogBuilder;
.super Lcn/nubia/commonui/phone/app/AlertDialog$Builder;
.source "NBQCMBNAlertDialogBuilder.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mType:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const v0, 0x30e000a

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/phone/NBQCMBNAlertDialogBuilder;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/phone/NBQCMBNAlertDialogBuilder;->mType:I

    return-void
.end method


# virtual methods
.method public create()Lcn/nubia/commonui/phone/app/AlertDialog;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "message":Ljava/lang/String;
    iget v1, p0, Lcom/android/phone/NBQCMBNAlertDialogBuilder;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBQCMBNAlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0412

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/NBQCMBNAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/NBQCMBNAlertDialogBuilder;->setCancelable(Z)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    invoke-super {p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/phone/app/AlertDialog;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NBQCMBNAlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0413

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
