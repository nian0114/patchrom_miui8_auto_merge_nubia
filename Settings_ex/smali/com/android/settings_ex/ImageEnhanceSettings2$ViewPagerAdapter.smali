.class public Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;
.super Lcn/nubia/commonui/widget/tab/NubiaPagerAdapter;
.source "ImageEnhanceSettings2.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ImageEnhanceSettings2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/ImageEnhanceSettings2;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    invoke-direct {p0}, Lcn/nubia/commonui/widget/tab/NubiaPagerAdapter;-><init>()V

    .line 137
    iput-object p2, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 138
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 191
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 192
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 199
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings2;->mTabTitles:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/ImageEnhanceSettings2;->access$800(Lcom/android/settings_ex/ImageEnhanceSettings2;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 142
    iget-object v4, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    invoke-virtual {v4}, Lcom/android/settings_ex/ImageEnhanceSettings2;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 143
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400b0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 145
    .local v3, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    const v4, 0x7f1201b4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    # setter for: Lcom/android/settings_ex/ImageEnhanceSettings2;->mSaturRadioGroup:Landroid/widget/RadioGroup;
    invoke-static {v5, v4}, Lcom/android/settings_ex/ImageEnhanceSettings2;->access$002(Lcom/android/settings_ex/ImageEnhanceSettings2;Landroid/widget/RadioGroup;)Landroid/widget/RadioGroup;

    .line 147
    iget-object v5, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    const v4, 0x7f1201b8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    # setter for: Lcom/android/settings_ex/ImageEnhanceSettings2;->mHueRadioGroup:Landroid/widget/RadioGroup;
    invoke-static {v5, v4}, Lcom/android/settings_ex/ImageEnhanceSettings2;->access$102(Lcom/android/settings_ex/ImageEnhanceSettings2;Landroid/widget/RadioGroup;)Landroid/widget/RadioGroup;

    .line 150
    iget-object v5, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    const v4, 0x7f1201b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    # setter for: Lcom/android/settings_ex/ImageEnhanceSettings2;->mImprove:Landroid/widget/RadioButton;
    invoke-static {v5, v4}, Lcom/android/settings_ex/ImageEnhanceSettings2;->access$202(Lcom/android/settings_ex/ImageEnhanceSettings2;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;

    .line 151
    iget-object v5, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    const v4, 0x7f1201b6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    # setter for: Lcom/android/settings_ex/ImageEnhanceSettings2;->mNormal:Landroid/widget/RadioButton;
    invoke-static {v5, v4}, Lcom/android/settings_ex/ImageEnhanceSettings2;->access$302(Lcom/android/settings_ex/ImageEnhanceSettings2;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;

    .line 152
    iget-object v5, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    const v4, 0x7f1201b7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    # setter for: Lcom/android/settings_ex/ImageEnhanceSettings2;->mWeak:Landroid/widget/RadioButton;
    invoke-static {v5, v4}, Lcom/android/settings_ex/ImageEnhanceSettings2;->access$402(Lcom/android/settings_ex/ImageEnhanceSettings2;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;

    .line 153
    const-string v4, "persist.sys.image.enhance"

    const-string v5, "w"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "saturationType":Ljava/lang/String;
    const-string v4, "i"

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 157
    iget-object v4, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings2;->mImprove:Landroid/widget/RadioButton;
    invoke-static {v4}, Lcom/android/settings_ex/ImageEnhanceSettings2;->access$200(Lcom/android/settings_ex/ImageEnhanceSettings2;)Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 164
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    const v4, 0x7f1201b9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    # setter for: Lcom/android/settings_ex/ImageEnhanceSettings2;->mCoolTone:Landroid/widget/RadioButton;
    invoke-static {v5, v4}, Lcom/android/settings_ex/ImageEnhanceSettings2;->access$502(Lcom/android/settings_ex/ImageEnhanceSettings2;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;

    .line 165
    iget-object v5, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    const v4, 0x7f1201ba

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    # setter for: Lcom/android/settings_ex/ImageEnhanceSettings2;->mNaturalTone:Landroid/widget/RadioButton;
    invoke-static {v5, v4}, Lcom/android/settings_ex/ImageEnhanceSettings2;->access$602(Lcom/android/settings_ex/ImageEnhanceSettings2;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;

    .line 166
    iget-object v5, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    const v4, 0x7f1201bb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    # setter for: Lcom/android/settings_ex/ImageEnhanceSettings2;->mWarmTone:Landroid/widget/RadioButton;
    invoke-static {v5, v4}, Lcom/android/settings_ex/ImageEnhanceSettings2;->access$702(Lcom/android/settings_ex/ImageEnhanceSettings2;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;

    .line 167
    const-string v4, "persist.sys.image.colortmp"

    const-string v5, "n"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "hueType":Ljava/lang/String;
    const-string v4, "c"

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 171
    iget-object v4, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings2;->mCoolTone:Landroid/widget/RadioButton;
    invoke-static {v4}, Lcom/android/settings_ex/ImageEnhanceSettings2;->access$500(Lcom/android/settings_ex/ImageEnhanceSettings2;)Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 177
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings2;->mSaturRadioGroup:Landroid/widget/RadioGroup;
    invoke-static {v4}, Lcom/android/settings_ex/ImageEnhanceSettings2;->access$000(Lcom/android/settings_ex/ImageEnhanceSettings2;)Landroid/widget/RadioGroup;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 178
    iget-object v4, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings2;->mHueRadioGroup:Landroid/widget/RadioGroup;
    invoke-static {v4}, Lcom/android/settings_ex/ImageEnhanceSettings2;->access$100(Lcom/android/settings_ex/ImageEnhanceSettings2;)Landroid/widget/RadioGroup;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 180
    if-nez p2, :cond_6

    .line 181
    iget-object v4, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings2;->mHueRadioGroup:Landroid/widget/RadioGroup;
    invoke-static {v4}, Lcom/android/settings_ex/ImageEnhanceSettings2;->access$100(Lcom/android/settings_ex/ImageEnhanceSettings2;)Landroid/widget/RadioGroup;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 185
    :goto_2
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 186
    return-object v3

    .line 158
    .end local v0    # "hueType":Ljava/lang/String;
    .restart local p1    # "container":Landroid/view/ViewGroup;
    :cond_2
    const-string v4, "n"

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    iget-object v4, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings2;->mNormal:Landroid/widget/RadioButton;
    invoke-static {v4}, Lcom/android/settings_ex/ImageEnhanceSettings2;->access$300(Lcom/android/settings_ex/ImageEnhanceSettings2;)Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 160
    :cond_3
    const-string v4, "w"

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    iget-object v4, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings2;->mWeak:Landroid/widget/RadioButton;
    invoke-static {v4}, Lcom/android/settings_ex/ImageEnhanceSettings2;->access$400(Lcom/android/settings_ex/ImageEnhanceSettings2;)Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 172
    .restart local v0    # "hueType":Ljava/lang/String;
    :cond_4
    const-string v4, "n"

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 173
    iget-object v4, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings2;->mNaturalTone:Landroid/widget/RadioButton;
    invoke-static {v4}, Lcom/android/settings_ex/ImageEnhanceSettings2;->access$600(Lcom/android/settings_ex/ImageEnhanceSettings2;)Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 174
    :cond_5
    const-string v4, "w"

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 175
    iget-object v4, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings2;->mWarmTone:Landroid/widget/RadioButton;
    invoke-static {v4}, Lcom/android/settings_ex/ImageEnhanceSettings2;->access$700(Lcom/android/settings_ex/ImageEnhanceSettings2;)Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 183
    :cond_6
    iget-object v4, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings2;->mSaturRadioGroup:Landroid/widget/RadioGroup;
    invoke-static {v4}, Lcom/android/settings_ex/ImageEnhanceSettings2;->access$000(Lcom/android/settings_ex/ImageEnhanceSettings2;)Landroid/widget/RadioGroup;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_2
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 195
    check-cast p2, Landroid/view/View;

    .end local p2    # "object":Ljava/lang/Object;
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings2;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings2;->mHueRadioGroup:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/android/settings_ex/ImageEnhanceSettings2;->access$100(Lcom/android/settings_ex/ImageEnhanceSettings2;)Landroid/widget/RadioGroup;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 225
    packed-switch p2, :pswitch_data_0

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 227
    :pswitch_0
    const-string v0, "persist.sys.image.colortmp"

    const-string v1, "c"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :pswitch_1
    const-string v0, "persist.sys.image.colortmp"

    const-string v1, "n"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :pswitch_2
    const-string v0, "persist.sys.image.colortmp"

    const-string v1, "w"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_1
    const v0, 0x7f1201b7

    if-ne p2, v0, :cond_2

    .line 239
    const-string v0, "persist.sys.image.enhance"

    const-string v1, "w"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_2
    const v0, 0x7f1201b6

    if-ne p2, v0, :cond_3

    .line 241
    const-string v0, "persist.sys.image.enhance"

    const-string v1, "n"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_3
    const v0, 0x7f1201b5

    if-ne p2, v0, :cond_0

    .line 243
    const-string v0, "persist.sys.image.enhance"

    const-string v1, "i"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x7f1201b9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 202
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 209
    return-void
.end method
