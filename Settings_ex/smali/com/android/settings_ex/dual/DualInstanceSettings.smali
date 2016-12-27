.class public Lcom/android/settings_ex/dual/DualInstanceSettings;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "DualInstanceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mDualImageView:Landroid/widget/ImageView;

.field private mDualStartBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method private getFrameAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualInstanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualInstanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualInstanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualInstanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualInstanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualInstanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualInstanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualInstanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualInstanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualInstanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualInstanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualInstanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualInstanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualInstanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualInstanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualInstanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x834

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 75
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mDualStartBtn:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/dual/DualManagerAppActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/dual/DualInstanceSettings;->startActivity(Landroid/content/Intent;)V

    .line 83
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 26
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualInstanceSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/PhoneWindow;

    const v2, 0x7f0e0065

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 28
    const v1, 0x7f04008f

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/dual/DualInstanceSettings;->setContentView(I)V

    .line 29
    const v1, 0x7f120184

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/dual/DualInstanceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mDualImageView:Landroid/widget/ImageView;

    .line 30
    const v1, 0x7f120185

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/dual/DualInstanceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mDualStartBtn:Landroid/widget/Button;

    .line 31
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 32
    invoke-direct {p0}, Lcom/android/settings_ex/dual/DualInstanceSettings;->getFrameAnimation()V

    .line 33
    iget-object v1, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mDualImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object v1, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 35
    iget-object v1, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 36
    iget-object v1, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mDualStartBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualInstanceSettings;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 38
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 39
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 97
    iget-object v3, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_2

    .line 98
    iget-object v3, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 99
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 100
    iget-object v3, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 101
    .local v1, "frame":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 102
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 107
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 111
    .end local v2    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/dual/DualInstanceSettings;->mDualImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onDestroy()V

    .line 113
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 89
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualInstanceSettings;->finish()V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
