.class public Lcom/android/settings_ex/dashboard/DashboardTileView;
.super Landroid/widget/FrameLayout;
.source "DashboardTileView.java"


# instance fields
.field private mColSpan:I

.field private mDivider:Landroid/view/View;

.field private mImageView:Landroid/widget/ImageView;

.field private mNotificationUpdateTitle:Landroid/widget/TextView;

.field private mNotificationUpdateView:Landroid/widget/ImageView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/dashboard/DashboardTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput v3, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mColSpan:I

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040069

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f12004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    .line 60
    const v1, 0x7f12004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f120116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mStatusTextView:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f120127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mDivider:Landroid/view/View;

    .line 63
    const v1, 0x7f120125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mNotificationUpdateView:Landroid/widget/ImageView;

    .line 64
    const v1, 0x7f120126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mNotificationUpdateTitle:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f02007b

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setBackgroundResource(I)V

    .line 66
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setFocusable(Z)V

    .line 67
    return-void
.end method


# virtual methods
.method getColumnSpan()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mColSpan:I

    return v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getStatusTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mStatusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setDividerVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 87
    return-void

    .line 86
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSystemUpdateNumberVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mNotificationUpdateView:Landroid/widget/ImageView;

    const v1, 0x7f020365

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mNotificationUpdateTitle:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mNotificationUpdateView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mNotificationUpdateTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mNotificationUpdateView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mNotificationUpdateTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTile(Lcom/android/settings_ex/dashboard/DashboardTile;)V
    .locals 0
    .param p1, "tile"    # Lcom/android/settings_ex/dashboard/DashboardTile;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    .line 83
    return-void
.end method
