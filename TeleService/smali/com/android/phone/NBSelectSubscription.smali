.class public Lcom/android/phone/NBSelectSubscription;
.super Lcn/nubia/commonui/phone/actionbar/app/ActionBarActivity;
.source "NBSelectSubscription.java"


# instance fields
.field private mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private final mSimStateChangeListener:Lcom/android/phone/NBSimStateChangeInterface;

.field private mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcn/nubia/commonui/phone/actionbar/app/ActionBarActivity;-><init>()V

    new-instance v0, Lcom/android/phone/NBSelectSubscription$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NBSelectSubscription$1;-><init>(Lcom/android/phone/NBSelectSubscription;)V

    iput-object v0, p0, Lcom/android/phone/NBSelectSubscription;->mSimStateChangeListener:Lcom/android/phone/NBSimStateChangeInterface;

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "SelectSubscription"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v10, Lcom/android/phone/SubscriptionInfoHelper;

    invoke-virtual {p0}, Lcom/android/phone/NBSelectSubscription;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/android/phone/SubscriptionInfoHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v10, p0, Lcom/android/phone/NBSelectSubscription;->mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;

    const v10, 0x7f040046

    invoke-virtual {p0, v10}, Lcom/android/phone/NBSelectSubscription;->setContentView(I)V

    new-instance v10, Landroid/app/LocalActivityManager;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    iput-object v10, p0, Lcom/android/phone/NBSelectSubscription;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iget-object v10, p0, Lcom/android/phone/NBSelectSubscription;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v10, p1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    const v10, 0x1020012

    invoke-virtual {p0, v10}, Lcom/android/phone/NBSelectSubscription;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TabHost;

    .local v8, "tabHost":Landroid/widget/TabHost;
    iget-object v10, p0, Lcom/android/phone/NBSelectSubscription;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v8, v10}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    invoke-virtual {p0}, Lcom/android/phone/NBSelectSubscription;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .local v3, "intent":Landroid/content/Intent;
    const-string v10, "PACKAGE"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "pkg":Ljava/lang/String;
    const-string v10, "TARGET_CLASS"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "targetClass":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .local v4, "numPhones":I
    const-string v10, "phone"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .local v5, "phoneId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    const v10, 0x7f0b0310

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    add-int/lit8 v13, v2, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/phone/NBSelectSubscription;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "displayName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Creating SelectSub activity = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " displayName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/NBSelectSubscription;->log(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    .local v7, "subscriptionPref":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v7, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v10, v6, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    invoke-virtual {v7, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v8, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "displayName":Ljava/lang/String;
    .end local v7    # "subscriptionPref":Landroid/widget/TabHost$TabSpec;
    :cond_0
    invoke-virtual {v8, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    invoke-virtual {p0}, Lcom/android/phone/NBSelectSubscription;->getSupportActionBar()Lcn/nubia/commonui/phone/actionbar/app/ActionBar;

    move-result-object v0

    .local v0, "actionBar":Lcn/nubia/commonui/phone/actionbar/app/ActionBar;
    if-eqz v0, :cond_1

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcn/nubia/commonui/phone/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    iget-object v10, p0, Lcom/android/phone/NBSelectSubscription;->mSimStateChangeListener:Lcom/android/phone/NBSimStateChangeInterface;

    invoke-static {v10}, Lcom/android/phone/NBSimStateChangeReceiver;->addStateChangeListener(Lcom/android/phone/NBSimStateChangeInterface;)V

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->showStatusBarPic(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBSelectSubscription;->mSimStateChangeListener:Lcom/android/phone/NBSimStateChangeInterface;

    invoke-static {v0}, Lcom/android/phone/NBSimStateChangeReceiver;->removeStateChangeListener(Lcom/android/phone/NBSimStateChangeInterface;)V

    invoke-super {p0}, Lcn/nubia/commonui/phone/actionbar/app/ActionBarActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBSelectSubscription;->mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;

    invoke-static {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;Lcom/android/phone/SubscriptionInfoHelper;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBSelectSubscription;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Lcom/android/phone/NBSelectSubscription;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    invoke-super {p0}, Lcn/nubia/commonui/phone/actionbar/app/ActionBarActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBSelectSubscription;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V

    invoke-super {p0}, Lcn/nubia/commonui/phone/actionbar/app/ActionBarActivity;->onResume()V

    return-void
.end method
