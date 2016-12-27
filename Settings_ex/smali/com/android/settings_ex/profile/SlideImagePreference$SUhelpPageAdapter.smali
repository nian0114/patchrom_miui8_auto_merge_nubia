.class Lcom/android/settings_ex/profile/SlideImagePreference$SUhelpPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SlideImagePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profile/SlideImagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SUhelpPageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profile/SlideImagePreference;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/profile/SlideImagePreference;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/settings_ex/profile/SlideImagePreference$SUhelpPageAdapter;->this$0:Lcom/android/settings_ex/profile/SlideImagePreference;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/profile/SlideImagePreference;Lcom/android/settings_ex/profile/SlideImagePreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/profile/SlideImagePreference;
    .param p2, "x1"    # Lcom/android/settings_ex/profile/SlideImagePreference$1;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/settings_ex/profile/SlideImagePreference$SUhelpPageAdapter;-><init>(Lcom/android/settings_ex/profile/SlideImagePreference;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 145
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/View;
    iget-object v0, p0, Lcom/android/settings_ex/profile/SlideImagePreference$SUhelpPageAdapter;->this$0:Lcom/android/settings_ex/profile/SlideImagePreference;

    # getter for: Lcom/android/settings_ex/profile/SlideImagePreference;->pageViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/profile/SlideImagePreference;->access$200(Lcom/android/settings_ex/profile/SlideImagePreference;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 146
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/profile/SlideImagePreference$SUhelpPageAdapter;->this$0:Lcom/android/settings_ex/profile/SlideImagePreference;

    # getter for: Lcom/android/settings_ex/profile/SlideImagePreference;->pageViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/profile/SlideImagePreference;->access$200(Lcom/android/settings_ex/profile/SlideImagePreference;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 139
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/View;
    iget-object v0, p0, Lcom/android/settings_ex/profile/SlideImagePreference$SUhelpPageAdapter;->this$0:Lcom/android/settings_ex/profile/SlideImagePreference;

    # getter for: Lcom/android/settings_ex/profile/SlideImagePreference;->pageViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/profile/SlideImagePreference;->access$200(Lcom/android/settings_ex/profile/SlideImagePreference;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/profile/SlideImagePreference$SUhelpPageAdapter;->this$0:Lcom/android/settings_ex/profile/SlideImagePreference;

    # getter for: Lcom/android/settings_ex/profile/SlideImagePreference;->pageViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/profile/SlideImagePreference;->access$200(Lcom/android/settings_ex/profile/SlideImagePreference;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 134
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
