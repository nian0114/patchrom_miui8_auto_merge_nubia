.class Lcom/android/settings_ex/sim/SimSettings$SimPreference;
.super Landroid/preference/Preference;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimPreference"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mSlotId:I

.field mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

.field final synthetic this$0:Lcom/android/settings_ex/sim/SimSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/sim/SimSettings;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    .line 350
    invoke-direct {p0, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 351
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/sim/SimSettings$SimPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings$SimPreference;

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->getSlotId()I

    move-result v0

    return v0
.end method

.method private getSlotId()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mSlotId:I

    return v0
.end method


# virtual methods
.method protected onAttachedToActivity()V
    .locals 2

    .prologue
    .line 380
    invoke-super {p0}, Landroid/preference/Preference;->onAttachedToActivity()V

    .line 381
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->needUpdate:Z
    invoke-static {v0}, Lcom/android/settings_ex/sim/SimSettings;->access$300(Lcom/android/settings_ex/sim/SimSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/sim/SimSettings;->needUpdate:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/sim/SimSettings;->access$302(Lcom/android/settings_ex/sim/SimSettings;Z)Z

    .line 383
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # invokes: Lcom/android/settings_ex/sim/SimSettings;->updateAllOptions()V
    invoke-static {v0}, Lcom/android/settings_ex/sim/SimSettings;->access$400(Lcom/android/settings_ex/sim/SimSettings;)V

    .line 385
    :cond_0
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 354
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 356
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0998

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mSlotId:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    # invokes: Lcom/android/settings_ex/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/sim/SimSettings;->access$200(Lcom/android/settings_ex/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 366
    :goto_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 372
    :goto_1
    return-void

    .line 362
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    # invokes: Lcom/android/settings_ex/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings_ex/sim/SimSettings;->access$200(Lcom/android/settings_ex/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->setEnabled(Z)V

    goto :goto_0

    .line 368
    :cond_1
    const v1, 0x7f0c0995

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->setSummary(I)V

    .line 369
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->setFragment(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->setEnabled(Z)V

    goto :goto_1
.end method
