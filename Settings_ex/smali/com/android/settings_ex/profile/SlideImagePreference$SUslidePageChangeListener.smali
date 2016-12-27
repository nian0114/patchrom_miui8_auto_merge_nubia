.class Lcom/android/settings_ex/profile/SlideImagePreference$SUslidePageChangeListener;
.super Ljava/lang/Object;
.source "SlideImagePreference.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profile/SlideImagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SUslidePageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profile/SlideImagePreference;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/profile/SlideImagePreference;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/settings_ex/profile/SlideImagePreference$SUslidePageChangeListener;->this$0:Lcom/android/settings_ex/profile/SlideImagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/profile/SlideImagePreference;Lcom/android/settings_ex/profile/SlideImagePreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/profile/SlideImagePreference;
    .param p2, "x1"    # Lcom/android/settings_ex/profile/SlideImagePreference$1;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/settings_ex/profile/SlideImagePreference$SUslidePageChangeListener;-><init>(Lcom/android/settings_ex/profile/SlideImagePreference;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 153
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 158
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/profile/SlideImagePreference$SUslidePageChangeListener;->this$0:Lcom/android/settings_ex/profile/SlideImagePreference;

    # getter for: Lcom/android/settings_ex/profile/SlideImagePreference;->imageViews:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings_ex/profile/SlideImagePreference;->access$300(Lcom/android/settings_ex/profile/SlideImagePreference;)[Landroid/widget/ImageView;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/android/settings_ex/profile/SlideImagePreference$SUslidePageChangeListener;->this$0:Lcom/android/settings_ex/profile/SlideImagePreference;

    # getter for: Lcom/android/settings_ex/profile/SlideImagePreference;->imageViews:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings_ex/profile/SlideImagePreference;->access$300(Lcom/android/settings_ex/profile/SlideImagePreference;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    const v2, 0x7f020213

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    if-eq p1, v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/settings_ex/profile/SlideImagePreference$SUslidePageChangeListener;->this$0:Lcom/android/settings_ex/profile/SlideImagePreference;

    # getter for: Lcom/android/settings_ex/profile/SlideImagePreference;->imageViews:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings_ex/profile/SlideImagePreference;->access$300(Lcom/android/settings_ex/profile/SlideImagePreference;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/settings_ex/profile/SlideImagePreference$SUslidePageChangeListener;->this$0:Lcom/android/settings_ex/profile/SlideImagePreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/profile/SlideImagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020211

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    return-void
.end method
