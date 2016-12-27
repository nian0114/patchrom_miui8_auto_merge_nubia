.class Lcom/android/settings_ex/msim/NBOperAndNumDialog;
.super Lcn/nubia/commonui/app/AlertDialog;
.source "NBOperAndNumDialog.java"


# static fields
.field private static mCardId:I

.field private static mNumber:Landroid/widget/EditText;

.field private static mOperatorName:Landroid/widget/EditText;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "cardID"    # I

    .prologue
    .line 33
    const v0, 0x7f0d0084

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object p1, p0, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 36
    invoke-static {p3}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->setCardId(I)V

    .line 38
    return-void
.end method

.method public static getCardId()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->mCardId:I

    return v0
.end method

.method public static getEditNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->mNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEditOperName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->mOperatorName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static setCardId(I)V
    .locals 0
    .param p0, "cardId"    # I

    .prologue
    .line 84
    sput p0, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->mCardId:I

    .line 85
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0400d5

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 43
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->setView(Landroid/view/View;)V

    .line 44
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->setInverseBackgroundForced(Z)V

    .line 45
    const v5, 0x7f120228

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    .local v0, "name":Landroid/widget/TextView;
    const v5, 0x7f12022a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 47
    .local v1, "num":Landroid/widget/TextView;
    const v5, 0x7f120229

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    sput-object v5, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->mOperatorName:Landroid/widget/EditText;

    .line 48
    sget-object v5, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->mOperatorName:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->getCardId()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings_ex/msim/NBCardUtils;->getOperator(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    sget-object v5, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->mOperatorName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 50
    .local v3, "operEtable":Landroid/text/Editable;
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v3, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 51
    const v5, 0x7f12022b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    sput-object v5, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->mNumber:Landroid/widget/EditText;

    .line 52
    sget-object v5, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->mNumber:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->getCardId()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings_ex/msim/NBCardUtils;->getNum(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    sget-object v5, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->mNumber:Landroid/widget/EditText;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 54
    sget-object v5, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->mNumber:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 55
    .local v2, "numEtable":Landroid/text/Editable;
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v2, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 56
    invoke-static {}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->getCardId()I

    move-result v5

    if-nez v5, :cond_0

    const v5, 0x7f0c0cc8

    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 57
    invoke-static {}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->getCardId()I

    move-result v5

    if-nez v5, :cond_1

    const v5, 0x7f0c0cc9

    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 58
    iget-object v5, p0, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f0c054c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v5, p0, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f0c054d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 61
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 62
    return-void

    .line 56
    :cond_0
    const v5, 0x7f0c0cca

    goto :goto_0

    .line 57
    :cond_1
    const v5, 0x7f0c0ccb

    goto :goto_1
.end method

.method setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 69
    return-void
.end method

.method setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 65
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings_ex/msim/NBOperAndNumDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 66
    return-void
.end method
