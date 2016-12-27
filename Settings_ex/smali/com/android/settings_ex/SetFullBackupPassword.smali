.class public Lcom/android/settings_ex/SetFullBackupPassword;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "SetFullBackupPassword.java"


# instance fields
.field mBackupManager:Landroid/app/backup/IBackupManager;

.field mButtonListener:Landroid/view/View$OnClickListener;

.field mCancel:Landroid/widget/Button;

.field mConfirmNewPw:Landroid/widget/TextView;

.field mCurrentPw:Landroid/widget/TextView;

.field mNewPw:Landroid/widget/TextView;

.field mSet:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 42
    new-instance v0, Lcom/android/settings_ex/SetFullBackupPassword$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SetFullBackupPassword$1;-><init>(Lcom/android/settings_ex/SetFullBackupPassword;)V

    iput-object v0, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/SetFullBackupPassword;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SetFullBackupPassword;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/SetFullBackupPassword;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1, p2}, Landroid/app/backup/IBackupManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 122
    :goto_0
    return v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SetFullBackupPassword"

    const-string v2, "Unable to communicate with backup manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 85
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings_ex/SetFullBackupPassword;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/PhoneWindow;

    const v2, 0x7f0e0065

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 87
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 89
    const v1, 0x7f040176

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SetFullBackupPassword;->setContentView(I)V

    .line 91
    const v1, 0x7f120365

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mCurrentPw:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f120368

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mNewPw:Landroid/widget/TextView;

    .line 93
    const v1, 0x7f12036b

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mConfirmNewPw:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f12036c

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mCancel:Landroid/widget/Button;

    .line 96
    const v1, 0x7f12036d

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mSet:Landroid/widget/Button;

    .line 98
    iget-object v1, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mCancel:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mSet:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/SetFullBackupPassword;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 101
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 104
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 109
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 111
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SetFullBackupPassword;->finish()V

    .line 112
    const/4 v0, 0x1

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
