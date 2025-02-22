.class public Lcom/android/settings_ex/applications/AppViewHolder;
.super Ljava/lang/Object;
.source "AppViewHolder.java"


# instance fields
.field public appIcon:Landroid/widget/ImageView;

.field public appName:Landroid/widget/TextView;

.field public appSize:Landroid/widget/TextView;

.field public checkBox:Landroid/widget/ImageView;

.field public disabled:Landroid/widget/TextView;

.field public entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

.field public rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings_ex/applications/AppViewHolder;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 24
    if-nez p1, :cond_0

    .line 25
    const v1, 0x7f0400c7

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 29
    new-instance v0, Lcom/android/settings_ex/applications/AppViewHolder;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/AppViewHolder;-><init>()V

    .line 30
    .local v0, "holder":Lcom/android/settings_ex/applications/AppViewHolder;
    iput-object p1, v0, Lcom/android/settings_ex/applications/AppViewHolder;->rootView:Landroid/view/View;

    .line 31
    const v1, 0x7f1200b4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings_ex/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    .line 32
    const v1, 0x7f1200b3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/settings_ex/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 33
    const v1, 0x7f12020a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings_ex/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    .line 34
    const v1, 0x7f12020b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings_ex/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    .line 35
    const v1, 0x7f120209

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/settings_ex/applications/AppViewHolder;->checkBox:Landroid/widget/ImageView;

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    .end local v0    # "holder":Lcom/android/settings_ex/applications/AppViewHolder;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/AppViewHolder;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method updateSizeText(Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "invalidSizeStr"    # Ljava/lang/CharSequence;
    .param p2, "whichSize"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 49
    packed-switch p2, :pswitch_data_0

    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
