.class public Lcom/android/settings_ex/gesturez7/Z7DetailFragment;
.super Landroid/preference/PreferenceFragment;
.source "Z7DetailFragment.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field static textMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private drawable:Landroid/graphics/drawable/AnimationDrawable;

.field private image:Landroid/widget/ImageView;

.field isDialog:Z

.field isEnable:Z

.field mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field mType:I

.field private mValidListener:Z

.field private textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->textMap:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->textMap:Ljava/util/Map;

    .line 61
    sget-object v0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->textMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0c1020

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->textMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0c1012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->textMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0c1011

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->textMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0c1013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->textMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0c1014

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->textMap:Ljava/util/Map;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0c1015

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->textMap:Ljava/util/Map;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0c1016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->textMap:Ljava/util/Map;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0c1017

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->textMap:Ljava/util/Map;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0c102b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->textMap:Ljava/util/Map;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0c1018

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->textMap:Ljava/util/Map;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0c1019

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->textMap:Ljava/util/Map;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0c1030

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 51
    iput-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mValidListener:Z

    .line 52
    iput v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mType:I

    .line 53
    iput-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->isEnable:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->isDialog:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/gesturez7/Z7DetailFragment;)Lcom/android/settings_ex/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/gesturez7/Z7DetailFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    return-object v0
.end method

.method private getFramesForAnimation(I)V
    .locals 8
    .param p1, "type"    # I

    .prologue
    const v7, 0x7f020338

    const/16 v6, 0x64

    const/16 v5, 0x3e8

    const/16 v4, 0x1f4

    const/16 v3, 0xc8

    .line 291
    sparse-switch p1, :sswitch_data_0

    .line 358
    :goto_0
    return-void

    .line 293
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020389

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 294
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02038a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 295
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02038b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 296
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02038a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 297
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02038b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 298
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02038c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 301
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020308

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 302
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020309

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 303
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02030a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_0

    .line 306
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 307
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 308
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 309
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 310
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 311
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_0

    .line 314
    :sswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02036d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 315
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02036e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 316
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02036f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 317
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02036d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 318
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02036e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 319
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020370

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_0

    .line 322
    :sswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020371

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 323
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020372

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 324
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020373

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 325
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020374

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 326
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020372

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 327
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020375

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_0

    .line 330
    :sswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020187

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 331
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020188

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 332
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020189

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 333
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02018a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02018b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 335
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02018c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_0

    .line 338
    :sswitch_6
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02037c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 339
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02037c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 340
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02037e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 341
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02037f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_0

    .line 344
    :sswitch_7
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02019f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 345
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 346
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 347
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_0

    .line 351
    :sswitch_8
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 352
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020339

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 353
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 354
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020339

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 355
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_0

    .line 291
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x18 -> :sswitch_6
        0x19 -> :sswitch_7
        0x1a -> :sswitch_8
        0x1b -> :sswitch_8
        0x1d -> :sswitch_5
    .end sparse-switch
.end method

