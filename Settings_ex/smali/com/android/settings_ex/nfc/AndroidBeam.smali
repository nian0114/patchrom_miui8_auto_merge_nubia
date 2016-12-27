.class public Lcom/android/settings_ex/nfc/AndroidBeam;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "AndroidBeam.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mBeamDisallowed:Z

.field private mHandler:Landroid/os/Handler;

.field mLastUpdataTimeMillis:J

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mShowImageView:Landroid/widget/ImageView;

.field private mStartShow:Z

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mView:Landroid/view/View;

.field private num:I

.field private showimgs:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 54
    iput v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->num:I

    .line 55
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->showimgs:[I

    .line 64
    iput-boolean v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mStartShow:Z

    .line 66
    new-instance v0, Lcom/android/settings_ex/nfc/AndroidBeam$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/nfc/AndroidBeam$1;-><init>(Lcom/android/settings_ex/nfc/AndroidBeam;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mHandler:Landroid/os/Handler;

    return-void

    .line 55
    :array_0
    .array-data 4
        0x7f02005f
        0x7f020060
        0x7f020061
        0x7f020062
        0x7f020063
        0x7f020064
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings_ex/nfc/AndroidBeam;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/nfc/AndroidBeam;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->num:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/nfc/AndroidBeam;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/nfc/AndroidBeam;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->num:I

    return p1
.end method

.method static synthetic access$008(Lcom/android/settings_ex/nfc/AndroidBeam;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/nfc/AndroidBeam;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->num:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->num:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/nfc/AndroidBeam;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/nfc/AndroidBeam;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mShowImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/nfc/AndroidBeam;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/nfc/AndroidBeam;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->showimgs:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/nfc/AndroidBeam;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/nfc/AndroidBeam;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mStartShow:Z

    return v0
.end method

.method private startThread()V
    .locals 4

    .prologue
    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mLastUpdataTimeMillis:J

    .line 195
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 196
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 197
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    return-void
.end method

.method private stopThread()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mStartShow:Z

    .line 201
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 205
    const/16 v0, 0x45

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 142
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 146
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 147
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v4, 0x7f0c0f7d

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    .line 154
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mBeamDisallowed:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 155
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 156
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    iget-boolean v4, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mBeamDisallowed:Z

    if-nez v4, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 157
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 158
    return-void

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v4, 0x7f0c0f7e

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 154
    goto :goto_1

    :cond_3
    move v2, v3

    .line 156
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 109
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 111
    const v1, 0x7f0c025d

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setTitle(I)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    const-string v2, "no_outgoing_beam"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mBeamDisallowed:Z

    .line 117
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/nfc/AndroidBeam;->setHasOptionsMenu(Z)V

    .line 118
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0940

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/settings_ex/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 125
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    const v0, 0x7f040020

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    const v1, 0x7f1200a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mShowImageView:Landroid/widget/ImageView;

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mStartShow:Z

    .line 135
    invoke-direct {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->startThread()V

    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onDestroyView()V

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 169
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->stopThread()V

    .line 224
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 225
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c0f7d

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    .line 217
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mStartShow:Z

    .line 218
    invoke-direct {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->startThread()V

    .line 219
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c0f7e

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->stopThread()V

    .line 230
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onStop()V

    .line 231
    return-void
.end method

.method public onSwitchChanged(Lcn/nubia/commonui/widget/NubiaSwitch;Z)V
    .locals 3
    .param p1, "switchView"    # Lcn/nubia/commonui/widget/NubiaSwitch;
    .param p2, "desiredState"    # Z

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 175
    if-eqz p2, :cond_2

    .line 176
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v0

    .line 180
    :goto_0
    if-eqz v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p2}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 184
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v2, 0x7f0c0f7d

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    .line 191
    :cond_1
    :goto_1
    return-void

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    goto :goto_0

    .line 188
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v2, 0x7f0c0f7e

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_1
.end method
