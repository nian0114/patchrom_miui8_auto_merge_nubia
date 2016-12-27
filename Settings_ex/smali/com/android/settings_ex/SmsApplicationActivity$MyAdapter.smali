.class public Lcom/android/settings_ex/SmsApplicationActivity$MyAdapter;
.super Landroid/widget/SimpleAdapter;
.source "SmsApplicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SmsApplicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings_ex/SmsApplicationActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/SmsApplicationActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .param p2, "mContext"    # Landroid/content/Context;
    .param p4, "resource"    # I
    .param p5, "from"    # [Ljava/lang/String;
    .param p6, "to"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p3, "mData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/android/settings_ex/SmsApplicationActivity$MyAdapter;->this$0:Lcom/android/settings_ex/SmsApplicationActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 132
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 133
    iput-object p3, p0, Lcom/android/settings_ex/SmsApplicationActivity$MyAdapter;->data:Ljava/util/List;

    .line 134
    iput-object p2, p0, Lcom/android/settings_ex/SmsApplicationActivity$MyAdapter;->context:Landroid/content/Context;

    .line 135
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SmsApplicationActivity$MyAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 136
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/SmsApplicationActivity$MyAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/SmsApplicationActivity$MyAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 178
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 140
    const/4 v3, 0x0

    .line 144
    .local v3, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings_ex/SmsApplicationActivity$MyAdapter;->context:Landroid/content/Context;

    const v6, 0x7f0c0ce9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "yimoshiName":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 146
    move-object v3, p2

    .line 150
    :goto_0
    const v5, 0x7f1200c3

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 151
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/settings_ex/SmsApplicationActivity$MyAdapter;->data:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "app_image"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 152
    const v5, 0x7f1200c4

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    .line 153
    .local v2, "textView":Landroid/widget/CheckedTextView;
    iget-object v5, p0, Lcom/android/settings_ex/SmsApplicationActivity$MyAdapter;->data:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "app_label"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 155
    iget-object v5, p0, Lcom/android/settings_ex/SmsApplicationActivity$MyAdapter;->context:Landroid/content/Context;

    const v6, 0x7f0c0cea

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v5, p0, Lcom/android/settings_ex/SmsApplicationActivity$MyAdapter;->this$0:Lcom/android/settings_ex/SmsApplicationActivity;

    # getter for: Lcom/android/settings_ex/SmsApplicationActivity;->mLastIndex:I
    invoke-static {v5}, Lcom/android/settings_ex/SmsApplicationActivity;->access$100(Lcom/android/settings_ex/SmsApplicationActivity;)I

    move-result v5

    if-ne p1, v5, :cond_2

    .line 159
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 163
    :goto_1
    return-object v3

    .line 148
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "textView":Landroid/widget/CheckedTextView;
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/SmsApplicationActivity$MyAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04019e

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 161
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    .restart local v1    # "text":Ljava/lang/String;
    .restart local v2    # "textView":Landroid/widget/CheckedTextView;
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1
.end method