.method private initUi()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    iget v2, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mType:I

    invoke-static {v2}, Lcom/android/settings_ex/gesturez7/Z7GestureKeys;->getKeyByType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 136
    iget v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mType:I

    invoke-direct {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->setSwitchBarTitle(I)V

    .line 137
    return-void
.end method

.method private setSwitchBarTitle(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 150
    packed-switch p1, :pswitch_data_0

    .line 235
    :goto_0
    :pswitch_0
    return-void

    .line 152
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1031    # 1.86176E38f

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1040

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1032

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1041

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0

    .line 166
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1033

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1042

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0

    .line 173
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1034

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1043

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0

    .line 180
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1035

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1044

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto/16 :goto_0

    .line 187
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c103a

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto/16 :goto_0

    .line 190
    :pswitch_7
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c103b

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto/16 :goto_0

    .line 193
    :pswitch_8
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 194
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c103c

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto/16 :goto_0

    .line 196
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1045

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto/16 :goto_0

    .line 200
    :pswitch_9
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c103d

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto/16 :goto_0

    .line 203
    :pswitch_a
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c103e

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto/16 :goto_0

    .line 206
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1046

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto/16 :goto_0

    .line 210
    :pswitch_b
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c103f

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto/16 :goto_0

    .line 213
    :pswitch_c
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 214
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1036

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto/16 :goto_0

    .line 216
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1047

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto/16 :goto_0

    .line 220
    :pswitch_d
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1037

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto/16 :goto_0

    .line 223
    :pswitch_e
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1038

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto/16 :goto_0

    .line 226
    :pswitch_f
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1039

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto/16 :goto_0

    .line 229
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1048

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto/16 :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 113
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 117
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 119
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setClickable(Z)V

    .line 120
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setFocusable(Z)V

    .line 121
    iget v1, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mType:I

    invoke-direct {p0, v1}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->setSwitchBarTitle(I)V

    .line 122
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 78
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 79
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mType:I

    .line 81
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 90
    const v2, 0x7f0401f8

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f120049

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->image:Landroid/widget/ImageView;

    .line 93
    const v2, 0x7f1200d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->textView:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v2, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->textMap:Ljava/util/Map;

    iget v4, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 97
    iget v2, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mType:I

    invoke-direct {p0, v2}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getFramesForAnimation(I)V

    .line 98
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 99
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->image:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 101
    new-instance v2, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    .line 102
    return-object v1
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 362
    iget-object v3, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_2

    .line 363
    iget-object v3, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 364
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 365
    iget-object v3, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 366
    .local v1, "frame":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 367
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 368
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 372
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    .end local v1    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 376
    .end local v2    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->image:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 377
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 378
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 287
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 288
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 142
    iget-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mValidListener:Z

    .line 146
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 127
    iget-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mValidListener:Z

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mValidListener:Z

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->initUi()V

    .line 132
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 382
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 383
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 387
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 388
    return-void
.end method

.method public onSwitchChanged(Lcn/nubia/commonui/widget/NubiaSwitch;Z)V
    .locals 3
    .param p1, "switchView"    # Lcn/nubia/commonui/widget/NubiaSwitch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 239
    iget v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mType:I

    invoke-direct {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->setSwitchBarTitle(I)V

    .line 240
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mType:I

    if-ne v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    iget v1, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mType:I

    invoke-static {v1}, Lcom/android/settings_ex/gesturez7/Z7GestureKeys;->getKeyByType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    if-eq p2, v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "SettingsFreeSnapShot"

    if-eqz p2, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v2, v0}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    if-nez p2, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    iget v1, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mType:I

    invoke-virtual {v0, v1, p2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBReallyChanged(IZ)V

    .line 258
    :goto_1
    return-void

    .line 242
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 249
    :cond_2
    iget v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mType:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mType:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_3

    .line 250
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    iget v1, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mType:I

    invoke-virtual {v0, v1, p2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBReallyChanged(IZ)V

    goto :goto_1

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_answer_call"

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_volley_gesture"

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 254
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    iget v1, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mType:I

    invoke-virtual {v0, v1, p2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBReallyChanged(IZ)V

    goto :goto_1

    .line 257
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->showSensoryDialog(Z)V

    goto :goto_1
.end method

.method public showSensoryDialog(Z)V
    .locals 5
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v4, 0x0

    .line 261
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c102e

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c102f

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/gesturez7/Z7DetailFragment$2;

    invoke-direct {v3, p0, p1}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment$2;-><init>(Lcom/android/settings_ex/gesturez7/Z7DetailFragment;Z)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings_ex/gesturez7/Z7DetailFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/gesturez7/Z7DetailFragment$1;-><init>(Lcom/android/settings_ex/gesturez7/Z7DetailFragment;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 277
    .local v0, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 279
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog;->setCancelable(Z)V

    .line 280
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 282
    :cond_0
    return-void
.end method
