.class public Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;
.super Landroid/widget/BaseAdapter;
.source "SmartkeySupportAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmartkeySelectAdpater"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater$SmartkeyAppHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/smartkey/SmartKeyAppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgUtils:Lcom/android/settings_ex/smartkey/SmartkeygetpkgUtils;

.field private pm:Landroid/content/pm/PackageManager;

.field private selectIndex:I

.field final synthetic this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/smartkey/SmartKeyAppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p3, "listData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/smartkey/SmartKeyAppItem;>;"
    iput-object p1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 477
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;->mInflater:Landroid/view/LayoutInflater;

    .line 478
    iput-object p3, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;->mList:Ljava/util/List;

    .line 479
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;->pm:Landroid/content/pm/PackageManager;

    .line 480
    new-instance v0, Lcom/android/settings_ex/smartkey/SmartkeygetpkgUtils;

    invoke-direct {v0, p2}, Lcom/android/settings_ex/smartkey/SmartkeygetpkgUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;->mPkgUtils:Lcom/android/settings_ex/smartkey/SmartkeygetpkgUtils;

    .line 481
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 495
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 507
    if-nez p2, :cond_0

    .line 508
    new-instance v0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater$SmartkeyAppHolder;

    invoke-direct {v0, p0, v4}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater$SmartkeyAppHolder;-><init>(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$1;)V

    .line 509
    .local v0, "holder":Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater$SmartkeyAppHolder;
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040197

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 510
    const v2, 0x7f12038d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater$SmartkeyAppHolder;->mImageView:Landroid/widget/ImageView;

    .line 512
    const v2, 0x7f12038e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater$SmartkeyAppHolder;->mTextView:Landroid/widget/TextView;

    .line 514
    const v2, 0x7f12038f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater$SmartkeyAppHolder;->mRadio:Landroid/widget/RadioButton;

    .line 517
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 521
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/smartkey/SmartKeyAppItem;

    .line 522
    .local v1, "info":Lcom/android/settings_ex/smartkey/SmartKeyAppItem;
    iget-object v2, v0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater$SmartkeyAppHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/android/settings_ex/smartkey/SmartKeyAppItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 523
    iget-object v2, v0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater$SmartkeyAppHolder;->mTextView:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/settings_ex/smartkey/SmartKeyAppItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # invokes: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->getSelectPosition()I
    invoke-static {v2}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1800(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 525
    iget-object v2, v0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater$SmartkeyAppHolder;->mRadio:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 529
    :goto_1
    return-object p2

    .line 519
    .end local v0    # "holder":Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater$SmartkeyAppHolder;
    .end local v1    # "info":Lcom/android/settings_ex/smartkey/SmartKeyAppItem;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater$SmartkeyAppHolder;

    .restart local v0    # "holder":Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater$SmartkeyAppHolder;
    goto :goto_0

    .line 527
    .restart local v1    # "info":Lcom/android/settings_ex/smartkey/SmartKeyAppItem;
    :cond_1
    iget-object v2, v0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater$SmartkeyAppHolder;->mRadio:Landroid/widget/RadioButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public setSelectIndex(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 499
    const-string v0, "shijian"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectIndex position is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iput p1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;->selectIndex:I

    .line 501
    return-void
.end method
