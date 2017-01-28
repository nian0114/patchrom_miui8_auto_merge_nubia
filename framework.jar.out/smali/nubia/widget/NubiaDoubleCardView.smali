.class public Lnubia/widget/NubiaDoubleCardView;
.super Landroid/widget/LinearLayout;
.source "NubiaDoubleCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/NubiaDoubleCardView$OnCardClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaDoubleCardView"


# instance fields
.field private mCard1View:Landroid/widget/ImageView;

.field private mCard2View:Landroid/widget/ImageView;

.field private mCheckedItem:I

.field private mDoubleCardView:Landroid/view/View;

.field protected mOnCardClickListener:Lnubia/widget/NubiaDoubleCardView$OnCardClickListener;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lnubia/widget/NubiaDoubleCardView$1;

    invoke-direct {v0, p0}, Lnubia/widget/NubiaDoubleCardView$1;-><init>(Lnubia/widget/NubiaDoubleCardView;)V

    iput-object v0, p0, Lnubia/widget/NubiaDoubleCardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/widget/NubiaDoubleCardView;->mOnCardClickListener:Lnubia/widget/NubiaDoubleCardView$OnCardClickListener;

    invoke-virtual {p0}, Lnubia/widget/NubiaDoubleCardView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lnubia/widget/NubiaDoubleCardView$1;

    invoke-direct {v0, p0}, Lnubia/widget/NubiaDoubleCardView$1;-><init>(Lnubia/widget/NubiaDoubleCardView;)V

    iput-object v0, p0, Lnubia/widget/NubiaDoubleCardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/widget/NubiaDoubleCardView;->mOnCardClickListener:Lnubia/widget/NubiaDoubleCardView$OnCardClickListener;

    invoke-virtual {p0}, Lnubia/widget/NubiaDoubleCardView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lnubia/widget/NubiaDoubleCardView$1;

    invoke-direct {v0, p0}, Lnubia/widget/NubiaDoubleCardView$1;-><init>(Lnubia/widget/NubiaDoubleCardView;)V

    iput-object v0, p0, Lnubia/widget/NubiaDoubleCardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/widget/NubiaDoubleCardView;->mOnCardClickListener:Lnubia/widget/NubiaDoubleCardView$OnCardClickListener;

    invoke-virtual {p0}, Lnubia/widget/NubiaDoubleCardView;->init()V

    return-void
.end method

.method static synthetic access$000(Lnubia/widget/NubiaDoubleCardView;)I
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaDoubleCardView;

    .prologue
    iget v0, p0, Lnubia/widget/NubiaDoubleCardView;->mCheckedItem:I

    return v0
.end method

.method private initCheckdItem()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Lnubia/widget/NubiaDoubleCardView;->mCheckedItem:I

    invoke-virtual {p0}, Lnubia/widget/NubiaDoubleCardView;->setCardInUseDefault()V

    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lnubia/widget/NubiaDoubleCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x303000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/NubiaDoubleCardView;->mDoubleCardView:Landroid/view/View;

    iget-object v0, p0, Lnubia/widget/NubiaDoubleCardView;->mDoubleCardView:Landroid/view/View;

    const v1, 0x30d003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnubia/widget/NubiaDoubleCardView;->mCard1View:Landroid/widget/ImageView;

    iget-object v0, p0, Lnubia/widget/NubiaDoubleCardView;->mDoubleCardView:Landroid/view/View;

    const v1, 0x30d003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnubia/widget/NubiaDoubleCardView;->mCard2View:Landroid/widget/ImageView;

    iget-object v0, p0, Lnubia/widget/NubiaDoubleCardView;->mDoubleCardView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnubia/widget/NubiaDoubleCardView;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lnubia/widget/NubiaDoubleCardView;->mCard1View:Landroid/widget/ImageView;

    iget-object v1, p0, Lnubia/widget/NubiaDoubleCardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lnubia/widget/NubiaDoubleCardView;->mCard2View:Landroid/widget/ImageView;

    iget-object v1, p0, Lnubia/widget/NubiaDoubleCardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateCardIndicationDefault()V
    .locals 2

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaDoubleCardView;->mCard1View:Landroid/widget/ImageView;

    const v1, 0x30200c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lnubia/widget/NubiaDoubleCardView;->mCard2View:Landroid/widget/ImageView;

    const v1, 0x30200ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public final getCardInUse()I
    .locals 1

    .prologue
    iget v0, p0, Lnubia/widget/NubiaDoubleCardView;->mCheckedItem:I

    return v0
.end method

.method protected init()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lnubia/widget/NubiaDoubleCardView;->initView()V

    invoke-direct {p0}, Lnubia/widget/NubiaDoubleCardView;->initCheckdItem()V

    return-void
.end method

.method public final setCardInUse(I)V
    .locals 3
    .param p1, "useItem"    # I

    .prologue
    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal useItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lnubia/widget/NubiaDoubleCardView;->mCheckedItem:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lnubia/widget/NubiaDoubleCardView;->mCheckedItem:I

    :cond_1
    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lnubia/widget/NubiaDoubleCardView;->updateCardIndicationDefault()V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lnubia/widget/NubiaDoubleCardView;->updateCardIndication()V

    goto :goto_0
.end method

.method public final setCardInUseDefault()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lnubia/widget/NubiaDoubleCardView;->updateCardIndicationDefault()V

    return-void
.end method

.method public final setOnCardClickeListener(Lnubia/widget/NubiaDoubleCardView$OnCardClickListener;)V
    .locals 0
    .param p1, "l"    # Lnubia/widget/NubiaDoubleCardView$OnCardClickListener;

    .prologue
    iput-object p1, p0, Lnubia/widget/NubiaDoubleCardView;->mOnCardClickListener:Lnubia/widget/NubiaDoubleCardView$OnCardClickListener;

    return-void
.end method

.method protected updateCardIndication()V
    .locals 2

    .prologue
    iget v0, p0, Lnubia/widget/NubiaDoubleCardView;->mCheckedItem:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lnubia/widget/NubiaDoubleCardView;->mCard1View:Landroid/widget/ImageView;

    const v1, 0x30200c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lnubia/widget/NubiaDoubleCardView;->mCard2View:Landroid/widget/ImageView;

    const v1, 0x30200cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lnubia/widget/NubiaDoubleCardView;->mCheckedItem:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaDoubleCardView;->mCard1View:Landroid/widget/ImageView;

    const v1, 0x30200c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lnubia/widget/NubiaDoubleCardView;->mCard2View:Landroid/widget/ImageView;

    const v1, 0x30200ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
