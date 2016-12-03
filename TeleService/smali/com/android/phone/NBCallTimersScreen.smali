.class public Lcom/android/phone/NBCallTimersScreen;
.super Lcn/nubia/commonui/phone/actionbar/app/ActionBarActivity;
.source "NBCallTimersScreen.java"


# instance fields
.field private mIncomingCall:Landroid/widget/TextView;

.field private mOutgoingCall:Landroid/widget/TextView;

.field private mPhoneId:I

.field private mRecentlyCall:Landroid/widget/TextView;

.field private final mSimStateChangeListener:Lcom/android/phone/NBSimStateChangeInterface;

.field private mVoiceCallLifeTimer:Landroid/widget/TextView;

.field private mVoiceCallResetButton:Landroid/widget/ImageButton;

.field private mVoiceCallTotal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcn/nubia/commonui/phone/actionbar/app/ActionBarActivity;-><init>()V

    new-instance v0, Lcom/android/phone/NBCallTimersScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NBCallTimersScreen$1;-><init>(Lcom/android/phone/NBCallTimersScreen;)V

    iput-object v0, p0, Lcom/android/phone/NBCallTimersScreen;->mSimStateChangeListener:Lcom/android/phone/NBSimStateChangeInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NBCallTimersScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBCallTimersScreen;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBCallTimersScreen;->resetCallTime()V

    return-void
.end method

.method private static formatTime(J)Ljava/lang/String;
    .locals 12
    .param p0, "time"    # J

    .prologue
    const-wide/16 v8, 0x0

    cmp-long v7, p0, v8

    if-gtz v7, :cond_0

    const-string v7, "00:00:00"

    :goto_0
    return-object v7

    :cond_0
    const-wide/16 v8, 0xe10

    div-long v0, p0, v8

    .local v0, "hours":J
    const-wide/16 v8, 0xe10

    rem-long v8, p0, v8

    const-wide/16 v10, 0x3c

    div-long v2, v8, v10

    .local v2, "minutes":J
    const-wide/16 v8, 0xe10

    rem-long v8, p0, v8

    const-wide/16 v10, 0x3c

    rem-long v4, v8, v10

    .local v4, "seconds":J
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x10

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v6, "stringOfTime":Ljava/lang/StringBuilder;
    const-wide/16 v8, 0xa

    cmp-long v7, v0, v8

    if-gez v7, :cond_1

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v8, 0xa

    cmp-long v7, v2, v8

    if-gez v7, :cond_2

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v8, 0xa

    cmp-long v7, v4, v8

    if-gez v7, :cond_3

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private getResetVoiceCallTimeDialog()Lcn/nubia/commonui/phone/app/Dialog;
    .locals 3

    .prologue
    new-instance v0, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b033e

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/phone/NBCallTimersScreen$4;

    invoke-direct {v2, p0}, Lcom/android/phone/NBCallTimersScreen$4;-><init>(Lcom/android/phone/NBCallTimersScreen;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/phone/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private initCallTimer()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    iget v10, p0, Lcom/android/phone/NBCallTimersScreen;->mPhoneId:I

    if-nez v10, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBCallTimersScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "RECENTLY_CALL_TIME_ONE"

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .local v4, "recentlyCallTime":J
    invoke-virtual {p0}, Lcom/android/phone/NBCallTimersScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "INCOMING_CALL_TIME_ONE"

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .local v0, "incomingCallTime":J
    invoke-virtual {p0}, Lcom/android/phone/NBCallTimersScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "OUTGOING_CALL_TIME_ONE"

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .local v2, "outgoingCallTime":J
    add-long v8, v0, v2

    .local v8, "voiceCallTotalTime":J
    invoke-virtual {p0}, Lcom/android/phone/NBCallTimersScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "HISTORY_CALL_TIME_ONE"

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .local v6, "voiceCallLifeTime":J
    :goto_0
    iget-object v10, p0, Lcom/android/phone/NBCallTimersScreen;->mRecentlyCall:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/android/phone/NBCallTimersScreen;->formatTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/phone/NBCallTimersScreen;->mIncomingCall:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/phone/NBCallTimersScreen;->formatTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/phone/NBCallTimersScreen;->mOutgoingCall:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/android/phone/NBCallTimersScreen;->formatTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/phone/NBCallTimersScreen;->mVoiceCallTotal:Landroid/widget/TextView;

    invoke-static {v8, v9}, Lcom/android/phone/NBCallTimersScreen;->formatTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/phone/NBCallTimersScreen;->mVoiceCallLifeTimer:Landroid/widget/TextView;

    invoke-static {v6, v7}, Lcom/android/phone/NBCallTimersScreen;->formatTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v8, v9}, Lcom/android/phone/NBCallTimersScreen;->initResetButton(J)V

    return-void

    .end local v0    # "incomingCallTime":J
    .end local v2    # "outgoingCallTime":J
    .end local v4    # "recentlyCallTime":J
    .end local v6    # "voiceCallLifeTime":J
    .end local v8    # "voiceCallTotalTime":J
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NBCallTimersScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "RECENTLY_CALL_TIME_TWO"

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .restart local v4    # "recentlyCallTime":J
    invoke-virtual {p0}, Lcom/android/phone/NBCallTimersScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "INCOMING_CALL_TIME_TWO"

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .restart local v0    # "incomingCallTime":J
    invoke-virtual {p0}, Lcom/android/phone/NBCallTimersScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "OUTGOING_CALL_TIME_TWO"

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .restart local v2    # "outgoingCallTime":J
    add-long v8, v0, v2

    .restart local v8    # "voiceCallTotalTime":J
    invoke-virtual {p0}, Lcom/android/phone/NBCallTimersScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "HISTORY_CALL_TIME_TWO"

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .restart local v6    # "voiceCallLifeTime":J
    goto :goto_0
