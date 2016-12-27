.class public Lcom/android/settings_ex/vpn2/VpnSpinner;
.super Landroid/widget/LinearLayout;
.source "VpnSpinner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/vpn2/VpnSpinner$OnItemSelectedListener;
    }
.end annotation


# instance fields
.field private mArrayList:[Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mId:I

.field private mListener:Lcom/android/settings_ex/vpn2/VpnSpinner$OnItemSelectedListener;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mValue:I

    .line 36
    iput-object p1, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mValue:I

    .line 41
    iput-object p1, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/vpn2/VpnSpinner;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 44
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0401dd

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 45
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f12004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mTitle:Landroid/widget/TextView;

    .line 46
    const v2, 0x7f120105

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mSummary:Landroid/widget/TextView;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/vpn2/VpnSpinner;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/vpn2/VpnSpinner;

    .prologue
    .line 20
    iget v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/vpn2/VpnSpinner;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/vpn2/VpnSpinner;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/vpn2/VpnSpinner;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/vpn2/VpnSpinner;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mArrayList:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/vpn2/VpnSpinner;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/vpn2/VpnSpinner;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/vpn2/VpnSpinner;)Lcom/android/settings_ex/vpn2/VpnSpinner$OnItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/vpn2/VpnSpinner;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mListener:Lcom/android/settings_ex/vpn2/VpnSpinner$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/vpn2/VpnSpinner;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/vpn2/VpnSpinner;

    .prologue
    .line 20
    iget v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mId:I

    return v0
.end method


# virtual methods
.method public getSelectedItem()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mArrayList:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mArrayList:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mArrayList:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mValue:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mValue:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 104
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mArrayList:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mValue:I

    new-instance v4, Lcom/android/settings_ex/vpn2/VpnSpinner$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/vpn2/VpnSpinner$1;-><init>(Lcom/android/settings_ex/vpn2/VpnSpinner;)V

    invoke-virtual {v0, v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v0, v5, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 118
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mContext:Landroid/content/Context;

    const v3, 0x7f0c02d0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 120
    .local v1, "dialog":Lcn/nubia/commonui/app/Dialog;
    invoke-virtual {v1}, Lcn/nubia/commonui/app/Dialog;->show()V

    .line 122
    return-void
.end method

.method public setAdapter([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "list"    # [Ljava/lang/CharSequence;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mArrayList:[Ljava/lang/CharSequence;

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mArrayList:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mArrayList:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mSummary:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mValue:I

    aget-object v1, p1, v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mListener:Lcom/android/settings_ex/vpn2/VpnSpinner$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mListener:Lcom/android/settings_ex/vpn2/VpnSpinner$OnItemSelectedListener;

    iget v1, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mId:I

    iget v2, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mValue:I

    invoke-interface {v0, v1, v2}, Lcom/android/settings_ex/vpn2/VpnSpinner$OnItemSelectedListener;->onItemSelected(II)V

    .line 101
    :cond_0
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/android/settings_ex/vpn2/VpnSpinner$OnItemSelectedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/settings_ex/vpn2/VpnSpinner$OnItemSelectedListener;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mListener:Lcom/android/settings_ex/vpn2/VpnSpinner$OnItemSelectedListener;

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mArrayList:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mArrayList:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mListener:Lcom/android/settings_ex/vpn2/VpnSpinner$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mListener:Lcom/android/settings_ex/vpn2/VpnSpinner$OnItemSelectedListener;

    iget v1, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mId:I

    iget v2, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mValue:I

    invoke-interface {v0, v1, v2}, Lcom/android/settings_ex/vpn2/VpnSpinner$OnItemSelectedListener;->onItemSelected(II)V

    .line 91
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mValue:I

    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mArrayList:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mArrayList:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mArrayList:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mValue:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_0
    return-void
.end method

.method public setText(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;

    .prologue
    .line 50
    iput p1, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mId:I

    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSpinner;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method
