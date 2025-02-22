.class final Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;
.super Landroid/widget/ArrayAdapter;
.source "KeyboardLayoutDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyboardLayoutAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/hardware/input/KeyboardLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private mCheckedItem:I

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    const v0, 0x10900e0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 219
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mCheckedItem:I

    .line 223
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 224
    return-void
.end method

.method private inflateOneLine(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;
    .locals 5
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "checked"    # Z

    .prologue
    const/4 v4, 0x0

    .line 252
    move-object v1, p1

    .line 253
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->isTwoLine(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x109000f

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 257
    invoke-static {v1, v4}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->setTwoLine(Landroid/view/View;Z)V

    .line 259
    :cond_1
    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 260
    .local v0, "headline":Landroid/widget/CheckedTextView;
    invoke-virtual {v0, p3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    invoke-virtual {v0, p4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 262
    return-object v1
.end method

.method private inflateTwoLine(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
    .locals 7
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "collection"    # Ljava/lang/String;
    .param p5, "checked"    # Z

    .prologue
    .line 267
    move-object v3, p1

    .line 268
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->isTwoLine(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 269
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x10900e0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 272
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->setTwoLine(Landroid/view/View;Z)V

    .line 274
    :cond_1
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 275
    .local v0, "headline":Landroid/widget/TextView;
    const v4, 0x1020015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 276
    .local v2, "subText":Landroid/widget/TextView;
    const v4, 0x1020352

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 278
    .local v1, "radioButton":Landroid/widget/RadioButton;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {v1, p5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 281
    return-object v3
.end method

.method private static isTwoLine(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 285
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setTwoLine(Landroid/view/View;Z)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "twoLine"    # Z

    .prologue
    .line 289
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 290
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/KeyboardLayout;

    .line 234
    .local v6, "item":Landroid/hardware/input/KeyboardLayout;
    if-eqz v6, :cond_0

    .line 235
    invoke-virtual {v6}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "label":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/hardware/input/KeyboardLayout;->getCollection()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "collection":Ljava/lang/String;
    :goto_0
    iget v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mCheckedItem:I

    if-ne p1, v0, :cond_1

    const/4 v5, 0x1

    .line 243
    .local v5, "checked":Z
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    invoke-direct {p0, p2, p3, v3, v5}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->inflateOneLine(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    .line 246
    :goto_2
    return-object v0

    .line 238
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "collection":Ljava/lang/String;
    .end local v5    # "checked":Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c05c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 239
    .restart local v3    # "label":Ljava/lang/String;
    const-string v4, ""

    .restart local v4    # "collection":Ljava/lang/String;
    goto :goto_0

    .line 242
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .restart local v5    # "checked":Z
    :cond_2
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    .line 246
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->inflateTwoLine(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_2
.end method

.method public setCheckedItem(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 227
    iput p1, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mCheckedItem:I

    .line 228
    return-void
.end method
