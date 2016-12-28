.class Lcom/android/internal/app/ResolverActivity$ResolvedOnPageChangeListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Lcom/android/internal/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResolvedOnPageChangeListener"
.end annotation


# instance fields
.field private mHorizontalPageIndicator:Lnubia/widget/HorizontalPageIndicator;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Lnubia/widget/HorizontalPageIndicator;)V
    .locals 0
    .param p2, "horizontalPageIndicator"    # Lnubia/widget/HorizontalPageIndicator;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolvedOnPageChangeListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$ResolvedOnPageChangeListener;->mHorizontalPageIndicator:Lnubia/widget/HorizontalPageIndicator;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedOnPageChangeListener;->mHorizontalPageIndicator:Lnubia/widget/HorizontalPageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedOnPageChangeListener;->mHorizontalPageIndicator:Lnubia/widget/HorizontalPageIndicator;

    invoke-virtual {v0, p1}, Lnubia/widget/HorizontalPageIndicator;->setCurrentPage(I)V

    :cond_0
    return-void
.end method