.end method

.method private initResetButton(J)V
    .locals 5
    .param p1, "voiceCallTotalTime"    # J

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBCallTimersScreen;->mVoiceCallResetButton:Landroid/widget/ImageButton;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/NBCallTimersScreen;->mVoiceCallResetButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/phone/NBCallTimersScreen$2;

    invoke-direct {v1, p0}, Lcom/android/phone/NBCallTimersScreen$2;-><init>(Lcom/android/phone/NBCallTimersScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/NBCallTimersScreen;->mVoiceCallResetButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/phone/NBCallTimersScreen$3;

    invoke-direct {v1, p0}, Lcom/android/phone/NBCallTimersScreen$3;-><init>(Lcom/android/phone/NBCallTimersScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetCallTime()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    iget v0, p0, Lcom/android/phone/NBCallTimersScreen;->mPhoneId:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBCallTimersScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "RECENTLY_CALL_TIME_ONE"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p0}, Lcom/android/phone/NBCallTimersScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "INCOMING_CALL_TIME_ONE"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p0}, Lcom/android/phone/NBCallTimersScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OUTGOING_CALL_TIME_ONE"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NBCallTimersScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "RECENTLY_CALL_TIME_TWO"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p0}, Lcom/android/phone/NBCallTimersScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "INCOMING_CALL_TIME_TWO"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p0}, Lcom/android/phone/NBCallTimersScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OUTGOING_CALL_TIME_TWO"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/NBCallTimersScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "phone"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/NBCallTimersScreen;->mPhoneId:I

    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCallTimersScreen;->setContentView(I)V

    const v1, 0x7f100104

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCallTimersScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/NBCallTimersScreen;->mRecentlyCall:Landroid/widget/TextView;

    const v1, 0x7f100108

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCallTimersScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/NBCallTimersScreen;->mIncomingCall:Landroid/widget/TextView;

    const v1, 0x7f10010c

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCallTimersScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/NBCallTimersScreen;->mOutgoingCall:Landroid/widget/TextView;

    const v1, 0x7f100110

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCallTimersScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/NBCallTimersScreen;->mVoiceCallTotal:Landroid/widget/TextView;

    const v1, 0x7f100114

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCallTimersScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/NBCallTimersScreen;->mVoiceCallLifeTimer:Landroid/widget/TextView;

    const v1, 0x7f100115

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCallTimersScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/NBCallTimersScreen;->mVoiceCallResetButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/phone/NBCallTimersScreen;->getSupportActionBar()Lcn/nubia/commonui/phone/actionbar/app/ActionBar;

    move-result-object v0

    .local v0, "actionBar":Lcn/nubia/commonui/phone/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NBCallTimersScreen;->mSimStateChangeListener:Lcom/android/phone/NBSimStateChangeInterface;

    invoke-static {v1}, Lcom/android/phone/NBSimStateChangeReceiver;->addStateChangeListener(Lcom/android/phone/NBSimStateChangeInterface;)V

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->showStatusBarPic(Landroid/app/Activity;)V

    return-void
.end method

.method protected bridge synthetic onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/phone/NBCallTimersScreen;->onCreateDialog(I)Lcn/nubia/commonui/phone/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateDialog(I)Lcn/nubia/commonui/phone/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBCallTimersScreen;->getResetVoiceCallTimeDialog()Lcn/nubia/commonui/phone/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallTimersScreen;->mSimStateChangeListener:Lcom/android/phone/NBSimStateChangeInterface;

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

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/phone/NBPhoneUtils;->displayDualCardUi()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/phone/NBCallTimersScreen;->mPhoneId:I

    invoke-static {p0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->goUpToLastLevelSetting(Landroid/app/Activity;I)V

    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    iget v1, p0, Lcom/android/phone/NBCallTimersScreen;->mPhoneId:I

    invoke-static {p0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->goUpToTopLevelSetting(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcn/nubia/commonui/phone/actionbar/app/ActionBarActivity;->onResume()V

    invoke-direct {p0}, Lcom/android/phone/NBCallTimersScreen;->initCallTimer()V

    return-void
.end method
